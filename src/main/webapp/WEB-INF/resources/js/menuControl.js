

function unselectAll(){
    $("#homeMenu").removeClass( "active");
    $("#aboutMenu").removeClass( "active");
    $("#contactMenu").removeClass( "active");
    $("#servicesMenu").removeClass( "active");
    $("#testimonialsMenu").removeClass( "active");
}

function addMonitors(){
    $("#homeMenu").click(function() {
        unselectAll();
        $("#homeMenu").addClass("active");
    });

    $("#aboutMenu").click(function() {
        unselectAll();
        $("#aboutMenu").addClass("active");
    });

    $("#contactMenu").click(function() {
        unselectAll();
        $("#contactMenu").addClass("active");
    });

    $("#servicesMenu").click(function() {
        unselectAll();
        $("#servicesMenu").addClass("active");
    });

    $("#testimonialsMenu").click(function() {
        unselectAll();
        $("#testimonialsMenu").addClass("active");
    });
}