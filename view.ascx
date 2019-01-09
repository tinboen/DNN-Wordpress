<%@ Control Language="C#" ClassName="DNN.DNNWordpress_1.view" Inherits="DotNetNuke.Entities.Modules.PortalModuleBase" %>
<%@ Import Namespace="System.IO" %>

<script runat="server">

    #region Copyright
    // 
    // Copyright (c) 2018
    // by DNN
    // 
    #endregion

    #region Event Handlers

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);

        //Only required if the HTML content uses jQuery or the Services Framework
        jQuery.RequestRegistration();
        ServicesFramework.Instance.RequestAjaxScriptSupport();
    }

    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);

        if (!Page.IsPostBack)
        {
            //Load the HTML file
            var path = Server.MapPath(ModulePath) + "view.html";
            if (File.Exists(path))
            {
                var content = Null.NullString;
                TextReader tr = new StreamReader(path);
                content = tr.ReadToEnd();
                tr.Close();
                ctlContent.Text = content;
            }
        }
    }

    #endregion

</script>

<asp:Localize ID="ctlContent" runat="server" />

