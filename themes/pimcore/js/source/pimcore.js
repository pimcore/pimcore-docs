$(document).ready(function() {
    'use strict';

    // open the first nav level on the landing page
    function openFirstNavLevel(container) {
        container.find('> .Nav__item.has-children').each(function() {
            $(this).addClass('Nav__item--open');
        });
    }

    // sidebar menu
    openFirstNavLevel($('.homepage aside.Columns__left div > .Nav'));

    // content menu trees
    openFirstNavLevel($('.homepage .Columns__landing div > .Nav'));
});
