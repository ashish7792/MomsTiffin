using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.IO;
using System.Net;
using System.Configuration;
using System.Web.Configuration;


public partial class FinalAmtandAddr : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConstringDWBMS.net"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                Response.Cache.SetCacheability(HttpCacheability.NoCache);

                Session["Reset"] = true;
                Configuration config = WebConfigurationManager.OpenWebConfiguration("~/Web.Config");
                SessionStateSection section = (SessionStateSection)config.GetSection("system.web/sessionState");
                int timeout = (int)section.Timeout.TotalMinutes * 1000 * 60;
                ClientScript.RegisterStartupScript(this.GetType(), "SessionAlert", "SessionExpireAlert(" + timeout + ");", true);



                if (Session["mealno"].ToString() == "NULL")
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your food cart is empty..Please Order food first')</script>");
                    Response.Redirect("index.aspx");
                }
                else
                {
                    lbmealno.Text = Session["mealno"].ToString();
                    lbmealnm.Text = Session["mealnm"].ToString();
                    lblitm.Text = Session["mealitem"].ToString();
                    lbltamt.Text = Session["total"].ToString();
                    lblqty.Text = Session["qty"].ToString();
                    lblprice.Text = Session["price"].ToString();
                }
            }
            catch
            {
            
            }
        }
    }
    protected void DelvBtn_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("InsertoDeliverydetails", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@qryflag", "savetoDeliveryAdd");
        cmd.Parameters.AddWithValue("@fname", txtFName.Text);
        cmd.Parameters.AddWithValue("@hname", txtAdd1.Text);
        cmd.Parameters.AddWithValue("@streetname", txtAdd2.Text);
        cmd.Parameters.AddWithValue("@areacity",txtAdd3.Text);
        cmd.Parameters.AddWithValue("@pin", txtPincode.Text);
        cmd.Parameters.AddWithValue("@majlandmark", txtMjld.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Order sent succesfully!..')</script>");
        txtFName.Text = "";
        txtAdd1.Text = "";
        txtAdd2.Text = "";
        txtAdd3.Text = "";
        txtPincode.Text = "";
        txtMjld.Text = "";


       /* MailMessage m = new MailMessage();
        SmtpClient sc = new SmtpClient();
        try
        {
            m.From = new MailAddress("ashish@paramonos.com");
            m.To.Add(Session["orderemail"].ToString());
            m.Subject = "Thanks for ordering from Mom'sSpoon.com";
            m.IsBodyHtml = true;
            m.Body = "Thank you for signing up with Mom'sSpoon. We provide healthy, economical and hassle free solution for daily meal needs during the busy work week.Our meals are always fresh, healthy and home-made using fine ingredients.We offer lunch and dinner, delivered to your home or office at a preferred time. With plans starting at just Rs. 110 per meal, you can pick the option that best suits your needs.";
            sc.Host = "smtp.gmail.com";
            sc.Port = 25;
            sc.Credentials = new System.Net.NetworkCredential("ashish@paramonos.com", "Par@2014");

            sc.EnableSsl = true;
            sc.Send(m);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
            Response.Write("Email Send successfully");

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }*/
         

        if (Session["username"]  != null)
        {
            string usrnm = Session["username"].ToString();
            string usrNo = Session["usermob"].ToString();
            string address = Session["address"].ToString();
            string lord = Session["ordercheck"].ToString();
            string mno = Session["mealno"].ToString();
            string mname = Session["mealnm"].ToString();
            string mitem = Session["mealitem"].ToString();
            string datest = Session["datechecker"].ToString();

            string tmDur = Session["tmDuration"].ToString();
            string qty = Session["qty"].ToString();
            string totalamt = Session["total"].ToString();


            SqlCommand cmd1 = new SqlCommand("InserttoAdmin", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@qryflag", "savetoAdmintable");
            cmd1.Parameters.AddWithValue("@username", usrnm);
            cmd1.Parameters.AddWithValue("@mobno", usrNo);
            cmd1.Parameters.AddWithValue("@addrs", address);
            cmd1.Parameters.AddWithValue("@subdate", datest);
            cmd1.Parameters.AddWithValue("@lord", lord);
            cmd1.Parameters.AddWithValue("@tmduration", Session["tmDuration"].ToString());
            cmd1.Parameters.AddWithValue("@mno", mno);
            cmd1.Parameters.AddWithValue("@mealnm", mname);
            cmd1.Parameters.AddWithValue("@mealitem", mitem);
            cmd1.Parameters.AddWithValue("@qty", qty);
            cmd1.Parameters.AddWithValue("@price", totalamt);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            //string tamt = ViewState["total"].ToString();
            //string qtyno = ViewState["qty"].ToString();

            string msghead = "Your Order Received:order for ";
            string msgend = "Thanku for ordering from Mom'sSpoon, order will be delivered in next 2 hours.";
            string pr = "Price:";
            string qt = "Quantity:";
            string rs = "rs";

            string usrNon = Session["usermob"].ToString();

          /*  string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=aniketulhalkar28@gmail.com:aniket123&senderID=TEST SMS&receipientno=" + usrNon + "&msgtxt=" + msghead + " " + lbmealnm.Text + " " + lblitm.Text + " " + qt + " " + qty + " " + pr + " " + totalamt + " " + rs + " " + msgend + "&state=4";
            WebRequest request = HttpWebRequest.Create(strUrl);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream s = (Stream)response.GetResponseStream();
            StreamReader readStream = new StreamReader(s);
            string dataString = readStream.ReadToEnd();
            response.Close();
            s.Close();
            readStream.Close();*/

            Response.Redirect("ProceedToPayment.aspx");


        }
        else
        {

            con.Open();
            SqlCommand cmd1 = new SqlCommand("select regname,regadd,regmob from RegistrationDetails where regemail = '" + Session["orderemail"].ToString() + "'", con);
            DataTable dt = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                string un = dt.Rows[0][0].ToString();
                string ad = dt.Rows[0][1].ToString();
                string mob = dt.Rows[0][2].ToString();


                SqlCommand cmd2 = new SqlCommand("InserttoAdmin", con);
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.AddWithValue("@qryflag", "savetoAdmintable");
                cmd2.Parameters.AddWithValue("@username", un);
                cmd2.Parameters.AddWithValue("@mobno", mob);
                cmd2.Parameters.AddWithValue("@addrs", ad);
                cmd2.Parameters.AddWithValue("@lord", Session["ordercheck"].ToString());
                cmd2.Parameters.AddWithValue("@tmduration", Session["tmDuration"].ToString());
                cmd2.Parameters.AddWithValue("@subdate", Session["datechecker"].ToString());
                cmd2.Parameters.AddWithValue("@mno", Session["mealno"].ToString());
                cmd2.Parameters.AddWithValue("@mealnm", Session["mealnm"].ToString());
                cmd2.Parameters.AddWithValue("@mealitem", Session["mealitem"].ToString());
                cmd2.Parameters.AddWithValue("@qty",Session["qty"].ToString());
                cmd2.Parameters.AddWithValue("@price", Session["total"].ToString());
                cmd2.ExecuteNonQuery();
                con.Close();
                //string tamt = ViewState["total"].ToString();
               //string qtyno = ViewState["qty"].ToString();

            string msghead = "Your Order Received:order for ";
            string msgend = "Thanku for ordering from Mom'sSpoon, order will be delivered in next 2 hours.";
            string pr = "Price:";
            string qt = "Quantity:";
            string rs = "rs";

               //string usrNon = Session["usermob"].ToString();

          /*  string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=aniketulhalkar28@gmail.com:aniket123&senderID=TEST SMS&receipientno=" + mob + "&msgtxt=" + msghead + " " + lbmealnm.Text + " " + lblitm.Text + " " + qt + " " + Session["qty"].ToString() + " " + pr + " " + Session["total"].ToString() + " " + rs + " " + msgend + "&state=4";
            WebRequest request = HttpWebRequest.Create(strUrl);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream s = (Stream)response.GetResponseStream();
            StreamReader readStream = new StreamReader(s);
            string dataString = readStream.ReadToEnd();
            response.Close();
            s.Close();
            readStream.Close();*/

            Response.Redirect("ProceedToPayment.aspx");
            }

        }
    }
    protected void CheckoutBtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.paypal.me/AshishWaghmare");
    }
}