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

    weekday[0] = "Sunday";
    weekday[1] = "Monday";
    weekday[2] = "Tuesday";
    weekday[3] = "Wednesday";
    weekday[4] = "Thursday";
    weekday[5] = "Friday";
    weekday[6] = "Saturday";

    if (today.getDay() === 6 || today.getDay() === 0) {
        current_day_of_week_string = 1;
    } else {
        current_day_of_week_string = today.getDay();
    }

    $('[data-tab = "' + weekday[current_day_of_week_string] + '"]').addClass("active");
    $('[data-tab = "menu"]').addClass("active");
});

