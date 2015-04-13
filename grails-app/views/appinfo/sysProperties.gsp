<head>
	<meta name='layout' content='appinfo'/>
	<title>System Properties</title>

	<g:javascript>
		var dtv = {
			dataTableName : "#sysprops",
			swfPath : "${resource(dir: 'DataTables-1.10.6/extensions/TableTools/swf', file: 'copy_csv_xls_pdf.swf', plugin: 'appInfo')}",
			pdfMessage : "dev-${InetAddress.getLocalHost().getHostAddress()}"
		};
		$(document).ready(function () {
			initDataTableExportOptions(dtv);
		});
	</g:javascript>

</head>

<body>

<br/>

<span class='appinfo_warning'>Note: Only visible form element values will be submitted</span><br/><br/>

<g:form action='updateProperties'>

	<div id="systemPropertiesHolder">
		<h2>System Properties</h2>
		<table id="sysprops" cellpadding="0" cellspacing="0" border="0" class="display">
			<thead><tr><th>Key</th><th>Value</th></thead>
			<tbody>
			<g:each var='prop' in='${sysprops}'>
				<tr>
					<td>${prop.key}</td>
					<td><input size='70' type='text' class='text'
							   name='PROPERTY_${prop.key.replaceAll('\\.', '__DOT__')}' value='${prop.value}'/></td>
				</tr>
			</g:each>
			</tbody>
		</table>
	</div>

	<br/>
	<br/>
	New System Property:<br/>
	Name: <input size='10' type='text' class='text' name='newProperty'/>
	Value: <input size='50' type='text' class='text' name='newPropertyValue'/><br/>

	<br/>

	<input type='submit' value='Update Property Values'/>

</g:form>

</body>
