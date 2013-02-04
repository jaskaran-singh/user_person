$(document).on("click",".add_hospital",function(event){
	var url="/people/form_new"
	var f=$("#f").val();
	var data1={
		'f' : f
	}
	$.get(url,data1,function(data){
		$("#person_form").append(data);
		
	});
});
