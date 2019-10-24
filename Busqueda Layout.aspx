<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">

	<SharePointWebControls:ScriptLink  name="~sitecollection/Style Library/Telefonica dev/Busqueda/angular.js" runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;Name&#39; T=&#39;~sitecollection/Style Library/Telefonica dev/Busqueda/angular.js&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl00&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/>
	<SharePointWebControls:ScriptLink  name="~sitecollection/Style Library/Telefonica dev/Busqueda/angular.dataservice.js" runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;Name&#39; T=&#39;~sitecollection/Style Library/Telefonica dev/Busqueda/angular.dataservice.js&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl01&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/>
		<SharePointWebControls:ScriptLink  name="~sitecollection/SiteAssets/ng-table.js" runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;Name&#39; T=&#39;~sitecollection/SiteAssets/ng-table.js&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl02&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/>

	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/Telefonica dev/Busqueda/busqueda.css %>" runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;Name&#39; Bound=&#39;True&#39; T=&#39;SPUrl:~sitecollection/Style Library/Telefonica dev/Busqueda/busqueda.css&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl03&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/>
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;Name&#39; Bound=&#39;True&#39; T=&#39;SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl04&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/>
	<PublishingWebControls:EditModePanel runat="server" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&amp;#xD;&amp;#xA;		&amp;lt;!-- Styles for edit mode only--&amp;gt;&amp;#xD;&amp;#xA;		&amp;lt;SharePointWebControls:CssRegistration name=&amp;quot;&amp;lt;% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %&amp;gt;&amp;quot; After=&amp;quot;&amp;lt;% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %&amp;gt;&amp;quot; runat=&amp;quot;server&amp;quot; __designer:Preview=&amp;quot;&amp;quot; __designer:Values=&amp;quot;&amp;amp;lt;P N=&amp;amp;#39;Name&amp;amp;#39; Bound=&amp;amp;#39;True&amp;amp;#39; T=&amp;amp;#39;SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css&amp;amp;#39; /&amp;amp;gt;&amp;amp;lt;P N=&amp;amp;#39;After&amp;amp;#39; Bound=&amp;amp;#39;True&amp;amp;#39; T=&amp;amp;#39;SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css&amp;amp;#39; /&amp;amp;gt;&amp;amp;lt;P N=&amp;amp;#39;ID&amp;amp;#39; T=&amp;amp;#39;ctl00&amp;amp;#39; /&amp;amp;gt;&amp;amp;lt;P N=&amp;amp;#39;Page&amp;amp;#39; ID=&amp;amp;#39;1&amp;amp;#39; /&amp;amp;gt;&amp;amp;lt;P N=&amp;amp;#39;TemplateControl&amp;amp;#39; R=&amp;amp;#39;1&amp;amp;#39; /&amp;amp;gt;&amp;amp;lt;P N=&amp;amp;#39;AppRelativeTemplateSourceDirectory&amp;amp;#39; R=&amp;amp;#39;-1&amp;amp;#39; /&amp;amp;gt;&amp;quot;/&amp;gt;&amp;#xD;&amp;#xA;	&quot; /&gt;&lt;/Regions&gt;
		&lt;!-- Styles for edit mode only--&gt;
		&lt;SharePointWebControls:CssRegistration name=&quot;&lt;% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %&gt;&quot; After=&quot;&lt;% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %&gt;&quot; runat=&quot;server&quot;/&gt;
	" __designer:Values="&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl05&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;&lt;P N=&#39;Visible&#39; T=&#39;False&#39; /&gt;">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>" After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue FieldName="Title" runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;FieldName&#39; T=&#39;Title&#39; /&gt;&lt;P N=&#39;ItemFieldValue&#39; ID=&#39;1&#39; Serial=&#39;AAEAAAD/////AQAAAAAAAAAGAQAAAA9CdXNxdWVkYSBMYXlvdXQL&#39; /&gt;&lt;P N=&#39;ListItemFieldValue&#39; R=&#39;1&#39; /&gt;&lt;P N=&#39;Visible&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;ControlMode&#39; E=&#39;1&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;2&#39; T=&#39;ctl06&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;3&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;3&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePointWebControls:FieldValue FieldName="Title" runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;FieldName&#39; T=&#39;Title&#39; /&gt;&lt;P N=&#39;ItemFieldValue&#39; ID=&#39;1&#39; Serial=&#39;AAEAAAD/////AQAAAAAAAAAGAQAAAA9CdXNxdWVkYSBMYXlvdXQL&#39; /&gt;&lt;P N=&#39;ListItemFieldValue&#39; R=&#39;1&#39; /&gt;&lt;P N=&#39;Visible&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;ControlMode&#39; E=&#39;1&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;2&#39; T=&#39;ctl07&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;3&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;3&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/></asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server">

 
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <ol class="breadcrumb">
            <%--
				<asp:SiteMapPath runat="server" SiteMapProvider="CurrentNavigation" RenderCurrentNodeAsLink="false" SkipLinkText="" CurrentNodeStyle-CssClass="active" __designer:Preview="&lt;span&gt;&lt;span class=&quot;active&quot;&gt;Red Colaborativa&lt;/span&gt;&lt;/span&gt;" __designer:Values="&lt;P N=&#39;SkipLinkText&#39; R=&#39;-1&#39; /&gt;&lt;P N=&#39;SiteMapProvider&#39; T=&#39;CurrentNavigation&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl08&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;" __designer:Templates="&lt;Group Name=&quot;NodeTemplate&quot;&gt;&lt;Template Name=&quot;NodeTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;&lt;Group Name=&quot;CurrentNodeTemplate&quot;&gt;&lt;Template Name=&quot;CurrentNodeTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;&lt;Group Name=&quot;RootNodeTemplate&quot;&gt;&lt;Template Name=&quot;RootNodeTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;&lt;Group Name=&quot;PathSeparatorTemplate&quot;&gt;&lt;Template Name=&quot;PathSeparatorTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"/>--%></ol>
        	</div>
    </div>
  </div>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">

<div id="dvBuscadorNombre">
	<div ng-controller="BuscadorNombreCtrl" id="BuscadorNombre">
	<div class="buscador">
		<div class="container">
			
			<div class="row" action="">
				<div class="col-12 col-md-10 col-lg-10 mt-3">
					<input type="text" name="name" required="required" ng-model="value" id="busqueda" ng-change="search(value)">
				</div>
				<div class="col-12 col-md-2 col-lg-2 mt-3">
					<input type="text" id="search-submit" class="btn btn-send" ng-click="search(value)" value="Buscar">
				</div>
				<div class="col-12 col-lg-12 col-xl-12 text-center mt-3 pl-5 pr-5">
					<p></p>
				</div>
			</div>
													
		</div>
	</div>


	
	<nav class="cat-resultados navbar-expand-lg bluedark">
	
	  <ul>
	    <li ng-click="search(value,0)"><a href="#">Todos los sitios</a></li>
	    <!--<li ng-click="search(value)"><a href="#">Novedades</a></li>-->
	    <li ng-click="search(value,1)"><a href="#">Documentos</a></li>
	    <li ng-click="search(value,2)"><a href="#">Videos</a></li>
	    <!--<li ng-click="search(value)"><a href="#">Grupos</a></li>-->
	  </ul>
	
	</nav>
	

	<section class="container busqueda">
		<div class="row align-items-center">
		  <div class="col-md-1"><a class="btn-volver" href="#">VOLVER</a></div> 
		  <div class="col-md-10 text-center">
		  <h2>Resultado de búsqueda: <span>{{value}} </span></h2>
		  </div>
		  <div class="col-md-12 text-center"><h3>{{cant_res}}</h3></div>
		</div>
		<div class="table-responsive">
		<table ng-table="usersTable" class="table">
		  <thead>
		    <tr>
		      <th scope="col">Título</th>
		      <th scope="col" ng-if="docs==true">Autor</th>
		      <th scope="col">Detalle</th>
		      <th scope="col">Fecha </th>
		      <th scope="col"></th>
		    </tr>
		  </thead>
		  <tbody>
		       <tr ng-repeat="item in data">
		          <td><a href={{item.Url}}>{{item.Title}}</a></td>
				  <td ng-if="docs==true">{{item.Author}}</td>
				  <td ng-if="docs==true">{{item.HitHighlightedSummary}}</td>
				  <td ng-if="docs==false">{{item.Description}}</td>
				  <td>{{item.LastModifiedTime}}</td>
		       </tr>
		  </tbody>
		</table>
						
		</div>
		</section>
	</div>
</div>		


<script>
		
		var scopes = [
		{'Nombre':'Todos los sitios','ScopeId':'f85029e4-bf0f-4333-ae12-4cdb710b45f6'},
		{'Nombre':'Novedades','ScopeId':null},
		{'Nombre':'Documentos','ScopeId':'9861e0f4-1fa5-4759-bae5-542795d9647e'},
		{'Nombre':'Videos','ScopeId':null},
		{'Nombre':'Grupos','ScopeId': null}		
		];
		

		var buscadorNombreApp = angular.module('buscadorNombreApp', ['ngTable','dataSvcModule']);
	
		buscadorNombreApp.controller('BuscadorNombreCtrl', function($scope, dataService, ngTableParams) {
		
		$scope.numLimitDefault = 15;
		$scope.numLimit = $scope.numLimitDefault;
		$scope.appName = "buscadorNombreApp";
		
		
		$scope.search = function(value,id){
		
		switch (id) {
		 
		 case 0:
		 $scope.docs = false;
		 break;
		 case 1:
		 $scope.docs = true;
		 break;
		 case undefined:
		 $scope.docs = false;
		 break;
		 case 2:
		 $scope.docs = false;
		 break;
		 		
		}
		
		
		act_scope= buscarScopeActivo();
		act_scopeId = buscarScopeIdActivo(act_scope);
			
			var myQuery;
			if (value == undefined)
				myQuery = "*";
			if (value && value.length>=3)
				myQuery = value + "*";
			if(value == undefined || value.length>=3){	
				var params = {
					apiUrl: _spPageContextInfo.webAbsoluteUrl + "/_api",
					query: myQuery,
					sourceid: act_scopeId,
					rowlimit: 500,
					properties: ['Author','LastModifiedTime','Title','HitHighlightedSummary','contentclass','Url','Description']
				};
				$scope.loading = true;
				dataService.search(params).then(function (response) {
				
					for(var i=0; i< response.length; i++){
						response[i].LastModifiedTime = (response[i].LastModifiedTime == null) ? "" : response[i].LastModifiedTime.split("T")[0];
					}
					
					$scope.users = response;
					$scope.cant_res = response.length + " resultados";
					 $scope.usersTable = new ngTableParams({
				        page: 1,            // show first page
				        count: 10         // count per page
				    	}, {
				        total: $scope.users.length,
				        getData: function($defer, params) {
				        	$scope.data = $scope.users.slice((params.page() - 1) * params.count(), params.page() * params.count()); 
				            // use build-in angular filter				
							$defer.resolve($scope.data);
						}
   					 }); 
						
				       										
				});
				
				}
			/*}else {
				$scope.users = 0;
				$scope.numLimit = $scope.numLimitDefault;
				$scope.cant_res = null;
			}*/
		}
        angular.element(document).ready(function () {
                		
        });
	});
	
	var dvBuscadorNombre = document.getElementById('dvBuscadorNombre');
	angular.element(document).ready(function() {
	   
	   
	   angular.bootstrap(dvBuscadorNombre, ['buscadorNombreApp']);
	   
	   //SET al primer SCOPE
	   $(".cat-resultados ul li").first().css('background-color','#00edff');
	   $(".cat-resultados ul li").first().addClass("actual");
		// CAMBIO DE SCOPE CSS
	     $(".cat-resultados ul li a").click(function(){	     	 
	     	 $(".cat-resultados ul li").css('background-color','#003245');
	     	 $(".cat-resultados ul li").removeClass("actual");
			 $(this).parent().css('background-color','#00edff');
			 $(this).parent().addClass("actual");
		});
		
		// VEO SI ES PAGINA CON QUERYSTRING (VIENE DE HOME) O NO
		//url = new URL(window.location.href);
		var busquedaQuery = getQueryString('search');
		if (busquedaQuery != null){
			$("#busqueda").val(busquedaQuery);
			$("#busqueda").text(busquedaQuery);
			angular.element("#BuscadorNombre").scope().search(busquedaQuery);
			angular.element("#BuscadorNombre").scope().value = busquedaQuery;
		} else {
		
			var scopeQuery = getQueryString("scope");
			if (scopeQuery == "TodosSitios"){
			$("#busqueda").val("   ");
			$("#busqueda").text("   ");
			angular.element("#BuscadorNombre").scope().search("   ");
			angular.element("#BuscadorNombre").scope().value = "   ";
			}					
		}
						
	});
	
function buscarScopeActivo(){
	var nombre = $(".cat-resultados ul li.actual").text();
	return nombre;
}

function buscarScopeIdActivo(nombreScope){

	scopeSeleccionado = $.grep(scopes, function(u, i){
		  return (u.Nombre == nombreScope);
	});
	
	return scopeSeleccionado[0].ScopeId;
}


function getQueryString() {
          var key = false, res = {}, itm = null;
          // get the query string without the ?
          var qs = location.search.substring(1);
          // check for the key as an argument
          if (arguments.length > 0 && arguments[0].length > 1)
            key = arguments[0];
          // make a regex pattern to grab key/value
          var pattern = /([^&=]+)=([^&]*)/g;
          // loop the items in the query string, either
          // find a match to the argument, or build an object
          // with key/value pairs
          while (itm = pattern.exec(qs)) {
            if (key !== false && decodeURIComponent(itm[1]) === key)
              return decodeURIComponent(itm[2]);
            else if (key === false)
              res[decodeURIComponent(itm[1])] = decodeURIComponent(itm[2]);
          }

          return key === false ? res : null;
}
	
</script>
	
    <SharePointWebControls:ScriptBlock runat="server" __designer:Preview="&lt;script type=&quot;text/javascript&quot;&gt;// &lt;![CDATA[ 

if(typeof(MSOLayout_MakeInvisibleIfEmpty) == &quot;function&quot;) {MSOLayout_MakeInvisibleIfEmpty();}// ]]&gt;
&lt;/script&gt;" __designer:Values="&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl10&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;">if(typeof(MSOLayout_MakeInvisibleIfEmpty) == "function") {MSOLayout_MakeInvisibleIfEmpty();}</SharePointWebControls:ScriptBlock>


</asp:Content>