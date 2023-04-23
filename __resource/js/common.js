import {findOne, find, on} from './helper';
import 'bootstrap';

const globalNav = () => {
    const body = document.body;
    const siteHeader = findOne('.site-header');
    const menu = findOne('nav', siteHeader);
    const menuButton = findOne('button', siteHeader);
    const toggleMenu = () => {
        body.classList.toggle('open-global-nav');
        menu.scrollTop = 0;
    };

    on(menuButton, 'click', toggleMenu)
};

const ListThumbnail = class {
    #hiddenItemClassName = 'list-thumbnail__item--hide';
    #more;
    #hiddenItems;

    constructor(element) {
        if (!element) return;

        this.#more = findOne('p:last-of-type button', element);

        if (!this.#more) return;

        this.#hiddenItems = find(`.${this.#hiddenItemClassName}`, element);

        this.#initEvents();
    }

    #showItems() {
       this.#hiddenItems.forEach(item => item.classList.remove(this.#hiddenItemClassName));
    }

    #hideMore() {
        this.#more.parentNode.remove();
    }

    #initEvents() {
        on(this.#more, 'click', () => {
            this.#hideMore();
            this.#showItems();
        });
    }
};

export {
    globalNav,
    ListThumbnail,
}