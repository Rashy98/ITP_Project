using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ProductionManage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int i = 1;

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            dateDisplay.Text = CalendarProduction.SelectedDate.ToShortDateString();
          
        }



        
        protected void bitpWC_TextChanged1(object sender, EventArgs e)
        {
            //float f1 = (float)double.Parse(bitpWC.Text);
            float bitp = (float)double.Parse(bitpWC.Text) / 100;
            float wck = (float)double.Parse(wcKG.Text);
            bitWC.Text = (bitp * wck).ToString();
            double bitperc = (100.0 - bitp * 100);

            double y = wck * bitperc / 100;
            wcmaterial.Text = string.Format("{0:N2}", y);
        }

        protected void CBbi_TextChanged(object sender, EventArgs e)
        {
            //float f1 = (float)double.Parse(bitpWC.Text);
            float wcBit =( (float)double.Parse(CBbi.Text) )/ 100;
            float cbk = (float)double.Parse(cbKG.Text);
            cbBit.Text = (wcBit * cbk).ToString();
            double bitperC = (100.0 - wcBit * 100);
            //string s= ((cbk*bitperc)/100).ToString();
            double x = ((cbk * bitperC) / 100);
            cbMaterial.Text = string.Format("{0:N2}", x);
        }

        protected void BinderbitP_changed(object sender, EventArgs e)
        {
            float binBit = (float)double.Parse(BinderBitP.Text) / 100;
            float bindKg = (float)double.Parse(BindKG.Text);
            BinderBitkg.Text = (binBit * bindKg).ToString();
            double bindPerc = (100.0 - binBit * 100);
            double fin = (bindKg * bindPerc) / 100;
            BinderMatKg.Text = string.Format("{0:N2}", fin);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\Rashini;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insertprod", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            float cutkg = float.Parse(cbKG.Text);
            float cutbitp = float.Parse(CBbi.Text);
            float cutbit = float.Parse(cbBit.Text);
            float cutmat = float.Parse(cbMaterial.Text);
         
            cmd.Parameters.AddWithValue("id", ++i);
            cmd.Parameters.AddWithValue("cutkg", cutkg);
            cmd.Parameters.AddWithValue("cutbitper", cutbitp);
            cmd.Parameters.AddWithValue("cutbitkg", cutbit);
            cmd.Parameters.AddWithValue("cutmatkg", cutmat);
            
            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                TextBox1.Text = "Record Inserted Succesfully into the Database";
                TextBox1.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            con.Close();
        }
    }
}