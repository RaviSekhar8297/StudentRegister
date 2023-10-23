<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register Page.aspx.cs" Inherits="Student_Registration1.Register_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script  language="javascript" type = "text/javascript">
        function sessionExpiredAlert(timeout) {
            var seconds = timeout / 1000;
            //document.getElementById("seconds").innerHTML = seconds;
            document.getElementById("secondexpre").innerHTML = seconds;
            setInterval(function () {
                seconds--;
                //document.getElementById("seconds").innerHTML = seconds;
                document.getElementById("secondexpre").innerHTML = seconds;
            }, 1000);
            setTimeout(function () {
                $find().show();

            }, timeout - 20 * 1000);
            setTimeout(function () {
                window.location="WebForm4.aspx"

            }, timeout);

        };
        function PrintPanel()
        {
            var panel = document.getElementById("<%=form1.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            document.getElementById("Button2").style.visibility = 'hidden';
            document.getElementById("Button1").style.visibility = 'hidden';
            document.getElementById("Button3").style.visibility = 'hidden';
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function ()
            {
                printWindow.print();
            }, 500);
            return false;
        }
        function showval()
        {
            var prview = new String();
            prview = document.getElementById("<%=form1.ClientID %>").value;
             document.getElementById("<%=form1.ClientID %>").innerText = prview;
          
        }
   
        function Validate()
        {

            var Student_Name = document.getElementById("TextBox2").value;
            var Student_Gender = document.getElementById("TextBox3").value;
            var Father_Name = document.getElementById("TextBox4").value;
            var Mother_Name = document.getElementById("TextBox5").value;
            var Student_Class = document.getElementById("DropDownList1").value;
            var Student_Age = document.getElementById("TextBox6").value;
            var Student_Address = document.getElementById("TextBox7").value;
            var Phone_Number = document.getElementById("TextBox8").value;
            var Date_Of_Birth = document.getElementById("TextBox9").value;
           

            if (Student_Name == '') {
                confirm("enter Student_Name");
                return false;
            }
            if (Student_Gender == '') {
                confirm("enter Student_Gender");
                return false;
            }
            if (Father_Name == '') {
                confirm("enter Father_Name");
                return false;
            }
            if (Mother_Name == '') {
                confirm("enter Mother_Name");
                return false;
            }
            if (Student_Class == '') {
                confirm("Please Select One Option");
                return false;
            }
            if (Student_Age == '') {
                confirm("enter Student_Age");
                return false;
            }
            if (Student_Address == '') {
                confirm("enter Student_Address");
                return false;
            }
            if (Phone_Number == '') {
                confirm("enter Phone_Number");
                return false;
            }
            if (Date_Of_Birth == '') {
                confirm("enter Date_Of_Birth");
                return false;
            }
            

          
        }
    </script>   
   
     <meta charset="utf-8"/>
			<meta name="viewport" content="width=device-width, initial-scale=1"/>
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .header{
            padding:58px;
         margin:0;
        background-color:#cdfaff;
        border-color:red;border:2px;
        }
        .auto-style3 
       {
            position: relative;
            min-height: 1px;
            float: left;
            width: 16.66666667%;
            left: 14px;
            top: -40px;
            padding-left: 0px;
            padding-right: 15px;
        }
        .auto-style4 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 16.66666667%;
            left: 0px;
            top: 0px;
            height: 4px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style5 {
            height: 22px;
        }
        
        .auto-style6 {
            width: 405px;
        }
        .auto-style7 {
            height: 22px;
            width: 405px;
        }
        
        .auto-style10 {
            width: 1053px;
        }
        .auto-style11 {
            width: 263px;
        }
        .auto-style12 {
            height: 22px;
            width: 263px;
        }
        
        .auto-style13 {
            height: 72px;
        }
        .ravi{
            background-color:#b6ff00;
        }
        
    </style>
</head>
<body>
    <div>           
             <center><h2>Session time : <span id="secondexpre"></span> Seconds.</h2></center>
    </div>
               
     <header >
        <div class="header"  >
            <div class="row mt">

                <div class="auto-style3">
                    
                     <img src="i/logo.png" width="200" class="auto-style13" />
                   
                </div>
    
                <div class="col-md-12">

                    <div class="row" style="color:#000000">
                     <marquee  behavior="alternate" style="border:2px solid red" bgcolor="pink" > <h1 style="text-align:center;font-size:50px">Welcome To Brihaspathi </h1></marquee> 
                    </div>
                    <div calss="row" style="color:green">
                        <h2 style="text-align:center;font-size:30px">The Guru Of Tomorrow's Technology </h2>
                        </div>

                    <div class="row" style="color:#0c11ee">
                        <h2 style="text-align:center;font-size:20px">(An ISO 9001:2015 Certified) </h2>
                    </div>

                </div>
                <div class="auto-style4">
                </div>

            </div>
        </div>
     
        </header>
    <form id="form1" runat="server">
         
        <div class="ravi">
        <div class="text-center" >
       
            <br />
            <br />
           
            <table align="center" class="auto-style10" >
                
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>

                    <td class="auto-style11">
                        <asp:Label ID="Label1" runat="server" Text="Register_Id" Font-Bold="True" Font-Size="Medium" ForeColor="#80176D"></asp:Label>
                        <br />
                    </td>
                   <td>:</td>
                    <td >
                        <asp:Label ID="Label12" runat="server"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label2" runat="server" Text="*Student Name" Font-Bold="True" Font-Size="Medium" ForeColor="#400080"></asp:Label>
                        <br />
                    </td>
                    <td>:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True"  ForeColor="#000066"  PlaceHolder="Enter Student Name "></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label3" runat="server"  Text="*Student Gender"   Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
                        <br />
                    </td>
                    <td>:</td>
                    <td >
                        <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True"  PlaceHolder="Enter Student Gender " Font-Size="Small" ForeColor="Red" Height="22px" Width="148px"></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label4" runat="server" Text="*Father Name" Font-Bold="True" Font-Size="Medium" ForeColor="#009900"></asp:Label>
                        <br />
                    </td>
                    <td>:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" ForeColor="#009900"  PlaceHolder="Enter Father Name "></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label5" runat="server" Text="*Mother Name" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0099"></asp:Label>
                        <br />
                    </td>
                    <td>:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" ForeColor="#FF0066"  PlaceHolder="Enter Mother Name "></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label6" runat="server" Text="*Student Class" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
                        <br />
                    </td>
                    <td>:</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" ForeColor="Maroon" Height="22px" Width="149px">
                            <asp:ListItem>--Select Class--</asp:ListItem>
                            <asp:ListItem>1st Class</asp:ListItem>
                            <asp:ListItem>2nd Class</asp:ListItem>
                            <asp:ListItem>3rd Class</asp:ListItem>
                            <asp:ListItem>4th Class</asp:ListItem>
                            <asp:ListItem>5th Class</asp:ListItem>
                            <asp:ListItem>6th Class</asp:ListItem>
                            <asp:ListItem>7th Class</asp:ListItem>
                            <asp:ListItem>8th Class</asp:ListItem>
                            <asp:ListItem>9th Class</asp:ListItem>
                            <asp:ListItem>10th Class</asp:ListItem>
                            <asp:ListItem>SOFTWARE</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label7" runat="server" Text="*Student Age" Font-Bold="True" Font-Size="Medium" ForeColor="#AFB80A"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style5">:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox6" runat="server" Font-Bold="True" ForeColor="#FF9900" PlaceHolder="Enter Student Age "></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label8" runat="server" Text="*Student Address" Font-Bold="True" Font-Size="Medium"  ForeColor="#0000CC"></asp:Label>
                        <br />
                    </td>
                    <td>:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox7" runat="server" Font-Bold="True" ForeColor="#0000CC" PlaceHolder="Enter Student Address "></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label9" runat="server" Text="*Phone Number" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:Label>
                        <br />
                    </td>
                    <td>:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox8" runat="server" Font-Bold="True" ForeColor="#CC0000" PlaceHolder="Enter Phone Number "></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Lime" Text="*Date_Of_Birth"></asp:Label>
                        <br />
                    </td>
                    <td>:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox9" runat="server" TextMode="Date" Font-Bold="True" ForeColor="Lime" PlaceHolder="Enter Date_Of_Birth "></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0066" Text="*Photo"></asp:Label>
                        <br />
                    </td>
                    <td>:</td>
                    <td class="auto-style6">
                        &nbsp;
                        <asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" ForeColor="#CC0066" Height="22px" Width="151px" />
                    </td>
                    <td>
                        <br />
                    </td>
                   </tr>
                   <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" Text="Qr_Code" ></asp:Label>
                        <br />
                    </td>
                    <td>:</td>
                    <td class="auto-style6">
                         <asp:Image ID="Image1" runat="server" Height="137px" Width="179px" />
                    </td>
                    <td>&nbsp;</td>
                  </tr>
                  </table>
                  <p>
                  </p>
           
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click"   OnClientClick="return Validate();" Font-Bold="True" Font-Size="Medium" ForeColor="#009900"/>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button3" runat="server" Font-Bold="True"  Text="SHOW" OnClick="Button3_Click1" />
                        &nbsp;
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/REG ID.aspx">Go To Print</asp:HyperLink>
                        <br />
                        
                        <br />
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="RegiSter_Id" HeaderText="RegiSter_Id" />
                                <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" />
                                <asp:BoundField DataField="Student_Gender" HeaderText="Student_Gender" />
                                <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" />
                                <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" />
                                <asp:BoundField DataField="Student_Class" HeaderText="Student_Class" />
                                <asp:BoundField DataField="Student_Age" HeaderText="Student_Age" />
                                <asp:BoundField DataField="Student_Address" HeaderText="Student_Address" />
                                <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" />
                                <asp:BoundField DataField="Date_Of_Birth" HeaderText="Date_Of_Birth" />
                                <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                                </asp:ImageField>
                            </Columns>
            </asp:GridView>
                        <br />
                    </td>
                </div>
            </div>      
    </form>
</body>
</html>
