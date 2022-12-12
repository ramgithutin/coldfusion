function checktest(){
    $.ajax({
        url:'components/components.cfc?method=emailValidate',
        type:'post',
        data:{
            method: "checkEmail1",
            dataType: "json", 
            Email: $("#confirmEmail").val()
        },
        success:function(data){
            alert(data)
        }
    })
}