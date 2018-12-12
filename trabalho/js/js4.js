
			$(document).ready(function () {
					
						$.getJSON('ruas.json', function (data) {

							var items = [];
							var options = '<option value=""></option>';	

							$.each(data, function (key, val) {
								options += '<option value="' + val.nome + '">' + val.nome + '</option>';
							});					
							$("#bai").html(options);				
							
							$("#bai").change(function () {				
							
								var options_rua = '';
								var str = "";					
								
								$("#bai option:selected").each(function () {
									str += $(this).text();
								});
								
								$.each(data, function (key, val) {
									if(val.nome == str) {							
										$.each(val.rua, function (key_rua, val_rua) {
											options_rua += '<option value="' + val_rua + '">' + val_rua + '</option>';
										});							
									}
								});

								$("#ru").html(options_rua);
								
							}).change();		
						
						});
					
					});
		
		