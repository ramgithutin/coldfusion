function openPage(pageName){
    $.ajax({
        url:'components/pageshow.cfc?method=descripition',
        type:'post',
        data:{
            method:"descripition",
            Email:pageName,
            dataType:"text"
        },
        success:function(data){
            $("#message").text(data );
        }
    }) 
}