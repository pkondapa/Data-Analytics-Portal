<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExploratoryDataAnalysis.aspx.cs" Inherits="DataAnalytics.ExploratoryDataAnalysis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Bonbon' rel='stylesheet'/>
  <link href="Content/Style.css" rel="stylesheet" />
</head>
<body >
    <div class="jumbotron">
        <h1>DATA ANALYTICS PORTAL</h1>
    </div>
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server"  CssClass="navbar" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Large" ForeColor="White" Orientation="Horizontal" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="White" ForeColor="Gray" />
            <DynamicMenuItemStyle HorizontalPadding="15px" VerticalPadding="2px" CssClass="nav navbar-nav" />
            <DynamicMenuStyle BackColor="#CCCCCC" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Home.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Descriptive Statistics" Value="Descriptive Statistics" NavigateUrl="~/DescriptiveStatistics.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Exploratory Data Analysis" Value="Exploratory Data Analysis" NavigateUrl="~/ExploratoryDataAnalysis.aspx" Selected="True"></asp:MenuItem>
                <asp:MenuItem Text="Model Scores" Value="Model Scores" NavigateUrl="~/ModelScores.aspx"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#E2EEF7" ForeColor="black" />
            <StaticMenuItemStyle HorizontalPadding="25px" VerticalPadding="15px" CssClass="nav navbar-nav" Width="100%" />
            <StaticMenuStyle Width="100%" BackColor="#466A8E" />
            <StaticSelectedStyle BackColor="white" ForeColor="Black" />
        </asp:Menu>
        <div class="col-md-12">
            <h2>Exploratory Data Analysis</h2>
            <p>Exploratory data analysis (EDA) is a statistical approach that aims at discovering and summarizing a dataset. At this step of the data science process, we explore the structure of the dataset, the variables and their relationships.
                </p>
            <br />
            <p><b>Note: Upload your cleaned dataset downloaded from <a href="DescriptiveStatistics.aspx">Descriptive Statistics</a> page</b></p>
            <br />
        </div>
        <div class="container">
           <div class="row">
               <div class="col-md-1">
                   <label>Upload File</label>
               </div>
               <div class="col-md-4">
                   <asp:FileUpload ID="flupeda" runat="server" CssClass="btn" />
               </div>
               <div class="col-md-3">
                   <asp:Button ID="edasubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="edasubmit_Click" />
               </div>
           </div>

            <div class="row results">
                <div class="col-lg-12">
                      <asp:Label ID="lblMessage" runat="server" Font-Size="Medium"></asp:Label>
                </div>
                
            </div>

        </div>
    </form>
    <div class="row space">

    </div>
    <div class="footer">
        <div class="container">
        <div class="row">
         <h3>About</h3>
        <p>This application provides a platform for you to perform basic data analytics that help understand the data and relationship between various features in the dataset. Also you can evaluate different models on their data sets and compare the accuracy scores. It mainly provides you with a basic idea and knowledge to move to the next level of analyzing datasets. </p>
            </div>
            <div class="row">
                <div class="col-md-9">

                </div>
                <div class="col-md-3">
                    <b>Advisor: </b>Dr. Benjamin Mitchell<br />
                    © Priyanka Kondapalli
                </div>
            </div>
        </div>
    </div>
</body>
</html>
