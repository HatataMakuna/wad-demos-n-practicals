using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Diagnostics;
using System.Web.UI;
using System.Web.UI.Design;
using System.Web.UI.WebControls;
using System.Reflection;
namespace WebControls {
	public class SimpleTemplatedControlDesigner : TemplatedControlDesigner {
		// Override this if you want to be able to render the control when not all the templates have been defined.
		protected virtual Boolean CanRenderWithTemplateEmpty( String templateName ) {
			return false;
		}
		public override bool AllowResize {
			get {
                return !this.TemplatesAreEmpty || this.InTemplateMode;
			}
		}
		#region Design-time HTML
		public override string GetDesignTimeHtml() {
			if ( !CanRenderWithCurrentTemplates() ) {
				return this.GetEmptyDesignTimeHtml();
			}
			String designTimeHtml = String.Empty;
			try {
				((Control)this.Component).DataBind();
				designTimeHtml = base.GetDesignTimeHtml();
			} catch( Exception ex ) {
				designTimeHtml = this.GetErrorDesignTimeHtml( ex );
			}
			return designTimeHtml;
		}
		protected override string GetEmptyDesignTimeHtml() {
			return this.CreatePlaceHolderDesignTimeHtml( this.EditTemplateInstructions );
		}
		protected override string GetErrorDesignTimeHtml(Exception e) {
			return this.CreatePlaceHolderDesignTimeHtml( "There was an error rendering the control." );
		}
		#endregion
		#region Template-editing
		private TemplateEditingVerb[] _templateEditingVerbs;
		private String[] templateNames;
		private Boolean TemplatesAreEmpty {
			get {
				foreach( String templateName in this.TemplateNames ) {
					if ( GetTemplate( templateName ) == null ) {
						return false;
					}
				}
				return true;
			}
		}
		private Boolean CanRenderWithCurrentTemplates() {
			foreach( String templateName in this.TemplateNames ) {
				if ( GetTemplate( templateName ) == null ) {
					return this.CanRenderWithTemplateEmpty( templateName );
				}
			}
			return true;
		}
		private Boolean TemplateIsEmpty( String templateName ) {
			return GetTemplate( templateName ) == null;
		}
		protected virtual String EditTemplateInstructions {
			get {
				return "Right click to edit the templates for this control";
			}
		}
		private String[] TemplateNames {
			get {
				if ( templateNames == null ) {
					ArrayList names = new ArrayList();
					Type componentType = this.Component.GetType();
					foreach( PropertyInfo prop in componentType.GetProperties() ) {
						if ( prop.PropertyType.IsAssignableFrom( typeof ( ITemplate ) ) ) {
							names.Add( prop.Name );
						}
					}
					if ( names.Count > 0 ) {
						this.templateNames = new String[ names.Count ];
						names.CopyTo( this.templateNames );
					}
				}
				return templateNames;
			}
		}
		private ITemplate GetTemplate( String templateName ) {
			Type componentType = this.Component.GetType();
			PropertyInfo property = componentType.GetProperty( templateName );
			ITemplate value = property.GetValue( this.Component, null ) as ITemplate;
			return value;
		}
		private void SetTemplate( String templateName, ITemplate template ) {
			Type componentType = this.Component.GetType();
			PropertyInfo property = componentType.GetProperty( templateName );
			property.SetValue( this.Component, template, null );
		}
		protected override TemplateEditingVerb[] GetCachedTemplateEditingVerbs() {
			if ( _templateEditingVerbs == null ) {
				_templateEditingVerbs = new TemplateEditingVerb[ this.TemplateNames.Length ];
				for( Int32 i = 0; i < _templateEditingVerbs.Length; i++ ) {
					_templateEditingVerbs[ i ] = new TemplateEditingVerb( this.TemplateNames[ i ], i, this );
				}
			}
			return _templateEditingVerbs;
		}
		protected override ITemplateEditingFrame CreateTemplateEditingFrame(TemplateEditingVerb verb) {
			ITemplateEditingFrame frame = null;
			if ( ( _templateEditingVerbs != null ) ) {
				for ( Int32 i = 0; i < _templateEditingVerbs.Length; i++ ) {
					if ( _templateEditingVerbs[ i ] == verb ) {
						ITemplateEditingService teService = (ITemplateEditingService)GetService( typeof( ITemplateEditingService ) );
						if ( teService != null ) {
							frame = teService.CreateFrame( this, verb.Text, new String[] { this.TemplateNames[ i ] } );
						}
					}
				}
			}
			return frame;
		}
		public override string GetTemplateContent(ITemplateEditingFrame editingFrame, string templateName, out bool allowEditing) {
			String content = "";
			allowEditing = true;
			if ( ( _templateEditingVerbs != null ) ) {
				for ( Int32 i = 0; i < _templateEditingVerbs.Length; i++ ) {
					if ( _templateEditingVerbs[ i ] == editingFrame.Verb ) {
						ITemplate editedTemplate = this.GetTemplate( templateName );
						if ( editedTemplate != null ) {
							content = this.GetTextFromTemplate( editedTemplate );
						}
					}
				}
			}
			return content;
		}
		public override void SetTemplateContent(ITemplateEditingFrame editingFrame, string templateName, string templateContent) {
			if ( ( _templateEditingVerbs != null ) ) {
				for ( Int32 i = 0; i < _templateEditingVerbs.Length; i++ ) {
					if ( _templateEditingVerbs[ i ] == editingFrame.Verb ) {
    
						ITemplate newTemplate = null;
						if ( templateContent != null && templateContent.Length != 0 ) {
							newTemplate = this.GetTemplateFromText( templateContent );
						}
						this.SetTemplate( templateName, newTemplate );
					}
				}
			}
		}
		#endregion

		#region Dispose
		private void DisposeTemplateEditingVerbs() {
			if ( _templateEditingVerbs != null ) {
				for( Int32 i = 0; i < _templateEditingVerbs.Length; i++ ) {
					_templateEditingVerbs[ i ].Dispose();
				}
				_templateEditingVerbs = null;
			}
		}

		protected override void Dispose(bool disposing) {
			if ( disposing ) {
				DisposeTemplateEditingVerbs();
			}
			base.Dispose( disposing );
		}
		public override void OnComponentChanged(object sender, ComponentChangedEventArgs ce) {
			base.OnComponentChanged (sender, ce);
			if ( ce.Member != null ) {
				String name = ce.Member.Name;
				if ( name == "Font" || name == "ForeColor" || name == "BackColor" ) {
					DisposeTemplateEditingVerbs();
				}
			}
		}
		#endregion
	}
}
