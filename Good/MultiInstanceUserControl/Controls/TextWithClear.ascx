<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TextWithClear.ascx.cs" Inherits="DevelopmentSimplyPut.MultiInstanceUserControl.Controls.TextWithClear" %>

<script type="text/javascript" src="../Scripts/jquery-1.11.0.min.js"></script>

<div id="MainContainer" runat="server" style="border-color:red;border-width:thin;border-style:solid;width:20%;">
    <input id="txt_MyTextBox" name="txt_MyTextBox" type="text" value="" />
    <br />
    <input id="btn_Clear" type="button" value="Clear" onclick = "GetCurrentTextWithClearControlManager<%= this.ClientID %>().Clear();" />
</div>

<script type="text/javascript">
    function TextWithClearControlManager(_controlClientId) {
        this.ControlClientId = _controlClientId;
        this.GetMainContainerDomElement = function GetMainContainerDomElement() {
            return $("div[id^=" + this.ControlClientId + "][id$=MainContainer]").eq(0);
        };
        this.Clear = function Clear() {
            this.GetMainContainerDomElement().find("#txt_MyTextBox").val("");
        };
    }

    function GetCurrentTextWithClearControlManager<%= this.ClientID %>() {
        return new TextWithClearControlManager('<%= this.ClientID %>');
    }
</script>