using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Murahtour;Integrated Security=True");
    double Total = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        Tdestination.Text = Session["locationID"].ToString();

        String str = "SELECT LocTitle FROM Location WHERE (LocID = @sessionID)";
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.Parameters.Add("@sessionID", SqlDbType.NVarChar).Value = Session["locationID"].ToString();
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();

        

        while (reader.Read())
        {
            Tdestination.Text = reader["LocTitle"].ToString();
        }

        conn.Close();


    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        tbda.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        tdbr.Text = Calendar2.SelectedDate.ToShortDateString();
    }
    protected void Radeco_CheckedChanged(object sender, EventArgs e)
    {
      
    }
    protected void Radsta_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void Radvip_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void Yes_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void No_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["dest"] = Tdestination.Text;
        Session["noPpl"] = Tpeople.Text;
        Session["dateArr"] = tbda.Text;
        Session["dateRet"] = tdbr.Text;

        DateTime Startdate = Convert.ToDateTime(tbda.Text) , Enddate = Convert.ToDateTime(tdbr.Text);
        int night = Convert.ToInt16((Enddate - Startdate).TotalDays);

        Session["night"] = night;

        if (Radeco.Checked == true)
        {
            Session["package"] = Radeco.Text;
            Total += 150 * night;
        }

        if (Radsta.Checked == true)
        {
            Session["package"] = Radsta.Text;
            Total += 250 * night;
        }

        if (Radvip.Checked == true)
        {
            Session["package"] = Radvip.Text;
            Total += 500 * night;
        }

        Session["payment"] = ddlPayment.SelectedValue;

        if (radYes.Checked == true)
        {
            Session["rentv"] = radYes.Text;
            Total += 80 * night;
        }

        if (radNo.Checked == true)
        {
            Session["rentv"] = radNo.Text;
        }

        Session["total"] = Total;




        Response.Redirect("DisplayBook.aspx");
    }
    protected void Tdestination_TextChanged(object sender, EventArgs e)
    {

    }
}