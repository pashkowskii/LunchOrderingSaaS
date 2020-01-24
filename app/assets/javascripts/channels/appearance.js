App.appearance = App.cable.subscriptions.create({
    channel:'AppearanceChannel'
}, {
    received: function(data) {
        let user = JSON.parse(data);
        if (user.online === true){
            $(userImgIdConstructor(user)).attr('class', 'active');
        }
        if (user.online === false){
            $(userImgIdConstructor(user)).attr('class', 'inactive');
        }
    }
});

let userImgIdConstructor = function(user){
    return "#" + user.id + "-status";
};