<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOG IN PAGE.aspx.cs" Inherits="Student_Registration1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOG IN</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <section>
             <header >
               <div class="header"  >
                 <div class="row mt">
                    <div class="auto-style3">
<%--                     <img src="i/logo%20(1).png"  width="200"  class="auto-style13" />--%>
                         <div class="col-md-12">

                    <div class="row" style="color:#000000">
                     <marquee   direction="up"  behavior="alternate" style="border:2px solid red" bgcolor="pink" > <h1  style="text-align:center;font-size:50px" text-color="white">Welcome To Brihaspathi </h1></marquee> 
                     </div>
                        <%--<div class="menu">
                             <a href="HOME"><i class="fa fa-home"></i>HOME</a>
                             <a href="#">SOFTWARE</a>
                             <a href="#">PRODUCTS</a>
                             <a href="#">CARIER</a>
                             <a href="#"><i class="fa fa-address-book"></i>CANTACTUS</a>
                        </div>--%>
                              <div class="menu">
                 <a href="Home"><i class="fa fa-home"></i>Home</a>
                 <a href="#"><i class="fa fa-search" ></i>Search</a>
                 <a href="#">About</a>
                 <a href="#"><i class="fa fa-address-book" ></i>contactus</a>
                 <a href="#"><i class="fa fa-envelope-o" ></i>email</a>
                 <a href="#clients"><i class="fa fa-fw fa-user"></i> Clients</a>
                
             </div>
                 
                  </div>
                    </div>
                 </div>
                </div>
            </header >
         <div class="cover">       
             <%-- <asp:Image ID="Image1" imageurl="~/i/Panel copy.png" runat="server" ForeColor="#CC0099" />--%>
              <div class="elements">
                     <div class="intro">
                      <asp:Label ID="Label1" runat="server" Text="Log In"></asp:Label>

                      <asp:TextBox ID="TextBox1" runat="server" CssClass="txt1 txtstyle" placeholder="USERNAME" ForeColor="#CC0099" BackColor="Yellow"></asp:TextBox>
                      <asp:TextBox ID="TextBox2" runat="server" CssClass="txt2 txtstyle" placeholder="PASSWORD" TextMode="Password" ForeColor="#CC0099" BackColor="Yellow"></asp:TextBox>
                      <asp:Button ID="Button1" runat="server" CssClass="btn1 btnstyle" Text="Sign In" OnClick="Button1_Click"  />
                      <asp:Button ID="Button2" runat="server" CssClass="btn2 btnstyle" Text="Change Password" OnClick="Button2_Click"   />
                    <%--  <asp:Button ID="Button2" runat="server" CssClass="btn2 btnstyle" Text="Registation" />--%>
                     </div>
               </div>
           </div>
  
    </section>
    </form>
</body>
</html>
