using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Candidate_Requirment_Request : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source=AXPRESS-PC; initial catalog=Axpress; integrated security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void Button1_Click(object sender, EventArgs e)
    {
   
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into HR (Req_Dept, Req_Type, Req_Desgn, No_of_Req1, Req_Loc, Qualification, Experience1, Experience2, Budget1,Budget2,PC_Lit,  Kar, DWER, PerJob, TempJob, FullTimeJob, PartTimeJob, ReqBy, AproveBy,ReqDate,EstDate) values ('" + DropDownList1.SelectedItem.Text + "', '" + DropDownList2.SelectedItem.Text + "', '" + DropDownList3.SelectedItem.Text + "', '" + TxtBx2.Text + "', '" + Location.Text + "','" + qualification.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "', '" + TextBox9.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox1.Text + "','" + TextBox11.Text + "','" + TextBox14.Text + "', '" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + txtDate.Text + "','" + EstDate.Text + "')", con);


        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Form Successfully Submitted");

    }
  
    protected void txtDate_TextChanged(object sender, EventArgs e)
    {

    }
}