function checktest(){
    $.ajax({
        url:'components/components.cfc?method=emailValidate',
        type:'post',
       /* data:{
            method: "checkEmail1",
            Email: $("#email").val()
        
        },*/
        success:function(data){
            alert(data)
        }
    })
}