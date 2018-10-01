using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DisplayBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblName.Text = Session["username"].ToString();
        lblDest.Text = Session["dest"].ToString();
        lblNPer.Text = Session["noPpl"].ToString();
        lblDAr.Text = Session["dateArr"].ToString();
        lblDRe.Text = Session["dateRet"].ToString();
        lblNight.Text = Session["night"].ToString();
        lblPack.Text = Session["package"].ToString();
        lblPay.Text = Session["payment"].ToString();
        lblVRent.Text = Session["rentv"].ToString();
        lblPrice.Text = Session["total"].ToString();
            
    }
}