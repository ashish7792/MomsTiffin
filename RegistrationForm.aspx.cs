using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    int s1;
    int s;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConstringDWBMS.net"].ConnectionString);
    int attempts;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
       
    }
    protected void loginBtn_Click(object sender, EventArgs e)
    {

        try
        {

            Response.Redirect("Relogin.aspx");
        }
        catch
        {
            
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand commmder = new SqlCommand("InserttoRegistration", con);
        commmder.CommandType = CommandType.StoredProcedure;
        commmder.Parameters.AddWithValue("@qryflag", "saveRegDetails");
        commmder.Parameters.AddWithValue("@regname", txtName.Text);
        commmder.Parameters.AddWithValue("@regemail", txtRegEmail.Text);
        //commmder.Parameters.AddWithValue("@regadd", txtAddress.Text);
        commmder.Parameters.AddWithValue("@regmob", txtMobile.Text);
        commmder.Parameters.AddWithValue("@regpass", txtPasser.Text);

        commmder.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Thanks for Registration!..')</script>");

        Session["usermob"] = txtMobile.Text;
        Session["username"] = txtName.Text;
        Session["address"] = txtAddress.Text;

        Session["emailsend"] = txtRegEmail.Text;

        Response.Redirect("Login.aspx");

    }

    protected void btnSignin_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("Login.aspx");
       


    }
}