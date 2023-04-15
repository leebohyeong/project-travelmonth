import {findOne, on} from './helper';
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

export {
    globalNav
}