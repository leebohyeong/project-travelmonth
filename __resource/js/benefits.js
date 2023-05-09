import {findOne, find, on} from './helper';
import {BenefitsMenu, ListThumbnail} from './common';

const benefits = () => {
    new BenefitsMenu();
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