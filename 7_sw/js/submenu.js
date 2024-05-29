document.addEventListener("DOMContentLoaded", function() {
    // Получаем список всех пунктов меню
    var menuItems = document.querySelectorAll('.menu__item');

    // Добавляем обработчик клика для каждого пункта меню
    menuItems.forEach(function(item) {
        item.addEventListener('click', function() {
            // Закрываем все подменю
            closeAllSubmenus();

            // Открываем подменю для текущего пункта
            var submenu = item.querySelector('.menu__submenu');
            if (submenu) {
                submenu.style.display = 'block';
            }
        });
    });

    // Функция для закрытия всех подменю
    function closeAllSubmenus() {
        var submenus = document.querySelectorAll('.menu__submenu');
        submenus.forEach(function(submenu) {
            submenu.style.display = 'none';
        });
    }

    // Обработчик события клика на document для закрытия подменю при клике вне него
    document.addEventListener("click", function(event) {
        var target = event.target;
        
        // Проверяем, является ли цель клика подменю или пунктом меню
        if (!target.closest('.menu__submenu') && !target.closest('.menu__item')) {
            closeAllSubmenus();
        }
    });
});


document.addEventListener("DOMContentLoaded", function() {
    // Получаем список всех пунктов меню
    var menuItems = document.querySelectorAll('.menu__item');

    // Добавляем обработчик клика для каждого пункта меню
    menuItems.forEach(function(item) {
        item.addEventListener('click', function() {
            // Закрываем все подменю
            closeAllSubmenus();

            // Открываем подменю для текущего пункта
            var submenu = item.querySelector('.menu__submenu');
            if (submenu) {
                submenu.style.display = 'block';
            }
        });
    });

    // Функция для закрытия всех подменю
    function closeAllSubmenus() {
        var submenus = document.querySelectorAll('.menu__submenu');
        submenus.forEach(function(submenu) {
            submenu.style.display = 'none';
        });
    }

    // Обработчик события клика на document для закрытия подменю при клике вне него
    document.addEventListener("click", function(event) {
        var target = event.target;
        
        // Проверяем, является ли цель клика подменю или пунктом меню
        if (!target.closest('.menu__submenu') && !target.closest('.menu__item')) {
            closeAllSubmenus();
        }
    });
});