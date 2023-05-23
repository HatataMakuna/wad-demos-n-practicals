using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Practical2.LabExercise
{
    public partial class CarSticker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string id = txtID.Text;
            string joinedDate = txtJoinedDate.Text;
            string gender = ddlGender.SelectedValue;
            string program = txtProgram.Text;
            string yearOfStudy = ddlYearOfStudy.SelectedValue;
            string registrationNumber = txtRegistrationNumber.Text;
            string vehicleType = ddlVehicleType.SelectedValue;

            string selectedInfo = $"Name: {name}<br/>" +
                                  $"ID: {id}<br/>" +
                                  $"Joined Date: {joinedDate}<br/>" +
                                  $"Gender: {gender}<br/>" +
                                  $"Program: {program}<br/>" +
                                  $"Year of Study: {yearOfStudy}<br/>" +
                                  $"Vehicle Registration Number: {registrationNumber}<br/>" +
                                  $"Vehicle Type: {vehicleType}";

            lblSelectedInfo.Text = selectedInfo;
        }
    }
}