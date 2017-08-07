using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.IO;

public partial class Subscription : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConstringDWBMS.net"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

          
            lblSubs.ForeColor = System.Drawing.Color.Blue;

            string str = Request.QueryString["mealno"];


            ViewState["ObjStr"] = str;

            Session["mno"] = str;

            string firstStr = Session["mno"].ToString();

          
                  if (str != null)
                  {
                      con.Open();
                      SqlCommand cmd1 = new SqlCommand("Select * from Orderfood where mealno = '" + str + "'", con);
                      DataTable dt = new DataTable();
                      SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                      da1.Fill(dt);

                      if (dt.Rows.Count > 0)
                      {
                          lbmealno.Text = dt.Rows[0][0].ToString();
                         // lbmealnm.Text = dt.Rows[0][1].ToString();
                          lblitm.Text = dt.Rows[0][2].ToString();
                          lblprice.Text = dt.Rows[0][3].ToString();


                          int s1 = dpdQuantity.SelectedIndex + 1;
                          int s2 = int.Parse(lblprice.Text);

                          int total = s1 * s2;
                          lbltamt.Text = total.ToString();

                       if (lbmealno.Text != "")
                          {
                              Session["mealno"] = lbmealno.Text;
                          }
                          else
                          {
                              Session["mealno"] = null;
                       }        
                          Session["mealitem"] = lblitm.Text;
                          Session["price"] = lblprice.Text;

                      }
                      con.Close();
                  }

              }

        }
    

  
    protected void dpdQuantity_SelectedIndexChanged(object sender, EventArgs e)
    {
        
         int s1 = dpdQuantity.SelectedIndex + 1;
         int s2 = int.Parse(lblprice.Text);

         int total = s1 * s2;
         lbltamt.Text = total.ToString();
         Session["total"] = lbltamt.Text;
         Session["qty"] = s1; 
       // lbltamt.Text = Convert.ToInt32(dpdQuantity.SelectedValue) * Convert.ToInt32(i);



    }
    protected void btnPrcodr_Click(object sender, EventArgs e)
    {

       if (chklunch.Checked == true && chkdinner.Checked == true)
        {
            ViewState["chkorder"] ="3";
        
        }
                Session["ordercheck"] = ViewState["chkorder"];


                if (txtCalender.Text == "" && txtCalendertoDate.Text == "")
                {

                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please Enter Subscription Date')</script>");
                }

                else
                {
                    Response.Redirect("RegistrationForm.aspx");
                }
    }

    protected void chklunch_CheckedChanged(object sender, EventArgs e)
    {

        if (chklunch.Checked == true)
        {
            ViewState["chkorder"] = "Lunch";

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('You have ordered for lunch!..')</script>");
        }
        else 
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please select lunch')</script>");
        }
    }




    protected void chkdinner_CheckedChanged(object sender, EventArgs e)
    {
        if (chkdinner.Checked == true)
        {

            ViewState["chkorder"] = "Dinner";

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('You have ordered for Dinner!..')</script>");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please select combo for Lunch/Dinner')</script>");
           // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please select Dinner')</script>");
        }

    }

    protected void txtCalender_TextChanged(object sender, EventArgs e)
    {
        try
        {

            if (Convert.ToDateTime(txtCalender.Text) >= System.DateTime.Now)
            {

                Session["datechecker"] = txtCalender.Text;

                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your subscription starts from!..')</script>");
            }
            else
            {
                Session["datechecker"] = txtCalender.Text;

                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Past date not allowed')</script>");
            }
        }
        catch 
        {
        
        }

    }

  
    protected void btnCalDate_Click(object sender, EventArgs e)
    {
        if (txtCalender.Text != "" && txtCalendertoDate.Text != "")
        {
            DateTime fromyear = Convert.ToDateTime(txtCalender.Text);
            DateTime toYear = Convert.ToDateTime(txtCalendertoDate.Text);

            int year = toYear.Year - fromyear.Year;

            int month = toYear.Month - fromyear.Month;

            int totalMonths = (year * 12) + month;

            Session["tmDuration"] = Convert.ToString(totalMonths);

            lblDateMsger.Text = "Your Subscription is for"  +" "+ Convert.ToString(totalMonths) + " " +"months from Now";

            lblDateMsger.ForeColor = System.Drawing.Color.Green;

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please Enter Vaild Date')</script>");
        }

    }
    protected void btnRemoveItem_Click(object sender, EventArgs e)
    {
       



    }
}