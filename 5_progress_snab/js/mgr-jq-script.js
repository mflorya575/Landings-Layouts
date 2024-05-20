$('body').on('click', function (e) {

  if (!e.target.closest('.custom__select-content')) {
    $('.custom__select-content').addClass('hide');
  }

  if (e.target.closest('.change-password__backdrop') || e.target.closest('.change-password__close')) {
    $('.change-password').addClass('hide');
  }

  if (e.target.closest('.mass-actions__backdrop')) {
    $('.mass-actions').addClass('hide');
  }

  if (!e.target.closest('#mgr_addform')) {
    $('#mgr_addform').addClass('hide');
  }
});

$('.structure__actions-title').click(function (e) {
  e.stopPropagation();
  e.preventDefault();

  $('.mass-actions').toggleClass('hide');
});

$('body').on('click', '.mgrtype_item', function (e) {
  e.stopPropagation();
  e.preventDefault();

  current_status = $(this).parent().parent().find('.mgrtype').data('status');
  mgr_type = $(this).data('type');

  console.log("mgr_type=" + mgr_type + ", current_status=" + current_status);
  if (mgr_type != current_status) {
    newstatus = $(this).text();
    $(this).parent().parent().find('.mgrtype').text(newstatus);
    $(this).parent().parent().find('.mgrtype').data('status', newstatus);

    $(this).parent().find('.mgrtype_item').removeClass('hide');
    $(this).addClass('hide');


    mgruid = $(this).parents('.settings__content-item').data('uid');
    console.log("mgruid=" + mgruid);

    data = { 'mgr_uid': mgruid, 'mgr_type': mgr_type }
    $.post("/manager/set_mgr_type/", data, function (result) {
      //console.log(result);

      res = parseInt(result.status);
      if (res == 2) {
        alert(result.msg);
      }
    }).fail(function (jqXHR, textStatus, errorThrown) {
      console.log(textStatus);
      console.log(errorThrown);
      alert('Что-то пошло не так');
    });
  }

  $(this).parent().addClass('hide');
});

$('body').on('click', '.mgrtype', function (e) {
  e.stopPropagation();
  e.preventDefault();

  $(this).parent().find('.custom__select-content').toggleClass('hide');
  console.log('MGR TYPE!');
});

$('body').on('click', '.mgractive', function (e) {
  e.stopPropagation();
  e.preventDefault();

  $(this).parent().find('.custom__select-content').toggleClass('hide');
  console.log('MGR ACTIVE!');
});

$('body').on('click', '.mgractive_item', function (e) {
  e.stopPropagation();
  e.preventDefault();

  ca = $(this).parent().parent().find('.mgractive').data('active');
  current_active = parseInt($(this).parent().parent().find('.mgractive').data('active'));
  cls = $(this).parent().parent().find('.mgractive').attr('class')

  mgr_active = parseInt($(this).data('active'));

  //console.log("mgr_active="+mgr_active+", current_active="+current_active+", ca="+ca+", class="+cls);
  if (mgr_active != current_active) {
    newactive = $(this).text();
    $(this).parent().parent().find('.mgractive').text(newactive);
    $(this).parent().parent().find('.mgractive').data('active', mgr_active);

    if (mgr_active == 0) {
      console.log('REMOVING custom__select-text--green');
      $(this).parent().parent().find('.mgractive').removeClass('custom__select-text--green');
      $(this).parent().parent().find('.mgractive').addClass('custom__select-text--grey');
    }
    else if (mgr_active == 1) {
      $(this).parent().parent().find('.mgractive').removeClass('custom__select-text--grey');
      $(this).parent().parent().find('.mgractive').addClass('custom__select-text--green');
    }

    $(this).parent().find('.mgractive_item').removeClass('hide');
    $(this).addClass('hide');


    mgruid = $(this).parents('.settings__content-item').data('uid');
    console.log("mgruid=" + mgruid);

    data = { 'mgr_uid': mgruid, 'mgr_active': mgr_active }
    $.post("/manager/set_mgr_active/", data, function (result) {
      //console.log(result);

      res = parseInt(result.status);
      if (res == 2) {
        alert(result.msg);
      }
    }).fail(function (jqXHR, textStatus, errorThrown) {
      console.log(textStatus);
      console.log(errorThrown);
      alert('Что-то пошло не так');
    });


  }

  $(this).parent().addClass('hide');
});




$('body').on('click', '.mgr_delete', function (e) {
  e.stopPropagation();
  e.preventDefault();

  mgr_uid = $(this).parent().data('uid');
  $(this).parent().remove();

  mgruid = $(this).parents('.settings__content-item').data('uid');
  console.log("mgruid=" + mgruid);

  data = { 'mgr_uid': mgruid }
  $.post("/manager/delete_mgr/", data, function (result) {
    //console.log(result);

    res = parseInt(result.status);
    if (res == 2) {
      alert(result.msg);
    }
  }).fail(function (jqXHR, textStatus, errorThrown) {
    console.log(textStatus);
    console.log(errorThrown);
    alert('Что-то пошло не так');
  });

});

$('.settings-password').click(function (e) {
  e.stopPropagation();
  e.preventDefault();

  $('#mgr_changepsw_form').toggleClass('hide');
});

$('#mgr_changepassw_btn').click(function (e) {
  e.stopPropagation();
  e.preventDefault();

  mgr_curpsw = $('#mgr_curpsw').val().trim();
  mgr_newpsw1 = $('#mgr_newpsw1').val().trim();
  mgr_newpsw2 = $('#mgr_newpsw2').val().trim();


  err = 0;
  $('#mgr_passwchng_msg').css('color', 'black');

  //Найдём незаполненные обязательные поля
  data_f = $('#mgr_changepsw_form').find('input[data-req="1"]');
  data_f.each(function (i) {
    if (($(this).val().trim() == '') && $(this).parent().is(':visible')) {
      $(this).addClass('input-error');
      err = 1;
    }
  });

  if (err == 1)
    return;

  if (mgr_newpsw1 != mgr_newpsw2) {
    $('#mgr_passwchng_msg').css('color', 'red');
    $('#mgr_passwchng_msg').text('Пароли не совпадают');
  }

  $('#mgr_passwchng_msg').css('color', 'black');
  postdata = { 'old_passw': mgr_curpsw, 'new_passw': mgr_newpsw1 };
  $.post("/manager/change_password/", postdata)
    .done(function (result) {
      if (result.status == 1) {
        today = formatDate();
        $('.settings-password').text('Изменён ' + today);
        $('#mgr_changepsw_form').addClass('hide');
      }
      else {
        $('#mgr_passwchng_msg').css('color', 'red');
        $('#mgr_passwchng_msg').text(result.msg);
      }
    }).fail(function (result) {
      $('#addmgr_msg').css('color', 'red');
      $('#addmgr_msg').text('Сбой при добавлении менеджера');

    })
});

$('#add_manager_btn').click(function (e) {
  e.stopPropagation();
  e.preventDefault();

  $('.mgr_addform').toggleClass('hide');

});

$('#cancel_new_mgr').click(function (e) {
  e.stopPropagation();
  e.preventDefault();

  $('.mgr_addform').addClass('hide');
});

$('#submit_new_mgr').click(function (e) {
  e.stopPropagation();
  e.preventDefault();

  err = 0;
  //Найдём незаполненные обязательные поля
  data_f = $('.mgr_addform').find('input[data-req="1"]');
  data_f.each(function (i) {
    if (($(this).val().trim() == '') && $(this).parent().is(':visible')) {
      $(this).addClass('input-error');
      err = 1;
    }
  });

  if (err == 1)
    return;

  newpassw1 = $('#add_mgr_newpassw1').val().trim();
  newpassw2 = $('#add_mgr_newpassw2').val().trim();

  if (newpassw1 != newpassw2) {
    $('#addmgr_msg').css('color', 'red');
    $('#addmgr_msg').text('Пароли не совпадают друг с другом');
    return;
  }
  var repl = {};
  repl['{fio}'] = $('#add_mgr_fio').val().trim();
  repl['{email}'] = $('#add_mgr_email').val().trim();
  repl['{status}'] = 'Менеджер';
  repl['{status_id}'] = 2;

  postdata = { 'fio': repl['{fio}'], 'email': repl['{email}'], 'passw': newpassw1 };
  $.post("/manager/add_manager/", postdata)
    .done(function (result) {
      if (result.status == 1) {
        repl['{uid}'] = result.uid;

        var user_tpl = '<div class="settings__content-item" data-uid="{uid}">';
        user_tpl += '<div class="settings__content-text settings__content-text--name">{fio}</div>';
        user_tpl += '<div class="settings__content-text settings__content-text--mail">{email}</div>';

        user_tpl += '<div class="sorting__price-dropdown settings-dropdown  settings__content-text--person custom__select">';
        user_tpl += '<div class="mgrtype custom__select-title settings__content-text" data-status="{status_id}">{status}</div>';
        user_tpl += '<div class="custom__select-content hide">';
        user_tpl += '<div class="mgrtype_item custom__select-text {mgr_hide}" data-type="2">Менеджер</div>';
        user_tpl += '<div class="mgrtype_item custom__select-text {adm_hide}" data-type="3">Администратор</div>';
        user_tpl += '</div>';
        user_tpl += '</div>';

        user_tpl += '<div class="sorting__price-dropdown settings-dropdown custom__select">';
        user_tpl += '<div class="mgractive custom__select-title  custom__select-title--green" data-active="1">Активен</div>';
        user_tpl += '<div class="custom__select-content hide">';
        user_tpl += '<div class="mgractive_item custom__select-text custom__select-text--grey" data-active="0">Неактивен</div>';
        user_tpl += '<div class="mgractive_item custom__select-text custom__select-text--green hide"  data-active="1">Активен</div>';
        user_tpl += '</div>';
        user_tpl += '</div>';
        user_tpl += '<div class="mgr_delete settings__content-delete"><img src="/assets/icon/delete.svg" alt=""></div>';
        user_tpl += '</div>';


        if (repl['{status_id}'] == 2) {
          repl['{mgr_hide}'] = 'hide';
          repl['{adm_hide}'] = '';
        }
        else if (repl['{status_id}'] == 3) {
          repl['{mgr_hide}'] = '';
          repl['{adm_hide}'] = 'hide';
        }

        for (var key in repl) {
          repv = repl[key];
          user_tpl = user_tpl.replace(key, repv);
        }

        $('.settings__content-table').append(user_tpl);
        $('.mgr_addform').addClass('hide');
      }
    }).fail(function (result) {
      $('#addmgr_msg').css('color', 'red');
      $('#addmgr_msg').text('Сбой при добавлении менеджера');

    })

});

$('#takeorder').click(function (e) {
  e.preventDefault();
  e.stopPropagation();

  oid = $('body').data('oid');
  fio = $('body').data('mgr-fio');
  status = $(this).data('status');
  if (status == 1)
    return;

  data = { 'oid': oid };

  $.post('/manager/take_order/', data).done(function (result) {
    if (result.status == 1) {
      $('#takeorder').data('status', 1);
      $('#takeorder').attr('class', 'order_taken');

      $('#takeorder').html('Заказ взят в работу');
      $('#mgr_order_status').text('Обрабатывает ' + fio);

      $('.buttons-details').removeClass('hide');
    }
    else {
      $('#takeorder').data('status', 1);
      $('#setmgr_msg').text(result.msg);
    }
  });
});

$('#send_invoice_btn').on('change', function () {
  files = this.files;
  upl_file = files[0];


  $('#invoice_sent').text('');

  console.log(upl_file);
  oid = $('body').data('oid');

  parts = upl_file.name.split('.');
  ext = parts[parts.length - 1].toLowerCase();

  allowed_ext = ['docx', 'doc', 'xls', 'xlsx', 'pdf', 'odt'];

  if (allowed_ext.indexOf(ext) == -1) {
    $('#invoice_sent').css('color', 'red');
    $('#invoice_sent').text('Неверный формат файла');
    return false;
  }
  else {
    var data = new FormData();

    data.append('oid', oid);
    data.append('attach1', upl_file);

    // AJAX запрос
    $.ajax({
      url: "/manager/send_invoice/",
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
          $('#invoice_sent').css('color', 'F1971E');
          $('#invoice_sent').text('Счёт отправлен');

          $('.details__info.details__check').removeClass('hide');
          $('.details__info.details__check').find('.details__info-download').text(result.fn);
          $('.details__info.details__check').find('.details__info-text--time').text(result.cdt2);

          return false;
        }
        else if (result.status == 0) {
          $('#invoice_sent').css('color', 'red');
          $('#invoice_sent').text('Ошибка отправки счёта. Максимальный размер файла не должен превышать 10 Мб.');
        }
      },
      // функция ошибки ответа сервера
      error: function (jqXHR, status, errorThrown) {
        console.log("ERROR:" + status);

      }
    });

    return false;
  }
});




// price list dropdown
$('.price__download-btn').on('click', () => {
  $('.price__sub').toggleClass('hide');
  $('.price__content').toggleClass('hide');
})

$('.price__reload-btn').on('click', () => {
  $('.price__checkbox').addClass('hide');
  $('.price__reload-btn').addClass('hide');
  $('.price__download-error').css('display', 'block');
  $('.requisites__upload-text').css('color', '#CE0606');
})

$('.price__pricelist-content').on('input', function (e) {
  let buttonRecognized = this.querySelector('.checkbox-number__recognized')
  let buttonUnrecognized = this.querySelector('.checkbox-number__unrecognized')

  let contentRecognized = this.querySelector('.price__pricelist-recognized')
  let contentUnrecognized = this.querySelector('.price__pricelist-unrecognized')

  if (buttonRecognized.checked) {
    contentRecognized.classList.remove('hide')

  }
  else if (buttonRecognized.checked == false) {
    contentRecognized.classList.add('hide')
  }

  if (buttonUnrecognized.checked) {
    contentUnrecognized.classList.remove('hide')

  }
  else if (buttonUnrecognized.checked == false) {
    contentUnrecognized.classList.add('hide')
  }
})

$('.price__pricelist-content').on('click', function (e) {
  let { type } = e.target.dataset

  if (type == 'toggle') {
    let buttonRecognized = this.querySelector('.checkbox-number__recognized')
    let buttonUnrecognized = this.querySelector('.checkbox-number__unrecognized')
    let contentRecognized = this.querySelector('.price__pricelist-recognized')
    let contentUnrecognized = this.querySelector('.price__pricelist-unrecognized')

    if (this.classList.contains('price__pricelist__item--active')) {
      this.classList.remove('price__pricelist__item--active')
      contentRecognized.classList.add('hide')
      contentUnrecognized.classList.add('hide')
      buttonRecognized.checked = false
      buttonUnrecognized.checked = false
    }
    else if (!this.classList.contains('price__pricelist__item--active')) {
      this.classList.add('price__pricelist__item--active')
      contentRecognized.classList.remove('hide')
      buttonRecognized.checked = true
    }
  }
})

//price list table dropdown
let tableToggle = document.querySelectorAll('.table__toggle')
let tableContent = document.querySelectorAll('.price__pricelist__subs')

if (tableToggle && tableContent) {
  tableToggle.forEach((item, index) => {
    item.setAttribute('data-index', index)
  })

  tableContent.forEach((item, index) => {
    item.setAttribute('data-index', index)
  })
}

$('.table__toggle').on('click', function (e) {
  let indexItem = +this.dataset.index

  $(this).toggleClass('table__toggle--active')

  $('.price__pricelist__subs').each(function (index) {
    if (indexItem == index) {
      $(this).toggleClass('hide')
    }
  })
})


// make template
$('.make-template').on('click', () => {
  $('.template__notification').toggleClass('hide')
  $('.template__content').toggleClass('hide')
})

//dropdown template 

let templateEdit = document.querySelectorAll('.template__edit')
let templateSubmit = document.querySelectorAll('.template__calculator-submit')

if (templateSubmit && templateEdit) {
  templateEdit.forEach((item, index) => {
    item.setAttribute('data-index', index)
  })

  templateSubmit.forEach((item, index) => {
    item.setAttribute('data-index', index)
  })
}

// change template
$('.template__edit').on('click', function () {
  let index = +this.getAttribute('data-index')

  document.querySelectorAll('.template__calculator')[index].classList.toggle('hide')
  console.log(document.querySelectorAll('.template__calculator')[index])
})

$('.template__calculator-submit').on('click', function () {
  let index = +this.getAttribute('data-index')

  document.querySelectorAll('.template__calculator')[index].classList.add('hide')
})

// template case
let modalkeyTrigger = document.querySelector('.template__calculator-toggle')
let modalkeyContent = document.querySelector('.modal-key')
let modalkeyClose = document.querySelector('.modal-key__close')

$('.template__calculator-toggle').on('click', function () {
  $('.modal-key').removeClass('hide')
})


$('.modal-key__close').on('click', function () {
  $('.modal-key').addClass('hide')
})


$('.modal-key__backdrop').on('click', function () {
  $('.modal-key').addClass('hide')
})


$('.modal-key__label').on('click', function () {
  $('.modal-key__wrapper-hide').css('visibility', 'visible')
})


// radio validate

//   $('.modal-key__form').validate({
//     errorClass: 'radio-validate--error',
//     messages: {
//       key: '',
//       postfix: '',
//     }
//   })

//   $('.form-radio').on('input', function () {
//     $('.radio').removeClass('radio-validate--error')
//   })

// form-structure

$('.form-list').on('click', function (e) {
  let { type } = e.target.dataset

  if (type == 'toggle') {
    toggleList(e)
  }
})

$('.form-list').on('input', function (e) {
  toggleCheckbox(e)
})

// toggle lists
function toggleList(e) {
  let parentNode = e.target.parentNode
  let nextElem = parentNode.nextElementSibling

  e.target.classList.toggle('list-toggle--active')
  nextElem.classList.toggle('hide')
}

// toggle checkboxes
let toggleCheckbox = function (e) {
  if (!e.target.classList.contains('no-list__checkbox')) {
    let parentNode = e.target.parentNode
    let nextElem = parentNode.nextElementSibling
    let checkboxes = nextElem.querySelectorAll('.checkbox')

    if (e.target.checked == true) {
      checkboxes.forEach(element => {
        element.checked = true
      })
    }

    else {
      checkboxes.forEach(element => {
        element.checked = false
      })
    }
  }
}



