var dataSvcModule = angular.module('dataSvcModule', []);
dataSvcModule.factory("dataService",function($q){
	var getFormDigest = function () {
		var d = $q.defer();
		var urlFull = _spPageContextInfo.webAbsoluteUrl + "/_api/contextinfo";
		$.ajax({
			url: urlFull,
			method: "POST",
			headers: { "Accept": "application/json; odata=verbose"},
			success: function (data) {
				d.resolve(data.d.GetContextWebInformation.FormDigestValue);
			},
			error: function (data, errorCode, errorMessage) {
				alert("Could not get context info: " + errorMessage);
			}
		});
		return d.promise;
	};	
	var getItems = function(url, listName, query){
		var d = $q.defer();
		var urlFull = url + "/web/lists/getbytitle('"+ listName +"')/items?" + query;
		$.ajax({
			url: urlFull,
			method: "GET",
			headers: { "Accept": "application/json; odata=verbose" },
			cache: false,
			success: function (data) {
				d.resolve(data.d.results);
			},
			error: function (err) {
				alert("Error: " + err.responseText);
			}
		});	
		return d.promise;
	};
	var getItemsWithCAML = function (url,listName,query) {
		var d = $q.defer();
		var urlFull = url + "/web/lists/getbytitle('" + listName + "')/getitems";
		var queryPayload = {  
			'query' : {
			'__metadata': { 'type': 'SP.CamlQuery' }, 
			'ViewXml' : query  
		}
		};		
		getFormDigest().then(function (formDigest) {
			$.ajax({
				url: urlFull,
				method: "POST",
				data: JSON.stringify(queryPayload),
				headers: {
					  "X-RequestDigest": formDigest,
					  "Accept": "application/json; odata=verbose",
					  "content-type": "application/json; odata=verbose"
				},
				success: function (data) {
					d.resolve(data.d.results);
				},
				error: function (err) {
					alert("Error: " + err.responseText);
				}				
			});
		});
		return d.promise;
	};
	var getPublishingPages = function(url,listName){
		var d = $q.defer();
		//JSOM
		SP.SOD.executeFunc('sp.js', 'SP.ClientContext', function(){
			var clientContext = new SP.ClientContext(url);
			var oList = clientContext.get_web().get_lists().getByTitle(listName);
			var camlQuery = new SP.CamlQuery();
			camlQuery.set_viewXml('<View><Query><OrderBy><FieldRef Name="Created" Ascending="FALSE"/></OrderBy></Query></View>');		
			_collListItem = oList.getItems(camlQuery);
			clientContext.load(_collListItem);
			clientContext.executeQueryAsync(
				Function.createDelegate(this, function () { 
					var pages = [];
					var listItemEnumerator = _collListItem.getEnumerator();
					while (listItemEnumerator.moveNext()) {
						var oListItem = listItemEnumerator.get_current();
						pages.push(oListItem.get_fieldValues());
					}
					d.resolve(pages);
				}), 
				Function.createDelegate(this, function (sender, args) { 
					alert('Request failed. ' + args.get_message());
				})
			);			
		});
		//
		return d.promise;
	}
	var getFieldChoices = function(listName, fieldName){
		var d = $q.defer();
		var urlFull = _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/getbytitle('" + listName +"')/fields?$filter=EntityPropertyName eq '"+fieldName+"'";
		$.ajax({
			url: urlFull,
			method: "GET",
			headers: { "Accept": "application/json; odata=verbose" },
			cache: false,
			success: function (data) {
				d.resolve(data.d.results[0].Choices.results);
			},
			error: function (err) {
				alert("Error: " + err.responseText);
			}
		});	
		return d.promise;
	};
	var getCurrentUser = function(query){
		var d = $q.defer();
		var urlFull = _spPageContextInfo.webAbsoluteUrl + "/_api/web/CurrentUser?" + query;
		getFormDigest().then(function (formDigest) {
			$.ajax({
				url: urlFull,
				method: "GET",
				headers: {
					"Accept": "application/json; odata=verbose",
					"X-RequestDigest": formDigest
				},
				success: function (data) {
					d.resolve(data.d);
				},
				error: function (err) {
					alert("Error: " + err.responseText);
				}
			});
		});
		return d.promise;		
	};
	var search = function(params){
		if(!params.query) {
			alert("Error: Consulta inválida");
			return false;
		}
		var urlFull = params.apiUrl + "/search/query?querytext='" + params.query + "'";
		
		if(params.sourceid)
			urlFull += "&sourceid='" + params.sourceid + "'";

		if(params.rowlimit)
			urlFull += "&rowlimit='" + params.rowlimit + "'";
		
		if(params.properties){
			//urlFull += "&selectproperties='PreferredName,Department,JobTitle,WorkEmail,WorkPhone'";
			urlFull += "&selectproperties='";
			for(var i = 0; i < params.properties.length; i++){
				urlFull += params.properties[i] + ",";
			}
			urlFull = urlFull.replace(/,\s*$/, "");
			urlFull += "'";
		}
		var d = $q.defer();
		$.ajax({
			url: urlFull,
			headers: { "Accept": "application/json; odata=verbose" },
			contentType: "application/json; odata=verbose",
			success: function (data) {
				var results;
				var items = [];
				if (data.d) {
					if (data.d.query) {
						results = data.d.query.PrimaryQueryResult.RelevantResults.Table.Rows.results;
						for (var i = 0; i < results.length; i++) {
							var item = {};
							var allProperties = results[i].Cells.results;
							for(var j=0; j<allProperties.length; j++){
								item[allProperties[j].Key] = allProperties[j].Value;
							}
							items.push(item);
						}
					}
				}
				d.resolve(items);
			},
			error: function (err) {
				alert("Error: " + err.responseText);
			}
		});
		return d.promise;
	};
	var isAlive = function(){
		alert("AngularJS running");
	};
	return{
		getItems:getItems,
		getItemsWithCAML: getItemsWithCAML,
		getFieldChoices: getFieldChoices,
		getCurrentUser: getCurrentUser,
		getPublishingPages: getPublishingPages,
		search: search,
		isAlive: isAlive
	};
});