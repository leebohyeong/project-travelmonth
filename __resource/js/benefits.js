import {findOne, find, on} from './helper';
import {ListThumbnail} from './common';

const benefits = () => {
    const menu = findOne('.benefits__menu nav + div');

    if (!menu) return;

    const select = findOne('select', menu);
    const options = find('option', select);

    on(select, 'change', () => {
        location.href = options[select.selectedIndex].dataset.url;
    });
};

const benefitsLocal = () => {
    const menu = findOne('.benefits__menu--local nav + div');

    (() => {
        const lists = find('.list-thumbnail');

        lists.forEach(list => new ListThumbnail(list));
    })();

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
};

const benefitsPlay = () => {
    (() => {
        const lists = find('.list-thumbnail');

        lists.forEach(list => new ListThumbnail(list));
    })();
};

export {
    benefits,
    benefitsLocal,
    benefitsPlay,
}