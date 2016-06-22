using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class purpose__of_shortlisted_candidates1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source= AXPRESS-PC; initial catalog=Axpress; integrated security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    //    TextBox1.Text = Session["Designation"].ToString();
    //    TextBox3.Text = Session["Call Person Name"].ToString();

    //    //{
    //    if (Session["Call Person Name"] == null)
    //    {
    //        Response.Redirect("Purpose_of_shorlist_candidate.aspx");
    //    }
    //    else
    //    {
    //        TextBox3.Text = Session["Call Person Name"].ToString();
    //        TextBox1.Text = Session["Required Desginatione"].ToString();
    //        TextBox2.Text = Session["Call Date"].ToString();
    //        TextBox4.Text = Session["Designation"].ToString();
    //        TextBox5.Text = Session["Required Location"].ToString();
    //        TextBox7.Text = Session["Candidate Contact Number"].ToString();
    //        TextBox8.Text = Session["Candidate Curent Loacted At"].ToString();
    //        TextBox6.Text = Session["Ready for Reloacted"].ToString();

    //        TextBox9.Text = Session["Current Desgination"].ToString();
    //        TextBox10.Text = Session["Current Company Name"].ToString();
    //        TextBox11.Text = Session["Type Of Company"].ToString();
    //        TextBox12.Text = Session["Highest Qualification"].ToString();
    //        TextBox13.Text = Session["Total No of Experience"].ToString();

    //        TextBox14.Text = Session["Current CTC"].ToString();

    //        TextBox15.Text = Session["Expected CTC"].ToString();
    //        TextBox16.Text = Session["Notice Period"].ToString();
    //        DropDownList1.SelectedItem.Text = Session["Status"].ToString();
    //        TextBox24.Text = Session["Interview Schdule Date and Time"].ToString();
    //        TextBox18.Text = Session["Type Of Interview"].ToString();
    //        TextBox17.Text = Session["Interview Schdule with"].ToString();
    //        TextBox19.Text = Session["Desgination "].ToString();
    //        TextBox20.Text = Session["Remarks "].ToString();




    //    }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd = new SqlCommand("insert into Status_of_interview_schedule(Req_Des, call_date, Call_Preson_Name , ReqLoc, Job_Profile, Candidate_Cont_Numbr, Candidate_Current_LocateAt, Readyfor_Relocate, Current_Design, Current_Compny_Name, Type_Of_Compny, Highest_Qualification, Total_Experience, Cuurent_CTC, Exp_CTC, Notice_Period, Status, Interview_Schdule_Date_Time, Type_of_Interview, Interview_Schdule_with, Designation, Interview_Type, Status1, Remarks, Join_Date, Final_Salary, Reporting_To) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox24.Text + "','" + TextBox18.Text + "','" + TextBox17.Text + "','" + TextBox19.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "','" + TextBox23.Text + "')", con);

        SqlCommand cmd = new SqlCommand("select * from Purpose_of_shortlisted_candidates, final_status_of_candidates",con);

        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Form Successfully Submitted");
    
    }
protected void Button1_Click1(object sender, EventArgs e)
{
     //  con.Open();
     // SqlCommand cmd = new SqlCommand("select * from Purpose_of_shortlisted_candidates, final_status_of_candidates",con);

     //   cmd.ExecuteNonQuery();
     //   con.Close();
     //   Response.Write("Form Successfully Submitted");

     con.Open();

        SqlDataAdapter ad = new SqlDataAdapter("select * from Purpose_of_shortlisted_candidates, final_status_of_candidates",con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        //Response.Redirect("Status_Result.aspx");

        con.Close();
}

}
//   