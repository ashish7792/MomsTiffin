using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddtoCart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConstringDWBMS.net"].ConnectionString);
    decimal Total;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }       


    }

    protected void Bind()
    {
        ddlCategory.Items.Insert(0, new ListItem("Select Category", "0"));
        con.Open();
        SqlCommand cmd = new SqlCommand("select distinct Category from Cart", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlCategory.Items.Add(dr["Category"].ToString());
        }
        con.Close();
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
     ddlProduct.Items.Clear(); 
     ddlProduct.Items.Insert(0, new ListItem("Select Product", "0"));         
     con.Open();
     SqlCommand cmd = new SqlCommand("select distinct Product from Cart where Category='" + ddlCategory.SelectedItem.Text + "'", con);
     SqlDataReader dr = cmd.ExecuteReader();
     while (dr.Read())
     {
          ddlProduct.Items.Add(dr["Product"].ToString());
     }
     con.Close();          

    }




    protected void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Cart where Product='" + ddlProduct.SelectedItem.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            lblPrice.Text = dr["Price"].ToString();
            txtQunatity.Text = dr["Qunatity"].ToString();
            lblSubTotal.Text = Convert.ToString(Convert.ToDecimal(lblPrice.Text) * Convert.ToInt32(txtQunatity.Text));
        }
        con.Close();

    }
    protected void txtQunatity_TextChanged(object sender, EventArgs e)
    {

        if (txtQunatity.Text == "")
        {
        }

        else
        {
            lblSubTotal.Text = Convert.ToString(Convert.ToDecimal(lblPrice.Text) * Convert.ToInt32(txtQunatity.Text));
        }

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        ddlCategory.Items.Clear();
        Bind();
        CalculateTotal();
        con.Open();
        SqlCommand cmd2 = new SqlCommand("update Cart Set Qunatity='" + txtQunatity.Text + "',SubTotal='" + lblSubTotal.Text + "' where Product='" + ddlProduct.SelectedItem.Text + "'", con);
        cmd2.ExecuteNonQuery();
        con.Close();
      //  BindGridView();
    }

    protected void CalculateTotal()
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from Cart", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
            if (dr["Subtotal"] != "")
                Total = Total + Convert.ToDecimal(dr["Subtotal"].ToString());
        }
        lblTotal.Text = Convert.ToString(Total);
        con.Close();
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

       // Label lblId = GridView1.Rows[e.RowIndex].FindControl("lblId") as Label;
        //Int32 id = Convert.ToInt32(lblId.Text);
        con.Open();
        SqlCommand cmd = new SqlCommand("update Cart set SubTotal='0',Qunatity='1' where id=" + 1 + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
       // BindGridView();
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from Cart", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        Total = Convert.ToDecimal(0.0);
        while (dr.Read())
        {
            if (dr["Subtotal"] != "")
                Total = Total + Convert.ToDecimal(dr["Subtotal"].ToString());
        }
        lblTotal.Text = Convert.ToString(Total);
        con.Close();   




    }
}