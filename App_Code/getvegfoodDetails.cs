using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for getvegfoodDetails
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]

public class getvegfoodDetails : System.Web.Services.WebService {


        [WebMethod]
        public void GetallVegItems()
        {
            List<VegDetails> vegObj = new List<VegDetails>();

            string cs = ConfigurationManager.ConnectionStrings["ConstringDWBMS.net"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("InserttoVegDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@qryflag", "savetoVegItems");
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    VegDetails obj = new VegDetails();
                    obj.mealno = Convert.ToInt32(dr["mealno"]);
                    obj.mealname = dr["mealname"].ToString();
                    obj.items = dr["items"].ToString();
                    obj.price = Convert.ToInt32(dr["price"]);

                    vegObj.Add(obj);
                }

                System.Web.Script.Serialization.JavaScriptSerializer js = new System.Web.Script.Serialization.JavaScriptSerializer();
                Context.Response.Write(js.Serialize(vegObj));
            }

        }

     [WebMethod]
     public void GetallNonVegItems()
     {
         List<NonVegDetails> nonvegObj = new List<NonVegDetails>();
         string cs = ConfigurationManager.ConnectionStrings["ConstringDWBMS.net"].ConnectionString;
         using (SqlConnection con = new SqlConnection(cs))
         {
             SqlCommand cmd = new SqlCommand("InserttoVegDetails", con);
             cmd.CommandType = CommandType.StoredProcedure;
             cmd.Parameters.AddWithValue("@qryflag", "savenonvegDetails");
             con.Open();
             SqlDataReader dr = cmd.ExecuteReader();
             while (dr.Read())
             {
                 NonVegDetails nvobj = new NonVegDetails();
                 nvobj.mealno = Convert.ToInt32(dr["mealno"]);
                 nvobj.mealname = dr["mealname"].ToString();
                 nvobj.items = dr["items"].ToString();
                 nvobj.price = Convert.ToInt32(dr["price"]);
                   
                 nonvegObj.Add(nvobj);

             }

             System.Web.Script.Serialization.JavaScriptSerializer js = new System.Web.Script.Serialization.JavaScriptSerializer();
             Context.Response.Write(js.Serialize(nonvegObj));
         }

     }

    [WebMethod]
     public void GetallAdminData()
     {
         List<AdminDashboard> adObj = new List<AdminDashboard>();
         string cs = ConfigurationManager.ConnectionStrings["ConstringDWBMS.net"].ConnectionString;
         using (SqlConnection con = new SqlConnection(cs))
         {
             SqlCommand cmd = new SqlCommand("InserttoAdmin", con);
             cmd.CommandType = CommandType.StoredProcedure;
             cmd.Parameters.AddWithValue("@qryflag", "displayAdminData");
             con.Open();
             SqlDataReader dr = cmd.ExecuteReader();
             while (dr.Read())
             {
                 AdminDashboard adminobj = new AdminDashboard();
                 adminobj.username = dr["username"].ToString();
                 adminobj.mobileno = dr["mobno"].ToString();
                 adminobj.addrs = dr["addrs"].ToString();
                 adminobj.subdate = dr["subdate"].ToString();
                 adminobj.lord = dr["lord"].ToString();
                 adminobj.tmduration = dr["tmduration"].ToString();
                 adminobj.mno = Convert.ToInt32(dr["mno"]);
                 adminobj.mealnm = dr["mealnm"].ToString();
                 adminobj.mealitem = dr["mealitem"].ToString();
                 adminobj.qty = Convert.ToInt32(dr["qty"]);
                 adminobj.price = Convert.ToInt32(dr["price"]);
                 adObj.Add(adminobj);

             }

             System.Web.Script.Serialization.JavaScriptSerializer js = new System.Web.Script.Serialization.JavaScriptSerializer();
             Context.Response.Write(js.Serialize(adObj));
         }

     }

 
}
