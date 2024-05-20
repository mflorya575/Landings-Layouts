var CurItem = {'pid':0, 'name':'', 'type':0, 'lst':0};
var ClickCnt = 0;

function getOffsetRect(elem) {
    var box = elem.getBoundingClientRect()
    var body = document.body
    var docElem = document.documentElement
    var scrollTop =  docElem.scrollTop || body.scrollTop
    var scrollLeft = docElem.scrollLeft || body.scrollLeft

    var clientTop = docElem.clientTop || body.clientTop || 0
    var clientLeft = docElem.clientLeft || body.clientLeft || 0

    var top  = box.top +  scrollTop - clientTop
    var left = box.left + scrollLeft - clientLeft
    return { top: Math.round(top), left: Math.round(left) }
}

function formatDate(date) {
    let today = date || new Date().toISOString().slice(0, 10);
    var d = new Date(today),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2)
        month = '0' + month;
    if (day.length < 2)
        day = '0' + day;

    return [day, month, year].join('.');
}

var inBigMenu = 0;
var timeout = 0;
var search_res = [{'p_id':0}];
var add_agg_upl_file_1;
var add_agg_upl_file_2;
var inBlockClick = false;
let sf_autotext = 0;

function digitsWord(cnt, wordarray) {
    //Пример wordsarray: ['вариант', 'варианта', 'вариантов'];
    cnt = cnt + "";
    //console.log('cnt=' + cnt);
    //console.log(typeof cnt);
    cnt = cnt.replace(' ', '');
    cnt = cnt * 1;

    nvar = 0;
    if (cnt <= 20) {
        if (cnt == 1)
            nvar = 0;
        else if (cnt >= 2 && cnt <= 4)
            nvar = 1;
        else if ((cnt == 0) || (cnt >= 5))
            nvar = 2;
    }
    else {
        n = cnt % 10; //Получим последнюю цифру

        if (n == 1)
            nvar = 0;
        else if (n >= 2 && n <= 4)
            nvar = 1;
        else if ((n == 0) || (n >= 5))
            nvar = 2;
    }

    return wordarray[nvar];
}



function formatNumber(num, decdig) {
    decdig = decdig || 0;
    num1 = parseFloat(num).toFixed(decdig);

    num1 = num1 + '';
    num1 = num1.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1 ');
    num1 = num1.replace('.', ',');

    return num1;
}

function testEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}

function testPhone(phone) {
    var re = /^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/;

    return re.test(phone);
}

function getCookie(name) {
    let matches = document.cookie.match(new RegExp(
        "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
    ));
    return matches ? decodeURIComponent(matches[1]) : '';
}

function setCookie(name, value, expdays, seconds) {
    expdays = typeof expdays !== 'undefined' ? expdays : -1;
    seconds = typeof seconds !== 'undefined' ? seconds : 0;

    var date = new Date();

    if (expdays > -1)
        date.setTime(date.getTime() + seconds * 1000 + (expdays * 24 * 60 * 60 * 1000));

    cur_host = window.location.hostname;
    arr = cur_host.split('.');

    cookiehost = arr[arr.length - 2] + '.' + arr[arr.length - 1];

    if (expdays > -1) {
        options = {
            path: '/',
            domain: cookiehost,
            expires: date.toUTCString()
        };
    }
    else {
        options = {
            path: '/',
            domain: cookiehost,
        };
    }

    let updatedCookie = encodeURIComponent(name) + "=" + encodeURIComponent(value);

    for (let optionKey in options) {
        updatedCookie += "; " + optionKey;
        let optionValue = options[optionKey];
        if (optionValue !== true) {
            updatedCookie += "=" + optionValue;
        }
    }

    //console.log(updatedCookie);
    document.cookie = updatedCookie;
}

function block_screen() {
    $('<div id="screenBlock"></div>').appendTo('body');
    $('#screenBlock').css( { opacity: 0, width: $(document).width(), height: $(document).height() } );
    $('#screenBlock').addClass('blockDiv');
    $('#screenBlock').animate({opacity: 0.7}, 200);
}

function unblock_screen() {
    $('#screenBlock').animate({opacity: 0}, 200, function() {
        $('#screenBlock').remove();
    });
}

//scroll
$(document).ready(function () {

    window.dataLayer = window.dataLayer || [];
    if (!$(".to-top").length) {
        $("body").prepend('<div id="totop"></div>');
    }

    $(document).on('click', '.to-top', function (e) {
        e.preventDefault();
        $("html, body").animate({
            scrollTop: 0
        }, 900);
    });

    $('#filter_btn').click(function (e) {
        e.stopPropagation();
        e.preventDefault();

        $('#filter_btn').hide();
        getFilteredData();
    });
})

$('.sortmode').click(function (e) {

    //e.stopPropagation();
    //e.preventDefault();

    curtext = $(this).text();
    $(this).parent().parent().find('.custom__select-title').text(curtext);

    //if (!$(this).hasClass('register__switch-input'))       $(this).parent().addClass('hide');

    src_sortfield = sortfield = $(this).data('sortf');
    newsortdir = $(this).data('cursort');
    atype = $(this).data('atype');

    cursortdir = $('body').data('sort-dir' + atype);
    cursortfield = $('body').data('sortf');

    if (sortfield == 'n') {
        checked = $(this).is(':checked');

        if (!checked)  //Сняли галочку с "В наличии", показываем всё в режиме по умолчанию
        {
            sortfield = 'def';
            //newsortdir = 1;
        }
    }


    if (src_sortfield != 'n') {
        $(this).parent().toggleClass('hide');
    }

    if ((cursortfield != sortfield) || (cursortdir != newsortdir)) {
        $('body').data('sort-dir' + atype, newsortdir);
        $('body').data('sortf', sortfield);
        getFilteredData();
    }

    //$(this).removeClass(oldcl).addClass(newcl);
});

$('.fixed__exit-link').click(function (e) {
    e.stopPropagation();
    e.preventDefault();

    document.location.href = "/user/logout/";
});

$('#show_more_orders').click(function (e) {

    e.stopPropagation();
    e.preventDefault();

    $.get('/user/cabinet/' + params + 'aj=1').done(function (data) {
        console.log("appendmode=" + appendmode);
        //console.log(data.items);
        if (appendmode == 0) {
            curShownCnt = data.cnt;
            //console.log("ITEMS:");
            //console.log(data.items);
            $('#items_list').html(data.items);

            if (curShownCnt == 0) //Заблокируем фильтры
                BlockFilters(1);
            else
                BlockFilters(2); //Разблокируем, если были заблокированы
        }
        else {
            curShownCnt = parseInt($('#curShownCnt').data('cs'));
            curShownCnt += data.cnt;

            $('#items_list').append(data.items);
        }

        console.log("(window).width()=" + $(window).width());


        $('body').data('curp', pg);
        $('#paginator').html(data.paginator);
    }).fail(function (jqXHR, textStatus, errorThrown) {
        console.log(jqXHR);
        console.log(textStatus);
        console.log(errorThrown);
    });

});


$('.fast_order_link').click(function (e) {
    e.preventDefault();
    e.stopPropagation();

    /*
    ptype = $('body').data('ptype');
    if (typeof ptype == 'undefined')
        ptype = '';

    if (ptype == 'cart')
        return;
    */

    //$('.fast-order__form-submit').show();
    $('#fast_order_msg').text('');
    $('.fast-order').removeClass('hide');
});

$('.dropdown-menu__title_last').click(function (e) {
    e.preventDefault();
    e.stopPropagation();

    href = $(this).attr('href');

    document.location.href = href;
});


$('.mobile-menu__dropdown').click(function (e) {
    e.stopPropagation();
    e.preventDefault();

    $(this).parent().find('.mobile-menu__content').eq(0).toggle();
    $(this).parent().find('.mobile-menu__dropdown').eq(0).toggleClass('arrow--active');
});

$('.mobile-menu__nav-link').click(function (e) {
    e.stopPropagation();
    e.preventDefault();

    
    hassub =  $(this).parent().find('.mobile-menu__content').eq(0).length;
    isvisible = $(this).parent().find('.mobile-menu__content').eq(0).is(':visible');

    if (!hassub)
    {
        href = $(this).attr('href');
        if (href)
        {
            document.location.href = href;
            return;
        }
    }
    
    $(this).parent().find('.mobile-menu__content').eq(0).toggle();
    $(this).parent().find('.mobile-menu__dropdown').eq(0).toggleClass('arrow--active');
    $(this).toggleClass('mobile-menu__nav-link--active');

});

$('.mobile-menu__nav-link').mouseover(function (e) {
    e.stopPropagation();
    e.preventDefault();


    hassub =  $(this).parent().find('.mobile-menu__content').eq(0).length;
    isvisible = $(this).parent().find('.mobile-menu__content').eq(0).is(':visible');

    if (!hassub)
    {
        href = $(this).attr('href');
        if (href)
        {
            document.location.href = href;
            return;
        }
    }

    $(this).parent().find('.mobile-menu__content').eq(0).toggle();
    $(this).parent().find('.mobile-menu__dropdown').eq(0).toggleClass('arrow--active');
    $(this).toggleClass('mobile-menu__nav-link--active');

});

$('.dropdown-menu__title').click(function (e) {

    e.stopPropagation();
    e.preventDefault();

    clevel = level = $(this).parents('.menucontainer').data('lvl');
    menutype = $('#cs_config').data('menutype');
    menutype = typeof menutype !== 'undefined' ? parseInt(menutype) : 0;

    // возвращаем активные стрелки в начальное состояние
    $(this)
        .closest('.menucontainer')
        .find('.dropdown-menu__title')
        .removeClass('dropdown-menu__title--active')

    // активные стрелки
    $(this)
        .toggleClass('dropdown-menu__title--active')
    
    //!!!!См Config::opts_to_html
    m_ctlg = $('#cs_config').data('m_ctlg');
    m_ctlg = typeof m_ctlg !== 'undefined' ? m_ctlg : 0;

    hassub = $(this).parent().find('.dropdown-menu__sub-list').length;
    subvisible = $(this).parent().find('.dropdown-menu__sub-list').eq(0).is(':visible');

    if (subvisible || !hassub)
    {

        if (level == 1)
        {
            if (((m_ctlg == 1) && ($(this).attr('href') == '/catalog/cable')) || ($(this).attr('href') == '/catalog/brands/'))
                document.location.href = $(this).attr('href');
        }
        else
        {
            document.location.href = $(this).attr('href');
        }
        return;
    }

    //cc =  $(this).offset();
    pos = $(this).position();
    //scrY  = $(this).parents('.dropdown-menu').scrollTop();

    newcoorY = pos.top;
    //console.log("level="+level+", cctop="+cc.top+", ccleft="+cc.left+", postop="+pos.top+", posleft="+pos.left+
    //    +", scrollTop:"+scrY+", newCoor="+newcoorY);

    //Убираем ранее открытые пункты меню на этом уровне вложенности и более глубоких

    console.log("clevel=" + clevel);
    console.log("menutype=" + menutype);
    dellevel = clevel + 1;

    if (menutype == 0) {
        while (true) {
            len = $('.topctlg').parent().find('.menucontainer[data-lvl="' + dellevel + '"]').length;
            if (len == 0)
                break;

            $('.topctlg').parent().find('.menucontainer[data-lvl="' + dellevel + '"]').hide();
            dellevel++;
        }
    }
    else if (menutype == 1) {
        console.log("blockn hide!");
        $('.topctlg').parent().find('.menucontainer[data-blockn="2"]').hide();
    }

    $(this).parent().find('.dropdown-menu__sub-list').offset({ top: newcoorY });

    cnt = $(this).parent().find('.dropdown-menu__sub-list').eq(0).length;
    console.log("ELEM CNT = " + cnt);
    $(this).parent().find('.dropdown-menu__sub-list').eq(0).show();

});

$('.dropdown-menu__title').mouseover(function (e) {

    e.stopPropagation();
    e.preventDefault();

    clevel = level = $(this).parents('.menucontainer').data('lvl');
    menutype = $('#cs_config').data('menutype');
    menutype = typeof menutype !== 'undefined' ? parseInt(menutype) : 0;

    // возвращаем активные стрелки в начальное состояние
    $(this)
        .closest('.menucontainer')
        .find('.dropdown-menu__title')
        .removeClass('dropdown-menu__title--active')

    // активные стрелки
    $(this)
        .toggleClass('dropdown-menu__title--active')

    //!!!!См Config::opts_to_html
    m_ctlg = $('#cs_config').data('m_ctlg');
    m_ctlg = typeof m_ctlg !== 'undefined' ? m_ctlg : 0;

    hassub = $(this).parent().find('.dropdown-menu__sub-list').length;
    subvisible = $(this).parent().find('.dropdown-menu__sub-list').eq(0).is(':visible');
/*
    if (subvisible || !hassub)
    {

        if (level == 1)
        {
            if (((m_ctlg == 1) && ($(this).attr('href') == '/catalog/cable')) || ($(this).attr('href') == '/catalog/brands/'))
                document.location.href = $(this).attr('href');
        }
        else
        {
            document.location.href = $(this).attr('href');
        }
        return;
    }
*/
    //cc =  $(this).offset();
    pos = $(this).position();
    //scrY  = $(this).parents('.dropdown-menu').scrollTop();

    newcoorY = pos.top;
    //console.log("level="+level+", cctop="+cc.top+", ccleft="+cc.left+", postop="+pos.top+", posleft="+pos.left+
    //    +", scrollTop:"+scrY+", newCoor="+newcoorY);

    //Убираем ранее открытые пункты меню на этом уровне вложенности и более глубоких

    console.log("clevel=" + clevel);
    console.log("menutype=" + menutype);
    dellevel = clevel + 1;

    if (menutype == 0) {
        while (true) {
            len = $('.topctlg').parent().find('.menucontainer[data-lvl="' + dellevel + '"]').length;
            if (len == 0)
                break;

            $('.topctlg').parent().find('.menucontainer[data-lvl="' + dellevel + '"]').hide();
            dellevel++;
        }
    }
    else if (menutype == 1) {
        console.log("blockn hide!");
        $('.topctlg').parent().find('.menucontainer[data-blockn="2"]').hide();
    }

    $(this).parent().find('.dropdown-menu__sub-list').offset({ top: newcoorY });

    cnt = $(this).parent().find('.dropdown-menu__sub-list').eq(0).length;
    console.log("ELEM CNT = " + cnt);
    $(this).parent().find('.dropdown-menu__sub-list').eq(0).show();

});

$('#auth_btn,#remind_btn').click(function (e) {

    e.stopPropagation();
    e.preventDefault();

    if ($(this).css('cursor') == 'default')
        return;


    btnid = $(this).attr('id');

    console.log("AUTHORIZE!");
    data_f = $('#authform').find('input[data-req="1"]');
    $('#auth_login_error').text('');
    $('#auth_passw_error').text('');

    err = 0;

    //Найдём незаполненные обязательные поля
    data_f.each(function (i) {
        curid = $(this).attr('id');

        if (($(this).val().trim() == '') && $(this).parent().is(':visible')) {
            $(this).addClass('input-error');
            err = 1;
            $(this).parents('.register__form').find('.password-control').css('display', 'none');
        }
    });

    if (err == 1)
        return;


    if ($('#remind').length > 0) {
        mode = $('#remind').attr("data-mode");
        email = $('#auth_login').val().trim();
    }
    else
    {
        if (btnid == 'auth_btn')
        {
            email = $('#auth_login').val().trim();
            mode = 'auth';
        }
        else
        {
            email = $('#remind_login').val().trim();
            mode = 'remind';
        }
    }

    if (mode == 'auth') {
        passw = $('#auth_passw').val().trim();
        remember = $('#auth_remember').is(':checked') ? 1 : 0;
        data = {'email': email, 'passw': passw, 'rmb': remember};
    }
    else {
        data = {'email': email};
    }

    $('#auth_btn').css({ 'cursor': 'default' });
    $.post("/user/" + mode + "/", data, function (result) {
        //console.log(result);

        $('#auth_btn').css({ 'cursor': 'pointer' });
        res = parseInt(result.status);
        console.log("result=" + res);
        istest = $('.header__top').data('istest');
        if (res == 1) {
            if (mode == 'auth') {
                document.location.href = "/user/cabinet/";
            }
            else {
                 $('#remind_result_message').text('Новый пароль отправлен на ваш email');
            }
        }
        else {
            if (res == 2) {
                $('#auth_login_error').text('Такой email не зарегистрирован');
            }
            else if (res == 3) {
                $('#auth_passw_error').text('Неверный пароль');
            }
            else if (res == 4) {
                $('#auth_passw_error').text('Ваш аккаунт заблокирован');
            }
            else {
                $('#auth_passw_error').text("Произошёл сбой при авторизации");
            }
        }
    }).fail(function (jqXHR, textStatus, errorThrown) {
        console.log(jqXHR);
        console.log(textStatus);
        console.log(errorThrown);

        $('#auth_passw_error').text("Произошёл сбой, попробуйте ещё раз.");
    });

});


$('.fast-order').mousedown(function (e) {

    if (e.target.closest('.fast-order__content')) {
        inBlockClick = true;
    }
});

$('.fast-order').click(function (e) {
    if (!e.target.closest('.fast-order__content')) {
        if (!inBlockClick) {
            $(this).addClass('hide');
        }
        else {
            inBlockClick = false;
        }
    };
});

$('#user_edit_profile').click(function (e) {
    if (!e.target.closest('.profile__content')) {
        $(this).addClass('hide');
    };
});

$('#fast_order_submit').click(function (e) {

    e.stopPropagation();
    e.preventDefault();

    //console.log("FO SUBMIT!");
    let form = $('#fast_order_form');

    form.find('input, textarea').removeClass('input-error');

    data_f = form.find('input[data-req="1"]');
    $('#fast_order_msg').text('');

    err = 0;
    //Найдём незаполненные обязательные поля
    data_f.each(function (i) {
        name = $(this).attr('name');

        if ($(this).val().trim() == '') {
            console.log("name=" + name);
            //$(this).css('border-color', 'red');
            $(this).addClass('input-error');
            err = 1;
        }
    });


    user_name = $('[name=fast_user_name]', form).val().trim();
    user_phone = $('[name=fast_user_phone]', form).val().trim();
    user_email = $('[name=fast_user_email]', form).val().trim();
    user_comment = $('[name=fast_user_comment]', form).val().trim();

    if (!testEmail(user_email)) {
        $('[name=user_email]', form).addClass('input-error');
        $('#fast_order_msg').css('color', 'red');
        //$('#fast_order_msg').text('Некорректный email');

        err = 1;

    }


    if ($('[name=ch1]', form).length == 1)
        agree = $('[name=ch1]', form).is(':checked') ? 1 : 0;
    else
        agree = 1;

    if (!testPhone(user_phone)) {
        $('[name=fast_user_phone]', form).addClass('input-error');
        err = 1;
    }

    if (err == 1)
        return;

    if (!agree) {
        $('#fast_order_msg').css('color', 'red');
        $('#fast_order_msg').text('Вы не дали согласие на обработку персональных данных');
        return;
    }

    $(this).prop('disabled', true);
    $(this).text('Отправляется...');

    var data = new FormData();

    data.append('fio', user_name);
    data.append('email', user_email);
    data.append('phone', user_phone);
    data.append('comment', user_comment);
    data.append('agree', agree);


    if ($('#fast_order_form').find('#add_agg-upload-1')) {
        files = $('#fast_order_form').find('#add_agg-upload-1')[0].files;
        add_agg_upl_file_1 = files[0];
    }

    data.append('attach1', add_agg_upl_file_1);
    data.append('attach2', add_agg_upl_file_2);

    // AJAX запрос
    $.ajax({
        url: "/ajax/send_fast_order/",
        type: 'POST',
        data: data,
        cache: false,
        dataType: 'json',
        processData: false,
        contentType: false,

        // функция успешного ответа сервера
        success: function (result, status, jqXHR) {

            console.log(result);
            $('#fast_order_submit').prop('disabled', false);
            if (result.status == 1) {
                $('#fast_order_msg').css('color', '#F1971E');
                $('#fast_order_msg').text('Ваш заказ отправлен');
                $('#fast_order_submit').text('Отправить');
            }
            else if (result.status == 2) {
                $('#fast_order_msg').css('color', 'red');
                $('#fast_order_msg').text('Вы не дали согласие на обработку персональных данных');
                $('#fast_order_submit').prop('disabled', false);
                $('#fast_order_submit').text('Отправить');
            }
            else if (result.status == 3) {
                $('#fast_order_msg').css('color', 'red');
                $('#fast_order_msg').text('Недопустимое расширение загружаемого файла');
                $('#fast_order_submit').prop('disabled', false);
                $('#fast_order_submit').text('Отправить');
            }
            else if (result.status == 4) {
                $('#fast_order_msg').css('color', 'red');
                $('#fast_order_msg').text('Неверный формат файла. Должен быть xls/xlsx, doc/docx или pdf');
                $('#fast_order_submit').prop('disabled', false);
                $('#fast_order_submit').text('Отправить');
            }

        },
        // функция ошибки ответа сервера
        error: function (jqXHR, status, errorThrown) {
            console.log("ERROR:" + status);
            $('#fast_order_submit').prop('disabled', false);
            $('#fast_order_submit').text('Отправить');
        }
    });
});

$('body').on('keyup', '#search_order_id', function (e) {

    if (e.keyCode == 13) {
        oid = $('#search_order_id').val().trim();
        if (oid) {
            document.location.href = "/user/order?oid=" + oid;
        }
    }
});

$('#search_order').click(function (e) {
    e.stopPropagation();
    e.preventDefault();

    oid = $('#search_order_id').val().trim();
    if (oid) {
        document.location.href = "/user/order?oid=" + oid;
    }

    return;
});


$('#manager_showmore').click(function (e) {
    e.stopPropagation();
    e.preventDefault();

    clicked = parseInt($(this).data('clicked'));
    //console.log("clicked="+clicked);
    if (clicked)
        return;

    curpage = parseInt($('body').data('curpage'));
    total_pages = parseInt($('body').data('total_pages'));

    $(this).data('clicked', 1);


    newpage = curpage + 1;
    console.log('curpage=' + curpage + ", newpage=" + newpage);

    data = { 'aj': 1, 'p': newpage }
    $.get("/manager/", data, function (result) {

        res = parseInt(result.status);
        if (res == 1) {
            $('#manager_showmore').data('clicked', 0);

            $('body').data('curpage', newpage);
            $('#items_list').append(result.items);
            $('#paginator').html(result.paginator);

            if (newpage >= total_pages) {
                $('#manager_showmore').hide();
            }

            return;
        }
        else {

        }
    }).fail(function (jqXHR, textStatus, errorThrown) {
        console.log(textStatus);
        console.log(errorThrown);
    });
});

$('#change_passw').click(function (e) {
    e.stopPropagation();
    e.preventDefault();

    console.log("CHANGE PASSW!");

    err = 0;

    form = $('#changepassw_form');
    oldp = $('[name=old_passw]', form).val().trim();
    new_passw1 = $('[name=new_passw1]', form).val().trim();
    new_passw2 = $('[name=new_passw2]', form).val().trim();

    if (oldp == '') {
        $('#change_passw_msg').css('color', 'red');
        $('#change_passw_msg').text('Введите текущий пароль');
        return;
    }

    if (new_passw1 == '') {
        $('#change_passw_msg').css('color', 'red');
        $('#change_passw_msg').text('Введите новый пароль');
        return;
    }

    if (new_passw1 != new_passw2) {
        $('#change_passw_msg').css('color', 'red');
        $('#change_passw_msg').text('Пароли не совпадают друг с другом');
        return;
    }

    data = { 'old_passw': oldp, 'new_passw1': new_passw1, 'new_passw2': new_passw2 }
    $.post("/user/change_passw/", data, function (result) {
        //console.log(result);

        res = parseInt(result.status);
        if (res == 1) {
            $('#change_passw_msg').css('color', '#F1971E');
            $('#change_passw_msg').text('Пароль изменён');

            return;
        }
        else {
            $('#change_passw_msg').css('color', 'red');
            $('#change_passw_msg').text('Пароль не изменён: ' + result.msg);
        }
    }).fail(function (jqXHR, textStatus, errorThrown) {
        console.log(textStatus);
        console.log(errorThrown);
        $('#change_passw_msg').css('color', 'red');
        $('#change_passw_msg').text('Возникла ошибка, пароль не изменён.');
    });

});


$('.profile__close').click(function (e) {
    e.stopPropagation();
    e.preventDefault();

    if ($(this).parent().parent().hasClass('profile__content')) {
        if ($(this).parent().parent().parent().hasClass('profile')) {
            $(this).parent().parent().parent().addClass('hide');
        }
        else {
            $(this).parent().parent().addClass('hide');
        }
    }
    else
        $(this).parent().parent().addClass('hide');
});


$('#pr_save').click(function (e) {

    console.log("SAVE PROFILE!");

    err = 0;

    form = $('#user_edit_profile');
    form.find('.form_error').text('');
    form.find('input').removeClass('input-error');


    $('#profile_msg').css('color', '#F1971E');
    $('#profile_msg').text('');

    cur_fz = form.find('.profile_fizur').data('fz');

    //Найдём незаполненные обязательные поля, общие для физлица и юрлица

    if (cur_fz == 1)
        data_f = form.find('input[data-req="1"]');
    else if (cur_fz == 2)
        data_f = form.find('input[data-req="1"],input[data-req="2"]');

    data_f.each(function (i) {
        curid = $(this).attr('id');

        if ($(this).val().trim() == '') {
            //$(this).css('border-color', 'red');
            $(this).addClass('input-error');
            err = 1;
        }
    });

    if (err)
        return false;

    user_name = $('[name=pr_fio]', form).val().trim();
    user_phone = $('[name=pr_phone]', form).val().trim();
    user_email = $('[name=pr_email]', form).val().trim();
    inn = $('[name=pr_inn]', form).val().trim();
    firm_name = $('[name=pr_firm_name]', form).val().trim();
    city = $('[name=pr_city]', form).val().trim();
    //postal_code  = $('[name=pr_postal_code]', form).val().trim();
    //address = $('[name=pr_address]', form).val().trim();

    if (!testEmail(user_email)) {
        $('#profile_msg').css('color', 'red');
        $('#profile_msg').text('Неверный формат email');
    }
    new_passw1 = $('[name=new_passw1]', form).val().trim();
    new_passw2 = $('[name=new_passw2]', form).val().trim();

    change_passw = 0;


    if (new_passw1 != new_passw2) {
        $('#profile_msg').css('color', 'red');
        $('#profile_msg').text('Пароли не совпадают друг с другом');
        return false;
    }

    if (new_passw1 && (new_passw1 == new_passw2)) {
        change_passw = 1;
    }

    var data = new FormData();

    data.append('fio', user_name);
    data.append('email', user_email);
    data.append('phone', user_phone);
    data.append('inn', inn);
    data.append('firm_name', firm_name);
    data.append('city', city);
    data.append('fz_ur', cur_fz);


    if (change_passw) {
        data.append('new_passw1', new_passw1);
    }
    //data.append('postal_code', postal_code);
    //data.append('address', address);

    $('#pr_save').prop('disabled', true);
    $('#pr_save').text('Сохраняется...');

    // AJAX запрос
    $.ajax({
        url: "/user/save_profile/",
        type: 'POST',
        data: data,
        cache: false,
        dataType: 'json',
        processData: false,
        contentType: false,

        // функция успешного ответа сервера
        success: function (result, status, jqXHR) {

            console.log(result);
            $('#pr_save').prop('disabled', false);
            $('#pr_save').text('Сохранить');
            if (result.status == 1) {
                $('#profile_msg').css('color', '#F1971E');
                $('#profile_msg').text('Профиль сохранён');

                //Теперь обновим табличку с данными профиля
                $('#tbl_pr_fio').text(user_name);
                $('h1').text(user_name);

                if (cur_fz == 1) {
                    $('#usertype_header').text('Город');
                    $('#tbl_pr_fzur').text('Физлицо');
                    $('#inn_header').addClass('hide');
                    $('#tbl_pr_inn').addClass('hide');
                    $('#tbl_pr_firmname').html('<div>' + city + '</div>');
                }
                else if (cur_fz == 2) {
                    $('#usertype_header').text('Название комапнии');
                    $('#tbl_pr_fzur').text('Компания');
                    $('#tbl_pr_firmname').html('<div>' + firm_name +
                        '</div><div class="storage__text--sub-company">' + city + '</div>');

                    $('#inn_header').removeClass('hide');
                    $('#tbl_pr_inn').removeClass('hide');
                }


                $('#tbl_pr_inn').text(inn);
                $('#tbl_pr_phone').text(user_phone);
                $('#tbl_pr_email').text(user_email);
            }
            else if (result.status == 2) {
                $('#profile_msg').css('color', 'red');
                $('#profile_msg').text('Ошибка при сохранении профиля: ' + result.msg);
            }
        },
        // функция ошибки ответа сервера
        error: function (jqXHR, status, errorThrown) {
            console.log("ERROR:" + status);
            $('#profile_msg').css('color', 'red');
            $('#profile_msg').text('Ошибка при сохранении профиля');
        }
    });

    return false;
});

$('#register_btn').click(function (e) {

    e.stopPropagation();
    e.preventDefault();

    console.log("REGISTER!");
    let form = $('#register_block');

    //$('#regform').find('input[type=text]').css('border-color', '#F2F2F2');
    $('#regform').find('input[type=text], input[type=password]').removeClass('input-error');

    $('#regform').find('.form_error').text('');

    data_f = $('#regform').find('input[data-req="1"]');
    $('#reg_email_error').text('');
    $('#reg_passw_error2').text('');

    err = 0;
    //Найдём незаполненные обязательные поля
    data_f.each(function (i) {
        curid = $(this).attr('id');

        if ($(this).val().trim() == '') {
            $(this).addClass('input-error');
            $(this).parents('.register__form').find('.password-control').css('display', 'none');
        }
    });


    email = $('#reg_email').val().trim();
    fio = $('#reg_fio').val().trim();
    passw1 = $('#reg_passw1').val().trim();
    passw2 = $('#reg_passw2').val().trim();
    rmb = $('#reg_remember').is(':checked') ? 1 : 0;

    if (!testEmail(email)) {
        $('#reg_email').addClass('input-error');
        $('#reg_email_error').text('Некорректный email');
        err = 1;
    }

    if (passw1 != passw2) {
        $('#reg_passw_error2').text('Пароли не совпадают друг с другом');
        err = 1;
    }

    if ($('[name=ch1]', form).length > 0)
    {
        agree = $('[name=ch1]', form).is(':checked') ? 1 : 0;
        if (!agree) {
            $('[name=ch1]', form).css({'background-image': 'url(/assets/icon/checkbox_red.svg)'});
            $('#reg_agree_error').text('Вы не дали согласие на обработку персональных данных');
            err = 1;
        }
    }
    else
    {
        agree = 1;
    }

    if (err == 1)
        return false;

    $('#register_btn').prop('disabled', true);
    $('#register_btn').text('Регистрация...');

    data = { 'email': email, 'fio': fio, 'passw': passw1, 'rmb': rmb }
    $.post("/user/register/", data, function (result) {
        //console.log(result);
        $('#register_btn').prop('disabled', false);
        $('#register_btn').text('Зарегистрироваться');

        res = parseInt(result.status);
        console.log("result=" + res);
        if (res == 1) {
            if ($('.register-after').length == 1) {
                $('#register_block').addClass('hide');
                $('.register-after').removeClass('hide');
            }
            else {
                document.location.href = '/user/register_ok/';
            }
            return;
        }
        else {
            if (res == 2) {
                $('#reg_email_error').text('Такой email уже зарегистрирован');
            }
            else if (res == 3) {
                $('#reg_email_error').text('Некорректный email');
            }
            else {
                $('#reg_passw_error2').text('Произошёл сбой при регистрации, попробуйте ещё раз');
            }
        }
    }).fail(function (jqXHR, textStatus, errorThrown) {
        console.log(jqXHR);
        console.log(textStatus);
        console.log(errorThrown);
        $('#reg_passw_error2').text('Произошёл сбой при регистрации, попробуйте ещё раз');

    });
});

$('.cs_login_btn').click(function (e) {
    e.stopPropagation();
    e.preventDefault();


    mode = parseInt($(this).data('mode'));
    console.log("USERCL!, mode=" + mode);

    if (mode == 0) {
        $('#login_block').removeClass('hide');
        $('#auth_passw_f').show();
        $('#rmb_lbl').css("visibility", 'visible');
        $('#remind').text('Напомнить пароль');
        $('#remind').data('mode', 'auth');
        $('#remind_result_message').text('');
        $('#auth_btn').text('Войти');
    }
    else {
        document.location.href = '/user/cabinet/';
    }
});

 $('#remind').on('click', function (e) {
     e.stopPropagation();
     e.preventDefault();

     $('.form_error').text('');
     if ($('#remind').attr('data-mode') == 'auth') {
         $('#remind').attr('data-mode', 'remind');
         $('#auth_passw_f').hide();
         $('#rmb_lbl').css("visibility", 'hidden');
         $('#remind').text('Войти');
         $('#auth_btn').text('Восстановить пароль');
         $('#remind_result_message').text('');
     }
    else {
         $('#remind').attr('data-mode', 'auth');
         $('#auth_passw_f').show();
         $('#rmb_lbl').css("visibility", 'visible');
         $('#remind').text('Напомнить пароль');
         $('#auth_btn').text('Войти');
         $('#remind_result_message').text('');
     }
});

$('.sorting__view-button, .list-catalog__item').click(function (e) {

    //e.stopPropagation();

    e.preventDefault();

    oldmode = getCookie('viewmode');
    viewmode = $(this).data('viewmode');

    if (viewmode == oldmode)
        return;

    console.log("NEW viewmode=" + viewmode);

    if ($(this).hasClass('sorting__view-button')) {
        $('.sorting__view').find('.sorting__view-button').prop('checked', false);
        $(this).find('.sorting__view-checkbox').prop('checked', true);
    }
    else {
        $('.list-catalog__item').removeClass('list-catalog__item--modules-active');
        $('.list-catalog__item').removeClass('list-catalog__item--longlist-active');
        $('.list-catalog__item').removeClass('list-catalog__item--shortlist-active');

        if (viewmode == 'modules')
            $(this).addClass('list-catalog__item--modules-active');
        else if (viewmode == 'long')
            $(this).addClass('list-catalog__item--longlist-active');
        else if (viewmode == 'short')
            $(this).addClass('list-catalog__item--shortlist-active');

    }

    setCookie('viewmode', viewmode);

    ptype = $('body').data('ptype');
    curp = $('body').data('curp');
    if (ptype == 'prodlist') {
        getFilteredProducts(curp, 0, 1);
    }
    else {
        getFilteredData('.filter', curp, 0, 0, 1);
    }
});

$('.sorting__view-button').click(function (e) {

    //e.stopPropagation();

    e.preventDefault();

    viewmode = $(this).data('viewmode');

    console.log("NEW viewmode=" + viewmode);
    $('.sorting__view').find('.sorting__view-button').prop('checked', false);
    $(this).find('.sorting__view-checkbox').prop('checked', true);
    setCookie('viewmode', viewmode);

    getFilteredData();

});

$('#cabinet_show_profile').click(function (e) {
    e.stopPropagation();
    e.preventDefault();

    $('#user_edit_profile').toggleClass('hide');
});

$('.sidebar__element-title--open') .click(function (e) {
    e.stopPropagation();

    if ($(this).text() == 'Применить') {
        getFilteredData();
    }
});

$('.filter_check').click(function (e) {
    e.stopPropagation();
    checked = $(this).is(':checked');

    level = $('body').data('level');
    var ftype = $(this).parents('.sidebar__element-wrapper').data('ftype');
    len = $('.sidebar__element-wrapper[data-ftype="' + ftype + '"]').find('.filter_check:visible').length;

    console.log("CHECK!!");
    btn =  $('#filter_btn');
    btn.hide();

    /*
    if ((len==1) && (ftype != 'tp'))
    {
        $(this).prop('checked', true);
        e.stopPropagation();

        return;
    }
    */

    console.log("checked="+checked+", level=" + level + ", ftype=" + ftype+", width=" + window.innerWidth);

    HideFilters();

    if (window.innerWidth > 400) {
        var parent_block = $(this).parent()[0];
        console.log(parent_block);
        var parent_offset = parent_block.getBoundingClientRect();
        var filtersCol = $('#fil_ob')[0].getBoundingClientRect();

        var top = parent_offset.top + window.scrollY;
        var width = parent_offset.width;

        btn_left = filtersCol.left + filtersCol.width;
        btn_top = top;

        btn.css({'top': btn_top, 'left': btn_left});
        btn.show();

        visible = btn.is(":visible");
    }

    //getFilteredData();
});



//Прячем ненужные фильтры
//
function HideFilters(blockname) {
    var ftype = '';

    filters = ['pw', 'mt', 'ar', 'iz', 'tp', 'tm', 'zi', 'sc', 'pr', 'ek', 's2', 's3'];

    result = [];


    for (i = 0; i < filters.length; i++) {
        ftype = filters[i];
        //console.log("FTYPE = " + ftype);

        var ft_params = [];
        //Если мы находимся  в блоке, то по умолчанию разрешаем выводить все возможные значения
        //пока они не отсекутся фильтрами в других блоках

        $('.sidebar__element-wrapper[data-ftype="' + ftype + '"]').find('.filter_check').each(function (index) {
            curv = $(this).val();

            if (ftype in ft_params)
                ft_params[ftype].push(curv);
            else
                ft_params[ftype] = [curv];
        });

        //А теперь бежим только по отмеченным
        //Внутри каждого блока складываем массивы каждого из параметров
        $('.sidebar__element-wrapper[data-ftype="' + ftype + '"]').find('.filter_check:checked').each(function (index) {
            curv = $(this).val();
            params = $(this).data('plist');

            //ft_params.push(curv);
            //console.log("params");
            //console.log(params);

            for (var key in params) {
                arr = params[key];
                //console.log("key="+key);

                if (key in ft_params) {
                    for (var key2 in arr) {
                        //Добавляем новый элемент
                        if (ft_params[key].indexOf(arr[key2]) == -1) {
                            ft_params[key].push(arr[key2]);
                        }
                    }
                }
                else {
                    ft_params[key] = arr;
                }
            }

        });

        //console.log("***ftype="+ftype);
        //console.log(ft_params);
        result[ftype] = ft_params;
    }

    //console.log("RESULT:");
    //console.log(result);
    //Теперь оставим только те значения, которые есть во всех блоках
    result2 = [];
    for (var key in result) //Бежим по блокам
    {
        arr = result[key]; //набор параметров в блоке
        //console.log("key:"+key);
        //console.log(arr);
        for (var key2 in arr)  //бежим по параметрам
        {
            //if (key2==key)
            //	continue;

            param_arr = arr[key2];

            if (param_arr.length == 0) //Ни одно значение не соответствует
            {
                result2[key2] = [];
                break;
            }

            //console.log("param_arr, len="+param_arr.length);
            //console.log(param_arr);

            param_arr.forEach(function (item, i)  //Бежим по значениям параметра
            {
                //проверим, чтобы параметр arr[key2] был везде в блоках

                //Для этого опять пробежим по блокам
                found = true;

                for (var key3 in result) //Бежим по блокам
                {
                    if (key2 in result[key3]) {
                        arr2 = result[key3][key2]; //массив значений параметра key2 в блоке key3

                        if (arr2.indexOf(item) == -1) //Достаточно, чтобы хотя бы где-то нет такого параметра, чтобы его исключить
                        {
                            found = false;
                            break;
                        }
                    }
                }

                if (found) //Параметр есть во всех блоках
                {
                    if (key2 in result2) {
                        if (result2[key2].indexOf(item) == -1) {
                            result2[key2].push(item);
                        }
                    }
                    else
                        result2[key2] = [item];

                }
            });
        }
    }
    //console.log(result);
    //console.log("result2");
    //console.log(result2);

    for (key in result2) //Бежим по блокам
    {
        arr = result2[key];
        //console.log('key='+key);
        //console.log(arr);
        $('.sidebar__element-wrapper[data-ftype="' + key + '"]').find('.sidebar__element-label').hide();

        //if (key=='iz')	console.log("key="+key+", len="+len);

        for (key2 in arr) //Бежим по значениям
        {
            val = arr[key2];
            $('.sidebar__element-wrapper[data-ftype="' + key + '"]').find('.filter_check[value=' + '"' + val + '"]').parent().show();
        }
    }

    //Там, где только  1 элемент остался, выделим его
    /*
    for (i=0;i<filters.length;i++)
    {
        ftype = filters[i];
        len = $('.sidebar__element-wrapper[data-ftype="' + ftype + '"]').find('.filter_check:visible').length;
        //console.log("ftype="+ftype+", len="+len);
        if ((len==1) && (ftype != 'tp'))
        {
            $('.sidebar__element-wrapper[data-ftype="' + ftype + '"]').find('.filter_check:visible').prop('checked', true);
        }
    }
    */
    BlockParAndCores();
}

function BlockParAndCores() {
    //Если у нас есть и пары и жилы, то при клике по количеству пар деактивируем жилы
    //соответственно, при клике по количеству жил деактивируем пары
    //и наоборот, если ни одна из галочек в количестве пар не выбрана, то жилы всегда активны
    //если ни одна из галочек в жилах не выбрана, то пары всегда активны

    //Проверим, есть ли галочка в количестве пар
    parChecked = $('.sidebar__element-wrapper[data-ftype="pr"]').find('.filter_check:checked').length;
    ziChecked = $('.sidebar__element-wrapper[data-ftype="zi"]').find('.filter_check:checked').length;

    console.log('parChecked:' + parChecked);
    console.log('ziChecked:' + ziChecked);
    if (parChecked > 0) {
        //Блокируем выбор количества жил
        $('.sidebar__element-wrapper[data-ftype="zi"]').find('.filter_check').prop('disabled', true);
        $('.sidebar__element-wrapper[data-ftype="zi"]').find('.checkbox-number__text').addClass('dsbl_elem');
    }
    else {
        //Разблокируем выбор количества жил
        $('.sidebar__element-wrapper[data-ftype="zi"]').find('.filter_check').prop('disabled', false);
        $('.sidebar__element-wrapper[data-ftype="zi"]').find('.checkbox-number__text').removeClass('dsbl_elem');
    }

    if (ziChecked > 0) {
        //Блокируем выбор количества пар
        console.log('block pr');

        $('.sidebar__element-wrapper[data-ftype="pr"]').find('.filter_check').prop('disabled', true);
        $('.sidebar__element-wrapper[data-ftype="pr"]').find('.checkbox-number__text').addClass('dsbl_elem');
    }
    else {
        //Разблокируем выбор количества пар
        $('.sidebar__element-wrapper[data-ftype="pr"]').find('.filter_check').prop('disabled', false);
        $('.sidebar__element-wrapper[data-ftype="pr"]').find('.checkbox-number__text').removeClass('dsbl_elem');
    }
}


function BlockFilters(mode) {
    if (mode == 1) //Блокируем фильтры
    {
        $('.filter_check:not(:checked)').prop('disabled', true);
        $('.checkbox-number__text').addClass('dsbl_elem');
        $('.sidebar__element-span').addClass('dsbl_elem');
    }
    else if (mode == 2) //Разблокируем фильтры
    {
        $('.filter_check:not(:checked)').prop('disabled', false);

        $('.checkbox-number__text').removeClass('dsbl_elem');
        $('.sidebar__element-span').removeClass('dsbl_elem');
    }

    BlockParAndCores();
}

function checkIfOneMR() {
    return true;
}

function getFilteredData(fblock_name, pg, appendmode, checkMR, changeView) {
    fblock_name = typeof fblock_name !== 'undefined' ? fblock_name : '.filter';

    pg = typeof pg !== 'undefined' ? pg : 1;
    appendmode = typeof appendmode !== 'undefined' ? appendmode : 0;
    checkMR = typeof checkMR !== 'undefined' ? checkMR : 0;
    changeView = typeof changeView !== 'undefined' ? changeView : 0;

    if (checkMR && checkIfOneMR(fblock_name))
        return;

    filters = ['pw', 'mt', 'iz', 'tp', 'tm', 'zi', 'sc', 'pr', 'ek', 's2', 's3'];

    level = $('body').data('level');
    fg = $('body').data('fg');

    expert = $('body').data('expert');
    expert = typeof expert !== 'undefined' ? expert : 0;
    fg = typeof fg !== 'undefined' ? fg : 0;

    //Если changeView отличается от 0, то мы либо переключаемся в "Эксперта" либо из него
    //Если же changeView = 0, то мы используем текущее значение из $('.page-wrap').data('expert')

    if (changeView == 1) //Переключаемся в эксперта
        expert = 1;
    else if (changeView == 2) //Переключаемся в обычный режим
        expert = 0;

    if (changeView > 0) {
        $('body').data('expert', expert);
    }


    params = {};
    console.log("getFilteredData START. chanheView=" + changeView + ', expert=' + expert);

    startpstr = pstr = 'p=' + pg;
    fblock = $('.sidebar');


    pstr += '&';
    for (i = 0; i < filters.length; i++) {
        ftype = filters[i];

        cnt = 0;
        ft_params = [];
        fblock.find('.sidebar__element-wrapper[data-ftype="' + ftype + '"]').find('.filter_check:checked').each(function (index) {
            curv = $(this).val();
            ft_params.push(curv);
        });

        if (ft_params.length > 0)
            pstr += ftype + '=' + ft_params.join(';') + '&';

        if (ft_params.length) {
            params[ftype] = ft_params.join(';');
        }
    }

    //Отдельно броню и экран

    armblock = fblock.find('.sidebar__element-wrapper[data-ftype="ar"]');

    noarek = 0; //Без брони и экрана
    if (armblock.find('input[name="noarek_ch"]').is(':checked')) {
        noarek = 1;
        pstr += 'noarek=1&';
        params['noarek'] = 1;
    }

    armor = 0;
    if (armblock.find('input[name="armor_ch"]').is(':checked')) {
        armor_ch = 1;
        pstr += 'armor=1&';
        params['armor'] = 1;
    }

    ekran = 0;
    if (armblock.find('input[name="ekran_ch"]').is(':checked')) {
        ekran_ch = 1;
        pstr += 'ekran=1&';
        params['ekran'] = 1;
    }

    pstr = pstr.slice(0, -1);

    var sortix = { 't': 1, 'v': 2, 'n': 3, 'p': 4 };

    var ds1 = $('body').data('sort-dir1');
    var ds2 = $('body').data('sort-dir2');
    var ds3 = $('body').data('sort-dir3');
    var ds4 = $('body').data('sort-dir4');

    newds1 = ds1;
    newds2 = ds2;
    newds3 = ds3;
    newds4 = ds4;

    sort_f = $('body').data('sortf');

    if (sort_f in sortix)
        cursort_ix = sortix[sort_f];
    else
        cursort_ix = 1;

    curds = ds1;
    if (cursort_ix == 1) {
        newds1 = ds1 == 1 ? 2 : 1;
        curds = ds1;
    }
    else if (cursort_ix == 2) {
        newds2 = ds2 == 1 ? 2 : 1;
        curds = ds2;
    }
    else if (cursort_ix == 3) {
        newds3 = ds3 == 1 ? 2 : 1;
        curds = ds3;
    }
    else if (cursort_ix == 4) {
        newds4 = ds4 == 1 ? 2 : 1;
        curds = ds4;
    }

    dlm = '';
    if (pstr)
        dlm = '&';

    clear_pstr = pstr;

    if (sort_f && sort_f != 'def') {
        pstr += dlm + 'sort=' + sort_f + '&ds' + cursort_ix + '=' + curds;
    }

    params['sort'] = sort_f;
    params['ds' + cursort_ix] = curds;

    prms = JSON.stringify(params);
    //console.log('params:');
    //console.log(params);
    //console.log(prms);
    setCookie('ft_params', prms, 0, 7);


    var urlp = location.href.split('?');
    clearURL = urlp[0];

    while (clearURL.charAt(clearURL.length - 1) == '#') {
        clearURL = clearURL.substring(0, clearURL.length - 1);
    }

    fullgeourl = !fg ? dlm + 'fullgeo=1' : '';

    if (appendmode && expert) {
        more = $('body').data('more');
        dlm = more ? '&' : '';
        fullURL = clearURL + '?p=' + pg + dlm + more;
        newGeoURL = clearURL + '?p=' + pg + dlm + more + fullgeourl;
    }
    else {
        markurl = '/catalog/' + $('body').data('markurl');
        //fullURL = level<=3?clearURL:markurl;
        fullURL = clearURL;
        if (pstr) {
            fullURL += '?' + pstr;
        }

        newGeoURL = clearURL + '?' + clear_pstr + fullgeourl;
    }

    newSortURL_1 = clearURL + '?' + clear_pstr + dlm + 'sort=t&ds1=' + newds1;
    newSortURL_2 = clearURL + '?' + clear_pstr + dlm + 'sort=v&ds2=' + newds2;
    newSortURL_3 = clearURL + '?' + clear_pstr + dlm + 'sort=n&ds3=' + newds3;
    newSortURL_4 = clearURL + '?' + clear_pstr + dlm + 'sort=p&ds4=' + newds4;

    if (expert) {
        newGeoURL += '&expert=1';
    }

    //console.log("newGeoURL="+newGeoURL);
    //Удаляем пагинацию в ссылке на поиск в других регионах
    newGeoURL = newGeoURL.replace(startpstr, '').trim();
    if (newGeoURL.slice(-1) == '?')
        newGeoURL = newGeoURL.slice(1, -1)

    //console.log("newSortURL_1="+newSortURL_1);
    //console.log("newSortURL_2="+newSortURL_2);

    $('a[data-atype="1"]').attr('href', newSortURL_1);
    $('a[data-atype="2"]').attr('href', newSortURL_2);
    $('a[data-atype="3"]').attr('href', newSortURL_3);
    $('a[data-atype="4"]').attr('href', newSortURL_4);

    $('#showGeo').attr('href', newGeoURL);

    //console.log("fullURL="+fullURL);
    //console.log("params");
    //console.log(params);

    dlm = (fullURL.indexOf('?') == -1) ? '?' : '&';

    if (fg) {
        fullURL += dlm + 'fullgeo=1';
    }

    dlm = (fullURL.indexOf('?') == -1) ? '?' : '&';

    standardURL = fullURL;

    if (expert) {
        //fullURL += dlm;
        expertURL = fullURL;
    }
    else {
        expertURL = fullURL;  // + dlm + 'expert=1'
    }
    //$('#expertURL').attr('href', expertURL);
    //$('#expertURL2').attr('href', expertURL);

    //$('#standardURL').attr('href', standardURL);
    //$('#standardURL2').attr('href', standardURL);

    /*
        if (level==4)
        {
            document.location.href=fullURL;
            return;
        }
    */
    dlm = (fullURL.indexOf('?') == -1) ? '?' : '&';

    /*
        if (window.history.replaceState)
        {
           //prevents browser from storing history with each change:
           window.history.replaceState({}, document.title, fullURL);
        }
    */

    if (level == 4 && 1 == 0) {
        //Проверим, сколько выбрано жил, сечений и экранов
        //Если где-то не 1, то перекидываем на марку

        chcnt = getCheckedCnt(fblock_name);

        if ((chcnt['zi_checked_cnt'] != 1) || (chcnt['sc_checked_cnt'] != 1) || (chcnt['ek_checked_cnt'] != 1) || (chcnt['pr_checked_cnt'] != 1)) {
            window.location.href = markurl;
            return;
        }
    }

    block_screen();
    $.get(fullURL + dlm + 'aj=1').done(function (data) {
        console.log("appendmode=" + appendmode);
        //console.log(data.items);
        if (appendmode == 0) {
            curShownCnt = data.cnt;
            //console.log("ITEMS:");
            //console.log(data.items);
            $('#items_list').html(data.items);

            if (curShownCnt == 0) //Заблокируем фильтры
                BlockFilters(1);
            else
                BlockFilters(2); //Разблокируем, если были заблокированы
            unblock_screen();
        }
        else {
            curShownCnt = parseInt($('#curShownCnt').data('cs'));
            curShownCnt += data.cnt;

            $('#items_list').append(data.items);
            unblock_screen();
        }

        if (curShownCnt >= data.total) {
            $('.catalog__modules-more').hide();
        }
        else {
            $('.catalog__modules-more').show();
        }
        console.log("(window).width()=" + $(window).width());


        $('body').data('curp', pg);
        $('#paginator').html(data.paginator);
    }).fail(function (jqXHR, textStatus, errorThrown) {
        console.log(jqXHR);
        console.log(textStatus);
        console.log(errorThrown);
    });
}

$(document).ready(function () {

    var searchField = $('.header__search-input');
    searchField.focus(function () {
        $(this).parents('.header__search').addClass('open');
        $('.header__search .autocomplete').css('display', 'block');
    });

    searchField.focusout(function () {
        $(this).parents('.header__search').removeClass('open');
        setTimeout(function () {
            $('.header__search .autocomplete').css('display', 'none');
        }, 200);
    });

    $('.header__search .autocomplete-item').on('click', function () {
        $('.header__search-input').val($(this).text());
    });


    $('.search__input').each(function() {

        $(this).autocomplete({
            source: function (request, response) {

                v = request.term.trim().toLowerCase();

                data = [];

                console.log("autocomplete v=" + v);

                limit = $(this).data('limit') ? $(this).data('limit') : 5;
                v = encodeURIComponent(v);
                $.ajax({
                    url: "/search/product/?sq=" + v + '&limit=' + limit + '&agg=1', dataType: 'json', type: 'get',
                    contentType: 'application/json',
                    processData: false,
                    success: function (data, textStatus, jQxhr) {
                        if (data.length == 0) {
                            data = [{
                                'real_name': 'Совпадений не найдено, попробуйте иначе',
                                'power': '',
                                'p_id': 0
                            }];
                        }
                        search_res = data;
                        response(data);
                    },
                    error: function (jqXhr, textStatus, errorThrown) {
                        console.log(errorThrown);
                    }
                });

            },

            //Клик по выбранному элементу
            select: function (event, ui) {
                event.preventDefault();
                event.stopPropagation();

                if (ui.item.p_id > 0)
                {
                    $(this).val(ui.item.real_name);
                    redirectToSearchRes(ui.item, $(this).val());
                }
            },

            minLength: 2,
            appendTo: '#search_cable',
            open: function () {
                //console.log($(this).data("uiAutocomplete").menu.element[0].className);
                $(this).data("uiAutocomplete").menu.element.addClass("autocomplete2");
                //$(this).data("uiAutocomplete").menu.element[0].className = "autocomplete2";
                //console.log($(this).data("uiAutocomplete").menu.element[0].className);
            }
        }).autocomplete("instance")._renderItem = function (ul, item) {
            nm = item.p_id ? item.real_name : '';
            fn = item.clrpower ? item.real_name + '-' + item.clrpower : item.real_name;

            listyle = '';
            if (item.p_id==0)
            {
                listyle = 'style="cursor:default !important" ';
            }

            return $("<li " + listyle +">")
                .append('<span class="autocomplete2-item"' + listyle + ' data-fn="' + fn +'"  data-name="' + nm + '" data-pwr="' + item.clrpower + '" data-pid="' + item.p_id + '" data-type="' + item.type + '"><em style="font-style:normal">' + item.real_name + '</em>' + item.power + "</span>")
                .appendTo(ul);
        };
    });

    $('body').on('mouseover', '.autocomplete2-item', function (e) {
        name = $(this).data('name');
        pwr = $(this).data('pwr');
        pid = $(this).data('pid');
        type = $(this).data('type');

        console.log("name=" + name + ", pwr=" + pwr + ", pid=" + pid);
        fullname = name;
        if (pwr && (pwr != 'undefined'))
            fullname = name + '-' + pwr;

        CurItem = {'pid': pid, 'name': fullname, 'type': type, 'lst': CurItem.lst};

        if (pid)
            $('input[name="mr_search"]').val(fullname);
    });
    
    $(".input-phone").mask("+7 (999) 999-99-99", { autoclear: false });

    checkedmode = $('body').find('.sorting__view-checkbox:checked:first').val();
})

function redirectToSearchRes(item, origq) {
    origq = typeof origq !== 'undefined' ? origq : '';

    /*
    cur_host  = window.location.hostname;
    arr = cur_host.split('.');
    mainhost = arr[arr.length-2] +'.' + arr[arr.length-1];
    */


    if (item.p_id == 0) {
        gotoResultList(origq);
    }
    else {
        if (item.type == 9) {
            url = '/search/redirect/?idr=' + item.ic;
            document.location.href = url;
        }
        else {
            if (item.lst == 0) {
                expertstr = $('.page-wrap').data('expert') ? '&e=1' : '';

                url = '/search/redirect/?id=' + item.p_id + '&m=' + item.type + expertstr;
                console.log(url);
                document.location.href = url;
            }
            else {
                url = '/catalog/listing/' + item.p_id + '?' + item.uri;
                console.log(url);
                document.location.href = url;
            }
        }
    }
}


function gotoResultList(q) {
    cur_host = window.location.hostname;
    arr = cur_host.split('.');

    //q = $( "#mr_search" ).val();
    //mainhost = arr[arr.length - 2] + '.' + arr[arr.length - 1];
    document.location.href = '/search/reslist/' + encodeURIComponent(q) + '/';
    return;
}


function gotoNoResult(q) {
    cur_host = window.location.hostname;
    arr = cur_host.split('.');

    //q = $( "#mr_search" ).val();
    mainhost = arr[arr.length - 2] + '.' + arr[arr.length - 1];
    document.location.href =  '/search/noresult/?sq=' + q;
    return;
}



$('body').on('keyup', '#manager_note', function (e) {

    note = $(this).val().trim();

    oid = $('body').data('oid');
    data = { 'oid': oid, 'note': note };

    $.post('/manager/set_note/', data).done(function (data2) {

    });
});

$('body').on('keyup', 'input[name="mr_search"]', function (e) {

    if (e.keyCode == 13) {
        e.preventDefault();
        e.stopPropagation();

        //console.log(search_res);

        if (search_res[0]['p_id'] == 0) {
            //gotoNoResult($(this).val());
            redirectToSearchRes(search_res[0], $(this).val());
        }
        else {
            $(this).val(search_res[0].real_name);
            redirectToSearchRes(search_res[0], $(this).val());
        }
        return;
    }
});

$(".search_button").click(function (e) {

    e.preventDefault();
    e.stopPropagation();

    if (search_res[0].p_id > 0) {
        sq = search_res[0].real_name;
        $(this).parent().find('input[name="mr_search"]').val(sq);
    }
    else {
        sq = $(this).parent().find('input[name="mr_search"]').val();
    }

    redirectToSearchRes(search_res[0], sq);
});

//mousedown touchstart click
$('body').on('click', '.products__card-counter-minus', function (e) {

    e.preventDefault();
    e.stopPropagation();

    //console.log("MINUS!")


    if(window.location.pathname == '/cart/'){
    
    var parentPush = $(this).closest('.cart-list__item');
        dataLayer.push({
            "ecommerce": {
                "currencyCode": "RUB",
                "remove": {
                    "products": [
                        {
                            "id": parentPush.find('.cart-list__item-price').attr('data-price-id'),
                            "name": parentPush.find('.cart-list__item-name-link').html(),
                            "quantity": parentPush.find('input').val()-1,
                        }
                    ]
                }
            }
        });
    }
    var ob = this;

    page_type = $('body').data('ptype');

    field = $(this).parent().find('input');
    delta = 1;

    if (page_type == 'prodlist') {
        delta = 1;
    }
    else if ((page_type == 'cart') || (page_type == 'product')) {
        prodtype = field.data('ptype');
        delta = prodtype == 'cable' ? 1 : 1;
    }

    if (field.val())
        amount = parseInt(field.val().trim());
    else
        amount = 0;

    if (event.type != 'click') {
        timeout = setInterval(function () {

            cnt = amount - delta;

            if (cnt <= 0)
                cnt = 0;

            if (isNaN(cnt))
                cnt = 0;

            field.val(cnt);

            if (page_type == 'cart') {
                cnt = field.val();
                drawItemSumInCart(field.data('posid'), cnt);

                //cart_container = $(e.target).parents('.cart_container');
                //recalcTotalSumInCart(cart_container);
            }
        }, 50);
    }
    else {
        cnt = amount - delta;

        if (isNaN(cnt) || cnt < 0)
            cnt = 0;

        console.log('CLICK cnt='+cnt);

        field.val(cnt);

        if (page_type == 'cart') {

            posid = field.data('posid');
            $('input[data-posid="' + posid + '"]').val(cnt);

            drawItemSumInCart(field.data('posid'), cnt);

            cart_container = $(e.target).parents('.cart_container');
            recalcTotalSumInCart(cart_container);
        }
    }

    return false;

});

//mousedown touchstart click
$('body').on('click', '.products__card-counter-plus', function (e) {

    e.preventDefault();
    e.stopPropagation();

    console.log("event.type=" + event.type)

    page_type = $('body').data('ptype');

    field = $(this).parent().find('input');
    amount = parseInt(field.val().trim());
    console.log("amount=" + amount)

    delta = 1;
    if (page_type == 'prodlist') {
        delta = 1;
    }
    else if ((page_type == 'cart') || (page_type == 'product')) {
        prodtype = field.data('ptype');
        delta = prodtype == 'cable' ? 1 : 1;
    }
    //console.log('page_type='+page_type+', prodtype='+prodtype);

    if (event.type != 'click') {
        console.log('NO CLICK');
        timeout = setInterval(function () {
            if (field.val())
                amount = parseInt(field.val().trim());
            else
                amount = 0;
            cnt = amount + delta;

            if (isNaN(cnt))
                cnt = 0;

            field.val(cnt);

            //console.log("page_type="+page_type);
            if (page_type == 'cart') {

                posid = field.data('posid');
                $('input[data-posid="' + posid + '"]').val(cnt);

                //cnt = field.val();
                drawItemSumInCart(field.data('posid'), cnt);

                //cart_container = $(e.target).parents('.cart_container');
                //recalcTotalSumInCart(cart_container);
            }
        }, 50);
    }
    else {

        cnt = amount + delta;

        if (isNaN(cnt))
            cnt = 0;

        console.log('CLICK cnt='+cnt);

        field.val(cnt);

        if (page_type == 'cart') {

            posid = field.data('posid');
            $('input[data-posid="' + posid + '"]').val(cnt);

            drawItemSumInCart(field.data('posid'), cnt);

            cart_container = $(e.target).parents('.cart_container');
            recalcTotalSumInCart(cart_container);
        }
    }

    var parent = $(this).closest('.cart-list__item');
    var val = parent.find('input').val();
    var data;
    data = {
        "id" : parent.find('.cart-list__item-price').attr('data-price-id'),
        "name" : parent.find('.cart-list__item-name-link').html(),
        "price" : parent.find('.cart-list__item-price').attr('data-price'),
        "quantity" : val
    }
    if(window.location.pathname == '/cart/'){
        addCommercePush(data);        
    }
    parent = $(this).parents('.product_container');

    parent.find(".products__card-counter-minus").removeClass('red1');
    parent.find(".numfield").removeClass('red3');
    parent.find(".products__card-counter-plus").removeClass('red2');

    return false;

});

/*
$('body').on('mouseup touchend', function (e) {
    var ob = this;
    clearTimeout(timeout);

    page_type = $('body').data('ptype');

    if (page_type == 'cart') {
        if (e.target.closest('.numfield')) {
            len = $(e.target).parents('.cart_container').length;
            if (len > 0) {
                cart_container = $(e.target).parents('.cart_container');
                recalcTotalSumInCart(cart_container);
            }
        }
    }
})
*/

function setNewAmountInCart(posid, amount) {
    var items = $('#cartitems').data('items');
    if (typeof (items) == 'string') {
        items = JSON.parse(items);
    }

    //Удаляем товар из JSON в корзине
    var new_items = new Array();
    for (var key in items) {
        item = items[key];

        //console.log("item.pos_id="+item['pos_id']+", posid="+posid);
        if (item['pos_id'].toString() == posid) //Добавляем в обновлённую корзину все товары, кроме удаляемого
        {
            items[key]['amount'] = amount;
        }
    }

    $('#cartitems').data('items', JSON.stringify(items));

    data = { 'pos_id': posid, 'amount': amount };

    $.post('/cart/set_amount/', data).done(function (data2) {
        console.log("status=" + data2.status);
    });


    redrawCart();
}

$('body').on('mouseup touchend', '.products__card-counter-minus, .products__card-counter-plus', function (e) {

    var parent = $(this).parents('.product_container');
    var amount = parseInt(parent.find('.numfield').val());
    var posid = parent.find('.numfield').data("posid");

    page_type = $('body').data('ptype');

    if (page_type == 'cart') {
        setNewAmountInCart(posid, amount);
        cart_container = $(e.target).parents('.cart_container');
        recalcTotalSumInCart(cart_container);
    }
});

function recalcTotalSumInCart(cart_container) {
    var posid = 0;
    var amount = 0;
    var total_sum = 0;

    no_price = 0;
    total_sum = 0;

    console.log("recalcTotalSumInCart");

    cart_container.find('.product_container').each(function () {
        //return false;
        locfield = $(this).find('.numfield');
        posid = locfield.data('posid');
        client = locfield.data('client');

        if (typeof (posid) == 'undefined')
            return;


        price = $(this).find('[data-price-id="' + posid + '"]').data('price');

        if (price == 0) {
            no_price = 1;
            sumstr = 'По запросу';
            //return false;
        }
        else {
            amount = parseInt(locfield.val());
            sum = amount * price;
            if (client=='pc')
                total_sum += sum;


            console.log("posid="+posid+", price="+price+", amount="+amount+", sum="+sum);

            sumstr = formatNumber(sum, 2);
        }
        $('[data-itsum="sum_' + posid + '"]').text(sumstr);
        //console.log("posid="+posid+", price="+price+", amount="+amount+", sum="+sum+", total_sum="+total_sum);
    });

    if (no_price) {
        $('span[data-ftype="totalsum"]').text('По запросу');
    }
    else {
        $('span[data-ftype="totalsum"]').text(formatNumber(total_sum, 2));
    }
}

$('body').on('click', '.cart-list__item-delete', function (e) {
    e.stopPropagation();
    e.preventDefault();

    if ($(this).hasClass('cart-list__item-delete'))
    {
        posid = $(this).parent().find('.numfield').data('posid');
    }
    else
    {
        posid = -1;
    }
    var parentPush = $(this).closest('.cart-list__item');
    console.log('posid=' + posid);;
    dataLayer.push({
        "ecommerce": {
            "currencyCode": "RUB",
            "remove": {
                "products": [
                    {
                        "id": posid,
                        "name": parentPush.find('.cart-list__item-name-link').html(),
                        "quantity": parentPush.find('input').val(),
                    }
                ]
            }
        }
    });

    data = { 'pos_id': posid };

    console.log(data);
    //{'action': 'clickPhone'}
    $.post('/cart/delete_pos/', data).done(function (data2) {
        console.log("status=" + data2.status);
    });

    items = $('.cartitems').eq(0).data('items');
    //console.log("add to cart");
    //console.log("tyoeof items="+typeof(items));
    if (typeof (items) == 'string') {
        items = JSON.parse(items);
        //console.log(items);
    }

    //Удаляем товар из JSON в корзине
    new_items = new Array();

    if (posid > 0)
    {
        for (var key in items) {
            item = items[key];

            //console.log("item.pos_id="+item['pos_id']+", posid="+posid);
            if (item['pos_id'].toString() != posid) //Добавляем в обновлённую корзину все товары, кроме удаляемого
            {
                new_items.push(item);
            }
        }
    }

    cart_container = $(this).parents('.cart_container');

    items_cnt = new_items.length;
    $('.cartitems').eq(0).text(items_cnt);

    $('.cartitems').eq(0).data('items', JSON.stringify(new_items));
    $(this).parent().remove();

    if (items_cnt == 0) {
        $('.fixed__cart-link').addClass('normalcursor');
        $('.nav__cart-link').css('cursor', 'default');

        $('.order').hide();
        $('#cartblock').hide();
        $('.cart-list__title').text('Ваша корзина пуста');
    }


    recalcTotalSumInCart(cart_container);

    redrawCart();
});

$('body').on('keyup', '.numfield', function (e) {


    e.preventDefault();
    page_type = $('body').data('ptype');

    field = $(this);
    amount = parseInt(field.val());
    posid = parseInt(field.data("posid"));

    console.log('page_type=' + page_type+", posid="+posid+", amount="+amount);
    if (Number.isInteger(amount)) {
        $('input[data-posid="' + posid + '"]').val(amount);

        parent = field.parents('.product_container');
        parent.find(".products__card-counter-minus").removeClass('red1');
        parent.find(".products__card-counter-num").find('input').removeClass('red3');
        parent.find(".products__card-counter-plus").removeClass('red2');

        if (page_type == "cart") {
            setNewAmountInCart(posid, amount);

            cnt = field.val();

            drawItemSumInCart(field.data('posid'), cnt);

            cart_container = $(this).parents('.cart_container');
            recalcTotalSumInCart(cart_container);
        }
    }
})

$('.fixed__cart-link').click(function (e) {

    items_cnt = parseInt($('.cartitems').eq(0).text());

    if (items_cnt == 0) {
        e.stopPropagation();
        e.preventDefault();
    }
});
$(document).on('click', '.catalog__card:not(.active) .catalog__card-link', function (e) {
    e.stopPropagation();
    e.preventDefault();
});

//цели списка
$(document).on('click', '.products-list .catalog-longlist__card .card__buttons .button-buy', function (e) {
    var parent = $(this).closest('.product_container');
    var val = $(this).closest('.products__wrapper').find('input').val();
    var data;
    data = {
        "id" : parent.attr('data-pid'),
        "name" : parent.find('.products__card-title').html(),
        "price" : parent.attr('data-price'),
        "quantity" : val
    }
    if(val>0){
        ym(93139935,'reachGoal','buy_from_catalog');
        addCommercePush(data); 
    }
});
$(document).on('click', '.products-list .catalog-longlist__card .card__buttons .to_cart', function (e) {
    ym(93139935,'reachGoal','send_to_basket_catalog');
});

//цели деталки
$(document).on('click', '.product-card-main .product-card__container .products__card-info .button-buy--product', function (e) {
    var parent = $(this).closest('.product_container');
    var val = $(this).closest('.products__wrapper').find('input').val();
    var data;
    data = {
        "id" : parent.attr('data-pid'),
        "name" : $('.main__title--product h1').html(),
        "price" : parent.attr('data-price'),
        "quantity" : val,
    }

    if(val>0){
        ym(93139935,'reachGoal','buy_from_card');
        addCommercePush(data);
    }
});
$(document).on('click', '.product-card-main .product-card__container .products__card-info .to_cart', function (e) {
    ym(93139935,'reachGoal','send_to_basket_card');
});


function addCommercePush(data){
    dataLayer.push({
    "ecommerce": {
        "currencyCode": "RUB",    
        "add": {
            "products": [
                {
                    "id": data.id,
                    "name": data.name,
                    "price": data.price,
                    "quantity": data.quantity
                }
            ]
        }
    }
});
}

$(document).on('click', '.button-buy, .button-buy-product', function (e) {
    e.stopPropagation();
    e.preventDefault();

    parent = $(this).parents('.product_container');

    page_type = $('body').data('ptype');

    innercode = parent.data('innercode');
    pid = parent.data('pid');
    price = parent.data('price') + "";
    price = price.replace(',', '.');

    if (isNaN(price) || price == "")
        price = 0;

    amount = parseInt(parent.find('.numfield').val());
    posid = parseInt(parent.find('.numfield').data("posid"));

    console.log("button-buy: amount=" + amount + ", innercode=" + innercode);
    if (isNaN(amount) || (amount == 0)) {
        if ((page_type == 'product') && (1 == 0)) {
            parent.find(".inp_amount_product").addClass('fullred');
        }
        else {
            parent.find(".products__card-counter-minus").addClass('red1');
            parent.find(".numfield").addClass('red3');
            parent.find(".products__card-counter-plus").addClass('red2');
        }
        return;
    }
    edizm = parent.data('edizm');

    if (page_type == 'product') {
        full_title = parent.find('#product-title').val();
    }
    else {
        full_title = parent.find('a.products__card-title').eq(0).text();
        console.log("full_title=" + full_title);
    }

    items = $('.cartitems').eq(0).data('items');
    //console.log("add to cart");
    //console.log("tyoeof items="+typeof(items));
    console.log("full_title=" + full_title);
    if (typeof (items) == 'string') {

        items = JSON.parse(items);
        console.log(items);
    }

    console.log("items 1: ");
    console.log("type: " + typeof (items));
    console.log(items);

    //Проверим, есть ли добавляемый товар в корзине
    found = false;
    for (var key in items) {
        item = items[key];

        //console.log("item.innercode="+item['innercode']+", innercode="+innercode);
        if (item['pos_id'] == posid) //Товар есть, увеличим его количество
        {
            items[key]['amount'] = parseInt(items[key]['amount']) + amount;
            found = true;
        }
    }


    items_cnt = parseInt($('.cartitems').eq(0).text());

    if (!found) //Этой позиции ещё нет в корзине
    {
        items_cnt++;
        // $('#cartitems').text(items_cnt);
        $('.cartitems').text(items_cnt);
        console.log("items2: ");
        console.log(items);
        if (items)
            items.push({ 'pos_id': posid, 'pid': pid, 'title': full_title, 'price': price, 'amount': amount, 'edizm': edizm, 'innercode': innercode });
    }
    console.log("items3: ");
    console.log(items);

    $('.nav__cart-link').css({'cursor':'pointer'});

    if (items) {
        console.log("STRINGIFY!!: ");
        $('.cartitems').data('items', JSON.stringify(items));
    }

    postdata = { 'action': 'add_to_cart', 'posid': innercode, 'pid': pid, 'amount': amount };
    $.post("/cart/add/", postdata)
        .done(function (data) {
            if (items_cnt == 1) {
                $('.fixed__cart-link').removeClass('normalcursor');
            }
        }).fail(function (data) {
            console.log("FAIL data:" + data);
        })

    var check_v = $('input[name="view"]:checked').val();

    console.log("page_type=" + page_type);

    if ($(this).parent().find(".to_cart").length > 0) {
        $(this).hide();
        $(this).parent().find(".to_cart").removeClass('hide');
    }
    redrawCart();
});

function drawItemSumInCart(posid, cnt) {
    price = $('[data-price-id="' + posid + '"]').eq(0).data('price');

    price = parseFloat(price);

    if (price > 0) {
        sum = formatNumber(cnt * price, 2);
    }
    else {
        sum = 'По запросу';
    }

    curt = $('[data-itsum="sum_' + posid + '"]').eq(0).text();
    console.log("drawItemSumInCart, posid=" + posid + ",price=" + price + ", cnt=" + cnt + ", sum=" + sum + ", curt=" + curt);
    console.log("itsum len=" + $('#itsum' + posid).length);

    //console.log("sum="+sum+", posid="+posid+", cnt="+cnt);


    //$('[data-itsum="sum_' + posid + '"]').eq(0).text(sum);

    //$('div[data-itsum="sum_' + posid+'"]').text(sum);
    $('#cart_summ' + posid).html(sum);
}

$(document).on('click', '.nav__cart-link', function (e) {
    ym(93139935,'reachGoal','visit_basket');
    itemscnt = parseInt($(this).parent().find('.nav__cart-counter').text());

    if (!itemscnt)
        e.preventDefault();
});

function redrawCart() {
    //console.log("redrawCart");
    items = $('.cartitems').eq(0).data('items');
    //console.log("ITEMS:" );
    //console.log(items);


    if (typeof (items) == 'string') {
        items = JSON.parse(items);
    }
    else if (typeof (items) != 'object')  {
        items = new Array();
    }

    htmlcode = '';


    console.log(items);
    if (items.length > 0) {
        htmlcode += '<b>В корзине ' + items.length + ' ' + digitsWord(items.length, ['товар', 'товара', 'товаров']) + '</b><br/><br/>';
    }

    total_sum = 0;
    n = 0;
    was_0 = 0;
    for (var key in items) {
        n++;
        item = items[key];
        price = parseFloat(item['price']);
        //console.log("price="+price);

        if (price == 0) {
            total_sum = 0;
            was_0 = 1;
            cursum = 'По запросу';
        }
        else {
           // console.log("price="+price+", amount="+item['amount']);
            cursum = formatNumber(price * item['amount'], 2) + ' руб.';
            total_sum += price * item['amount'];
        }

        edizmstr = item['edizm'] == 1 ? 'м' : 'кг';
        htmlcode += n + '. ' + item['title'] + ' - ' + item['amount'] + ' ' + edizmstr + ' - ' + cursum + '<br>';
        //console.log('price='+price+', total_sum=' + total_sum);
    }

    //console.log("total_sum="+total_sum);
    total_sum = was_0 == 0 ? formatNumber(total_sum, 2) + ' руб.' : 'По запросу';

    htmlcode += '<br><b>Общая сумма с НДС: ' + total_sum;

    /*
    if (was_0==0)
        $('.nav__cart-sum').text(total_sum);
    else
        $('.nav__cart-sum').text('');
    */

    $('.fixed__cart-counter').text(items.length);
    if (items.length > 0) {
        $('.fixed__cart-counter').removeClass('hide');
        $('#cartcontent').html(htmlcode);

        if ($('#cartcontent').hasClass('short') == true) {
            $('#cartcontent').removeClass('short');
            $('#cartcontent').parent().removeClass('short');
        }

    }
    else {
        $('.fixed__cart-counter').addClass('hide');
        $('#cartcontent').html('Корзина пуста');

        if ($('#cartcontent').hasClass('short') == false) {
            $('#cartcontent').addClass('short');
            $('#cartcontent').parent().addClass('short');
        }
    }


}

$('body').on('click', function (e) {


    if (!e.target.closest('.custom__select-content')) {
        $('.custom__select-content').addClass('hide');
    }

    if (!e.target.closest('.sidebar__element-label') && !e.target.closest('#filter_btn')) {
        $('#filter_btn').hide();
    }
});

$('.header__nav-item.ctlg').click(function (e) {
    //console.log("header__nav-item CLICKED!");
    e.stopPropagation();
    e.preventDefault();

    console.log('header__nav-item.ctlg !!');
    $(this).find('.dropdown-menu').toggleClass('hide');
    vis = $(this).find('.dropdown-menu').is(":visible");
    if (vis) {
        $(this).removeClass('header__nav-menu-arrowdown');
        $(this).addClass('header__nav-menu-arrowup');
    }
    else {
        $(this).removeClass('header__nav-menu-arrowup');
        $(this).addClass('header__nav-menu-arrowdown');
    }

});



$('.header__nav-link').click(function (e) {

    if ($(this).hasClass('dsbl')) {
        e.stopPropagation();
        e.preventDefault();
    }

});


$('.mobile-menu__close').click(function (e) {

    $('.mobile-menu').addClass('hide');
});

$('.header__mobile-nav').click(function (e) {

    $('.mobile-menu').toggleClass('hide');
});


$('.popcl').on('click', function (e) {
    console.log("CLOSE!!");
    $(this).parent().parent().addClass('hide');
});


$('.popup-callback__form-button').on('click', function (e) {
    e.stopPropagation();
    e.preventDefault();

    form = $(this).parents('.popup-callback__form');

    phone = form.find('.input-phone').val().trim();
    form.find('.input-phone').removeClass('input-error-phone');

    name = '';
    if (form.find('.input-name').length > 0)
        name = form.find('.input-name').val().trim();

    err = 0;

    if (!testPhone(phone)) {
        console.log('phone=' + phone);
        form.find('.input-phone').addClass('input-error-phone');
        err = 1;
    }


    if (!name && form.find('.input-name').length > 0) {
        form.find('.input-name').addClass('input-error-phone');
        err = 1;
    }

    if (err == 1)
        return;

    $(this).text('Отправляется...');
    $(this).attr('disabled', true);
    text = $(this).text();

    if (err == 0) {
        form.find('.input-phone').removeClass('input-error');
        form.find('.input-name').removeClass('input-error');

        postdata = { 'phone': phone, 'aj': 1, 'name': name };


        $.post("/ajax/callback/", postdata)
            .done(function (data) {
                form.find('.popup-callback__form-button').text('Заказать');
                form.find('.popup-callback__text_result').attr('disabled', false);

                form.find('.popup-callback__text_result').show();
                console.log('vsbl=' + form.find('.popup-callback__text_result').is(':visible'));
                form.find('.popup-callback__text_result').text('Заявка отправлена! Мы скоро вам перезвоним');
                ym(93139935,'reachGoal','send_call_request');
            }).fail(function (data) {
            form.find('.popup-callback__form-button').text('Заказать');
            form.find('.popup-callback__form-button').attr('disabled', false);

            form.find('.popup-callback__text_result').show();
            form.find('.popup-callback__text_result').text('Произошёл сбой при отправке заявки на обратный звонок. Попробуйте ещё раз.');
        })

    }
});


$('.popup-callback').mousedown(function (e) {
    if (e.target.closest('.popup-callback__content')) {
        inBlockClick = true;
    }
});

$('.popup-callback').on('click', function (e) {
    if (!e.target.closest('.popup-callback__content')) {
        if (!inBlockClick) {
            $(this).addClass('hide');
        }
        else {
            inBlockClick = false;
        }
    };
});

$('.callback_call_link').on('click', function (e) {
    e.stopPropagation();
    e.preventDefault();

    console.log("INFO CALL!");
    vis = $('.popup-callback').is(":visible");
    if (vis) {
        $('.popup-callback').addClass('hide');
    }
    else {
        $('.popup-callback').removeClass('hide');
    }

});

$('.profile_fizur_item').on('click', function (e) {
    e.stopPropagation();
    e.preventDefault();

    cur_fz = $(this).parent().parent().find('.profile_fizur').data('fz');

    new_fz = $(this).data('fz');
    new_text = $(this).text();

    if (new_fz != cur_fz) {
        $(this).parent().parent().find('.profile_fizur').text(new_text);
        $(this).parent().parent().find('.profile_fizur').data('fz', new_fz);

        if (new_fz == 1) {
            $(this).parents('.profile__form').find('.profile__wrapper[data-fz="2"]').addClass('hide');
        }
        else if (new_fz == 2) {
            $(this).parents('.profile__form').find('.profile__wrapper[data-fz="2"]').removeClass('hide');
        }
    }
    $(this).parent().toggleClass('hide');

    $(this).parent().find('.custom__select-content').toggle();
});

$('.profile_fizur').on('click', function (e) {

    e.stopPropagation();
    e.preventDefault();

    len = $(this).parent().find('.custom__select-content').length;


    vsbl = $(this).parent().find('.custom__select-content').is(':visible');
    console.log("profile_fizur click!, len=" + len + ", vsbl=" + vsbl);

    if ($(this).parent().find('.custom__select-content').is(':visible'))
        $(this).parent().find('.custom__select-content').hide();
    else
        $(this).parent().find('.custom__select-content').show();
});

$('.addr').on('click', function (e) {

    e.stopPropagation();
    e.preventDefault();

    src = $(this).data('isrc');

    addrlist = $('.addr')
    addrlist.each(function (i) {
        if ($(this).hasClass('callback__text--orange')) {
            $(this).removeClass('callback__text--orange');
            $(this).addClass('callback__text--black');
        }
    });

    $(this).removeClass('callback__text--black');
    $(this).addClass('callback__text--orange');

    $('#map-wrap').html('<iframe style="pointer-events: none;" src="' + src + '" width="100%" height="586" frameborder="0"></iframe>');
});

$('#submitCart').on('click', function (e) {
    e.stopPropagation();
    e.preventDefault();

    let form = $('#orderform');
    //$('[name=ch1]', form).css({'background-image':'url(/assets/icon/checkbox.svg)'});

    form.find('input, textarea').removeClass('input-error');
    form.find('.order_error').text('');

    data_f = form.find('input[data-req="1"]');

    err = 0;
    //Найдём незаполненные обязательные поля
    data_f.each(function (i) {
        name = $(this).attr('name');

        if ($(this).val().trim() == '') {
            console.log("name=" + name);
            //$(this).css('border-color', 'red');
            $(this).addClass('input-error');
            err = 1;
        }
    });


    user_name = $('[name=user_name]', form).val().trim();
    user_phone = $('[name=user_phone]', form).val().trim();
    user_email = $('[name=user_email]', form).val().trim();
    user_inn = $('[name=user_inn]', form).val().trim();
    user_comment = $('[name=user_comment]', form).val().trim();

    if (!testEmail(user_email)) {
        $('[name=user_email]', form).addClass('input-error');
        $('#order_email_error').text('Некорректный email');
        err = 1;
    }

    if (!testPhone(user_phone)) {
        $('[name=user_phone]', form).addClass('input-error');
        $('#order_phone_error').text('Некорректный телефон');
        err = 1;
    }


    if ($('[name=ch1]', form).length > 0)
    {
        agree = $('[name=ch1]', form).is(':checked') ? 1 : 0;
        if (!agree) {
            $('[name=ch1]', form).css({'background-image': 'url(/assets/icon/checkbox_red.svg)'});
            $('#order_common_error').text('Вы не дали согласие на обработку персональных данных');
            err = 1;
        }
    }
    else
    {
        agree = 1;
    }

    if (err == 1)
        return;

    cabinet = $('[name=ch2]', form).is(':checked') ? 1 : 0;
    $(this).prop('disabled', true);
    $(this).text('Отправляется...');
    let idarr = [];
    let lenarr = [];

    if ($('.cart__mobile').is(':visible')) {
        cart_class = '.cart__mobile';
    }
    else {
        cart_class = '.cart__content';
    }

    $(cart_class).find('.pc_container').each(function () {
        locfield = $(this).find('.numfield');
        posid = locfield.data('posid');
        if (typeof (posid) == 'undefined')
            return;

        price = $(this).find('[data-price-id="' + posid + '"]').data('price');
        price = parseFloat(price);

        amount = parseInt(locfield.val());

        idarr.push(posid);
        lenarr.push(amount);
    });

    var data = new FormData();

    data.append('fio', user_name);
    data.append('email', user_email);
    data.append('phone', user_phone);
    data.append('inn', user_inn);
    data.append('comment', user_comment);
    data.append('agree', agree);
    data.append('cabinet', cabinet);
    data.append('idarr', idarr);
    data.append('amountarr', lenarr);
    data.append('attach1', add_agg_upl_file_1);
    data.append('attach2', add_agg_upl_file_2);

    //console.log(data);
    //return;
    // AJAX запрос
    $.ajax({
        url: "/cart/send_order/",
        type: 'POST',
        data: data,
        cache: false,
        dataType: 'json',
        processData: false,
        contentType: false,

        // функция успешного ответа сервера
        success: function (result, status, jqXHR) {

            console.log(result);
            $('#submitCart').prop('disabled', false);

            if (result.status == 1) {

                //массив для ПУШ коммерс
                var dataPush=[];
                $("#cart_table .pc_container").each(function(e){
                    item = {
                        "id" : $(this).find('.cart-list__item-price').attr('data-price-id'),
                        "name" : $(this).find('.cart-list__item-name-link').html(),
                        "price" : $(this).find('.cart-list__item-price').attr('data-price'),
                        "quantity" : $(this).find('input').val(),
                    }
                    dataPush.push(item);
                });

                ym(93139935,'reachGoal','place_an_order');
                sendOrderCommerce(result.oid, dataPush);
                document.location.href = "/cart/ok/?oid=" + result.oid + '&reg=' + result.reg;
            }
            else if (result.status == 2) {
                $('#order_common_error').text('Вы не дали согласие на обработку персональных данных');
                $('#submitCart').prop('disabled', false);
                $('#submitCart').text('Оформить');
            }
            else if (result.status == 3) {
                $('#order_common_error').text('Недопустимое расширение загружаемого файла');
                $('#submitCart').prop('disabled', false);
                $('#submitCart').text('Оформить');
            }
        },
        // функция ошибки ответа сервера
        error: function (jqXHR, status, errorThrown) {
            console.log("ERROR:" + status);
            $('#submitCart').prop('disabled', false);
            $('#submitCart').text('Оформить');
        }
    });

});

function sendOrderCommerce(id, data){
    dataLayer.push({
    "ecommerce": {
        "currencyCode": "RUB",
        "purchase": {
            "actionField": {
                "id" : id
            },
            "products": data,
        }
    }
});

}

$('#add_agg-upload-1, #add_agg-upload-2').on('change', function () {

    n = 1;
    console.log("CHANGE!");
    files = this.files;
    if (this.id == 'add_agg-upload-1') {
        n = 1;
        add_agg_upl_file_1 = files[0];

        //$('#add_agg-attach2-box').show();
        $('#add_agg-attach2-box').css('visibility', 'visible');
        $('#add_agg_flbl1').text('Поменять файл');
        $('#add_agg_delf1').css('display', 'inline-block');
    }
    else if (this.id == 'add_agg-upload-2') {
        n = 2;
        add_agg_upl_file_2 = files[0];
        $('#add_agg_flbl2').text('Поменять файл');
        $('#add_agg_delf2').css('display', 'inline-block');
    }

    upl_file = files[0];
    console.log("upl_file:");
    console.log(upl_file);

    fname = upl_file.name;
    fname_s = upl_file.name

    if (fname_s.length > 40)
        fname_s = fname_s.substr(0, 36) + '...';

    console.log("file name:" + fname_s);
    $('#add_agg_filename' + n).text(fname_s);
});

$('#add_agg_delf1, #add_agg_delf2').on('click', function () {

    if (this.id == 'add_agg_delf1') {
        add_agg_upl_file_1 = null;
        n = 1;
        $('#add_agg-upload-1').prop('value', null);
        $('#add_agg_flbl1').text('Прикрепить файл');
        if ($('#add_agg_filename2').text() == '')
            $('#add_agg-attach2-box').css('visibility', 'hidden');
    }
    else if (this.id == 'add_agg_delf2') {
        n = 2;
        add_agg_upl_file_2 = null;
        $('#add_agg-upload-2').prop('value', null);
        $('#add_agg_flbl2').text('+');
        $('#add_agg-attach2-box').css('visibility', 'hidden');
    }

    $('#add_agg_filename' + n).text('');
    $('#add_agg_delf' + n).hide();
});

//** НОВОЕ

$('.closepopup').on('click', function (e) {
    e.stopPropagation();
    e.preventDefault();

    $(this).parents('div[data-type="close"]').addClass('hide');

});

$('#register_block').click(function (e) {
    if (!e.target.closest('#regform')) {
        if (!inBlockClick) {
            inBlockClick = false;
            $(this).addClass('hide');
        }
        else {
            inBlockClick = false;
        }
    }
    else
    {
        inBlockClick = false;
    }
});

$('#register_block').mousedown(function (e) {
    if (e.target.closest('#regform')) {
        inBlockClick = true;
    };
});

$('#login_block').click(function (e) {

    //console.log("login_block CLICK! inBlockClick="+inBlockClick);
    if (!e.target.closest('#authform')) {
        if (!inBlockClick) {
            inBlockClick = false;
            $(this).addClass('hide');
        }
        else
            inBlockClick = false;
    }
    else
    {
        inBlockClick = false;
    }
});

$('#login_block').mousedown(function (e) {

    if (e.target.closest('#authform')) {
        //console.log("login_block mousedown!!");
        inBlockClick = true;
    }
});

$('#remind_block').mousedown(function (e) {

    if (e.target.closest('#remindForm')) {
        inBlockClick = true;
    }
});

$('#remind_block').click(function (e) {
    if (!e.target.closest('#remindForm')) {
        if (!inBlockClick)
        {
            inBlockClick = false;
            $(this).addClass('hide');
        }
        else {
            inBlockClick = false;
        }
    }
    else
    {
        inBlockClick = false;
    }
});

$('#afterreg_block').click(function (e) {
    if (!e.target.closest('#reg_after_content')) {
        $(this).addClass('hide');
    };
});



$('.cs_reg_btn').on('click', function (e) {

    e.stopPropagation();
    e.preventDefault();

    $('#login_block').addClass('hide');
    $('#remind_block').addClass('hide');
    $('#register_block').removeClass('hide');
});

$('.cs_auth_btn').on('click', function (e) {

    e.stopPropagation();
    e.preventDefault();

    $('#register_block').addClass('hide');
    $('#remind_block').addClass('hide');
    $('#login_block').removeClass('hide');
});

$('.cs_remind_btn').on('click', function (e) {

    e.stopPropagation();
    e.preventDefault();

    $('#login_block').addClass('hide');
    $('#remind_block').removeClass('hide');
});

$('body').on('click', '#showMore', function (e) {
    e.stopPropagation();

    curpg = $('body').data('curp');
    totalp = $('body').data('totalp');

    nextp = curpg;
    if (curpg < totalp)
        nextp++;


    getFilteredData('.filter', nextp, 1, 0, 0);
});

$('.filter_ob').click(function (e) {
    return;
    console.log('.filter_ob!!');
    e.stopPropagation();
    fc = $('#fil_ob');
    shown = fc.data('shown');

    //Вообще использование поля data-shown это костыль, но почему-то
    //fc.hasClass('show') срабатывает неверно
    if (shown) {
        fc.removeClass('show');
        fc.data('shown', 0);
    }
    else {
        fc.data('shown', 1);
        fc.addClass('show');
    }
});


$('.custom__select-title').click(function (e) {
    e.stopPropagation();

    listv = $(this).parent().find('.custom__select-content');

    if (listv) {
        if (listv.hasClass('hide')) {
            listv.removeClass('hide');
        }
        else {
            listv.addClass('hide');
        }
    }
});

//init watched swiper
if (document.querySelector('.watched__container')) {

    var swiper = new Swiper('.watched__container', {

        breakpoints: {
            480: {
                slidesPerView: 3,
            }
        },
        slidesPerView: 1,
        spaceBetween: 40,
        speed: 500,
        loop: true,
        navigation: {
            nextEl: '.watched-button-next',
            prevEl: '.watched-button-prev',
        },
    });

}


$('.product-card__tabs-item').click(function (e) {
    e.stopPropagation();

    idx = $(this).attr('tab-index');

    console.log("tab_idx=" + idx);

    $('.product-card__tabs-item').each(function (i) {
        $(this).removeClass('product-card__tabs-item--active');
    });
    $(this).addClass('product-card__tabs-item--active');

    $('.product-card__tabs-content').each(function (i) {
        cur_idx = $(this).attr('tab-index');

        if (idx == cur_idx) {
            $(this).removeClass('hide');
        }
        else {
            $(this).addClass('hide');
        }

    });
});


$('.subscribe').click(function (e) {
    e.stopPropagation();
    e.preventDefault();

    subscribed_email = $('#subscribed_email').val();

    if (testEmail(subscribed_email))
        $('.subscribe__content').removeClass('hide');
});


function openModal(elem) {
    $(elem).css('display', 'flex');
    $('body').addClass('modal-active');
}

function closePopup() {
    $('.modal').css('display', 'none');
    $('body').removeClass('modal-active');
}

function GetMethodDelivery() {
    $('.delivery-input-block input[type="text"], .delivery-input-block input[type="number"]').each(function(){
        if ($(this).val().trim() === '') {
            $(this).addClass('error'); 
        } else {
            $(this).removeClass('error'); 
        }
    });
    $('.modal-delivery-method').css('display', 'flex')
}

/*
$("#city_from").selectize();
$("#city_to").selectize();
 */

$(document).ready(function(){
    $('.modal-delivery-input__empty').click(function(){
        $('.delivery-input-block input').val(''); // Очистить значения всех input в .delivery-input-block
    });
});