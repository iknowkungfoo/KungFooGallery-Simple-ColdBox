<link type="text/css" href="resources/datatables/DT_bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="resources/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="resources/datatables/DT_bootstrap.js"></script>
<script type="text/javascript" src="static/views/artwork/search.js"></script>

<h2>Artwork Search</h2>

<table id="art_search" class="table table-striped table-bordered"></table>

<cfoutput>#renderView("artwork/quickViewModal")#</cfoutput>