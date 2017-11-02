
//check off specific items from the list
$("ul").on("click","li",function (){
	$(this).toggleClass("completed");
		});


//click on x to delete todo
$("ul").on("click","span",function(event){
	$(this).parent().fadeOut(500,function(){
		$(this).remove();
	})
	// stop it from bubbling up to other elements
	event.stopPropagation();
})


// listener foer text input
$("input[type='text']").keypress(function(event){
	if(event.which ===13)
	{
		//grabbinf new text from input
		var todoText = $(this).val()
		$(this).val("");
		//create new li and add to ul
		$("ul").append("<li><span><i class='fa fa-trash'></i></span> " + todoText + "</li>");
	}
});

$(".fa-plus").click(function(){
	$("input[type='text']").fadeToggle();
})