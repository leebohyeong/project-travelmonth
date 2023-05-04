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

    on(menuButton, 'click', toggleMenu);
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

const googleTag = () => {
    const triggers = find('[data-gtag-action]');
    const fireEvent = (trigger) => {
        const {gtagAction, gtagCategory, gtagLabel} = trigger.dataset;
        const options = {}

        if (gtagCategory && gtagLabel) {
            options[`${gtagCategory.trim()}`] = gtagLabel.trim();
        }

        // ga('send', 'event', gtagCategory, gtagAction, gtagLabel);
        gtag('event', gtagAction, JSON.parse(JSON.stringify(options)));
    };

    triggers.forEach(trigger => on(trigger, 'click', () => fireEvent(trigger)));
};

export {
    globalNav,
    googleTag,
    ListThumbnail,
}