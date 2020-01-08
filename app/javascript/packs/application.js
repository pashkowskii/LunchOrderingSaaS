import Rails from 'rails-ujs'
import '@client-side-validations/client-side-validations'
Rails.start();

import './tabs'

$(() => {
    $( "#tokenButton" ).click(function() {
        let copyText = document.getElementById("myInput");
        copyText.select();
        copyText.setSelectionRange(0, 99999);
        document.execCommand("copy");
    });
});
