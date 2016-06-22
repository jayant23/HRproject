<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dbo.candidateshortlisted.aspx.cs" Inherits="candidate_status" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
       .auto-style1 {
             width: 1200px;
            height: 200px;
            border: 1px solid #000000;
            background-color: #d0c9c9;
             margin: 0px auto;
        }
        .auto-style5 {   width: 1200px;
            height: 100px;
        }
        .auto-style6 {
            width: 1200px;
            height: 100px;
        }
        .auto-style7 {
            width: 200px;
        }
        .auto-style9 {
             width: 1200px;
            height: 100px;
        }
        .auto-style10 {
             width: 1200px;
            height: 100px;
        }
        .auto-style11 {
              width: 1200px;
            height: 100px;
        }
        .auto-style13 {
            width: 1200px;
            height: 100px;
        }
        .auto-style14 {
             width: 1200px;
            height: 100px;
        }
        .auto-style15 {
              width: 1200px;
            height: 100px;
        }
        #Button2{
             padding-top:10px;
             padding-left:10px
 
    font: old 84% 'trebuchet ms',helvetica,sans-serif; 
 
    border:1px solid; 

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <b>Search Candidate</b><asp:TextBox ID="TextBox1" runat="server" Width="128px"  placeholder =" Search"></asp:TextBox> 
        <asp:Button ID="Button1" runat="server" Text="search" OnClick="Button1_Click" style="height: 26px" AutoPostBack="True" />
      
       
        <br />
        <br />
        <table class="auto-style1"  id="tab1" runat ="server"  >
            <tr >
                <td class="auto-style13" ><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Required Designation:</b> 
                   <br /> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style9"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Call Date:</b> &nbsp;&nbsp;
                   <br /> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </span></td>
                <td class="auto-style10"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Call Person Name:</b> <span class="Apple-converted-space">&nbsp;
                    <br /><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td class="auto-style11"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Job Profile:</b> &nbsp; <span class="Apple-converted-space">
                    <br /><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td class="auto-style15">&nbsp;<span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Required Location:</b> </span>&nbsp; <span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(208, 201, 201);"><span class="Apple-converted-space">
                    <br /><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
            </tr>
            <tr>
                <td class="auto-style14"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Name of Candidate:</b> <span class="Apple-converted-space">&nbsp;&nbsp;
                   <br /> <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </span></span>
                    <br style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(208, 201, 201);" />
&nbsp;</td>
                <td><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Date Of Birth:</b><br /> <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style6"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><b>Candidate Contact Number:</b> <span class="Apple-converted-space">
                   <br /> <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td class="auto-style7"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Current Location:</b>  <span class="Apple-converted-space">
                   <br /> <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </span>&nbsp;</span></td>
                <td class="auto-style5"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Designation:</b>  &nbsp; <span class="Apple-converted-space">
                   <br /> <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><b>Company Name:</b>  &nbsp; <span class="Apple-converted-space">
                    <br /><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
            </tr>
            <tr>
                <td class="auto-style14"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Type Of Company:</b> <span class="Apple-converted-space">&nbsp;&nbsp;
                   <br /> <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td class="auto-style6"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><b>Highest Qualification:</b> <span class="Apple-converted-space">&nbsp;
                   <br /> <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
&nbsp;</span></span></td>
                <td class="auto-style7"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><b>Total Year of Experience:</b> &nbsp;&nbsp; <span class="Apple-converted-space">
                    <br /><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td class="auto-style5"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Current CTC:</b> <span class="Apple-converted-space">
                   <br /> <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><b>Expected CTC:</b> <span class="Apple-converted-space">&nbsp;
                   <br /> <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
            </tr>
            <tr>
                <td class="auto-style14"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Ready For Relocate:</b> &nbsp; <span class="Apple-converted-space">
                     <br /><asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td class="auto-style6"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><b>Referred By:</b> <span class="Apple-converted-space">
                    <br /> <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td class="auto-style7"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><b>Referred By Name:</b> &nbsp; <span class="Apple-converted-space">
                    <br /> <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td class="auto-style5"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Status:</b> <span class="Apple-converted-space">&nbsp;&nbsp;
                     <br /><asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Ready for Interview/decline:</b> <span class="Apple-converted-space">&nbsp;
                    <br /> <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
            </tr>
            <tr>
                <td class="auto-style14"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Interview Schdule Date and Time:</b> <span class="Apple-converted-space">&nbsp;
                    <br /> <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td class="auto-style6"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><b>Interview Schdule with:</b> &nbsp;&nbsp; <span class="Apple-converted-space">
                     <br /><asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td class="auto-style7"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><b>Designation: </b>&nbsp; <span class="Apple-converted-space">
                    <br /> <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td class="auto-style5"><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><b>Type of Interview:</b> &nbsp; <span class="Apple-converted-space">
                    <br /> <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
                <td><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><b>Remark: </b><span class="Apple-converted-space">&nbsp;
                    <br /> <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                    </span></span></td>
            </tr><tr>
                <td><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
                    <b>Status: </b><asp:DropDownList ID="DropDownList1" runat="server" required>
                    
                           
                          <asp:ListItem>
                    Select for Next Round
                        </asp:ListItem>
                          <asp:ListItem>
                          Reject
                        </asp:ListItem>
                       <asp:ListItem>Hold</asp:ListItem> 
                           </asp:DropDownList>
                   
                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator19" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Letter Only" ForeColor="Red" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>--%>
                   
                </td><td>
                    
                     </td>
                <td><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; ">
                    <b>Remarks:</b><br /> <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="16px" Width="127px"></asp:TextBox><br />
                </td>
                 </tr>
            <tr>
                <td><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
                    <b>Join Date:</b> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
                    <b>Final Salary: </b><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td><span style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
                    <b>Reporting to: </b><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                   
                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator20" runat="server" ControlToValidate="TextBox5" ErrorMessage="Letter Only" ForeColor="Red" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>--%>
                   
                </td>
            </tr>
            <tr>
                <td>
                    <tr>
                <td>        </td><td></td>
                    <td><asp:Button ID ="Button2" runat="server" Text="Save"  margin-left="350px" Height="41px" Width="94px" OnClick="Button2_Click" /></td>
        
            </tr>
                </td>
            </tr>
            
        </table>
       
    </div>
   
    </form>
</body>
</html>
