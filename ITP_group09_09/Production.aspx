<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Production.aspx.cs" Inherits="ProductionManage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

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
            margin-left: 40px;
        }
        .auto-style9 {
            height: 29px;
            width: 207px;
        }
        .auto-style10 {
            width: 207px;
        }
        .auto-style11 {
            width: 207px;
            height: 43px;
        }
    </style>
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center" style="height:100%">
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;"onclick="window.location.href='ProductionMain.aspx' "/>

        <a href="ViewProduction.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">View Production</p>
        </a>
        <a href="Production.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
            <p style="font:bold 18px arial">Calculate Daily Production</p>

        </a>
        <a href="ViewOrder.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">View Orders </p>

        </a>
        <a href="#photos" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">Reports</p>

        </a>
       <a href="ProductionMain.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">HOME</p>

        </a>
    </nav>

</head>
<body>
    <form id="form1" runat="server">
       <div id="home" style="background-color:#EAB309">
        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" > WAGAWATTE ASPHALT PLANT</p>
       
    </div>
        
        <div style ="margin-left:250px;">
            <div>
            Select date:</div>
        <p>
            <asp:Calendar ID="CalendarProduction" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="07/23/2019 18:09:26" ShowGridLines="True" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
        </p>
        <p class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
            <asp:TextBox ID="dateDisplay" runat="server" Width="221px" Height="22px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <table>
        <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600">
            Wearing Course</p>
            <tr>
        <th  style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9">
            <asp:Label ID="Label2" runat="server"  Text="Kilo grams" ></asp:Label></th>
         <th  style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9" >   
             <asp:Label ID="Label3" runat="server"  Text="Bitumen %" ></asp:Label></th>
        <th style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9">   
             <asp:Label ID="Label4" runat="server"  Text="Bitumen Kg" ></asp:Label></th>
         <th style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9">   
             <asp:Label ID="Label5" runat="server"  Text="Material(KG)" ></asp:Label>
        </th></tr>
             <tr>
        <td style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600" class="auto-style11">
            
            <asp:TextBox ID="wcKG" runat="server" Height="33px" ReadOnly="True" Width="180px">27500</asp:TextBox></td>
        <td class="auto-style11">    
            <asp:TextBox ID="bitpWC" runat="server" AutoPostBack="True" CssClass="auto-style10" Height="33px" OnTextChanged="bitpWC_TextChanged1" Width="180px"></asp:TextBox>
           
         </td>  
          <td class="auto-style11">
            <asp:TextBox ID="bitWC" runat="server" CssClass="auto-style10" Height="33px" ReadOnly="True" Width="180px"></asp:TextBox>
                
                </td>
            <td class="auto-style11">
            <asp:TextBox ID="wcmaterial" runat="server" CssClass="auto-style10" Height="33px" ReadOnly="True" Width="180px"></asp:TextBox>
           
        </td>
                </tr>
            </table>
        <br />
        <table>
        <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600">
            Cut-Back Course</p>
            <tr>
        <th  style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9">
            <asp:Label ID="Label6" runat="server"  Text="Kilo grams" ></asp:Label></th>
         <th  style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9" >   
             <asp:Label ID="Label7" runat="server"  Text="Bitumen %" ></asp:Label></th>
        <th style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9">   
             <asp:Label ID="Label8" runat="server"  Text="Bitumen Kg" ></asp:Label></th>
         <th style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9">   
             <asp:Label ID="Label9" runat="server"  Text="Material(KG)" ></asp:Label>
        </th></tr>
        <tr>
        <td style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600" class="auto-style11">
            
            <asp:TextBox ID="cbKG" runat="server" Height="33px" ReadOnly="True" Width="180px">30610</asp:TextBox></td>
        <td class="auto-style11">    
            <asp:TextBox ID="CBbi" runat="server" AutoPostBack="True" CssClass="auto-style10" Height="33px" OnTextChanged="CBbi_TextChanged" Width="180px"></asp:TextBox>
           
         </td>  
          <td class="auto-style11">
            <asp:TextBox ID="cbBit" runat="server" CssClass="auto-style10" Height="33px" ReadOnly="True" Width="180px"></asp:TextBox>
                
                </td>
            <td class="auto-style11">
            <asp:TextBox ID="cbMaterial" runat="server" CssClass="auto-style10" Height="33px"  ReadOnly="True" Width="180px"></asp:TextBox>
           
        </td>
                </tr>
            </table>

             <table>
        <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600">
            Binder Course</p>
            <tr>
        <th  style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9">
            <asp:Label ID="Label10" runat="server"  Text="Kilo grams" ></asp:Label></th>
         <th  style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9" >   
             <asp:Label ID="Label11" runat="server"  Text="Bitumen %" ></asp:Label></th>
        <th style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9">   
             <asp:Label ID="Label12" runat="server"  Text="Bitumen Kg" ></asp:Label></th>
         <th style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000066" class="auto-style9">   
             <asp:Label ID="Label13" runat="server"  Text="Material(KG)" ></asp:Label>
        </th></tr>
        <tr>
        <td style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600" class="auto-style11">
            
            <asp:TextBox ID="BindKG" runat="server" Height="33px" ReadOnly="True" Width="180px">100700</asp:TextBox></td>
        <td class="auto-style11">    
            <asp:TextBox ID="BinderBitP" runat="server" AutoPostBack="True" CssClass="auto-style10" Height="33px" OnTextChanged="BinderbitP_changed" Width="180px"></asp:TextBox>
           
         </td>  
          <td class="auto-style11">
            <asp:TextBox ID="BinderBitkg" runat="server" CssClass="auto-style10" Height="33px" ReadOnly="True" Width="180px"></asp:TextBox>
                
                </td>
            <td class="auto-style11">
            <asp:TextBox ID="BinderMatKg" runat="server" CssClass="auto-style10" Height="33px"  ReadOnly="True" Width="180px"></asp:TextBox>
           
        </td>
                </tr>
            </table>
            </div>
        <div style="margin-left:650px;">
            <asp:Button ID="Button1" runat="server" Text="insert" OnClick="Button1_Click" />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
        
        
        
    </form>
</body>
</html>
