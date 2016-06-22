<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Purpose_of_shorlisted_candidates.aspx.cs" Inherits="Purpose_of_shorlist_candidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <script>
        function phoneno()
        {
            if (event.keyCode >= 48 && event.keyCode <= 57)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        function designatn()
        {
            if(event.keyCode>=65 && event.keyCode<=90 || event.keyCode>=97 && event.keyCode<=122 || event.keyCode==32)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        function designatn() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
       
        function namee() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
        function candidate() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
        function required() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
        function desgn() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
        function company() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
        function type() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
        function highest() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
        function interview() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
        function desn() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
        function referred() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
    <style type="text/css">
   
  
        .auto-style2 {
            border:2px solid black;
            margin: 0px auto;
   padding-left:50px;
   padding-top:50px;
  
   background-color:#d0c9c9;
               
        }
        td{
              width: 100px;
        }
        #Button1{
           margin-top:30px;
            margin-left:300px;
            margin-right:0px;
           
        }
        .auto-style3 {
           
        
    }
        .auto-style4 {
            width: 500px;
            height: 45px;
        }
        
        #Button1{
  
    font: old 84% 'trebuchet ms',helvetica,sans-serif; 

    border:1px solid; 

        }
        #TextBox{
            
        }
    </style>
   
    

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet"  type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("[id$=DateTextBox]").datepicker({
                minDate: 0,
                //maxDate:+ 31,
                showOn: 'button',
                buttonImageOnly: true,
                buttonImage: src="img/input_fields_with_images/calendar.png"
            });
        });
        $(function () {
            $("[id$=DOB]").datepicker({
                //minDate: 0,
                //maxDate:+ 31,
                showOn: 'button',
                buttonImageOnly: true,
                buttonImage: src = "img/input_fields_with_images/calendar.png"

            });
        });
        $(function () {
            $("[id$=date1TextBox]").datepicker({
                minDate: 0,
                //maxDate:+ 31,
                showOn: 'button',
                buttonImageOnly: true,
                buttonImage: src = "img/input_fields_with_images/calendar.png"

            });
        });
        

    
           
    </script>

    <form id="b" name="myform" runat="server" onsubmit="return validateform()">
    <div>

      
            <table class="auto-style2">
              
                <h2  align="Center">Purpose Of Shortlisted Candidates  </h2>
               
    
            <tr>
                <td class="auto-style8" style="width: 500px">
                    Required Designation<br />
                    <asp:TextBox ID="ReqDesTextBox" runat="server" onkeypress="return designatn();"></asp:TextBox>   

             

               
         </td>
                   <td> Call Date(dd/mm/yyyy)<br />
        <asp:TextBox ID="DateTextBox" runat="server" value="" BackColor="White" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator100" runat="server" ControlToValidate="DateTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="regPurchaseDate" runat="server" Display="None" ErrorMessage="Please enter date in valid format(mm/dd/yyyy)."  ControlToValidate="DateTextBox" SetFocusOnError="false" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                        </td>

             

                <td class="auto-style10" style="width: 500px">
                    Call Person Name
                <br />
                    <asp:TextBox ID="CallPersonTextBox" runat="server" onkeypress="return designatn()"></asp:TextBox >
                 
                   
                 
                </td>

            </tr>
            <tr>
                <td class="auto-style4" style="width: 500px">
                    Job Profile<br />
                    <asp:TextBox ID="JobProfTextBox" runat="server" onkeypress="return job()"></asp:TextBox> </td>
                   
                  
                  <td>  Name of Candidate
                <br />
                  <asp:TextBox ID="NameOfCandTextBox" runat="server" onkeypress="return namee();" ></asp:TextBox>


             
                </td>
                  <td class="auto-style3" style="width: 500px">
                Date Of Birth(dd/mm/yyyy)<br />
                    <asp:TextBox ID="DOB" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="DOB" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
               
            </tr>
            <tr>
              
                <td>
                    Candidate Contact Number
                    <br />
                    <asp:TextBox ID="CandNmbrTextBox" runat="server"  onkeypress="return phoneno" MaxLength="10" TextMode="Number"  />

                    

                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CandNmbrTextBox" ErrorMessage="*" ForeColor="Red"  ></asp:RequiredFieldValidator>

                       <br />

                   
                </td>
              
                <td class="auto-style3" style="width: 500px">
                    Candidate Current Location<br />
                    <asp:TextBox ID="CandLctionTextBox" runat="server" onkeypress="return candidate();"></asp:TextBox>
                   


                </td>
                 <td>
                    Required Location<br />
                    <asp:TextBox ID="ReqLocTextBox" runat="server" onkeypress="return required();"></asp:TextBox>
                   
                 
                      </td>
            </tr>
            <tr>
                <td class="auto-style4" style="width: 500px">
                    Current Designation
                <br />
                    <asp:TextBox ID="CurntDesgnTextBox" runat="server" onkeypress="return desgn();"></asp:TextBox>
                  
                </td>
                
                <td style="width: 500px">
                    Current Company Name
                <br />
                    <asp:TextBox ID="CrntCmpnyNmTextBox" runat="server" onkeypress="return company();"></asp:TextBox>
                  
                </td>
                <td class="auto-style3" style="width: 500px">
                    Type Of Company
               <br />
                    <asp:TextBox ID="TypOfCmpTextBox" runat="server"  onkeypress="return type();" ></asp:TextBox>
                  
                </td>
            </tr>
            <tr>
                <td class="auto-style4 " style="width: 500px">
                    Highest Qualification
                    <br />
                    <asp:TextBox ID="HQuaTextBox" runat="server" onkeypress="return highest();" > </asp:TextBox>
                   
                </td>
                <td style="width: 500px">
                    Total Year of Experience
               <br />
                    <asp:TextBox ID="TotlExpTextBox" runat="server" onKeyPress ="test1();"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TotlExpTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                   <br /> </td>
            </tr>
            <tr>
                 <td class="auto-style4" style="width: 500px">
                     Current CTC
                <br />
                     <asp:TextBox ID="CrntCTCTextBox" runat="server" OnClick="fnCheck7()"></asp:TextBox>
                </td>
                <td style="width: 500px">
                    Expected CTC
                <br />
                    <asp:TextBox ID="ExpCTCTextBox" runat="server"
                        OnClick="fnCheck8()"></asp:TextBox>
                </td>
                <td class="auto-style3" style="width: 500px">
                    Notice Period(In Month)
                <br />
                    <asp:TextBox ID="NotcPerTextBox" runat="server"  OnClick="fnCheck10()" ></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="NotcPerTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                
              <td>
                  Ready For Relocate<br />
                  <asp:DropDownList ID="DropDownList5" runat="server" Width="122px" required>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>
                          Yes
                      </asp:ListItem>
                         <asp:ListItem>
                         No
                      </asp:ListItem>
                  </asp:DropDownList>
              </td>
                <td >
                    Referred By
               <br />
                     <asp:DropDownList ID="DropDownList1" runat="server"   Width="122px" OnClick="fnCheck11()" required>
                          <asp:ListItem></asp:ListItem>
                         <asp:ListItem>Staff</asp:ListItem>
                          <asp:ListItem>Portal</asp:ListItem>
                          <asp:ListItem>Consultant</asp:ListItem>
                     </asp:DropDownList>
                  <%--   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                     
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Letter Only" ForeColor="Red" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                   --%>
                </td>
               
                <td class="auto-style4">
                    Referred By Name <br />
                    <asp:TextBox ID="RefByNameTextBox" runat="server" onkeypress="return referred();"></asp:TextBox>
                
                </td>
                 
            </tr>
            <tr>
                <td class="auto-style4" style="width: 500px">
                    Status 
               <br />
                     <asp:DropDownList ID="DropDownList2" runat="server"  Width="122px" required>
                          <asp:ListItem></asp:ListItem>
                         <asp:ListItem>
                             Value1
                         </asp:ListItem>
                          <asp:ListItem>
                             Value2
                         </asp:ListItem>
                         <asp:ListItem>
                             Value3
                         </asp:ListItem>
                        <asp:ListItem>
                             Value4
                         </asp:ListItem>
                         <asp:ListItem>
                             Value5
                         </asp:ListItem>
                             </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
                <td style="width: 500px">
                    Ready for Interview<br />
                     <asp:DropDownList ID="DropDownList3"   Width="122px" runat="server" required>
                          <asp:ListItem></asp:ListItem>
                         <asp:ListItem>Yes</asp:ListItem>
                          <asp:ListItem>No</asp:ListItem>
                             </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="DropDownList3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                <td class="auto-style3" style="width: 500px">
                    Interview Schdule Date
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="date1TextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                <asp:TextBox ID="date1TextBox" runat="server" CssClass="tcal" value="" BackColor="White" ></asp:TextBox>
                    </td>
                
            </tr>
            <tr>
                <td class="auto-style4" style="width: 500px">
                    Interview Schdule with
                    <br /><asp:TextBox ID="ScheduleWithNameTexBox" runat="server" onkeypress="return interview();"></asp:TextBox>
                    
                </td>
                
                <td class="auto-style3" style="width: 500px">
                    Designation
                    <br /><asp:TextBox ID="DesnTextBox" runat="server" onkeypress="return desn();"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="DesnTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </td>
                


                   
                <br />
                <td >
                  
                    Remark
                    <br /><asp:TextBox ID="RemarkTexBox" runat="server" TextMode="MultiLine" Height="16px" Width="121px"></asp:TextBox>
                </td>
               </tr>
                <tr>
                    <td style="width: 500px">
                    Type of Interview
                        <br />
                    <asp:DropDownList ID="DropDownList4"     Width="122px" runat="server" required>
                         <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Face to Face</asp:ListItem>
                        <asp:ListItem>Telephonic</asp:ListItem>
               </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="DropDownList4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             </td> 
            </tr>
<tr>
    <td>

    </td>
    <td class="auto-style4" style="width: 500px"> 
        <asp:Button ID="Button1" runat="server" Text="Save"  margin-left="10px"  margin-right="10px"  Height="30px" Width="100px" OnClick="Button1_Click" />
    </td>
</tr>
             

</table>

    </div>
        
    </form>
</body>
</html>
