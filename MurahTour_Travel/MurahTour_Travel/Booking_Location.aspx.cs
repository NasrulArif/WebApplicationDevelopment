using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Booking_Location : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Murahtour;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        String str = "SELECT * FROM Location WHERE (LocTitle LIKE '%' + @state + '%')";
        SqlDataAdapter sda = new SqlDataAdapter(str, conn);
        sda.SelectCommand.Parameters.Add("@state", SqlDbType.NVarChar).Value = ddlState.SelectedValue;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "click")
        {
               Session["locationID"] = e.CommandArgument.ToString();
              Response.Redirect("Package.aspx");
        }
    }

    protected void lbtDest01_Click(object sender, EventArgs e)
    {
        
    }

    
}