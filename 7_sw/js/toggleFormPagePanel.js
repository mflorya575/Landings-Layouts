function selectItem() {
    let formPageInput = document.querySelectorAll('.form-page__input[data-panel]');
    formPageInput.forEach((item) => {
        if (item.hasAttribute('data-select')) {
            let formPagePanel = item.querySelector('.form-page__panel');

            // Добавляем обработчики события для каждого элемента списка один раз при инициализации
            let formPagePanelItem = formPagePanel.querySelectorAll('li');
            formPagePanelItem.forEach((panelItem) => {
                panelItem.addEventListener('click', () => {
                    let hiddenInput = item.querySelector('input[type=hidden]');
                    let inputText = item.querySelector('span.form-page__input_text');
                    let label = item.querySelector('label');
            
                    // Проверяем, существуют ли элементы перед попыткой их изменить
                    if (hiddenInput && inputText && label) {
                        // Получаем текущее значение скрытого поля и текстового элемента
                        let currentHiddenValue = hiddenInput.value;
                        let currentTextValue = inputText.textContent;
            
                        // Добавляем новое значение через запятую, если его еще нет
                        if (!currentHiddenValue.split(', ').includes(panelItem.textContent)) {
                            hiddenInput.value = currentHiddenValue ? currentHiddenValue + ', ' + panelItem.textContent : panelItem.textContent;
                            inputText.textContent = currentTextValue ? currentTextValue + ', ' + panelItem.textContent : panelItem.textContent;
                            label.style.display = 'none';
                        } else {
                            console.log('Этот элемент уже выбран.');
                        }
                    } else {
                        console.error('One or more required elements are missing.');
                    }
                });
            });
            
            // Добавляем обработчик события для открытия/закрытия списка
            item.addEventListener('click', (event) => {
                // Закрываем список при клике вне элемента item
                if (!item.contains(event.target)) {
                    formPagePanel.classList.remove('_open');
                } else {
                    formPagePanel.classList.toggle('_open');
                }
            });
            
            // Закрываем список при клике вне его области
            document.addEventListener('click', (event) => {
                if (!item.contains(event.target)) {
                    formPagePanel.classList.remove('_open');
                }
            });
            
            
            
        } else {
            let formPagePanel = item.querySelector('.form-page__panel');
    
            item.addEventListener('click', () => {
    
                formPagePanel.classList.toggle('_open');
    
                let formPagePanelItem = formPagePanel.querySelectorAll('li');
                formPagePanelItem.forEach((panelItem) => {
                    panelItem.addEventListener('click', () => {
                        item.querySelector('input[type=hidden]').value = panelItem.textContent;
                        item.querySelector('span.form-page__input_text').textContent = panelItem.textContent;
                        item.querySelector('label').style.display = 'none';
                        setTimeout(() => {
                            formPagePanel.classList.remove('_open');
                        }, 0);
                    })
                })
            })
        }
    });
}
selectItem();

