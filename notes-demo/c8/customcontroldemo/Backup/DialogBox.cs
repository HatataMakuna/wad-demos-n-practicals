using System.Web;
using System.Web.UI;
using System.Web.UI.Design;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Security.Permissions;




namespace WebControls
{
    
    [ToolboxData("<{0}:DialogBox runat=server></{0}:DialogBox>")]
    [ParseChildren(true)]
    [Designer("WebControls.DialogDesigner, WebControls", typeof(IDesigner))]   
    [AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Minimal)]
    public class DialogBox : System.Web.UI.WebControls.CompositeControl
    {
        public enum DisplayStyle { ShowingDialog = 0, DialogHidden = 1 };
        private ITemplate containerTemplate;
        private HtmlGenericControl dialogTitle;
        private HtmlTableRow dragRow;
        private HtmlTable containerTable;
        private Image imgResizer;
        private Image imgCloseBtn;
        private Image imgHeaderDeco;
        private Control containerControl;

        public DialogBox()
        {

        }

        //This is where the magic happens.  Instansiation of child controls.
        //CreateChildControls is called by the Asp.Net runtime to instansiate child controls.
        protected override void CreateChildControls()
        {

            //Set up some default values, if these are not provided to us.
            if (this.ID == null) this.ID = "dialog";
            if (this.Width.IsEmpty) this.Width = new Unit(200, UnitType.Pixel);
            if (this.Height.IsEmpty) this.Height = new Unit(100, UnitType.Pixel);
            
            //Create the HtmlTable that will hold the content area of the control
            containerTable = new HtmlTable();
            containerTable.CellPadding = 0;
            containerTable.CellSpacing = 0;
            containerTable.Border = 0;
            containerTable.Style.Add("BORDER", "1px SOLID BLACK");
            containerTable.Style.Add("BACKGROUND-IMAGE",
                        string.Format("url({0})",
                        this.Page.ClientScript.GetWebResourceUrl(typeof(DialogBox), "WebControls.Resources.header_background.gif")));
            containerTable.Style.Add("BACKGROUND-REPEAT", "repeat-x");
            containerTable.Width = "100%";
            containerTable.Height = "100%";
            Controls.Add(containerTable);

            //Check to see if we should display the control initially.
            switch (InitialDisplayState)
            {
                case DisplayStyle.DialogHidden:
                    this.Style.Add("VISIBILITY", "hidden");                    

                    break;
                case DisplayStyle.ShowingDialog:
                    this.Style.Add("VISIBILITY", "visible");                    
                    break;
            }
            this.Style.Add("POSITION", "absolute");            
            dragRow = new HtmlTableRow();
            dragRow.Height = "21";
            
            containerTable.Rows.Add(dragRow);
            if (Moveable)
            {
                dragRow.Attributes.Add("onmousedown", string.Format("dragStart(event,'{0}');", this.ClientID));
                dragRow.Style.Add("CURSOR", "move");
            }
            //Creates the top-left cell in the table.  The cell contains a small image, just for decoration purposes.
            HtmlTableCell cell = new HtmlTableCell();
            cell.Width = "10";
            cell.Height = "21";
            imgHeaderDeco = new Image();
            imgHeaderDeco.ImageUrl = Page.ClientScript.GetWebResourceUrl(typeof(DialogBox), "WebControls.Resources.header_decoration.gif");
            imgHeaderDeco.Style.Add("MARGIN-RIGHT", "5px");
            imgHeaderDeco.Style.Add("MARGIN-LEFT", "5px");
            imgHeaderDeco.BorderStyle = BorderStyle.None;
            cell.Controls.Add(imgHeaderDeco);
            dragRow.Cells.Add(cell);

            //Middle-top cell, with the dialog caption in it.
            cell = new HtmlTableCell();
            cell.Align = "left";
            cell.Width = "100%";
            cell.Height = "21";
            dialogTitle = new HtmlGenericControl("b");
            dialogTitle.Style.Add("FONT-SIZE", "10px");
            dialogTitle.Style.Add("COLOR", "White");
            dialogTitle.Style.Add("FONT-FAMILY", "Verdana");
            dialogTitle.InnerHtml = Text;
            cell.Controls.Add(dialogTitle);
            dragRow.Cells.Add(cell);

            //Cell with close button(Top-right)			
            cell = new HtmlTableCell();
            cell.Height = "21";
            imgCloseBtn = new Image();
            imgCloseBtn.ImageUrl = Page.ClientScript.GetWebResourceUrl(typeof(DialogBox), "WebControls.Resources.closebutton.gif");
            imgCloseBtn.Attributes.Add("onclick", string.Format("HideDLG('{0}');", this.ClientID));
            if (!DesignMode)
            {
                if (Page.Request.Browser.IsBrowser("IE"))
                {
                    imgCloseBtn.Style.Add("CURSOR", "HAND");
                }
                else
                {
                    imgCloseBtn.Style.Add("CURSOR", "POINTER");
                }
            } 
            imgCloseBtn.Style.Add("MARGIN-RIGHT", "10px");
            imgCloseBtn.BorderStyle = BorderStyle.None;
            cell.Controls.Add(imgCloseBtn);
            dragRow.Cells.Add(cell);

            //Content area
            HtmlTableRow row = new HtmlTableRow();
            
            row.BgColor = "#cfe2fb";
            row.Height = "100%";
            cell = new HtmlTableCell();
            cell.ColSpan = 3;
            cell.VAlign = "top";
            cell.Height = "100%";
            

            //This is where the ItemTemplate is created
            containerControl = new Control();
            if (ItemTemplate != null)
            {
                ItemTemplate.InstantiateIn(containerControl);
            }
            else
            {
                containerControl.Controls.Add(new LiteralControl(Text));
            }
            cell.Controls.Add(containerControl);
            row.Cells.Add(cell);
            containerTable.Rows.Add(row);

            //Bottom row, with resize button on the bottom-right
            row = new HtmlTableRow();
            row.BgColor = "#cfe2fb";
            cell = new HtmlTableCell();
            cell.ColSpan = 3;
            cell.Align = "right";
            imgResizer = new Image();
            imgResizer.ID = "resizeDragger";
            imgResizer.ImageUrl = Page.ClientScript.GetWebResourceUrl(typeof(DialogBox), "WebControls.Resources.resizer.gif");
            imgResizer.BorderStyle = BorderStyle.None;
            cell.Controls.Add(imgResizer);
            if (Resizable)
            {
                imgResizer.Attributes.Add("onmousedown", string.Format("ResizeStart(event,'{0}');", this.ClientID ));
                imgResizer.Style.Add("CURSOR", "SE-RESIZE");
            }
            row.Cells.Add(cell);
            containerTable.Rows.Add(row);
        }


        //This method is present just to be able to force correct rendering during design-time
        internal void GetDesignTimeHtml()
        {
            this.EnsureChildControls();
        }

        #region "Properties"
        [Browsable(false),
        PersistenceMode(PersistenceMode.InnerProperty)]
        public virtual ITemplate ItemTemplate
        {
            get
            {
                return containerTemplate;
            }
            set
            {
                containerTemplate = value;
            }
        }

        [Category("Appearance")]
        public DisplayStyle InitialDisplayState
        {
            get
            {
                if (ViewState["Vis"] == null) return DisplayStyle.DialogHidden;
                return (DisplayStyle)ViewState["Vis"];
            }
            set
            {
                ViewState["Vis"] = value;
                if (ChildControlsCreated)
                {
                    switch (value)
                    {
                        case DisplayStyle.DialogHidden:
                            this.Style.Add("VISIBILITY", "hidden");                            
                            break;
                        case DisplayStyle.ShowingDialog:
                            this.Style.Add("VISIBILITY", "visible");                            
                            break;
                    }
                }
            }
        }

        [Category("Appearance"),
        Description("Caption for the dialog box")]
        public string Text
        {
            get
            {
                if (ViewState["Text"] == null) return this.ID;
                return (string)ViewState["Text"];
            }
            set
            {
                ViewState["Text"] = value;
                if (this.ChildControlsCreated) this.dialogTitle.InnerHtml = value;
            }
        }

        [Category("Appearance")]
        [Description("Indicates that the control can be resized by the user.")]
        public bool Resizable
        {
            get
            {                
                if (ViewState["RSZ"] == null) return true;
                return (bool)ViewState["RSZ"];
            }
            set
            {
                ViewState["RSZ"] = value;
                if (this.ChildControlsCreated)
                {
                    if (value)
                    {
                        imgResizer.Attributes.Add("onmousedown", string.Format("ResizeStart(event,'{0}','{1}');", this.ClientID, imgResizer.ClientID));
                        imgResizer.Style.Add("CURSOR", "SE-RESIZE");
                    }
                    else
                    {
                        imgResizer.Style.Remove("CURSOR");
                        imgResizer.Attributes.Remove("onmousedown");
                    }
                }
            }
        }

        [Category("Appearance")]
        [Description("Indicates that the control can be moved by the user.")]
        public bool Moveable
        {
            get
            {
                if (ViewState["MOV"] == null) return true;
                return (bool)ViewState["MOV"];
            }
            set
            {
                ViewState["MOV"] = value;
                if (this.ChildControlsCreated)
                {
                    if (value)
                    {
                        dragRow.Attributes.Add("onmousedown", string.Format("dragStart(event,'{0}');", this.ClientID));
                        dragRow.Style.Add("CURSOR", "move");
                    }
                    else
                    {
                        dragRow.Attributes.Remove("onmousedown");
                        dragRow.Style.Remove("CURSOR");
                    }


                }
            }
        }
        #endregion


        //This is overridden so that the control will register the necessary javascript
        //for it to be able to show, hide, resize and move the dialog box
        protected override void OnInit(System.EventArgs e)
        {
            if (!Page.ClientScript.IsClientScriptBlockRegistered(typeof(DialogBox), "includeScript"))
            {
                Page.ClientScript.RegisterClientScriptInclude(typeof(DialogBox), "includeScript", Page.ClientScript.GetWebResourceUrl(typeof(DialogBox), "WebControls.Resources.Dialog.js"));
            }
            base.OnInit(e);
        }

        //This method is overriden to ensure that the outer control is rendered as a 
        //DIV-tag.  It is normally rendered as a SPAN-tag, which would cause incorrect
        //behaviour.
        protected override HtmlTextWriterTag TagKey
        {
            get { return HtmlTextWriterTag.Div;}
        }
    }
}

