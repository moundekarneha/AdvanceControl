<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sample.aspx.cs" Inherits="AdvanceControl.sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource2" />
            <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/Advertise.xml"></asp:XmlDataSource>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server"></asp:XmlDataSource>
        </div>

        <asp:Panel ID="Panel1" runat="server">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Click me to upload " />
        </asp:Panel>
        <p>
            <asp:Button ID="btnShowHide" runat="server" Text="Show/Hide" OnClick="btnShowHide_Click" />
        </p>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <h1>View1</h1>
            </asp:View>
            <asp:View ID="View2" runat="server">

                <h1>View2</h1>

            </asp:View>
            <asp:View ID="View3" runat="server">
                <h1>View3</h1>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <h1>View4</h1>
            </asp:View>
        </asp:MultiView>
        <asp:Button ID="btnV1" runat="server" Text="View1" OnClick="btnV1_Click" />
        <asp:Button ID="btnV2" runat="server" Text="View2" OnClick="btnV2_Click" />
        <asp:Button ID="btnV3" runat="server" Text="View3" OnClick="btnV3_Click" />
        <p>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </p>
        <asp:Button ID="btnAddControl" runat="server" Text="AddControls" OnClick="btnAddControl_Click" />
    </form>
</body>
</html>
