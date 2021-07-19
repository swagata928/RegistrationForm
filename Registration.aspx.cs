using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace Registration
{
    public partial class Registration : System.Web.UI.Page
    {
        public Register objUserdetails = new Register();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            objUserdetails.FIRSTNAME = txt1.Text;
            objUserdetails.LASTNAME = txt2.Text;
            objUserdetails.EMAIL = email.Text;
            objUserdetails.MOBILENUMBER = mobile.Text;
            objUserdetails.DOB = dob.Text;
            objUserdetails.CITY = ddlCourse.Text;
            objUserdetails.PHOTO = imgupload.FileName;
            if (male.Selected)
            {
                objUserdetails.GENDER = "MALE";
            }
            else
            {
                objUserdetails.GENDER = "FEMALE";
            }

            objUserdetails.PHOTO = imgupload.FileName.ToString();



            string path = Server.MapPath(@"~\Resumes\") + imgupload.ToString();
            imgupload.ToString();
            objUserdetails.Insert();

            Response.Redirect("Registration Details.aspx");
        }
    }
}