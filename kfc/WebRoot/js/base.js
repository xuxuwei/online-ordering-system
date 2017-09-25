var base = function() {
	function yumAlert(text) {
		$("#dialog-message-alert span").html(text);
		$("#dialog-message-alert").dialog({
			resizable : false,
			minHeight : '96px',
			modal : true,
			closeOnEscape : true,
			dialogClass : "ui-alert",
			position : {
				my : "center",
				at : "center",
				of : window,
				collision : "fit"
			},
			buttons : {
				"纭畾" : function() {
					$(this).dialog("close");
				}
			}
		});
	}
	return {yumAlert:function(text){yumAlert(text);}};
}();