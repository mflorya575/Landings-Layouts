let Pek = {};
Pek.drum_size = {
    '-1': [0, 0, 0], // не выбрано
    '0': [0.5, 0.3, 0.5], //бухта
    '8': [0.8, 0.33, 0.8],
    '8а': [0.8, 0.4, 0.8],
    '8б': [0.8, 0.55, 0.8],
    '10': [1, 0.5, 1],
    '12': [1.22, 0.5, 1.22],
    '12а': [1.22, 0.71, 1.22],
    '14': [1.4, 0.71, 1.4],
    '16а': [1.6, 0.6, 1.6],
    '17': [1.7, 0.75, 1.7],
    '18': [1.8, 0.9, 1.8],
    '20': [2, 1, 2],
    '22': [2.2, 1, 2.2],
};


(function($){

$.fn.shuffle = function() {

    var allElems = this.get(),
        getRandom = function(max) {
            return Math.floor(Math.random() * max);
        },
        shuffled = $.map(allElems, function(){
            var random = getRandom(allElems.length),
                randEl = $(allElems[random]).clone(true)[0];
            allElems.splice(random, 1);
            return randEl;
        });

    this.each(function(i){
        $(this).replaceWith($(shuffled[i]));
    });

    return $(shuffled);

};

})(jQuery);

function recalcWeightAndVolume() {
    cable_len    = $('#calc_mr_len').val();

    if ($('#cable_ves').data('cableves')) {
        ves1m = parseFloat($('#cable_ves').data('cableves'));
    } else {
        ves1m = parseFloat($('#cable_ves').text());
    }

    console.log('cable_len=' + cable_len + ', ves1m = ' + ves1m );
    vesBaraban = parseInt($('.calculator__dropdown-title').attr('data-w'));
    if (isNaN(vesBaraban))
    {
        vesBaraban = 0;
    }

    if (!isNaN(cable_len) && ves1m > 0)
    {
        volBaraban = $('.calculator__dropdown-title').attr('data-ob');

        totalVes = (vesBaraban + ves1m*cable_len).toFixed(1);

        console.log("vesBaraban=" + vesBaraban + ", totalVes=" + totalVes);
        $('#total_ves').text(totalVes + ' кг');
    }
}

$('#calc-amount').keyup(function(e) {
    e.stopPropagation();

    b_weight = parseInt($('.modal-delivery-title__block').attr('data-w'));

    if ($('#cable_ves').data('cableves')) {
        ves1m = parseFloat($('#cable_ves').data('cableves'));
    } else {
        ves1m = parseFloat($('#cable_ves').text());
    }

    cable_len = parseInt($(this).val());
    cableVes = (ves1m*cable_len).toFixed(1);
    totalVes = b_weight + ves1m*cable_len;

    calc_mr_len = $('#calc_mr_len').val();

    $('#total_weight').text(totalVes + ' кг');
    $('#calc-weight').val(cableVes);

});

$('.inputcity').on('input', function (event) {
    cityName = $(this).val().toLowerCase();
    first = '',
    findedHTML = '';
    let inputField = $(this);

    if (cityName) {
        for (let i = 0; i < Pek.cities.length; i++) {
            city = Pek.cities[i].city;
            // console.log("city=" + city + ', cityName='+cityName + ', indexOf=' + );
            if (city.toLowerCase().indexOf(cityName) == 0) {
                first += '<div class="select_city" data-city_id="' + Pek.cities[i].id + '">' + city + '</div>';
            }

            if (city.toLowerCase().indexOf(cityName) > 0) {
                findedHTML += '<div class="select_city" data-city_id="' + Pek.cities[i].id + '">' + city + '</div>';
            }
        }
    }
    findedHTML = first + findedHTML;
    inputField.siblings('.city_results').html(findedHTML);
});

$(document).on('click', '.select_city', function (event) {

    idName = $(this).parent().data('type');
    console.log('idName='+idName);
    inputField = $('#' + idName);
    $(this).closest('.city_results').html('');
    city_name = $(this).text();
    city_id = $(this).data('city_id');

    console.log('city_name=' + city_name + ', city_id = ' + city_id);

    inputField.val(city_name);
    inputField.attr('data-city_id', city_id);
});

function openDeliveryCalc() {

    dostavka_cable_name = $('#dostavka_cable_name').text();
    dostavka_baraban = $('.calculator__dropdown-title').text().trim();

    b_weight = parseInt($('.calculator__dropdown-title').attr('data-w'));
    b_vol = $('.calculator__dropdown-title').attr('data-ob');
    $('#cargo_name').text(dostavka_cable_name);

    console.log('dostavka_baraban = ' + dostavka_baraban + ', b_vol = ' + b_vol);
    cable_len = $('#calc_mr_len').val().trim();
    $('.city_results').html('');

    if (b_vol == 0) {
        $('#calc_error').css('visibility', 'visible');
        $('#calc_error').text('Выберите барабан');
        return;
    } else if ((cable_len == 0) || (cable_len == '')) {
        $('#calc_error').css('visibility', 'visible');
        $('#calc_error').text('Укажите длину кабеля');
        return;
    } else {
        $('#calc_error').css('visibility', 'hidden');
    }
    let earliestValidDate = new Date().getTime() - 86400000;

    citiesList = localStorage.getItem('pekCitiesList');

    if (citiesList == null) {
        citiesList = '';
    }

    if (citiesList.length < 100 || localStorage.getItem('pekCitiesLoadTime') < earliestValidDate) {
        console.log('BEFORE siteapi');

        $.post('/ajax/cities_list/', {}, function (res) {
            console.log('res.cities');

            citiesArr = [];
            cities = JSON.parse(res.cities);

            $.map(cities, function (city, ci) {
                $.map(city, function (subcity, i) {
                    citiesArr.push({'city': subcity, 'id': i});
                });
            });
            citiesArr.sort((a, b) => a.city.localeCompare(b.city));

            localStorage.setItem('pekCitiesList', JSON.stringify(citiesArr));
            localStorage.setItem('pekCitiesLoadTime', new Date().getTime());
        });
        console.log('AFTER POST siteapi');
    }

    Pek.cities = JSON.parse(localStorage.getItem('pekCitiesList'));


/*
    $('#city_from').append($('<option></option>').val(0).html('Укажите город отправления'));
    $('#city_to').append($('<option></option>').val(0).html('Укажите город назначения'));

    for (let i = 0; i < citiesArr.length; i++) {

        $('#city_from').append($('<option></option>').val(citiesArr[i].id).html(citiesArr[i].city));
        $('#city_to').append($('<option></option>').val(citiesArr[i].id).html(citiesArr[i].city));
    }
*/
    //console.log(citiesArr);

    $('.modal-delivery').css('display', 'flex');
    $('body').addClass('modal-active');

    $('.modal-delivery-title__block').attr('data-w', b_weight);
    $('.modal-delivery-title__block').attr('data-ob', b_vol);

    if (b_weight > 0) {
        dostavka_baraban_ix = dostavka_baraban;
    } else {
        dostavka_baraban_ix = 0;
    }

    l = Pek.drum_size[dostavka_baraban_ix][0];
    w = Pek.drum_size[dostavka_baraban_ix][1];
    h = Pek.drum_size[dostavka_baraban_ix][2];

    if (b_weight > 0) {
        $('#cargo_baraban').text('барабан ' + dostavka_baraban);
    } else {
        $('#cargo_baraban').text(dostavka_baraban);
    }

    if ($('#cable_ves').data('cableves')) {
        ves1m = parseFloat($('#cable_ves').data('cableves'));
    } else {
        ves1m = parseFloat($('#cable_ves').text());
    }

    cableVes = (ves1m * cable_len).toFixed(1);
    totalVes = b_weight + ves1m * cable_len;

    b_vol_n = b_vol.replace(',', '.');
    $('#calc-volume').val(b_vol_n);
    $('#total_weight').text(totalVes + ' кг');
    $('#total_weight').attr('data-w', totalVes.toString().replace(',' , '.'));

    $('#total_volume').text(b_vol + ' м³');
    $('#total_volume').attr('data-v', b_vol.toString().replace(',' , '.'));

    $('#calc-weight').val(cableVes);
    $('#calc-amount').val(cable_len);
    $('#calc-dimensions').val(l + 'x' + w + 'x' + h);
    $('#calc-dimensions').attr('data-l', l.toString().replace(',' , '.'));
    $('#calc-dimensions').attr('data-w', w.toString().replace(',' , '.'));
    $('#calc-dimensions').attr('data-h', h.toString().replace(',' , '.'));
}


function GetDeliveryPrices() {
    form = $('#delivery_form');

    let btn = $('#calc_delivery_btn'),
        btnText = btn.text();


    errmsg = '';
    errorBlock = $('#errormsg');
    errorBlock.css('visibility', 'hidden');

    if ($('#point_from').val() == 0) {
        errmsg = 'Укажите город отправления<br>';
    }

    if ($('#point_to').val() == 0) {
        errmsg = 'Укажите город назначения';
    }

    if (($('#point_to').val() == 0) && ($('#point_from').val() == 0)) {
        errmsg = 'Укажите город отправления и город назначения';
    }

    if (errmsg) {
        errorBlock.css('visibility', 'visible');
        errorBlock.html(errmsg);
        return;
    }

    btn.text('Идут вычисления...');
    btn.prop( "disabled", true );

    $('#dellin_info').css('visibility', 'hidden');
    $('#pek_info').css('visibility', 'hidden');

    l  = $('#calc-dimensions').attr('data-l');
    w  = $('#calc-dimensions').attr('data-w');
    h  = $('#calc-dimensions').attr('data-h');

    weight = $('#total_weight').attr('data-w');
    volume = $('#total_volume').attr('data-v');
    let data = {'places' : [], 'cargoitems' : []};
    let place = [];

    place.push(l); //длина
    place.push(w); //ширина
    place.push(h); //высота
    place.push(volume); //объем
    place.push(weight); //вес

    data.places.push(place);

    let citem = [];

    citem.push($('#dostavka_cable_name').text());
    citem.push($('.calculator__dropdown-title').text().trim());
    citem.push($('#calc_mr_len').val());

    data.cargoitems.push(citem);
    cityToId = $('#point_to').attr('data-city_id');
    cityToName = $('#point_to').val();

    cityFromId = $('#point_from').attr('data-city_id');
    cityFromName = $('#point_from').val();

    data.is_take = $('[name=direction-from]:checked', form).val() || 0; // забрать груз по адресу
    data.is_deliver = $('[name=direction-to]:checked', form).val() || 0; // доставить груз по адресу

    data.deliver = {'gidro' : 0, 'manip' : 0, 'moscow' : 0, 'speed' : 0, 'tent' : 0, 'town' : cityToId, 'town_name' : cityToName};
    data.take = {'gidro' : 0, 'manip' : 0, 'moscow' : 0, 'speed' : 0, 'tent' : 0, 'town' : cityFromId, 'town_name' : cityFromName};
    data.tst = 1;
    data.plombir = $('[name=srv2]', form).is(':checked') * 1; // пломбирование
    data.strah = 0;
    data.ashan = 0;
    data.night = 0;
    data.pal = $('[name=srv1]', form).is(':checked') * 1; //упаковка
    data.pallets = 0;
    data.transport_docs = $('[name=srv3]', form).is(':checked') * 1; // документы

    calced = 0;

    $.post('/ajax/get_pek_delivery_prices/', {data: data, 'totalvolume' : volume, 'totalweight':weight}, function (res) {
        let totalPekPrice = 0;
        //str = '';
        if (res) {
            console.log(res);

            totalPekPrice = res.price;
            //console.log("PEK PRICE:");
            //console.log(res);

            $('#pek_info').css('visibility', 'visible');
        }

        if (res.terms != '0')
        {
            ds = ' дн.';
            terms = res.terms;
        }
        else
        {
            ds = '';
            terms = 'требует уточнения';
        }

        $('#pek_delivery_price').html(formatNumber(totalPekPrice) + ' руб.');
        $('#pek_delivery_term').html(terms + ds);

        calced++;

        if (calced == 2) {
            btn.text(btnText);
            btn.prop("disabled", false);
        }
    });

    $.post('/ajax/get_dellin_delivery_prices/', {data: data, 'totalvolume' : volume, 'totalweight':weight}, function (res) {
        let totalDLPrice = 0;
        //str = '';
        url = '';
        if (res) {
            totalPekPrice = res.price;
            //console.log("DL PRICE:");
            //console.log(res);

            $('#dellin_info').css('visibility', 'visible');
            url = res.url;
        }

        if (res.terms != '0')
        {
            ds = ' дн.';
            terms = res.terms;
        }
        else
        {
            ds = '';
            terms = 'требует уточнения';
        }

        $('#dellin_delivery_price').html(formatNumber(totalPekPrice) + ' руб.');
        $('#dellin_delivery_term').html(terms + ds);
        $('#dellin_order').attr('href', url);

        calced++;

        if (calced == 2) {
            btn.text(btnText);
            btn.prop("disabled", false);
        }
    });

    //$('.modal-delivery-method').css('display', 'flex')
}


$('.order_delivery').click(function(e) {
    e.stopPropagation();
    url = $(this).attr('href');
    window.open(url, '_blank').focus();
});

function recalcTotalWeightAndVolume() {
    totalVes = 0;
    totalVol = 0;
    cnt = $('#calculator_cable_list').find('.calculator__table-text-weight').length;
    console.log("w len = " + cnt);
    $('#calculator_cable_list').find('.calculator__table-text-weight').each(function() {
        curVes = parseFloat($(this).find('.itemves').text());
        curVol = parseFloat($(this).find('.itemvol').text());

        console.log("curVes = " + curVes + ", curVol=" + curVol);

        totalVes += curVes;
        totalVol += curVol;
    });

    totalVes = Number(totalVes.toFixed(1));
    totalVol = Number(totalVol.toFixed(2));

    $('#calcTotalWeight').text(totalVes);
    $('#calcTotalVol').text(totalVol);
}

$('.register__switch-input').click(function (e) {

    inp = $(this);
    checked = inp.is(':checked');
    data_checked = inp.data('checked');
    console.log('checked=' + checked + ", data-checked=" + data_checked);
    if (data_checked) {
        inp.attr('checked', false);
        inp.data('checked', 0);
        $(this).parent().addClass('register__switch-label--active');
        $(this).parent().find('.register__switch-handle').addClass('register__switch-handle--active');
    }
    else {
        inp.attr('checked', true);
        inp.data('checked', 1);
        $(this).parent().removeClass('register__switch-label--active');
        $(this).parent().find('.register__switch-handle').removeClass('register__switch-handle--active');
    }
});

$(window).scroll(function (e) {
    var height = $(window).scrollTop();

    //console.log("height="+height);
    if (height > 1400) {
        $('.to-top').show();
    } else
        {
        $('.to-top').hide();
    }
});


$(window).scroll(function (e) {
    var height = $(window).scrollTop();

    if (height > 150) {
        $('.nav-fixed').addClass('nav-fixed--active')
        $('.dropdown-menu').addClass('dropdown-menu-fixed')
    }
    else {
        $('.nav-fixed').removeClass('nav-fixed--active')
        $('.dropdown-menu').removeClass('dropdown-menu-fixed')
    }
});


if (document.querySelector('.prime-container')) {

    //$('.prime-container').find('.swiper-slide').shuffle();

    var swiper = new Swiper('.prime-container', {
        speed: 500,
        loop: true,
        pagination: {
            el: '.swiper-pagination',
            type: 'bullets',
            clickable: true,
        },
        navigation: {
            nextEl: '.prime-button-next',
            prevEl: '.prime-button-prev',
        },
        autoplay: {
            delay: 3000000,
        },
    });
}

// let mobileToggle = document.querySelectorAll('.product-card__tabs-more-title')
// let mobileList = document.querySelectorAll('.product-card__tabs-content')

// if (mobileToggle) {
//     mobileToggle.forEach(item => {
//         item.addEventListener('click', () => {
//             mobileList.forEach(table => {
//                 if (item.getAttribute('tab-index') == table.getAttribute('tab-index')) {
//                     table.classList.toggle('hide')
//                     item.classList.toggle('arrow--active')
//                 }
//             })
//         })
//     })
// }

$('.product-card__tabs-more-title').on('click', function() {
    const $cardToggle  = $(this)
    
    $('.product-card__tabs-more-title').each(function() {
        if(!$(this).is($cardToggle)) {
            $(this).removeClass('arrow--active')
            $(this).parents('.product-card__tabs-more').find('.product-card__tabs-content').addClass('hide')
        }
    })

    $(this).toggleClass('arrow--active')
    $(this).parents('.product-card__tabs-more').find('.product-card__tabs-content').toggleClass('hide')
})

$('.modal-available__item').on('click', function() {
    cityId   = $(this).data('cityid');
    cityName = $(this).data('cityname');
    main = $(this).data('main');
    if (main == 0) {
        return;
    }

    currCityId   = $('body').data('currcityid');
    currCityName = $('body').data('currcityname');

    productType = $('body').data('producttype');

    console.log("cityId=" + cityId + ', cityName = ' + cityName + ', productType=' + productType + ', currCityName=' + currCityName);

    setCookie('currSkladCityId', cityId, 180, 0);
    setCookie('currSkladCityName', cityName, 180, 0);

    if (productType == 'cable') {
        $('.product-card_table[data-cityid="' + currCityId + '"]').hide();
        $('.product-card_table[data-cityid="' + cityId + '"]').show();
        $('.product-card_available-block[data-cityid="' + currCityId + '"]').hide();
        $('.product-card_available-block[data-cityid="' + cityId + '"]').css('display', 'flex');
    } else if (productType == 'elektro') {
        $('.product-card_table[data-cityname="' + currCityName + '"]').hide();
        $('.product-card_table[data-cityname="' + cityName + '"]').show();
        $('.product-card_available-block[data-cityname="' + currCityName + '"]').hide();
        $('.product-card_available-block[data-cityname="' + cityName + '"]').css('display', 'flex');
    }

    $('body').data('currcityid', cityId);
    $('body').data('currcityname', cityName);

    closePopup();
})



//function show modal
function showModal(trigger, content, close, closestParent) {
    trigger.addEventListener('click', () => {
        content.classList.remove('hide')
    })


    close.addEventListener('click', () => {
        content.classList.add('hide')
    })


    content.addEventListener('click', (e) => {
        if (!e.target.closest(closestParent)) {
            content.classList.add('hide')
        }
    })
}

let modalEditTrigger = document.querySelectorAll('.five-list__toggle')
let modalEditContent = document.querySelector('.modal-edit')
let modalEditClose = document.querySelector('.modal-edit-button')

if (modalEditTrigger && modalEditClose && modalEditContent) {
    modalEditTrigger.forEach(trigger => {
        trigger.addEventListener('click', () => {
            modalEditContent.classList.remove('hide')
        })
    })

    modalEditClose.addEventListener('click', () => {
        modalEditContent.classList.add('hide')
    })

    modalEditContent.addEventListener('click', (e) => {

        if (!e.target.closest('.modal-edit__content')) {
            modalEditContent.classList.add('hide')
        }
    })
}

$('.modal-edit__close').on('click', function () {
    $('.modal-edit').addClass('hide')
})


$('.popups__label').on('click', function (e) {
    tinp = $(this).parent().find('input');
    tinp.focus();
})


$(document).ready(function () {

    // Если высота экрана маленькая, уменьшаем выпадающее меню, чтобы нижняя граница была видна
    if (window.innerHeight < 810) {
        $('.dropdown-menu-scroll').css({'height' : '370px'});
    }


    checkedmode = $('body').find('.sorting__view-checkbox:checked:first').val();
    changed = $('body').data('changed');

    $('.filter_check2').click(function (e) {
        HideFilters2();
    });

    $('[name=ch1]').click(function (e) {
        bdim = $(this).css('background-image');
        checked = $(this).is(':checked');

        if (bdim.indexOf('url("/assets/icon/checkbox_red.svg")'))
        {
            $(this).css('background-image', '');
        }
    });

    $('.calculator__search-input').each(function() {

        $(this).autocomplete({
            source: function (request, response) {

                v = request.term.trim().toLowerCase();

                data = [];

                console.log("autocomplete v=" + v);

                limit = $(this).data('limit') ? $(this).data('limit') : 5;
                v = encodeURIComponent(v);
                $.ajax({
                    url: "/search/calculator/?sq=" + v + '&limit=' + limit, dataType: 'json', type: 'get',
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

                    ves1km = ui.item.ves;
                    ves1km = parseFloat(ves1km.replace(',', '.', ves1km));

                    ves1m  = (ves1km/1000).toFixed(1);

                    $('#calc_mr_name').attr('data-innercode', ui.item.innercode);

                    $('#cable_ves').attr('data-w1km', ves1km);
                    $('#cable_ves').text(ves1m);
                    recalcWeightAndVolume();
                } else {
                    $('#cable_ves').text(0);
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

    $('body').on('click', '.calculator__table-del', function (e)  {
        $(this).parent().remove();
        recalcTotalWeightAndVolume();
    });

    $('#calculator_btn').click(function (e) {
        e.stopPropagation();
        e.preventDefault();


        cable_len = $('#calc_mr_len').val();

        mr_name = $('#calc_mr_name').val();
        ves1m = parseFloat($('#cable_ves').text());
        ves1km = parseFloat($('#cable_ves').attr('data-w1km'));

        vesBaraban = parseFloat($('.calculator__dropdown-title').attr('data-w').replace(',', '.'));
        volBaraban = parseFloat($('.calculator__dropdown-title').attr('data-ob').replace(',', '.'));

        if ((!mr_name) || (!ves1m)  || (!volBaraban)) {
            console.log("RETURN !! mr_name="+mr_name+", ves1m=" + ves1m + ", volBaraban=" + volBaraban);
            return;
        }

        totalCableVes = (ves1m*cable_len).toFixed(1);
        totalVes = (vesBaraban + ves1m*cable_len).toFixed(1);
        barabanName = $('.calculator__dropdown-title').text();
        if (volBaraban) {
            barabanName = 'Барабан ' + barabanName;
        }
        innercode = $('#calc_mr_name').attr('data-innercode');

        cableurl = '/product/cable/'+innercode;
        htmlcode = '<div class="calculator__table__item">' + "\n" +
            '<div class="calculator__table-text-wrap calculator__table-text-name">' +  "\n" +
                '<div class="calculator__table-text-title"><a href="'+ cableurl + '">' + mr_name + '</a></div>' +  "\n" +
                '<div class="calculator__table-text-sub">Вес 1 км: <span> ' + ves1km + '</span><span> кг</span></div>' +  "\n" +
            '</div>' +  "\n" +
            '<div class="calculator__table-text-wrap calculator__table-text-number">' +  "\n" +
                '<div class="calculator__table-text">' + cable_len + ' м</div>' +  "\n" +
                '<div class="calculator__table-text-sub">' + totalCableVes + ' кг</div>' +  "\n" +
            '</div>' +  "\n" +
            '<div class="calculator__table-text-wrap calculator__table-text-drop">' +  "\n" +
                '<div class="calculator__table-text">' + barabanName + '</div>' +  "\n" +
                '<div class="calculator__table-text-sub">' + vesBaraban + ' кг</div>' +  "\n" +
            '</div>' +  "\n" +
            '<div class="calculator__table-text-wrap calculator__table-text-weight">' +  "\n" +
                '<div class="calculator__table-text"><span class="itemves">' + totalVes + '</span> кг</div>' +  "\n" +
                '<div class="calculator__table-text-sub">Объем: <span class="itemvol">' + volBaraban + '</span><span>м<sup>3</sup></span></div>' +  "\n" +
            '</div>' +  "\n" +
            '<div class="calculator__table-del">' +  "\n" +
                '<svg>' +  "\n" +
                    '<use xlink:href="/assets/sprite.svg#table-del"></use>' +  "\n" +
                '</svg>' +  "\n" +
            '</div>' +  "\n" +
        '</div>';

        $('#calculator_cable_list').append(htmlcode);

        recalcTotalWeightAndVolume();
    });

    $('#calc_mr_len').keyup(function(e) {
        e.stopPropagation();

        recalcWeightAndVolume();

        //calcWeight();
    });
});

if (document.querySelector('.about-certificate__container')) {

    var swiper = new Swiper('.about-certificate__container', {

        breakpoints: {
            480: {
                slidesPerView: 4,
            }
        },
        slidesPerView: 1,
        speed: 500,
        loop: true,
        navigation: {
            nextEl: '.about-certificate-button-next',
            prevEl: '.about-certificate-button-prev',
        },
    });
}


if (document.querySelector('.partners-container')) {

    var swiper = new Swiper('.partners-container', {

        breakpoints: {
            480: {
                slidesPerView: 1,
            }
        },
        slidesPerView: 1,
        speed: 500,
        loop: true,
        navigation: {
            nextEl: '.partners-button-next',
            prevEl: '.partners-button-prev',
        },
        pagination: {
            el: '.partners-pagination',
            type: 'bullets',
            clickable: true,
        },
    });
}


//animation buttons for slider
$('.slider-content').on('mouseover', function () {
    $('.prime-button').addClass('prime-button--active')
})

$('.slider-content').on('mouseout', function () {
    $('.prime-button').removeClass('prime-button--active')
})

//catalog-menu

$('.nav__link-menu').click(function (e) {
    e.stopPropagation();
    e.preventDefault();

    $('.dropdown-menu').toggleClass('hide');
    $('.nav__link-menu').toggleClass('nav__link-menu--blue');
    $('.nav__catalog-icon-close').toggleClass('hide');
    $('.nav__catalog-icon-show').toggleClass('hide');
    $('.nav__link-name').toggleClass('nav__link-name--blue');
    $('body').toggleClass('overflow')
});

$('.dropdown-menu__backdrop').on('click', function (e) {
    $('.dropdown-menu').addClass('hide');
    $('.nav__link-menu').removeClass('nav__link-menu--blue');
    $('.nav__catalog-icon-close').addClass('hide');
    $('.nav__catalog-icon-show').removeClass('hide');
    $('.nav__link-name').removeClass('nav__link-name--blue');
    $('body').removeClass('overflow')
});

$('.dropdown-menu__close').on('click', function (e) {
    $('.dropdown-menu').addClass('hide');
    $('.nav__link-menu').removeClass('nav__link-menu--blue');
    $('.nav__catalog-icon-close').addClass('hide');
    $('.nav__catalog-icon-show').removeClass('hide');
    $('.nav__link-name').removeClass('nav__link-name--blue');
    $('body').removeClass('overflow')
});

//pay-sticky

$(function () {
    $("#sticker").sticky({
        topSpacing: 160,
        bottomSpacing: 700,

    });
    $("#sticker").css('left', '12.1%');
    const mediaQuery = window.matchMedia('(max-width: 1800px)')
    if (mediaQuery.matches) {
        $("#sticker").css('left', '7.3%');
    }

    const mediaQueryWidth = window.matchMedia('(max-width: 1600px)')
    if (mediaQueryWidth.matches) {
        $("#sticker").css('left', '2.6%');
    }
});

//animation buttons for slider
$('.slider-content').on('mouseover', function () {
    $('.prime-button').addClass('prime-button--active')
})

$('.slider-content').on('mouseout', function () {
    $('.prime-button').removeClass('prime-button--active')
})


$('body').on('click', '.apply_filters', function (e) {
    e.stopPropagation();
    e.preventDefault();

    pg = 1;
    getFilteredProducts(pg, 0);
});


$('body').on('click', '.switch_visible_mode', function (e) {
    e.stopPropagation();
    e.preventDefault();

    vmode = $(this).data('vmode');
    if (vmode == 1) {
        $(this).text('Всё скрыть');
        $(this).data('vmode', 2);
    }
    else {
        $(this).text('Всё показать');
        $(this).data('vmode', 1);
    }

    //new_vmode = vmode==1?2:1;
    $('.settings').find('.settings_check').prop('checked', vmode == 1 ? true : false);
});

$('body').on('click', '.switch_mode', function (e) {
    e.stopPropagation();
    e.preventDefault();

    ftype = $(this).data('ftype');
    ctgid = $('body').data('id');
    $(this).text('Отправляется...');

    f_arr = [];
    was_arr = [];

    if (ftype == 1) {
        flist = $('.filters_list');

        button = $(this);

        flist.each(function (i) {
            settings = $(this).find('.settings');
            fid = settings.data('fid');
            if (fid == '') return;

            //Почему то первые два элемента в массиве одинаковые
            if (was_arr.includes(fid))
                return;

            was_arr.push(fid);
            shown = settings.find('.settings_check').is(':checked') ? 1 : 0;

            fset = 0;
            flen = settings.find('.ft_type_list').length;
            if (settings.find('.ft_type_list').length == 1) {
                fset = 1;
                ft_type = settings.find('.ft_type_list').val();
            }
            else {

                fset = 0;
                ft_type = 1;
            }

            spos = settings.find('.sett_pos').val();

            f_arr.push({ 'fid': fid, 'sh': shown, 'tp': ft_type, 'p': spos });
            console.log("fset=" + fset + ", flen=" + flen + ", i=" + i + ", fid=" + fid + ", shown=" + shown + ", ft_type=" + ft_type + ", pos=" + spos);
        });
    }

    console.log(f_arr);

    ctgid = $('body').data('id');
    data = { 'flist': f_arr, 'ftype': ftype, 'ctgid': ctgid };

    $.ajax({
        url: '/admin/filters/switchmode', dataType: 'json', type: 'post',
        contentType: 'application/json', data: JSON.stringify(data),
        processData: false,
        success: function (data, textStatus, jQxhr) {
            $('.sidebar__element-wrapper').html(data.html);
            console.log(data);
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(errorThrown);
        }
    });


});

$('body').on('click', '.edit_settings', function (e) {
    e.stopPropagation();
    e.preventDefault();

    console.log("edit_settings!!");
    button.val('Сохраняется...');

    $.ajax({
        url: '/admin/filters/save', dataType: 'json', type: 'post',
        contentType: 'application/json', data: JSON.stringify(data),
        processData: false,
        success: function (data, textStatus, jQxhr) {
            button.val('Сохранить');
            console.log(data);
        },
        error: function (jqXhr, textStatus, errorThrown) {
            button.val('Сохранить');
            console.log(errorThrown);
        }
    });
});

$(function () {
    $(".slider-range").each(function (i) {

        minv = parseFloat($(this).parent().find('.diap_from').val());
        maxv = parseFloat($(this).parent().find('.diap_to').val());

        $(this).slider({
            range: true,
            min: minv,
            max: maxv,
            values: [minv, maxv],
            slide: function (event, ui) {
                //$( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
                $(this).parent().find('.diap_from').val(ui.values[0]);
                $(this).parent().find('.diap_to').val(ui.values[1]);
            }
        });
    });

    $('.diap_from').change(function () {
        var val1 = $(this).val();
        $(this).parent().find('slider-range').slider("values", 0, val1);
    });

    $('.diap_to').change(function () {
        var val2 = $(this).val();
        $(this).parent().find('slider-range').slider("values", 1, val2);
    });

});


//Прячем ненужные фильтры
//
function HideFilters2() {
    var ftype = '';

    result = [];


    flist = $('.valuelist');
    f_arr = [];
    was_arr = [];

    //console.log("HideFilters2");
    flist.each(function (i) {
        fid = $(this).data('fid');
        ftype = parseInt($(this).data('ftype'));
        //console.log("****fid==="+fid);

        var ft_params = [];
        //Если мы находимся  в блоке, то по умолчанию разрешаем выводить все возможные значения
        //пока они не отсекутся фильтрами в других блоках
        $('.sidebar__element-wrapper2[data-fid="' + fid + '"]').find('.filter_check2').each(function (index) {

            fvid = $(this).data('fvid');
            if (fvid == '0')
                curv = $(this).val();
            else
                curv = fvid;


            if (fid in ft_params)
                ft_params[fid].push(curv);
            else
                ft_params[fid] = [curv];
        });

        //А теперь бежим только по отмеченным
        //Внутри каждого блока складываем массивы каждого из параметров
        $('.sidebar__element-wrapper2[data-fid="' + fid + '"]').find('.filter_check2:checked').each(function (index) {
            fvid = $(this).data('fvid');
            if (fvid == '0')
                curv = $(this).val();
            else
                curv = fvid;

            params = $(this).data('plist');

            //console.log("** fid="+fid);
            for (var key in params) {
                arr = params[key];
                //console.log("fid=" + fid + ", key="+key);

                if (key in ft_params) {
                    //console.log("KEY IN ft_params");

                    for (var key2 in arr) {
                        //Добавляем новый элемент
                        if (ft_params[key].indexOf(arr[key2]) == -1) {
                            ft_params[key].push(arr[key2]);
                            //console.log("push " + arr[key2]);
                        }
                    }
                }
                else {
                    ft_params[key] = arr;
                    //console.log("arr=");
                    //console.log(arr);
                }
            }

        });

        //console.log("***ftype="+fid);
        //console.log(ft_params);
        result[fid] = ft_params;
    });

    //console.log("RESULT:");
    //console.log(result);

    //Теперь оставим только те значения, которые есть во всех блоках
    result2 = [];
    kn = 154;
    for (var key in result) //Бежим по блокам
    {
        arr = result[key]; //набор параметров в блоке

        if (key == kn) {
            //console.log("key:" + key);
            //console.log(arr);
        }

        for (var key2 in arr)  //бежим по параметрам
        {
            param_arr = arr[key2];

            if (key == kn) {
                /*
                                console.log("key2=" + key2);
                                console.log("param_arr:");
                                console.log(param_arr);
                */
            }

            if (param_arr.length == 0) //Ни одно значение не соответствует
            {
                result2[key2] = [];
                continue;
            }

            //console.log("param_arr, len="+param_arr.length);
            //console.log(param_arr);

            param_arr.forEach(function (item, i)  //Бежим по значениям параметра
            {
                //проверим, чтобы параметр arr[key2] был везде в блоках

                //Для этого опять пробежим по блокам
                found = true;

                //if (key==kn)  console.log("!!!! key2="+key2+", item="+item);

                for (var key3 in result) //Бежим по блокам
                {
                    if (key2 in result[key3]) {
                        arr2 = result[key3][key2]; //массив значений параметра key2 в блоке key3
                        itemstr = item.toString();

                        //!!! arr2.indexOf тут почему-то не работает корректно
                        found_item = false;
                        for (i = 0; i < arr2.length; i++) {
                            cit = arr2[i];

                            if (cit == item)
                                found_item = true
                            //console.log("cit=" + cit +", eq=" + eq +", indexof=" + arr2.indexOf(item));
                        }

                        if (found_item == false) //Достаточно, чтобы хотя бы где-то нет такого параметра, чтобы его исключить
                        {
                            tp = typeof itemstr;
                            //console.log("key3="+key3+", key2=" + key2 + ", item="+itemstr+",tp="+tp+", FALSE!!!!");
                            //console.log(arr2);
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

                if (key == kn) {
                    /*
                                        console.log("result2");
                                        console.log(result2);
                                        console.log("!!!! END");
                    */
                }

            });
        }
    }
    //console.log(result);
    //console.log("result2");
    //console.log(result2);
    //console.log("BEFORE RETURN");

    for (key in result2) //Бежим по блокам
    {
        arr = result2[key];
        //console.log('key='+key);
        //console.log(arr);
        $('.sidebar__element-wrapper2[data-fid="' + key + '"]').find('.sidebar__element-label').hide();

        //if (key=='iz')	console.log("key="+key+", len="+len);

        for (key2 in arr) //Бежим по значениям
        {
            val = arr[key2];

            ftype = parseInt($('.sidebar__element-wrapper2[data-fid="' + key + '"]').data('ftype'));
            tp = parseInt($('.sidebar__element-wrapper2[data-fid="' + key + '"]').data('tp'));

            if (ftype == 0)
                $('.sidebar__element-wrapper2[data-fid="' + key + '"]').find('.filter_check2[value=' + '"' + val + '"]').parent().show();
            else
                $('.sidebar__element-wrapper2[data-fid="' + key + '"]').find('.filter_check2[data-fvid=' + '"' + val + '"]').parent().show();

        }
    }

    //Производители пока что на особом положении
    //$('.sidebar__element-wrapper2[data-fid="4078"]').find('.sidebar__element-label').show();
}

//animation buttons for slider
$('.slider-content').on('mouseover', function () {
    $('.prime-button').addClass('prime-button--active')
})

$('.slider-content').on('mouseout', function () {
    $('.prime-button').removeClass('prime-button--active')
})


function getFilteredProducts(pg, appendmode) {
    pg = typeof pg !== 'undefined' ? pg : 1;

    flist = $('.valuelist');
    f_arr = [];
    was_arr = [];

    flist.each(function (i) {
        fid = $(this).data('fid');
        //console.log('fid=' + fid);
        if (fid == '') return;

        //Почему то первые два элемента в массиве одинаковые
        if (was_arr.includes(fid))
            return;

        was_arr.push(fid);

        tp = parseInt($(this).data('tp'));
        ftype = parseInt($(this).data('ftype'));

        fv_arr = [];
        if (tp == 1) //Чекбоксы
        {
            vals = $(this).find('.filter_check2:checked');

            vals.each(function (i) {
                fv_arr.push($(this).val());
            });
        }
        else {
            diap_from = $(this).find('.diap_from').val();
            diap_to = $(this).find('.diap_to').val();
            fv_arr.push(diap_from);
            fv_arr.push(diap_to);
        }
        f_arr.push({ 'fid': fid, 'tp': tp, 'ft': ftype, 'fv': fv_arr });
    });

    prms = '';
    for (let f of f_arr) {
        vs = f['fv'].join(";");
        if (vs)
            prms += f['fid'] + '-' + f['tp'] + '-' + f['ft'] + '-' + vs + '|';
    }
    prms = prms.substring(0, prms.length - 1);

    console.log(prms);
    console.log(f_arr);

    console.log("flist.length=" + flist.length);
    //if ((flist.length>0) && (prms == ''))
    //    return;

    cur_url = document.location.pathname + '?aj=1&fltr=' + prms;
    console.log(cur_url);

    appendmode = 0;
    $.ajax({
        url: cur_url, dataType: 'json', type: 'get', processData: false,
        success: function (data, textStatus, jQxhr) {
            if (appendmode == 0) {
                curShownCnt = data.cnt;
                $('#items_list').html(data.items);

            }
            else {
                curShownCnt = parseInt($('body').data('curShownCnt'));
                curShownCnt += data.cnt;

                $('#items_list').append(data.items);
            }

            $('body').data('curp', pg);
            $('body').data('curShownCnt', curShownCnt);
            $('#paginator').html(data.paginator);

            console.log(data);
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(errorThrown);
        }
    });
}

$('body').on('click', '.apply_filters', function (e) {
    e.stopPropagation();
    e.preventDefault();

    console.log("APPLY!");
    pg = 1;
    getFilteredProducts(pg, 0);
});


$('body').on('click', '.switch_visible_mode', function (e) {
    e.stopPropagation();
    e.preventDefault();

    vmode = $(this).data('vmode');
    if (vmode == 1) {
        $(this).text('Всё скрыть');
        $(this).data('vmode', 2);
    }
    else {
        $(this).text('Всё показать');
        $(this).data('vmode', 1);
    }

    //new_vmode = vmode==1?2:1;
    $('.settings').find('.settings_check').prop('checked', vmode == 1 ? true : false);
});

$('body').on('click', '.switch_mode', function (e) {
    e.stopPropagation();
    e.preventDefault();

    ftype = $(this).data('ftype');
    ctgid = $('body').data('id');
    $(this).text('Отправляется...');

    f_arr = [];
    was_arr = [];

    if (ftype == 1) {
        flist = $('.filters_list');

        button = $(this);

        flist.each(function (i) {
            settings = $(this).find('.settings');
            fid = settings.data('fid');
            if (fid == '') return;

            //Почему то первые два элемента в массиве одинаковые
            if (was_arr.includes(fid))
                return;

            was_arr.push(fid);
            shown = settings.find('.settings_check').is(':checked') ? 1 : 0;

            fset = 0;
            flen = settings.find('.ft_type_list').length;
            if (settings.find('.ft_type_list').length == 1) {
                fset = 1;
                ft_type = settings.find('.ft_type_list').val();
            }
            else {

                fset = 0;
                ft_type = 1;
            }

            spos = settings.find('.sett_pos').val();

            f_arr.push({ 'fid': fid, 'sh': shown, 'tp': ft_type, 'p': spos });
            console.log("fset=" + fset + ", flen=" + flen + ", i=" + i + ", fid=" + fid + ", shown=" + shown + ", ft_type=" + ft_type + ", pos=" + spos);
        });
    }

    console.log(f_arr);

    ctgid = $('body').data('id');
    data = { 'flist': f_arr, 'ftype': ftype, 'ctgid': ctgid };

    $.ajax({
        url: '/admin/filters/switchmode', dataType: 'json', type: 'post',
        contentType: 'application/json', data: JSON.stringify(data),
        processData: false,
        success: function (data, textStatus, jQxhr) {
            $('.sidebar__element-wrapper').html(data.html);
            console.log(data);
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(errorThrown);
        }
    });


});

$('body').on('click', '.edit_settings', function (e) {
    e.stopPropagation();
    e.preventDefault();

    console.log("edit_settings!!");
    button.val('Сохраняется...');

    $.ajax({
        url: '/admin/filters/save', dataType: 'json', type: 'post',
        contentType: 'application/json', data: JSON.stringify(data),
        processData: false,
        success: function (data, textStatus, jQxhr) {
            button.val('Сохранить');
            console.log(data);
        },
        error: function (jqXhr, textStatus, errorThrown) {
            button.val('Сохранить');
            console.log(errorThrown);
        }
    });
});

$(function () {
    $(".slider-range").each(function (i) {

        minv = parseFloat($(this).parent().find('.diap_from').val());
        maxv = parseFloat($(this).parent().find('.diap_to').val());

        $(this).slider({
            range: true,
            min: minv,
            max: maxv,
            values: [minv, maxv],
            slide: function (event, ui) {
                //$( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
                $(this).parent().find('.diap_from').val(ui.values[0]);
                $(this).parent().find('.diap_to').val(ui.values[1]);
            }
        });
    });

    $('.diap_from').change(function () {
        var val1 = $(this).val();
        $(this).parent().find('slider-range').slider("values", 0, val1);
    });

    $('.diap_to').change(function () {
        var val2 = $(this).val();
        $(this).parent().find('slider-range').slider("values", 1, val2);
    });

});


//Прячем ненужные фильтры
//
function HideFilters2() {
    var ftype = '';

    result = [];


    flist = $('.valuelist');
    f_arr = [];
    was_arr = [];

    //console.log("HideFilters2");
    flist.each(function (i) {
        fid = $(this).data('fid');
        ftype = parseInt($(this).data('ftype'));
        //console.log("****fid==="+fid);

        var ft_params = [];
        //Если мы находимся  в блоке, то по умолчанию разрешаем выводить все возможные значения
        //пока они не отсекутся фильтрами в других блоках
        $('.sidebar__element-wrapper2[data-fid="' + fid + '"]').find('.filter_check2').each(function (index) {

            fvid = $(this).data('fvid');
            if (fvid == '0')
                curv = $(this).val();
            else
                curv = fvid;


            if (fid in ft_params)
                ft_params[fid].push(curv);
            else
                ft_params[fid] = [curv];
        });

        //А теперь бежим только по отмеченным
        //Внутри каждого блока складываем массивы каждого из параметров
        $('.sidebar__element-wrapper2[data-fid="' + fid + '"]').find('.filter_check2:checked').each(function (index) {
            fvid = $(this).data('fvid');
            if (fvid == '0')
                curv = $(this).val();
            else
                curv = fvid;

            params = $(this).data('plist');

            //console.log("** fid="+fid);
            for (var key in params) {
                arr = params[key];
                //console.log("fid=" + fid + ", key="+key);

                if (key in ft_params) {
                    //console.log("KEY IN ft_params");

                    for (var key2 in arr) {
                        //Добавляем новый элемент
                        if (ft_params[key].indexOf(arr[key2]) == -1) {
                            ft_params[key].push(arr[key2]);
                            //console.log("push " + arr[key2]);
                        }
                    }
                }
                else {
                    ft_params[key] = arr;
                    //console.log("arr=");
                    //console.log(arr);
                }
            }

        });

        //console.log("***ftype="+fid);
        //console.log(ft_params);
        result[fid] = ft_params;
    });

    //console.log("RESULT:");
    //console.log(result);

    //Теперь оставим только те значения, которые есть во всех блоках
    result2 = [];
    kn = 154;
    for (var key in result) //Бежим по блокам
    {
        arr = result[key]; //набор параметров в блоке

        if (key == kn) {
            //console.log("key:" + key);
            //console.log(arr);
        }

        for (var key2 in arr)  //бежим по параметрам
        {
            param_arr = arr[key2];

            if (key == kn) {
                /*
                                console.log("key2=" + key2);
                                console.log("param_arr:");
                                console.log(param_arr);
                */
            }

            if (param_arr.length == 0) //Ни одно значение не соответствует
            {
                result2[key2] = [];
                continue;
            }

            //console.log("param_arr, len="+param_arr.length);
            //console.log(param_arr);

            param_arr.forEach(function (item, i)  //Бежим по значениям параметра
            {
                //проверим, чтобы параметр arr[key2] был везде в блоках

                //Для этого опять пробежим по блокам
                found = true;

                //if (key==kn)  console.log("!!!! key2="+key2+", item="+item);

                for (var key3 in result) //Бежим по блокам
                {
                    if (key2 in result[key3]) {
                        arr2 = result[key3][key2]; //массив значений параметра key2 в блоке key3
                        itemstr = item.toString();

                        //!!! arr2.indexOf тут почему-то не работает корректно
                        found_item = false;
                        for (i = 0; i < arr2.length; i++) {
                            cit = arr2[i];

                            if (cit == item)
                                found_item = true
                            //console.log("cit=" + cit +", eq=" + eq +", indexof=" + arr2.indexOf(item));
                        }

                        if (found_item == false) //Достаточно, чтобы хотя бы где-то нет такого параметра, чтобы его исключить
                        {
                            tp = typeof itemstr;
                            //console.log("key3="+key3+", key2=" + key2 + ", item="+itemstr+",tp="+tp+", FALSE!!!!");
                            //console.log(arr2);
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

                if (key == kn) {
                    /*
                                        console.log("result2");
                                        console.log(result2);
                                        console.log("!!!! END");
                    */
                }

            });
        }
    }
    //console.log(result);
    //console.log("result2");
    //console.log(result2);
    //console.log("BEFORE RETURN");

    for (key in result2) //Бежим по блокам
    {
        arr = result2[key];
        //console.log('key='+key);
        //console.log(arr);
        $('.sidebar__element-wrapper2[data-fid="' + key + '"]').find('.sidebar__element-label').hide();

        //if (key=='iz')	console.log("key="+key+", len="+len);

        for (key2 in arr) //Бежим по значениям
        {
            val = arr[key2];

            ftype = parseInt($('.sidebar__element-wrapper2[data-fid="' + key + '"]').data('ftype'));
            tp = parseInt($('.sidebar__element-wrapper2[data-fid="' + key + '"]').data('tp'));

            if (ftype == 0)
                $('.sidebar__element-wrapper2[data-fid="' + key + '"]').find('.filter_check2[value=' + '"' + val + '"]').parent().show();
            else
                $('.sidebar__element-wrapper2[data-fid="' + key + '"]').find('.filter_check2[data-fvid=' + '"' + val + '"]').parent().show();

        }
    }

    //Производители пока что на особом положении
    //$('.sidebar__element-wrapper2[data-fid="4078"]').find('.sidebar__element-label').show();
}


//check-password

$('body').on('click', '.password-control', function () {
    if ($('.input-password').attr('type') == 'password') {
        $(this).addClass('view');
        $('.input-password').attr('type', 'text');
    } else {
        $(this).removeClass('view');
        $('.input-password').attr('type', 'password');
    }
    return false;
});

//toggle filters
$('.sidebar__element-title').on('click', function () {
    $(this)
        .parents('.sidebar__element')
        .find('.sidebar__element-wrapper')
        .toggle()

    $(this)
        .toggleClass('arrow--active')
})

function changeFilterText(text) {
    $('.sidebar__element-title--open').text(text)
}

changeFilterText()

// toggle filters mobile
$('.sidebar__element-title--mobile').on('click', function () {
    const active = $('.sidebar__element-filter').hasClass('filter--active')
    const text = active ? '' : 'Применить'

    $('.sidebar__element-filter').toggleClass('filter--active')
    $('.sidebar__element-title--open').text(changeFilterText(text))
})

// delete cart

$('.cart-list__delete').on('click', function (e) {
    $('#delete-agree').removeClass('hide');
});


$('#delete-agree .register__form-close').on('click', function (e) {
    $(this).parents('#delete-agree').addClass('hide')
});


$('.accept-cart-btn').on('click', function (e) {

    e.preventDefault();
    e.stopPropagation();

    $('#delete-agree').addClass('hide')

    data = { 'pos_id': -1 };

    console.log(data);

    $.post('/cart/delete_pos/', data).done(function (data2) {
        console.log("status=" + data2.status);
    });

    $('.fixed__cart-link').addClass('normalcursor');
    $('.nav__cart-link').css('cursor', 'default');

    $('.order').hide();
    $('#cartblock').hide();
    $('.cart-list__delete').hide();
    $('.cart-list__title').text('Ваша корзина пуста');
})

$('.delete-agree__backdrop, .cancel-btn').on('click', function () {
    $('#delete-agree').addClass('hide')
})

let oldStateFilter = []
let newStateFilter = []

let $container = $('.sidebar__element-filter')
let $filterCheckboxes = $('.sidebar__element-filter input[type=checkbox]')

$($filterCheckboxes).each(function() {
    oldStateFilter = [...oldStateFilter, $(this).prop('checked')]
})

$($container).on('input', function() {
    newStateFilter = []

    $($filterCheckboxes).each(function() {
        newStateFilter = [...newStateFilter, $(this).prop('checked')]
    })


    //oldStateFilter.toString() === newStateFilter.toString() ?  changeFilterText('Свернуть') : changeFilterText('Применить')
})


$('.sidebar__element-title--mobile').on('click', function () {
    const isOpen = $('.sidebar__element-title').hasClass('arrow--active') 
    
    if(isOpen) {
        $(".filter-fixed").sticky({
            topSpacing: 0,
            
        });
    } else {
        $(".filter-fixed").unstick();
    }
})


// Открытие модалки вашего города
$('.header__city-choose').on('click', () => {
    $('.header__city-popup').removeClass('hide')
})

// Закрытие модалки вашего города
$('.header__city-popup__yes').on('click', () => {
    $('.header__city-popup').addClass('hide');
    cityId = $('.header__city-title').attr('data-cityId');
    cityId_2 = $('.header__city-title').attr('data-cityId');

    setCookie('cityId', cityId, 180, 0);
})

// Открытие модалки выбора города
$('.header__city-popup__no').on('click', () => {
    $('.choose-popup').removeClass('hide')
    $('.header__city-popup').addClass('hide')

    $('body').css({ overflow: 'hidden' })
})

// Закрытие модалки выбора города
$('.choose-popup--backdrop, .choose-popup .choose-close').on('click', () => {
    $('.choose-popup').addClass('hide')
    $('body').css({ overflow: 'auto' })
})

// Дропдаун
function handleToggleDropdown() {
    const $dropdown = $(this).parents('.calculator__dropdown')
    const $selectList = $dropdown.find('.calculator__dropdown-content')
    const $backdrop = $dropdown.find('.calculator__dropdown-backdrop')
    const $arrow = $dropdown.find('.calculator__dropdown-arrow')

    $arrow.toggleClass('calculator__dropdown-arrow--active')
    $selectList.toggleClass('hide')
    $backdrop.toggleClass('hide')
} 

function handleCloseDropdown() {
    const $dropdown = $(this).parents('.calculator__dropdown')
    const $selectList = $dropdown.find('.calculator__dropdown-content')
    const $backdrop = $dropdown.find('.calculator__dropdown-backdrop')
    const $arrow = $dropdown.find('.calculator__dropdown-arrow')

    $arrow.toggleClass('calculator__dropdown-arrow--active')
    $selectList.addClass('hide')
    $backdrop.addClass('hide')
}

$('.calculator__dropdown-wrapper').on('click', handleToggleDropdown)
$('.calculator__dropdown-backdrop').on('click', handleCloseDropdown)

$('.calculator__dropdown-text').on('click', function() {
    const $dropdown = $(this).parents('.calculator__dropdown')

    const $title = $dropdown.find('.calculator__dropdown-title');
    const itemText = $(this).text();

    v = $(this).data('ob');
    $('#cable_vol').text(v);

    w = $(this).data('w');

    $title.text(itemText);
    vn = v.replace(',', '.');

    $('.calculator__dropdown-title').attr('data-w', w);
    $('.calculator__dropdown-title').attr('data-ob', vn);

    recalcWeightAndVolume();
    const handleCloseDropdownBind = handleCloseDropdown.bind($(this));
    handleCloseDropdownBind();
})

// Открытие модалки калькулятора
$('.product-card__calculator-title').on('click', () => {
    $('.product-card__calculator-popup--all').removeClass('hide')
})

// Закрытие модалки калькулятора
$('.product-card__calculator-close, .product-card__calculator--backdrop').on('click', () => {
    $('.product-card__calculator-popup--all').addClass('hide')
})

$('.choose-popup__cities-wrap .choose-popup__item').on('click', function() {

    contacts = $(this).data("contacts");
    city = $(this).text();
    $('.header__city-choose').text(city);
    $('.header__city-popup__question').text('Ваш город ' + city + '?');
    if (contacts) {
        console.log(contacts);
        $('.header__city-choose').text(city);
        $('.header__callback-phone a').text(contacts.phone);
        $('.header__callback-phone a').attr('href', 'tel: ' + contacts.phone);
        $('.header__email a').text(contacts.email);
        $('.header__email a').attr('href', 'mailto: ' + contacts.email);
    } else {
    }

    cityId = $(this).data("cityid");

    setCookie('cityId', cityId, 180, 0);

    $('.choose-popup').addClass('hide');
    $('body').css({ overflow: 'auto' });
})