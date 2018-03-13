<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DescriptiveStatistics.aspx.cs" Inherits="DataAnalytics.DescriptiveStatistics" %>

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
                <asp:MenuItem Text="Descriptive Statistics" Value="Descriptive Statistics" NavigateUrl="~/DescriptiveStatistics.aspx" Selected="True"></asp:MenuItem>
                <asp:MenuItem Text="Exploratory Data Analysis" Value="Exploratory Data Analysis" NavigateUrl="~/ExploratoryDataAnalysis.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Model Scores" Value="Model Scores" NavigateUrl="~/ModelScores.aspx"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#E2EEF7" ForeColor="black" />
            <StaticMenuItemStyle HorizontalPadding="25px" VerticalPadding="15px" CssClass="nav navbar-nav" Width="100%" />
            <StaticMenuStyle Width="100%" BackColor="#466A8E" />
            <StaticSelectedStyle BackColor="white" ForeColor="Black" />
        </asp:Menu>
        <div class="col-md-12">
            <h2>Descriptive Statistics</h2>
            <p>Descriptive statistics are used to describe the basic features of the data in a study. They provide simple summaries about the sample and the measures.
                Descriptive Statistics are used to present quantitative descriptions in a manageable form. In a research study we may have lots of measures. Or we may measure a large number of people on any measure. Descriptive statistics help us to simplify large amounts of data in a sensible way. Each descriptive statistic reduces lots of data into a simpler summary.
                </p>
            <br />
            <p><b>Note: Upload your dataset in a .csv format with any target columns as the last column in the sheet</b></p>
            <br />
        </div>
        <div class="container">
           <div class="row">
               <div class="col-md-1">
                   <label>Upload File</label>
               </div>
               <div class="col-md-4">
                   <asp:FileUpload ID="flupDscStat" runat="server" CssClass="btn" />
               </div>
               <div class="col-md-3">
                   <asp:Button ID="btnDcpStat" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnDcpStat_Click" />
               </div>
           </div>
            <div class="row results">
                <div class="col-lg-11">

                    <asp:Label ID="lblMessage" runat="server" Font-Size="Medium"></asp:Label>

                </div>
                <div class="col-md-1">
                    <asp:Button ID="Button2" runat="server" Text="i" CssClass="button" OnClick="Button2_Click" />
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
