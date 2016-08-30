
//<!-- 新 Bootstrap 核心 CSS 文件 -->
document.write("<link rel=\"stylesheet\" href=\"../bootstrap-3.3.2/dist/css/bootstrap.min.css\" />"); 
//<!-- 可选的Bootstrap主题文件（一般不用引入） -->
document.write("<link rel=\"stylesheet\" href=\"../bootstrap-3.3.2/dist/css/bootstrap-theme.min.css\" />");
//jquery.js
document.write("<script src=\"../javascripts/jquery-2.1.1.js\"></script>");
//bootstrap.js
document.write("<script src=\"../bootstrap-3.3.2/dist/js/bootstrap.js\"></script>");
//document.write("<script src=\"../plugin/bootstrap-3.3.2/dist/js/bootstrap.min.js\"></script>");
//模态框
//document.write("<script src=\"../plugin/bootstrap-3.3.2/dist/js/modal.js\"></script>");

//navbar.js 导航
//document.write("<script src=\"../javascripts/navbar_INC.js\"></script>");


//总样式表
//document.write("<link rel=\"stylesheet\" href=\"../css/main.css\" />");



function LogOn() {
    $.ajax({
        type: "post",
        contentType: "application/json;charset=UTF-8;",
        url: "../WebService.asmx/LogOn",
        data: '{"user": "' + $("#user").val() + '","pwd": "' + $("#password").val() + '"}',
        dataType: "json",
        success: function (data) {
            if (data.d == "true") {
                window.location.href = "TaskRemark.aspx";
            }
        },
        error: function (data) {
            console.log(data.message);
        }
    });
}


function LogOut() {
    $.ajax({
        type: "post",
        contentType: "application/json;charset=UTF-8;",
        url: "../WebService.asmx/LogOut",
        data: '{}',
        dataType: "json",
        success: function (data) {
            if (data.d == "true") {
                window.location.href = "LogOn.aspx";
            }
        },
        error: function (data) {
            console.log(data.message);
        }
    });
}