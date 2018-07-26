<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png"
	href="resources/images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="resources/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">

<script type="text/javascript">
	function list() {
		document.forms[0].action = 'strtus2jsonpoc.list.action';
		$('#filterForm').submit();
	}

	function addNew() {
		alert('addnew');
	}

	function submit() {
		document.forms[0].action = 'strtus2jsonpoc.save.action';
		$('#filterForm').submit();
	}

	function submitAjax() {
		var formInput = $('#filterForm').serialize();
		$.ajax({
			url:'ajax/strtus2jsonpoc.save.action',
			type: 'post',
			dataType: 'json',
			success: function(data) {
				$('#json-out').html('' + JSON.stringify(data) + '');
			},
			data: formInput
		});
		return false;
	}
</script>
</head>
<body>
	<div class="limiter">
		<div class="container-table100">
			<h1>Struts2 JSON POC</h1>
			<div class="limiter">
				<button class="float-right" onClick="list()">List</button>
				<button class="float-right" onClick="addNew()">Add New</button>
				<button class="float-right" onClick="submitAjax()">Save
					Ajax</button>
				<button class="float-right" onClick="submit()">Save</button>
			</div>
			<div class="wrap-table100">
				<div class="table100">
					<s:form id="filterForm" action="#" theme="simple">
						<s:textfield name="username" value="%{username}" />
						<table>
							<thead>
								<tr class="table100-head">
									<th class="column1">Col1</th>
									<th class="column1">Col2</th>
									<th class="column1">Col3</th>
									<th class="column1">Col4</th>
									<th class="column1">Col5</th>
									<th class="column1">Col6</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="rows" status="row">
									<tr>
										<td class="column1"><s:textfield
												name="rows[%{#row.index}].col1" value="%{col1}" /></td>
										<td class="column2"><s:textfield
												name="rows[%{#row.index}].col2" value="%{col2}" /></td>
										<td class="column3"><s:textfield
												name="rows[%{#row.index}].col3" value="%{col3}" /></td>
										<td class="column4"><s:textfield
												name="rows[%{#row.index}].col4" value="%{col4}" /></td>
										<td class="column5"><s:textfield
												name="rows[%{#row.index}].col5" value="%{col5}" /></td>
										<td class="column6"><s:textfield
												name="rows[%{#row.index}].col6" value="%{col6}" /></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</s:form>
				</div>				
			</div>			
		</div>
	</div>

	<div id="json-out" class="table100, code-area"></div>

	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/vendor/select2/select2.min.js"></script>
	<script src="resources/js/main.js"></script>
</body>
</html>