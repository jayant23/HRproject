<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Candidate3.aspx.cs" Inherits="Candidate_Requirment_Request" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="ctscalander/tcal.css" rel="stylesheet" />
    <script src="ctscalander/tcal.js"></script>
</head>
<body>

    <style>
        table {
            border: 2px solid Black;
            background-color:#d0c9c9;
             height:10px;
        }
               

        .auto-style2 {
            height: 30px;
            margin-left:300px;
        }
        .auto-style3 {
            width: 54px;
            height: 30px;
        }
       

        .tcal {}
        .auto-style4 {
            width: 54px;
        }
       
       .tcal{
          
       }
    </style>
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("[id$=txtDate]").datepicker({
                //minDate: 0,
                //maxDate:+ 31,
                showOn: 'button',
                buttonImageOnly: false,
                buttonImage: src = "img/input_fields_with_images/calendar.png"

            });
        });
        $(function () {
            $("[id$=EstDate]").datepicker({
                minDate: 0,
                //maxDate:+ 31,
                showOn: 'button',
                buttonImageOnly: false,
                buttonImage: src = "img/input_fields_with_images/calendar.png"

            });
        });










        //function validate(event) {
        //    x = document.getElementById("TxtBx2");
        //    if(x==null)
        //    { alert("fill it first");}
        //}


        function validate(evt) {
            var theEvent = evt || window.event;
            var key = theEvent.keyCode || theEvent.which;
            key = String.fromCharCode(key);
            var regex = /[0-9]|\./;
            if (!regex.test(key)) {
                theEvent.returnValue = false;
                if (theEvent.preventDefault) theEvent.preventDefault();
            }
        }
    
    </script>
    <form id="form1" runat="server" onsubmit="RequiredTextValidate()" >
        
        <div>
            <table class="auto-style2">
              
                <h2 align="Center">Candidate Requirment Request  
                </h2>

                <tr>
                    <td>Requirment Date
                    </td>
                  <td class="auto-style4"><asp:TextBox ID="txtDate" runat="server" CssClass="tcal" value="" BackColor="White" OnTextChanged="txtDate_TextChanged" Width="99px"></asp:TextBox></td>
                       
       
                    <td>Required Department</td>
        
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" required>
                             <asp:ListItem Text="Select Department" Value="" /> 
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>Operation</asp:ListItem>
                            <asp:ListItem>Account</asp:ListItem>
                            <asp:ListItem>HR</asp:ListItem>
                            <asp:ListItem>Marketing</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td>Type of Requirment 
                    </td>

                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList2" runat="server" required>
                          
                             <asp:ListItem Text="Select Type" Value="" /> 
                              <asp:ListItem>New </asp:ListItem>

                            <asp:ListItem>  Existing</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>Required Designation </td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" required Height="26px" Width="134px">
                             <asp:ListItem Text="Designation" Value="" /> 
                            <asp:ListItem>
                    DotNet Developer
                            </asp:ListItem>
                            <asp:ListItem>
                   Computer Operator
                            </asp:ListItem>
                            <asp:ListItem>
                    Fill-3
                            </asp:ListItem>
                            <asp:ListItem>
                    Fill-4
                            </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>No of&nbsp; Requiement
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox type="text" ID="TxtBx2" runat="server" Width="80px" MaxLength="1"  onkeypress='validate(event)'></asp:TextBox >
                        
                    </td>

                    <td>Required Location
                    </td>
                    <td>
                        <asp:TextBox ID="Location" runat="server" Width="134px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Qualification
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="qualification" runat="server" Width="80px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Experience
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox6" runat="server" Width="80px" maxlength="1"></asp:TextBox>
&nbsp; To&nbsp;
                        <asp:TextBox ID="TextBox7" runat="server" Width="80px" maxlength="2"></asp:TextBox>
                    </td>
                    <td>Annual CTC(in Lacs)</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="80px" maxlength="3" onkeypress='validate(event)'></asp:TextBox>
&nbsp;To
                        <asp:TextBox ID="TextBox5" runat="server" Width="80px" maxlength="3" onkeypress='validate(event)'></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">
                        Job Description(KRA)<br />
                        <asp:TextBox ID="TextBox8" runat="server" placeholder="Title of the position"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox9" runat="server" placeholder="PC literacy"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox10" runat="server" placeholder="Reports tot"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBox12" runat="server" placeholder="Key areas of responsibility"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBox13" runat="server" placeholder="Deal with employee requests"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Permanent job"></asp:TextBox><br />
                         <asp:TextBox ID="TextBox11" runat="server" placeholder="Temporary/Contract job"></asp:TextBox>  <br />
                         <asp:TextBox ID="TextBox14" runat="server" placeholder="Full Time job"></asp:TextBox><br />
                         <asp:TextBox ID="TextBox15" runat="server" placeholder="Part Time job"></asp:TextBox><br />
                        

                    </td>
                </tr>





                <tr>
                    <td class="auto-style2">Requirment by
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox16" placeholder=RequiredBy runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">Approved by
                    </td>
                    <td class="auto-style2">
                       <asp:TextBox ID="TextBox17" runat="server" placeholder="Approveed By"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <div>
                    <td>Estimated Close Date
                    </td>
                    <td class="auto-style4">
                       
                      <asp:TextBox ID="EstDate" runat="server" CssClass="tcal" value="" BackColor="White" Width="99px"></asp:TextBox>
                    </td>
                         
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit"   OnClick="Button1_Click1" Height="41px" Width="94px" />
                        
                    </td>
                   
                </tr>
        
       
      

        </table>
        
          
             
       </div>
         
    </form>
     
</body>
</html>
