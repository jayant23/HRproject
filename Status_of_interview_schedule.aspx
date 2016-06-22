<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Status_of_interview_schedule.aspx.cs" Inherits="purpose__of_shortlisted_candidates1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="ctscalander/tcal.css" rel="stylesheet" />
    <script src="ctscalander/tcal.js"></script>
</head>
<body>
     <style>
        table{
      margin: 0px auto;
            border:1px solid Black;
            background-color:#d0c9c9;
        }
        td{
            padding:10px;
            
        }
        h2{
         text-align:center;
        }
    </style>
    <script>
        function validate()  
        {  a = document.getElementById('TextBox7').value;
            var phoneno = /^\d{10}$/;  
            if((a.match(phoneno))  
            {  
                return true;  
            }  
            else  
            {  
                alert("message");  
                return false;  
            }  
        }  
    </script>
    <form id="form1" runat="server">
    <div>
       




     <asp:GridView ID="GridView1" runat="server" >
<Columns>
    <asp:TemplateField HeaderText="Required Designation">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Req_Des") %>'></asp:Label>
        </ItemTemplate>

    </asp:TemplateField>
   <asp:TemplateField HeaderText="Call Date">
      <ItemTemplate>
          <asp:Label ID="Label2" runat="server" Text='<%#Eval("call_date") %>'></asp:Label>
      </ItemTemplate>
   </asp:TemplateField>
    <asp:TemplateField HeaderText="Call Person Name">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Call_Preson_Name") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Job Profile">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Job_Profile") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Required Location">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("ReqLoc") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Candidate Contact Number">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Candidate_Cont_Numbr") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
      <asp:TemplateField HeaderText="Candidate Current Location">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Candidate_Current_LocateAt") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
      <asp:TemplateField HeaderText="Ready For Relocate">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Ready_for_Relocate") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Current Designation">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Current_Design") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Current Company Name">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Current_Compny_Name") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Type Of Company">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Type_Of_Compny") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Highest Qualification">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Highest_Qualification") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
      <asp:TemplateField HeaderText="Total Experience">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Total_Experience") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
      <asp:TemplateField HeaderText="Current CTC">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Cuurent_CTC") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Expected CTC">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Exp_CTC") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Notice Period">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Notice_Period") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Reffered By">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Reffered_By") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Reffered By Name">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Reffered_By_Name") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Status">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
         <asp:TemplateField HeaderText="Ready For Interview">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Ready_for_Interview") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
      <asp:TemplateField HeaderText="Interview Schedule Date and Time">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Interview_Schdule_Date_Time") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Remark">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Remarks") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Type Of Interview">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Type_of_Interview") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
      <asp:TemplateField HeaderText="Interview Schedule With">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Interview_Schdule_with") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Designation">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Designation") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Candidate Name">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("candidate_name") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Status1">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Status1") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Join Date">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Join_Date") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Remark">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Remarks1") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Final Salary">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Final_Salary") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Reporting To">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Reporting_To") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>

        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" />
        <br />
    </div>
    </form>
</body>
</html>
	
