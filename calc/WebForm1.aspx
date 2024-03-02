<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="calc.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Tip Calculator</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div>
<h1 style="color:darkblue"class="">
Tip Calculator<small></small>
</h1>
<br />
    <!--Error label -->
     <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
    <br />
<div style="padding-left:10px">
<div class="row">
<!--- 3 columns -->
<div class="">
<div class="col-md-1">
<label class="control-label ">Cost of Meals:</label>
</div>
<div class="col-md-2">

<asp:TextBox runat="server" ID="txtCostOfMeals" CssClass="form-control breadcrumb modal-content"></asp:TextBox>
<asp:CompareValidator style="color:red; font:bold" runat="server" Operator="DataTypeCheck" Type="Integer"
ControlToValidate="txtCostOfMeals" ErrorMessage="Value must be a whole number" />
</div>
</div>
</div>
<div class="row">
<!--- 3 columns -->
<div class="">
<div class="col-md-1">
<label class="control-label ">15% tip:</label>
</div>
<div class="col-md-2">

<label runat="server" id="lbl15percentTip" class="control-label ">$ 0.00</label>
</div>
</div>
</div>
<div class="row">
<!--- 3 columns -->
<div class="">
<div class="col-md-1">
<label class="control-label ">20% Tip:</label>
</div>
<div class="col-md-2">
<label runat="server" id="lbl20percentTip" class="control-label ">$ 0.00</label>
</div>
</div>
</div>
<br />
<div class="row">
<!--- 3 columns -->
<div class="">
<div class="col-md-1">
<label class="control-label ">25% Tip:</label>
</div>
<div class="col-md-2">
<label id="lbl25percentTip" runat="server" class="control-label ">$ 0.00</label>
</div>
</div>
</div>

</div>


</div>
<br />
<div class="col-md-1">
<asp:Button ID="BtnCalculator" runat="server" Style="" CssClass="Btn" Text="Calculate" OnClick="BtnCalculator_Click"></asp:Button>
   </div>
<div class="col-md-1">
<asp:LinkButton id="LinkClear" Text="Clear" OnClick="LinkClear_Click" runat="server"/>
</div>
    <%--<div class="col-md-1">
<asp:Button ID="Button1" runat="server" Style="" CssClass="btn" Text="Clear" OnClick="btnexportGrid_Click"></asp:Button>
</div>--%>
</form>
</body>
</html>
