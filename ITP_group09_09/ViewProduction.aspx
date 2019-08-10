<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProduction.aspx.cs" Inherits="ITP_group09_09.ViewProduction" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>WAGAWATTE ASPHALT PLANT</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    <style>
        body, h1, h2, h3, h4, h5, h6 {
            font-family: "Montserrat", sans-serif
        }

        .w3-sidebar {
            width: 180px;
            background: #EAB309;
        }

        .w3-row-padding img {
            margin-bottom: 12px
        }
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
    
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;" onclick="window.location.href='EmployeeManagement.html'">

      <a href="ViewProduction.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">View Production</p>
        </a>
        <a href="Production.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
            <p style="font:bold 18px arial">Calculate Daily Production</p>

        </a>
        <a href="#photos" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">View Orders </p>

        </a>
        <a href="#photos" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">Reports</p>

        </a>
    </nav>
</head>
<body>
    <div id="home" style="background-color:#EAB309">
        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" > WAGAWATTE ASPHALT PLANT</p>
        
   </div>
    <form runat="server">
    <div style="margin-left:350px;">
        <h2 style="color:red;margin-left:350px;">View Production</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="130px" Width="831px" CssClass="auto-style1">
        <Columns>
            <asp:BoundField DataField="Kg" HeaderText="Kg" SortExpression="Kg" />
            <asp:BoundField DataField="bitument" HeaderText="bitument" SortExpression="bitument" />
            <asp:BoundField DataField="bitumenKG" HeaderText="bitumenKG" SortExpression="bitumenKG" />
            <asp:BoundField DataField="materialKG" HeaderText="materialKG" SortExpression="materialKG" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Kg], [bitument], [bitumenKG], [materialKG] FROM [prodtable]"></asp:SqlDataSource>
    </div>
    </form>

  


</body>
</html>
