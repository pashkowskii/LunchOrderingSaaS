import swal from "sweetalert";

$(() => {
    $( "#tokenButton" ).click(function() {
        let copyText = document.getElementById("myInput");
        copyText.select();
        copyText.setSelectionRange(0, 99999);
        document.execCommand("copy");
        swal({
            title: "Access Token",
            text: "Was successfully Copied to Your Buffer",
            icon: "success",
            buttons: false,
            closeOnConfirm: false,
            timer: 2000
        })
    });
});