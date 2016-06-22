using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class candidate_status : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("data source=AXPRESS-PC; initial catalog=Axpress; integrated security=true;");


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            tab1.Visible = false;
        }
      
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {




        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Purpose_of_shortlisted_candidates where candidate_name	= @candidate_name ", con);
        cmd.Parameters.AddWithValue("@candidate_name", TextBox1.Text);
       
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            Label1.Text = dr["Req_Des"].ToString();
            Label2.Text = dr["call_date"].ToString();
            Label3.Text = dr["Call_Preson_Name"].ToString();
            Label4.Text = dr["Job_Profile"].ToString();
            Label5.Text = dr["ReqLoc"].ToString();
            Label6.Text = dr["candidate_name"].ToString();

            Label7.Text = dr["Candidate_Cont_Numbr"].ToString();

            Label8.Text = dr["Candidate_Current_LocateAt"].ToString();
            Label9.Text = dr["Current_Design"].ToString();
            Label10.Text = dr["Current_Compny_Name"].ToString();
            Label11.Text = dr["Type_Of_Compny"].ToString();
            Label12.Text = dr["Highest_Qualification"].ToString();
            Label13.Text = dr["Total_Experience"].ToString();
            Label14.Text = dr["Cuurent_CTC"].ToString();
            Label15.Text = dr["Exp_CTC"].ToString();
            Label16.Text = dr["Ready_for_Relocate"].ToString();
            Label17.Text = dr["Reffered_By"].ToString();
            Label18.Text = dr["Reffered_By_Name"].ToString();
            Label19.Text = dr["Status"].ToString();
            Label20.Text = dr["Ready_for_Interview"].ToString();
            Label21.Text = dr["Interview_Schdule_Date_Time"].ToString();
            Label22.Text = dr["Interview_Schdule_with"].ToString();
            Label23.Text = dr["Designation"].ToString();
            Label24.Text = dr["Type_of_Interview"].ToString();
            Label25.Text = dr["Remarks"].ToString();
            Label26.Text = dr["DOB"].ToString();

            tab1.Visible = true;

        }
        else
        {

            con.Close();
            
            Response.Write("Entry Not Found");
        }
       
       
 
}
 
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into final_status_of_candidates values('" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" +TextBox4.Text + "','" + TextBox5.Text + "' )", con);



        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Submitted Successfully");
    }
}
    
