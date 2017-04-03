using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Relogin : System.Web.UI.Page
{
      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConstringDWBMS.net"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            Session["Reset"] = true;
            Configuration config = WebConfigurationManager.OpenWebConfiguration("~/Web.Config");
            SessionStateSection section = (SessionStateSection)config.GetSection("system.web/sessionState");
            int timeout = (int)section.Timeout.TotalMinutes * 1000 * 60;
            ClientScript.RegisterStartupScript(this.GetType(), "SessionAlert", "SessionExpireAlert(" + timeout + ");", true);

            lblmsger.Visible = false;
        }

    }
    protected void loginBtn_Click(object sender, EventArgs e)
    {

        try{
          con.Open();
            SqlCommand cmd1 = new SqlCommand("Select regemail,regpass from RegistrationDetails where regemail = '" + txtEmail.Text + "'AND regpass='"+txtPwd.Text+"'", con);
            DataTable dt = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt);

            if (dt.Rows.Count > 0)
            {   
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Login is Successfully done!.. ')</script>");
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('You can order Now in Price List.. ')</script>");
                try
                {
                    string str = Session["mealno"].ToString();

                    Session["orderemail"] = txtEmail.Text;
                   

                    if (Session["mealno"] != "NULL")
                    {

                        Response.Redirect("FinalAmtandAddr.aspx");
                    }
                    else
                    {
                        Session["mealno"] = "NULL";
                    }

                   
                }
                catch
                {
                    Response.Redirect("FinalAmtandAddr.aspx");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('UserId or Password does not exist !.. ')</script>");
                return;
            }

            con.Close();
        }
    
        catch
        {
            
        }
    }
}