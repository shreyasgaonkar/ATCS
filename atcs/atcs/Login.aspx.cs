using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Odbc;

namespace atcs
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            OdbcConnection conn = new OdbcConnection();
            // OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            String myConnectionString = "Driver={Microsoft Access Driver (*.mdb)};" + @"Dbq=C:\Users\water resources\Desktop\collegeDB.mdb";
            conn.ConnectionString = myConnectionString;
            //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();

            string checkuser = "select count(*) from UserData where (  UserName= '" + TextBoxUserName.Text + "' and Password='" + TextBoxPassword.Text + "' )";
            Response.Write(checkuser);
            OdbcCommand com = new OdbcCommand(checkuser, conn);
            //SqlCommand com = new SqlCommand(checkuser, conn);
            OdbcDataReader reader = com.ExecuteReader();
            reader.Read();

            Response.Write(reader[0]);
            if (reader[0].ToString() == "1")
            {

                Session["username"] = TextBoxUserName.Text;
                Response.Redirect("Users.aspx");
            }
            else { Response.Write("else"); }
            conn.Close();
        }
    }
}