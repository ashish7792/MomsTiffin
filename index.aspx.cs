using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Drawing;




public partial class index : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConstringDWBMS.net"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        
       

    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {

    }
    
   
    protected void btnSend_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("InserttoCustomerDetails", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@qryflag", "CustomerInfo");
        cmd.Parameters.AddWithValue("@custname", txtusername.Text);
        cmd.Parameters.AddWithValue("@custemail", txtuseremail.Text);
        cmd.Parameters.AddWithValue("@custcomment", txtCommentDetails.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Thanks for your Feedback!..')</script>");
        txtCommentDetails.Text = "";
    }


    protected void btnReg_Click(object sender, EventArgs e)
    {
       /* SqlCommand cmd = new SqlCommand("InserttoRegistration", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@qryflag", "saveRegDetails");
        cmd.Parameters.AddWithValue("@regname", txtname.Text);
        cmd.Parameters.AddWithValue("@regemail", txtemail.Text);
        cmd.Parameters.AddWithValue("@regadd", txtAdd.Text);
        cmd.Parameters.AddWithValue("@regmob", txtMob.Text);
        cmd.Parameters.AddWithValue("@regpass", txtPass.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Thanks for Registration!..')</script>");
        lblRegmsg.Text = "Registeration Done Successfully!..";
        Session["usermob"] = txtMob.Text;
        Session["username"] = txtname.Text;
        Session["address"] = txtAdd.Text;


         txtname.Text = "";
         txtemail.Text ="";
         txtMob.Text="";
         txtPass.Text = "";
         lblRegmsg.Text = "";
        */

    }

    protected void loginBtn_Click(object sender, EventArgs e)
    {

        try
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("Select regemail,regpass from RegistrationDetails where regemail = '" + txtEmailer.Text + "'AND regpass='" + txtPwd.Text + "'", con);
            DataTable dt = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Login is Successfully done!.. ')</script>");
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('You can order Now in Price List.. ')</script>");
                Response.Redirect("index.aspx");
            }
            else
            {
                lblMsg.Text = "UserId or Password does not exist";
                lblMsg.ForeColor = Color.Red;
                return;
            }

            con.Close();
        }
        catch
        {

        }
    }

    protected void btnNonveg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Subscription.aspx");
    }

    protected void btnaddtoCrt_Click(object sender, EventArgs e)
    {




    }
}