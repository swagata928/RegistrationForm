<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Registration.Registration" %>

<!DOCTYPE html>
  
   <head>
        <title>Registration Page</title>
   </head>
   <body>
        <form id="f1" method="post" runat="server">
            <fieldset style="width:280px">
            <legend>Registration Form</legend>
            <table >            
                <tr>
                     <td>First Name:</td><td> <asp:textbox id="txt1" runat="server" ></asp:textbox></td>
                     <td> <asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt1" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Last Name:</td><td> <asp:textbox id="txt2" runat="server" ></asp:textbox></td>
                    <td><asp:RequiredFieldValidator ID="validlname" runat="server" ControlToValidate="txt2" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
               
               
               
                <tr>
                    <td>Email:</td><td><asp:TextBox ID="email" runat="server" TextMode="Email" ></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="validemail" runat="server" ControlToValidate="email" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Mobile:</td><td><asp:TextBox ID="mobile" runat="server" TextMode ="Phone"></asp:TextBox></td>
                </tr>
                <tr>                    
                    <td>Gender:</td><td><asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Text="Male" id="male" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="1"></asp:ListItem>
                                             </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td>DOB: </td><td><asp:TextBox ID="dob" runat="server" TextMode="Date" Width="168px"></asp:TextBox> </td>
                    <td><asp:RequiredFieldValidator ID="validdob" runat="server" ControlToValidate="dob" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>                
                <tr>
                    <td>City: </td><td><asp:DropDownList ID="ddlCourse" runat="server" datavaluefield="Course" Width="173px">
                        <asp:ListItem text="Select City" Value="-1"></asp:ListItem>
                        <asp:ListItem Text ="Pune" Value ="Pune"></asp:ListItem>
                        <asp:ListItem Text ="Mumbai" Value ="Mumbai"></asp:ListItem>
                        <asp:ListItem Text ="Nashik" Value="Nashik"></asp:ListItem>
                                         </asp:DropDownList></td>
                    <td><asp:RequiredFieldValidator InitialValue="-1" ID="validcourse" runat="server" ControlToValidate="ddlCourse" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
               
               
                <tr>
                    <td>Upload:</td><td><asp:FileUpload ID="imgupload" runat="server" Enabled="true" /></td>
                </tr>
             <br />
               <tr>
                    <td><asp:Button ID="btn1" runat="server" Text="Submit" OnClick="btn1_Click"></asp:Button></td>
                    <td><asp:Button ID="btn2" runat="server" Text="Reset"></asp:Button></td>
                </tr>                
            </table>
          </fieldset>
       </form>
    </body>