using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf; 
public partial class Purpose_of_shorlist_candidate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source= AXPRESS-PC; initial catalog=Axpress; integrated security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            Document pdfDoc = new Document(PageSize.A4, 25, 10, 25, 10);
            PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            Paragraph Text = new Paragraph("This is test file");
            pdfDoc.Add(Text);
            pdfWriter.CloseStream = false;
            pdfDoc.Close();
            Response.Buffer = true;
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Example.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write(pdfDoc);
            ////Response.End();
        }
        catch (Exception ex)
        { Response.Write(ex.Message); } 

//FileStream fs = new FileStream("Chapter1_Example1.pdf", FileMode.Create, FileAccess.Write, FileShare.None);
//        Do        cument doc = new Document();
//        PdfWriter writer = PdfWriter.GetInstance(doc, fs);
//        doc.Open();
//        doc.Add(new Paragraph("Hello World"));
//        doc.Close();
//        Document doc1 = new Document(PageSize.A4, 36, 72, 108, 180);
//        ////Document doc2 = new Document(rec2);
//        Paragraph para = new Paragraph("Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World");
//        // Setting paragraph's text alignment using iTextSharp.text.Element class
//        para.Alignment = Element.ALIGN_JUSTIFIED;
//        // Adding this 'para' to the Document object
//        doc.Add(para);


//        doc.AddTitle("Hello World example");
//        doc.AddSubject("This is an Example 4 of Chapter 1 of Book 'iText in Action'");
//        doc.AddKeywords("Metadata, iTextSharp 5.4.4, Chapter 1, Tutorial");
//        doc.AddCreator("iTextSharp 5.4.4");
//        doc.AddAuthor("Debopam Pal");
//        doc.AddHeader("Nothing", "No Header");




        //try
        //{
        //    //MailMessage message = new MailMessage();
        //    //message.To.Add(txtEmail.Text);// Email-ID of Receiver  
        //    //message.Subject = txtSubject.Text;// Subject of Email  
        //    //message.From = new System.Net.Mail.MailAddress("no-reply@test.com");// Email-ID of Sender  
        //    //message.IsBodyHtml = true;

        //    //MemoryStream file = new MemoryStream(PDFGenerate("This is pdf file text", Server.MapPath("Images/photo.jpg")).ToArray());

        //    ////file.Seek(0, SeekOrigin.Begin);
        //    Attachment data = new Attachment(file, "RunTime_Attachment.pdf", "application/pdf");
        //    ContentDisposition disposition = data.ContentDisposition;
        //    disposition.CreationDate = System.DateTime.Now;
        //    disposition.ModificationDate = System.DateTime.Now;
        //    disposition.DispositionType = DispositionTypeNames.Attachment;
        //    message.Attachments.Add(data);//Attach the file  

        //    message.Body = txtmessagebody.Text;
        //    SmtpClient SmtpMail = new SmtpClient();
        //    SmtpMail.Host = "Your Host";//name or IP-Address of Host used for SMTP transactions  
        //    SmtpMail.Port = 25;//Port for sending the mail  
        //    SmtpMail.Credentials = new System.Net.NetworkCredential("", "");//username/password of network, if apply  
        //    SmtpMail.DeliveryMethod = SmtpDeliveryMethod.Network;
        //    SmtpMail.EnableSsl = false;
        //    SmtpMail.ServicePoint.MaxIdleTime = 0;
        //    SmtpMail.ServicePoint.SetTcpKeepAlive(true, 2000, 2000);
        //    message.BodyEncoding = Encoding.Default;
        //    message.Priority = MailPriority.High;
        //    SmtpMail.Send(message); //Smtpclient to send the mail message  
        //    Response.Write("Email has been sent");
        //}
        //catch (Exception ex)
        //{ Response.Write("Failed"); } 


     


            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Purpose_of_shortlisted_candidates values('" + ReqDesTextBox.Text + "','" + DateTextBox.Text + "','" + CallPersonTextBox.Text + "','" + JobProfTextBox.Text + "','" + ReqLocTextBox.Text + "','" + CandNmbrTextBox.Text + "','" + CandLctionTextBox.Text + "','" + DropDownList5.SelectedItem.Text + "','" + CurntDesgnTextBox.Text + "','" + CrntCmpnyNmTextBox.Text + "','" + TypOfCmpTextBox.Text + "','" + HQuaTextBox.Text + "','" + TotlExpTextBox.Text + "','" + CrntCTCTextBox.Text + "','" + ExpCTCTextBox.Text + "','" + NotcPerTextBox.Text + "','" + DropDownList1.SelectedItem.Text + "','" + RefByNameTextBox.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + date1TextBox.Text + "','" + RemarkTexBox.Text + "','" + DropDownList4.SelectedItem.Text + "','" + ScheduleWithNameTexBox.Text + "','" + DesnTextBox.Text + "','" + NameOfCandTextBox.Text + "','" + DOB.Text + "')", con);



            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Write("Form Successfully Submitted");

       
        //catch
        //{
            Response.Write("<script>alert('This user already exists Please enter New Candidate' )</script>");
            Response.Redirect("Purpose_of_shorlisted_candidates.aspx");
        //}
 }


        //Session["Designation"] = ReqDesTextBox.Text;
        //Session["Call Date"] = DateTextBox.Text;
        //Session["Call Person Name"] = CallPersonTextBox.Text;
        //Session["Required Desginatione"] = JobProfTextBox.Text;
        //Session["Required Location"] = ReqLocTextBox.Text;
        //Session["Candidate Contact Number"] = CandNmbrTextBox.Text;
        //Session["Candidate Curent Loacted At"] = CandLctionTextBox.Text;
        //Session["Ready for Reloacted"] = DropDownList5.SelectedItem.Text;
        //Session["Current Desgination"] = CurntDesgnTextBox.Text;
        //Session["Current Company Name"] = CrntCmpnyNmTextBox.Text;
        //Session["Type Of Company"] = TypOfCmpTextBox.Text;
        //Session["Highest Qualification"] = HQuaTextBox.Text;
        //Session["Total No of Experience"] = TotlExpTextBox.Text;
        //Session["Current CTC"] = CrntCTCTextBox.Text;
        //Session["Expected CTC"] = ExpCTCTextBox.Text;
        //Session["Notice Period"] = NotcPerTextBox.Text;
        //Session["Status"] = DropDownList1.SelectedItem.Text;
        //Session["Interview Schdule Date and Time"] = date1TextBox.Text;
        //Session["Type Of Interview"] = DropDownList4.SelectedItem.Text;
        //Session["Interview Schdule with"] = ScheduleWithNameTexBox.Text;
        //Session["Desgination "] = DesnTextBox.Text;
        //Session["Remarks "] = RemarkTexBox.Text;


    }
