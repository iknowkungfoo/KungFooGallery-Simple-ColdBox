<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Welcome to the Kung Foo Gallery (ColdBox Edition)</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sample Art Gallery using Twitter Bootstrap and the kungfoogallery data source.">
    <meta name="author" content="Adrian J. Moreno">
	<!--- Set the BASE HREF to help the browser locate resources. --->
	<cfoutput><base href="#getSetting('htmlBaseURL')#" /></cfoutput>
	<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="resources/css/kungfoogallery.css" rel="stylesheet">
	<script src="resources/js/jquery-2.0.0.min.js"></script>
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="static/js/KFG.js"></script>
	<body>
		<cfoutput>
			<div class="container">
				#renderView('general/header')#
				<div class="content">
					#renderView()#
				</div>
				#renderView('general/footer')#
			</div>
        </cfoutput>
	</body>
</html>