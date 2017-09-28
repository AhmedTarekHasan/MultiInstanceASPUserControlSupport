<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TextWithClear.ascx.cs" Inherits="DevelopmentSimplyPut.MultiInstanceUserControl.Controls.TextWithClear" %>

<script type="text/javascript" src="../Scripts/jquery-1.11.0.min.js"></script>

<div style="border-color:red;border-width:thin;border-style:solid;width:20%;">
    <input id="txt_MyTextBox" name="txt_MyTextBox" type="text" value="" />
    <br />
    <input id="btn_Clear" type="button" value="Clear" onclick = "Clear();" />
</div>

<script type="text/javascript">
    function Clear() {
        $("#txt_MyTextBox").val("");
    }
</script>