<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintReport.aspx.cs" Inherits="WebApplication2.PrintReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .en {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        p {
            margin: 3px;
        }

        .medall {
            font-weight: bold;
        }

        table {
            margin-left: 100px;
        }

        .t1 {
            #margin-left:100px;
            margin-top: 20px;
            display: inline-block;
        }

        .t2 {
            margin-left: 100px;
            margin-top: 20px;
            display: inline-block;
        }

        #lblcus, #Label1, #Label2, #Label3, #Label4, #Label5 {
            font-weight: bold;
        }

        .t3 tr {
            display: flex;
            margin-top: 0;
            #justify-content:space-between;
            #margin-left:300px;
            #padding-right:200px;
        }

        .t3 {
            height: 130px;
            width: 1000px;
            border: 1px solid black;
            padding-top: 0;
        }

        .final {
            height: 130px;
            width: 1000px;
            border: 1px solid black;
            margin-left: 100px;
        }

            .final table {
                display: inline-block;
                padding: 0;
                margin-left: 0;
            }

        .t4 {
            height: 100px;
            width: 700px;
        }

        .t5 {
        }

        .final {
            vertical-align: middle;
        }

        #recei_box, #recei_box1 {
            outline: none;
            border: none;
            font-size: 20px;
        }

        #txtcus, #TextBox1, #TextBox2, #TextBox3, #TextBox4, #TextBox5, .txt1 {
            outline: none;
            border: none;
            font-size: 20px;
        }

        #txtcus, #TextBox1, #TextBox2, #TextBox3, #TextBox4, #TextBox5 {
            margin-left: 40px;
        }

        #txtbarcode {
            outline: none;
            border: none;
        }

        .h1 {
            font-weight: bold;
        }

        .s2 {
            margin-left: 60px;
            #width:200px;
        }

        .s3 {
            margin-left: 200px;
        }

        .s4 {
            margin-left: 80px;
        }

        .s5 {
            margin-left: 80px
        }

        .w2 {
            margin-left: 50px;
        }

        .w3 {
            #margin-left: 6px;
        }

        .w4 {
            margin-left: 18px;
        }

        .w5 {
            margin-left: 28px;
        }

        body {
            font-size: 20px;
        }

        #txtbarcode {
            font-size: 20px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="en">
            <p>VK PURAM LCC PLUS</p>
            <p class="medall">A MEDALL COMPANY</p>
            <p>D.No: 678/6, PLU Building,</p>
            <p>Vickramasingapuram Main Road, Vickramasingapuram - 627425</p>
            <p>Ambasamudram Taluk,Tirunelveli District.</p>
            <p>CustomerCare : +91 75501 77777 / customercare@medall.in</p>
            <p class="medall">Invoice/Receipt</p>
            <p>
                <asp:TextBox ID="txtbarcode" runat="server" Text=""></asp:TextBox>
            </p>

        </div>
        <div>
            <table class="t1">
                <tr>

                    <td>
                        <asp:Label ID="lblcus" runat="server" Text="Customer ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcus" runat="server" Text="MED111771435"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Customer Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="ReferredBy"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Text="SELF"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table class="t2">

                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Text="123 80118358"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Referred Org"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>

            </table>
            <br />
            <br />
        </div>
        <div>
            <table class="t3">
                <tr>
                    <td>
                        <asp:Label CssClass="h1 s1" runat="server" Text="SNo"></asp:Label>
                    </td>
                    <td>
                        <asp:Label CssClass="h1 s2" runat="server" Text="Testname"></asp:Label>
                    </td>
                    <td>
                        <asp:Label CssClass="h1 s3" runat="server" Text="Charges"></asp:Label>
                    </td>
                    <td>
                        <asp:Label CssClass="h1 s4" runat="server" Text="Discount"></asp:Label>
                    </td>
                    <td>
                        <asp:Label CssClass="h1 s5" runat="server" Text="Balance"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtsno1" CssClass="txt1 w1" runat="server" Width="42px" AutoPostBack="true" OnTextChanged="Unnamed6_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txttestname1" CssClass="txt1 w2" runat="server" Width="275px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcharge1" CssClass="txt1 w3" runat="server" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdiscount1" CssClass="txt1 w4" runat="server" Width="130px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtbalance1" CssClass="txt1 w5" runat="server" Width="42px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtsno2" CssClass="txt1 w1" runat="server" AutoPostBack="true" Width="42px" OnTextChanged="txtsno2_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txttestname2" CssClass="txt1 w2" runat="server" Width="275px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcharge2" CssClass="txt1 w3" runat="server" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdiscount2" CssClass="txt1 w4" runat="server" Width="130px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtbalance2" CssClass="txt1 w5" runat="server" Width="42px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtsno3" CssClass="txt1 w1" runat="server" AutoPostBack="true" Width="42px" OnTextChanged="txtsno3_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txttestname3" CssClass="txt1 w2" runat="server" Width="275px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcharge3" CssClass="txt1 w3" runat="server" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdiscount3" CssClass="txt1 w4" runat="server" Width="130px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtbalance3" CssClass="txt1 w5" runat="server" Width="42px"></asp:TextBox>
                    </td>


                </tr>

            </table>
        </div>
        <br />
        <br />
        <div class="final">
            <table class="t4">
                <tr>
                    <td>
                        <asp:Label CssClass="hh" runat="server" Text="Received amount (in words):"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="recei_box" runat="server" Width="297px" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label CssClass="hh" runat="server" Text="Payment Type/Mode :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="recei_box1" runat="server" Text="CASH/UPI"></asp:TextBox>
                    </td>


                </tr>
            </table>
            <table class="t5">
                <tr>
                    <td>
                        <asp:Label CssClass="hh" runat="server" Text="Total Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txttotalamt" CssClass="txt1" runat="server" Width="50px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label CssClass="hh" runat="server" Text="Total Discount Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdiscountamt" CssClass="txt1" runat="server" Width="50px" Text="0"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label CssClass="hh" runat="server" Text="Paid Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpaidamt" CssClass="txt1" runat="server" Width="50px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label CssClass="hh" runat="server" Text="Due Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDueAmt" CssClass="txt1" runat="server" Width="50px" Text="0"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" />
                    </td>
                </tr>
                <%--<br />
                <br />
                <br />
                <tr>
                    <td>
                        <asp:Label ID="lblcashier" runat="server" Text="Cashier"></asp:Label>
                    </td>
                </tr>--%>
            </table>
        </div>
    </form>
</body>
</html>
