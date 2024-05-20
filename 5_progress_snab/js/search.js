$(document).ready(function() {

    var searchField = $('.search__field');
    searchField.focus(function () {
        $(this).parents('.search').addClass('open');
        $('.search .autocomplete').css('display', 'block');
    });

    searchField.focusout(function () {
        $(this).parents('.search').removeClass('open');
        setTimeout(function () {
            $('.search .autocomplete').css('display', 'none');
        }, 200);
    });

    $('.search__select').on('click', function (e) {
        e.stopPropagation();
        console.log('.search__select CLICK');
        $('.search__select-list').toggleClass('open');
        if ($(window).width() <= 550) {
            $('.search').toggleClass('open');
        }
    });

    $('.search .autocomplete-item').on('click', function() {
        $('.search__field').val($(this).text());
    });

    $('.search__select-item').on('click', function() {
        $('.search__selected').html($(this).html());

        stype  = $(this).data('stype');
        $('.search__selected').attr('data-stype', stype);

        newSset = stype==2?'h':'s';
        searchSet = getCookie('searchSet');

        if (searchSet != newSset)
            setCookie('searchSet', newSset, 90);

    });


    $( "#mr_search" ).autocomplete({
        source: function(request, response){

            v = request.term.trim().toLowerCase();

            data = [];

            console.log("autocomplete v="+v);
            limit = $( "#mr_search" ).data('limit')?$( "#mr_search" ).data('limit'):5;


            $.get("/agg/search/cable/?sq="+v + '&limit='+limit+'&agg=1').done(function(data) 	{
                if (data.length==0)
                {
                    data = [{'real_name':'<i style="font-style:italic !important">Введите название марки, например ААБ2л 1x10</i>', 'power':'', 'p_id':0}];
                }
                search_res = data;
                response(data);
            });

        },

        //Клик по выбранному элементу
        select: function(event, ui){
            event.preventDefault();
            event.stopPropagation();

            if (ui.p_id > 0)
                $( "#mr_search" ).val(ui.real_name);
            redirectToSearchRes(ui.item);
        },

        minLength: 2,
        appendTo : '#search_cable',
        open: function () {
            //console.log($(this).data("uiAutocomplete").menu.element[0].className);
            $(this).data("uiAutocomplete").menu.element.addClass("autocomplete2");
            //$(this).data("uiAutocomplete").menu.element[0].className = "autocomplete2";
            //console.log($(this).data("uiAutocomplete").menu.element[0].className);
        }
    }).autocomplete("instance")._renderItem = function( ul, item ) {

        return $( "<li>" )
            .append( '<p class="autocomplete2-item"><em style="font-style:normal">' + item.real_name+'</em>' + item.power + "</p>" )
            .appendTo( ul );
    };

    $('body').on('click', function (e)
    {
        if ($(e.target).parents(".search__select-list").length>0)
        {
            return;
        }
        $('.search__select-list').removeClass('open');
    });


})

function redirectToSearchRes(item)
{
    /*
    cur_host  = window.location.hostname;
    arr = cur_host.split('.');
    mainhost = arr[arr.length-2] +'.' + arr[arr.length-1];
    */
    //return;

    if (item.p_id==0)
    {
        gotoNoResult();
    }
    else
    {
        if (item.lst==0)
        {
            expertstr = $('.page-wrap').data('expert')?'&e=1':'';
            type = $('.search__selected').attr('data-stype');

            url = '/agg/search/redirect/?id='+item.p_id+'&t='+type+'&m='+ item.type + expertstr;
            console.log(url);
            document.location.href = url;
        }
        else
        {
            url = '/agg/catalog/listing/'+ item.p_id +'?' + item.uri;
            console.log(url);
            document.location.href = url;
        }
    }
}

function gotoNoResult()
{
    cur_host  = window.location.hostname;
    arr = cur_host.split('.');

    q = $( "#mr_search" ).val();
    mainhost = arr[arr.length-2] +'.' + arr[arr.length-1];
    document.location.href = document.location.protocol + '//' + mainhost + '/agg/search/noresult/?sq='+q;
    return;
}

$('body').keyup('#mr_search', function(e) {

    if (e.keyCode == 13)
    {
        e.preventDefault();
        e.stopPropagation();

        console.log(search_res);

        if (search_res[0]['p_id']==0)
        {
            gotoNoResult();
        }
        else
        {
            $( "#mr_search" ).val(search_res[0].real_name);
            redirectToSearchRes(search_res[0]);
        }
        return;
    }
});

$( ".search__btn").click(function(e){

    e.preventDefault();
    e.stopPropagation();

    $( "#mr_search" ).val(search_res[0].real_name);
    redirectToSearchRes(search_res[0]);
});

