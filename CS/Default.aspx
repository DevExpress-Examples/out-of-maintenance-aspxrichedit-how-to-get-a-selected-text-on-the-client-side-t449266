<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.ASPxRichEdit.v16.1, Version=16.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRichEdit" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function getAllText() {
            return RichEdit.document.activeSubDocument.text;
        }
        function getSelectedText() {
            var firstSelectedInterval = RichEdit.selection.intervals[0];
            var selectedText = RichEdit.document.activeSubDocument.text.substr(firstSelectedInterval.start, firstSelectedInterval.length);
            return selectedText;
        }
        function selectFirstLine() {
            return RichEdit.selection.selectLine();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="padding-bottom: 10px;">
            <dx:ASPxButton runat="server" ID="Button1" Text="Get All Text" AutoPostBack="false">
                <ClientSideEvents Click="function(s, e) { alert(getAllText()); }" />
            </dx:ASPxButton>
            <dx:ASPxButton runat="server" ID="Button2" Text="Get Selected Text" AutoPostBack="false">
                <ClientSideEvents Click="function(s, e) { alert(getSelectedText()); }" />
            </dx:ASPxButton>
       </div>
        
        <dx:ASPxRichEdit ID="RichEdit" runat="server" ClientInstanceName="RichEdit">
            <ClientSideEvents Init="function(s, e) { selectFirstLine(); }" />
        </dx:ASPxRichEdit>
    </div>
    </form>
</body>
</html>
