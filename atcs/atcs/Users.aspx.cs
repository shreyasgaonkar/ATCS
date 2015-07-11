using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.Odbc;

namespace atcs
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null) { Response.Redirect("Login.aspx"); }
            String username = Session["username"].ToString();
            Response.Write("Welcome " + username + "<br>");
            OdbcConnection conn = new OdbcConnection();
            String myConnectionString = "Driver={Microsoft Access Driver (*.mdb)};" + @"Dbq=C:\Users\water resources\Desktop\collegeDB.mdb";
            conn.ConnectionString = myConnectionString;
            conn.Open();

            String getrfid = "select rfid from UserData where Username = '" + username + "';";


            OdbcCommand com1 = new OdbcCommand(getrfid, conn);
            OdbcDataReader rfid_reader = com1.ExecuteReader();
            rfid_reader.Read();
            String thisuser_rfid = rfid_reader[0].ToString();
            //Response.Write(thisuser_rfid);
            
            string checkuser = "select inrfid,intime,cost from rfid_log where (  inrfid = '" + thisuser_rfid + "' )";

            OdbcCommand com = new OdbcCommand(checkuser, conn);
            OdbcDataReader reader = com.ExecuteReader();


            //Response.Write("Welcome" + Session["username"] + "<br>");

            gvUserInfo.DataSource = reader;
            gvUserInfo.DataBind();
            OdbcConnection conn3 = new OdbcConnection();
            String myConnectionString3 = "Driver={Microsoft Access Driver (*.mdb)};" + @"Dbq=C:\Users\water resources\Desktop\collegeDB.mdb";
            conn3.ConnectionString = myConnectionString3;
            conn3.Open();
            String cost = "select sum(cost) from rfid_log where inrfid = '" + thisuser_rfid + "';";
            OdbcCommand com3 = new OdbcCommand(cost, conn3);
            OdbcDataReader cost_reader = com3.ExecuteReader();
            cost_reader.Read();
            TextBox1.Text = cost_reader[0].ToString();
            conn.Close();
            conn3.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}