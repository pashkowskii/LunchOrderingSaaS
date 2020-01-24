$(()=>{
    $( "#chat-btn" ).click(function() {
        let x = document.getElementById("question-room");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    });
    $(document).mouseup(function(e)
    {
        let container = $("#question-room");

        if (!container.is(e.target) && container.has(e.target).length === 0)
        {
            container.slideUp();
        }
    });
});