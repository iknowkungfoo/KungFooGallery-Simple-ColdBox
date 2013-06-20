/* Include after jQuery and Handlebars */
KFG.handlebars = (function() {
	
	/*
	 * Adapted from
	 * http://berzniz.com/post/24743062344/handling-handlebars-js-like-a-pro
	 */
	var _templates = {};
	var getHandlebar = function(key, path) {
		$.ajax({
			url : path,
			cache : true,
			async : false,
			success : function(data) {
				_templates[key] = Handlebars.compile(data);
			}
		});
		return _templates[key];
	}
	
	var setHandlebar = function(domTargetID, key, path, dataURL, dataObj, params) {
		params = params || {};
		
		var template = getHandlebar(key, path);
		$.ajax({
			asynch: true,
			type: params.type || 'GET',
			dataType: 'json',
			url: dataURL,
			data: dataObj,
			success: function(data, textStatus){
				$('#' + domTargetID).html(template(data));
			}
		});
	}
	
	return {
		setHandlebar : setHandlebar
	};
	
})();