using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace Registration
{
    public class Register
    {
        public string FIRSTNAME;
        public string LASTNAME;
        public string EMAIL;
        public string MOBILENUMBER;
        public string GENDER;
        public string DOB;
        public string CITY;
        public string PHOTO;
        public static SqlConnection sconn = new SqlConnection("data source=DESKTOP-K52EPP6;initial catalog=ASP;integrated security=true");

        public void Insert()
        {
            string query = "INSERT INTO REGISTRATION VALUES('" + FIRSTNAME + "','" + LASTNAME + "','" + EMAIL + "','" + MOBILENUMBER + "','" + GENDER + "','" + DOB + "','" + CITY + "','" + PHOTO + "')";
            SqlCommand comm1 = new SqlCommand(query, sconn);
            sconn.Open();
            comm1.ExecuteNonQuery();
            sconn.Close();

        }
    }
}