
			$(document).ready(function () {
					
						$.getJSON('bairros.json', function (data) {

							var items = [];
							var options = '<option value=""></option>';	

							$.each(data, function (key, val) {
								options += '<option value="' + val.nome + '">' + val.nome + '</option>';
							});					
							$("#bairro").html(options);				
							
							$("#bairro").change(function () {				
							
								var options_rua = '';
								var str = "";					
								
								$("#bairro option:selected").each(function () {
									str += $(this).text();
								});
								
								$.each(data, function (key, val) {
									if(val.nome == str) {							
										$.each(val.rua, function (key_rua, val_rua) {
											options_rua += '<option value="' + val_rua + '">' + val_rua + '</option>';
										});							
									}
								});

								$("#rua").html(options_rua);
								
							}).change();		
						
						});
					
					});
		
		