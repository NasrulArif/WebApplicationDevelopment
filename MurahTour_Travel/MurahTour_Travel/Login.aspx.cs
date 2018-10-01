using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;
    SqlDataAdapter da;
    SqlDataReader a;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        Session["username"] = Login1.UserName;
        conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Murahtour;Integrated Security=True");
        string str = "SELECT * FROM Account WHERE ( username = '"+Login1.UserName+"' AND password = '"+Login1.Password+"' )";

        cmd = new SqlCommand(str, conn);
        conn.Open();

        da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        conn.Close();
        int count = ds.Tables[0].Rows.Count;

        if (count == 1)
        {
            Response.Redirect("Booking_Location.aspx");
        }
        else
        {
            Login1.FailureText = "Please enter correct password and username";
        }

    }
}