function checktest(){
    $.ajax({
        url:'components/components.cfc?method=emailValidate',
        type:'post',
       data:{
            method: "checkEmail",
            Email: $("#email").val(),
            Name: $("#name").val(),
            dataType: "text",
            dataType:"text"
        },
        success:function(data){
            alert(data)
        }
    })
}