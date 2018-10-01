using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default4 : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;
    SqlDataAdapter da;
    SqlDataReader a;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();

        conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=DATABASE;Integrated Security=True");
        string str = "UPDATE password FROM Account SET password = '" + ChangePassword1.NewPassword + "'  Where ( password = '" +ChangePassword1.CurrentPassword+ "') ";
        cmd = new SqlCommand(str, conn);
        conn.Open();
        da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        conn.Close();
    }
}