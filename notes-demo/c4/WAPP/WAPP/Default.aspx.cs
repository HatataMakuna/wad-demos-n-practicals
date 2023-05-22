using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WAPP.Models;

namespace WAPP
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable gvStudents_GetData()
        {
            var _db = new StudentContext();
            IQueryable<Student> query = _db.Students;

            return query;
        }

        public void fvAddStudent_InsertItem()
        {
            var item = new WAPP.Models.Student();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                // Save changes here
                var _db = new StudentContext();
                _db.Students.Add(item);
                _db.SaveChanges();
                gvStudents.DataBind();
            }
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public WAPP.Models.Student fvAddStudent_GetItem(int? id)
        {
            if (id == null)
                return null;

            var _db = new StudentContext();
            return _db.Students.Find(id);
        }

        public IQueryable<WAPP.Models.Student> fvAddStudent_GetStudents()
        {
            var _db = new StudentContext();
            return _db.Students;
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void fvAddStudent_UpdateItem(int id)
        {
            WAPP.Models.Student item = null;
            // Load the item here, e.g. item = MyDataLayer.Find(id);
            var _db = new StudentContext();
            item = _db.Students.Find(id);

            if (item == null)
            {
                // The item wasn't found
                ModelState.AddModelError("", String.Format("Item with id {0} was not found", id));
                return;
            }
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                // Save changes here, e.g. MyDataLayer.SaveChanges();
                _db.SaveChanges();
            }
        }
    }
}