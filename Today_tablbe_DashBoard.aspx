<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Today_tablbe_DashBoard.aspx.cs" Inherits="Today_Schdule_Dash_Board" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script>

        function phoneno() {
            if (event.keyCode >= 48 && event.keyCode <= 57) {
                return true;
            }
            else {
                return false;
            }
        }
        function location() {
            if (event.keyCode >= 65 && event.keyCode <= 90 || event.keyCode >= 97 && event.keyCode <= 122 || event.keyCode == 32) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
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
    <form id="form1" runat="server">
    <div>
    <table>
        <h2>
            Today Schedule Dash Board
        </h2>
        <tr>
           <td>
               Today No of Candidate Join
          <%--     <input type="number" ID="TextBox1" max="50" required="required" />--%>
               <td><asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox></td>
           </td>
        </tr>
        <tr>
            <td>
                Today No of Candidate Schedule for Interview <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </td>
        </tr>
        <tr>
            <td>
                No of Position pending for recruitment<td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </td>
               
        </tr>
      
           <tr>
               <td>
                   <b>
                        Display Department wise For Both (Join and Interview Schedule)
                   </b>
           
           </td></tr> 
          <tr>
              <td>
                  Department <br />
               
         
               <asp:DropDownList ID="DropDownList1" runat="server" Width="50px" required>
             <asp:ListItem>
                         
                      </asp:ListItem>
                     <asp:ListItem>
                          Marketing
                      </asp:ListItem>
                        <asp:ListItem>
                            Operation
                      </asp:ListItem>
                        <asp:ListItem>
                            Account
                      </asp:ListItem>
                        <asp:ListItem>
                           Human Resource
                      </asp:ListItem>
                        <asp:ListItem>
                            Administraion
                      </asp:ListItem>
                      
                  </asp:DropDownList>
          </td>
      
              <td>
                  Designation<br />
                  
                  <asp:DropDownList ID="DropDownList2" runat="server" Width="50px" required>
                        <asp:ListItem>
                       
                    </asp:ListItem>
                        <asp:ListItem>
                            Executive
                      </asp:ListItem>
                        <asp:ListItem>
                            Senior Executive
                      </asp:ListItem>
                  </asp:DropDownList>

              </td>
              <td>
                  Nos<br />
                  <asp:DropDownList ID="DropDownList3" runat="server" Width="50px" required>
                       <asp:ListItem>

                      </asp:ListItem>
                      <asp:ListItem>
                          4
                      </asp:ListItem>
                        <asp:ListItem>
                            5
                      </asp:ListItem>
                        <asp:ListItem>
                            6
                      </asp:ListItem>
                        <asp:ListItem>
                            7
                      </asp:ListItem>
                        <asp:ListItem>
                            8
                      </asp:ListItem>
                       

                              <asp:ListItem>
                                9
                      </asp:ListItem>
                      
                  </asp:DropDownList>
              </td>
          </tr>
       
       <tr>
           <td style align="right">
               <b>For Both (Join and Interview Schdule)</b>
           </td>
           
       </tr>   
                
       <tr>
           <td>
               Candidate Details<br />

               <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
              
           </td>
          <td>
              Contact Number<br />
              <asp:TextBox ID="TextBox5" runat="server" onkeypress="return phoneno();" MaxLength="10"> </asp:TextBox>
          </td>
           <td>
               Designation<br />
               <asp:DropDownList ID="DropDownList4" runat="server" required Width="50px">
                    <asp:ListItem>
                       
                   </asp:ListItem>
                   <asp:ListItem>
                       Executive
                   </asp:ListItem>
                   <asp:ListItem>
                       Business Developement Manager
                   </asp:ListItem>
                   <asp:ListItem>
                       Operatoinal Manager
                   </asp:ListItem>
               </asp:DropDownList>
           </td>
       </tr> 
        
       <tr>
           <td style align="right">
               <b>pending for recruitment</b>
           </td>
           
       </tr> 
        <tr>
            <td>Department 
           <br />
            <asp:DropDownList ID="DropDownList5" runat="server" Width="50px" required>
                  <asp:ListItem>
                        
                    </asp:ListItem>  
                  <asp:ListItem>
                        Marketing
                    </asp:ListItem>
                    <asp:ListItem>
                        Operation
                    </asp:ListItem>
                    <asp:ListItem>
                        Accounts
                    </asp:ListItem>
                    <asp:ListItem>
                        Human Resource
                    </asp:ListItem>
                    <asp:ListItem>
                    Administration        
                    </asp:ListItem>
                </asp:DropDownList>
                </td>
            <td>
                Location<br />
                <asp:TextBox ID="TextBox6" runat="server" onkeypress="return location();"></asp:TextBox>
            </td>
            <td>
                Designation<br />
                <asp:DropDownList ID="DropDownList6" runat="server" Width="50px" required>
                     <asp:ListItem>
                        
                    </asp:ListItem>
                    <asp:ListItem>
                        BDE
                    </asp:ListItem>
                    <asp:ListItem>
                        BM
                    </asp:ListItem>
                    <asp:ListItem>
                        AE
                    </asp:ListItem>
                </asp:DropDownList>

            </td>
            <td>
                Nos<br />
                <asp:DropDownList ID="DropDownList7" runat="server" Width="50px" required>
                    <asp:ListItem>
                   
                    </asp:ListItem>
                    <asp:ListItem>
                        10
                    </asp:ListItem>
                    <asp:ListItem>
                        5
                    </asp:ListItem>
                    <asp:ListItem>
                        4
                    </asp:ListItem>
                     <asp:ListItem>
                         2
                    </asp:ListItem>

 <asp:ListItem>
     1
                    </asp:ListItem>                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td  style align="right">
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
       
    </div>
    </form>
</body>
</html>
