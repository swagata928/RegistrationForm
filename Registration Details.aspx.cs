using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Registration
{
    public partial class Registration_Details : System.Web.UI.Page
    {
        public static SqlConnection con = new SqlConnection(@"data source=DESKTOP-K52EPP6; initial catalog=ASP; integrated security= true");

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter adap = new SqlDataAdapter("select * from registration", con);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            datagrid.DataSource = dt;
            datagrid.DataBind();


        }


        protected void gvDepartments_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}