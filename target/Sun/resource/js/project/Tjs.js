/**
 * Created by Server on 2018/3/2.
 */
$(document).ready(function(){
    $.ajax({
        type: "GET",
        url: "pro/web/entity",
        dataType: "json",
        success: function(data){
            console.log(data[0].pname);
        }
    });
});