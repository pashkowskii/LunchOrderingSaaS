$(()=>{
    $( ".user-picture" ).each((index, element) => {
        $(element).attr('src', img_info(index))
    })
});

function img_info(index) {
    return `https://i.picsum.photos/id/${Math.floor(Math.random() * 100) + index}/200/200.jpg`
}