using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Schema;

namespace Epicode_S3_L1_BackEnd
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            decimal totalExtra = 0;
            string selectedValue = DropDownList1.SelectedItem.Value;

            foreach (ListItem Item in CheckBoxList1.Items)
            {
                if (Item.Selected && selectedValue == "bmw.png")
                {
                    decimal extraPrice = Convert.ToDecimal(Item.Value);
                    totalExtra += extraPrice + 64000;
                }
                if (Item.Selected && selectedValue == "porsche.png")
                {
                    decimal extraPrice = Convert.ToDecimal(Item.Value);
                    totalExtra += extraPrice + 64000;
                }
                if (Item.Selected && selectedValue == "ferrari.png")
                {
                    decimal extraPrice = Convert.ToDecimal(Item.Value);
                    totalExtra += extraPrice + 64000;
                }
            }

            Result.InnerHtml = $"Prezzo totale: {totalExtra:C}";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = DropDownList1.SelectedItem.Value;
            if (selectedValue == "bmw.png")
            {
                Price.InnerHtml = DropDownList1.SelectedItem.Text + "<br>A partire da: " + "Euro 64.000";
            }
            if (selectedValue == "porsche.png")
            {
                Price.InnerHtml = DropDownList1.SelectedItem.Text + "<br>A partire da: " + "Euro 92.000";
            }
            if (selectedValue == "ferrari.png")
            {
                Price.InnerHtml = DropDownList1.SelectedItem.Text + "<br>A partire da: " + "Euro 123.000";
            }
            Image1.ImageUrl = $"~/Content/imgs/{selectedValue}";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}