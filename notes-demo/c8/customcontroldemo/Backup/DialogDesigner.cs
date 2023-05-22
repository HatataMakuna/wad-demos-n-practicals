using System;
using System.ComponentModel;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.Design;


namespace WebControls
{
	/// <summary>
	/// Summary description for DialogDesigner.
	/// </summary>
    public class DialogDesigner : ControlDesigner 
	{
		public DialogDesigner()
		{}

        TemplateGroupCollection col = null;

        public override void Initialize(IComponent component)
        {
            // Initialize the base
            base.Initialize(component);
            // Turn on template editing
            SetViewFlags(ViewFlags.TemplateEditing, true);            
        }

        // Add instructions to the placeholder view of the control
        public override string GetDesignTimeHtml()
        {
            //First, ensure that the DialogBox creates child components
            DialogBox ctl = (DialogBox)this.Component;
            ctl.GetDesignTimeHtml();
            return base.GetDesignTimeHtml();
            
        }
        
        public override TemplateGroupCollection TemplateGroups
        {
            get
            {

                if (col == null)
                {
                    // Get the base collection
                    col = base.TemplateGroups;

                    // Create variables
                    TemplateGroup tempGroup;
                    TemplateDefinition tempDef;
                    DialogBox ctl;

                    // Get reference to the component as TemplateGroupsSample
                    ctl = (DialogBox)Component;

                    // Create a TemplateGroup
                    tempGroup = new TemplateGroup("ItemTemplate");

                    // Create a TemplateDefinition
                    tempDef = new TemplateDefinition(this, "ItemTemplate",
                        ctl, "ItemTemplate", true);

                    // Add the TemplateDefinition to the TemplateGroup
                    tempGroup.AddTemplateDefinition(tempDef);                    
                    col.Add(tempGroup);
                }

                return col;
            }
        }

        // Allow the control to be resized, regardless of templatemode or not.
        public override bool AllowResize
        {
            get
            {
                return true;
            }
        }

	}
}
