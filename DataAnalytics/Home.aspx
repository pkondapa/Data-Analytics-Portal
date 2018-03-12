<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DataAnalytics.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Style.css" rel="stylesheet" />
</head>
<body >
    <div class="jumbotron">
        <h1>DATA ANALYTICS PORTAL</h1>
    </div>
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server"  CssClass="navbar" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Large" ForeColor="White" Orientation="Horizontal" >
            <DynamicHoverStyle BackColor="White" ForeColor="Gray" />
            <DynamicMenuItemStyle HorizontalPadding="15px" VerticalPadding="2px" CssClass="nav navbar-nav" />
            <DynamicMenuStyle BackColor="#CCCCCC" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Home.aspx" Selected="True"></asp:MenuItem>
                <asp:MenuItem Text="Descriptive Statistics" Value="Descriptive Statistics" NavigateUrl="~/DescriptiveStatistics.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Exploratory Data Analysis" Value="Exploratory Data Analysis" NavigateUrl="~/ExploratoryDataAnalysis.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Model Scores" Value="Model Scores" NavigateUrl="~/ModelScores.aspx"></asp:MenuItem>
            </Items>
           <StaticHoverStyle BackColor="#E2EEF7" ForeColor="black" />
            <StaticMenuItemStyle HorizontalPadding="25px" VerticalPadding="15px" CssClass="nav navbar-nav" Width="100%" />
            <StaticMenuStyle Width="100%" BackColor="#466A8E" />
            <StaticSelectedStyle BackColor="white" ForeColor="Black" />
        </asp:Menu>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="well">
                        <h3>Descriptive Statistics</h3>
                        <h4><b>Descriptive statistics</b> are used to describe the basic features of the data in a study. They provide simple summaries about the sample and the measures.
</h4>
                    </div>
                </div>
                <div class ="col-md-6">
                    <div class="well">
                        <h3>Cleaned Data</h3>
                        <h4>Data is cleaned by dealing with the missing values and cleaned dataset is enabled for user download</h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="well">
                        <h3>Exploratory Data Analysis</h3>
                        <h4><b>Exploratory Data Analysis</b> (EDA) is an approach to analyzing data sets to summarize their main characteristics, often with visual methods. </h4>
                    </div>
                </div>
                <div class ="col-md-6">
                    <div class="well">
                        <h3>Model Scores</h3>
                        <h4>Using the Model Scores the user will be able to view the accuracy scores of different models like Logistic Regression, Decision Tree etc along with the precision and recall scores</h4>
                    </div>
                </div>
            </div>

        </div>
    </form>
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
