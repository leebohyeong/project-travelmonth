import {findOne, find, on} from './helper';

const benefitsLocal = () => {
    const menu = findOne('.benefits__menu--local nav + div');

    (() => {
        const currentItem = findOne('strong', menu).closest('li');
        const localItems = find('a', menu);
        const activeLocalClassName = 'benefits__menu-item--local-hide';
        const showLocal = () => currentItem.classList.remove(activeLocalClassName);
        const removeLocal = () => currentItem.classList.add(activeLocalClassName);
        const togglEvent = (item) => {
            on(item, 'mouseenter', removeLocal);
            on(item, 'mouseleave', showLocal);
        };

        // localItems.forEach(item => togglEvent(item));
    })();

    (() => {
        const select = findOne('select', menu);
        const options = find('option', select);

        on(select, 'change', () => {
            location.href = options[select.selectedIndex].dataset.url;
        });
    })();
};

export {
    benefitsLocal
}