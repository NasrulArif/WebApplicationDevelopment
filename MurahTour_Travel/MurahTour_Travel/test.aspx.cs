using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int n = 4;

        TextBox[] textBoxes = new TextBox[n];
        Label[] labels = new Label[n];

        for (int i = 0; i < n; i++)
        {
            textBoxes[i] = new TextBox();
            // Here you can modify the value of the textbox which is at textBoxes[i]

            labels[i] = new Label();
            // Here you can modify the value of the label which is at labels[i]
        }

        // This adds the controls to the form (you will need to specify thier co-ordinates etc. first)
        for (int i = 0; i < n; i++)
        {
            this.Controls.Add(textBoxes[i]);
            this.Controls.Add(labels[i]);
        }
    }
}