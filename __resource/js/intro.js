import {find, findOne, on} from "./helper";
import {Movie} from "./common";

const travelmonthIntro = () => {
    //tab
    (() => {
        const category = findOne('.travelmonth-intro--video__tab');
        const tabMenus = find('.category-tab a', category);
        const tabPanels = find(`.category-panel`, category);

        const toggleTabPanels = (currentIndex) => {
            tabMenus.forEach((menu, index) =>
                menu.classList[
                    currentIndex === index
                        ? 'add'
                        : 'remove'
                    ](`category-tab__item--active`));
            tabPanels.forEach((panel, index) =>
                panel.classList[
                    currentIndex === index
                        ? 'add'
                        : 'remove'
                    ](`category-panel--active`));
        };

        tabMenus.forEach((menu, index) =>
            on(menu, 'click', (event) => {
                event.preventDefault();

                toggleTabPanels(index);
            })
        );
    })();

    //youtube api
    new Movie();
};

export {
    travelmonthIntro
}