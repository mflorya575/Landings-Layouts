const groupAdd = () => {
    const costList = document.querySelector('#groupAdd');

    // Счетчики для отслеживания первых и вторых элементов
    let redCounter = 0;
    let greenCounter = 0;

    const li = document.createElement('li');
    li.innerHTML = `
    <a href="./lk-teache-group.html">Группа</a>
  `;

    const listItems = costList.querySelectorAll('li');
    if (listItems.length === 0 || listItems[listItems.length - 1].classList.contains('_section-item-red')) {
        costList.appendChild(li);
        li.classList.add('_section-item-green');
        greenCounter++;
    } else {
        costList.insertBefore(li, listItems[listItems.length - 1].nextSibling);
        li.classList.add('_section-item-red');
        redCounter++;
    }
}
const studentsAdd = () => {
    const costList = document.querySelector('#studentsAdd');

    // Счетчики для отслеживания первых и вторых элементов
    let redCounter = 0;
    let greenCounter = 0;

    const li = document.createElement('li');
    li.innerHTML = `
    <a href="./lk-teache-individual.html">Имя</a>
  `;

    const listItems = costList.querySelectorAll('li');
    if (listItems.length === 0 || listItems[listItems.length - 1].classList.contains('_section-item-red')) {
        costList.appendChild(li);
        li.classList.add('_section-item-green');
        greenCounter++;
    } else {
        costList.insertBefore(li, listItems[listItems.length - 1].nextSibling);
        li.classList.add('_section-item-red');
        redCounter++;
    }
}
const groupAddTeaser = () => {
    const costList = document.querySelector('#groupAddTeaser');
    let redCounter = 0;
    let greenCounter = 0;

    const li = document.createElement('li');
    li.classList.add('teaser__item');

    const lkBlock = document.createElement('div');
    lkBlock.classList.add('lk__block');

    const input = document.createElement('input');
    input.type = 'file';
    lkBlock.appendChild(input);

    const div = document.createElement('div');
    div.innerHTML = `
        <h2>ФИО</h2>
        <p>Регион</p>
    `;
    div.classList.add('teaser__box');

    li.appendChild(lkBlock);
    li.appendChild(div);

    const listItems = costList.querySelectorAll('li');
    if (listItems.length === 0 || listItems[listItems.length - 1].classList.contains('_section-item-red')) {
        li.classList.add('_section-item-green');
        lkBlock.classList.add('_section-item-red');
        greenCounter++;
    } else {
        li.classList.add('_section-item-red');
        lkBlock.classList.add('_section-item-green');
        redCounter++;
    }

    costList.appendChild(li);
};
