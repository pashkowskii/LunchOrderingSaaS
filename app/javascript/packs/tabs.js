import 'semantic-ui-sass';
// Semantic
$(() => {
    $('.ui.dropdown').dropdown();
    $('.tabular.menu .item').tab();
    $('.menu .item')
        .tab();
    $('.ui.button')
        .on('click', function() {
            $.tab('change tab', 'tab-name');
        });

    // Dashboard
    let today = new Date();
    let current_day_of_week;

    if (today.getDay() === 6 || today.getDay() === 0) {
        current_day_of_week = 1;
    } else {
        current_day_of_week = today.getDay();
    }

    $('[data-tab = "' + current_day_of_week + '"]').addClass("active");

    for (let i = current_day_of_week + 1; i <= 5; i++) {
        let x = i.toString();
        $('[data-tab ="' + x + '"]').removeAttr('href').addClass("disabled").attr("data-remote", false);
    }

    // Infobase
    let current_day_of_week_string;
    let weekday = new Array(7);

    weekday[0] = "sunday";
    weekday[1] = "monday";
    weekday[2] = "tuesday";
    weekday[3] = "wednesday";
    weekday[4] = "thursday";
    weekday[5] = "friday";
    weekday[6] = "saturday";

    if (today.getDay() === 6 || today.getDay() === 0) {
        current_day_of_week_string = 1;
    } else {
        current_day_of_week_string = today.getDay();
    }

    $('[data-tab = "' + weekday[current_day_of_week_string] + '"]').addClass("active");
    $('[data-tab = "menu"]').addClass("active");
    $('[data-tab = "salad"]').addClass("active");
});

