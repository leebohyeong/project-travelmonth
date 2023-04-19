import {findOne, find, on} from './helper';

const trendList = () => {
    const modals = find('.modal-trend-content');

    modals.forEach(modal => (() => {
        const tab = findOne('.modal-trend-content__tab', modal);

        if (!tab) return;

        const tabMenus = find('a', tab);
        const tabPanels = find('.modal-trend-content__panel', modal);
        const toggleTabPanels = (currentIndex) => {
            tabMenus.forEach((menu, index) =>
                menu.classList[
                    currentIndex === index
                        ? 'add'
                        : 'remove'
                    ]('modal-trend-content__tab-item--active'));
            tabPanels.forEach((panel, index) =>
                panel.classList[
                    currentIndex === index
                        ? 'add'
                        : 'remove'
                    ]('modal-trend-content__panel--active'));
        };

        tabMenus.forEach((menu, index) =>
            on(menu, 'click', (event) => {
                event.preventDefault();
                toggleTabPanels(index);
            })
        );

        on(modal, 'show.bs.modal', () =>
            toggleTabPanels(0)
        );
    })());
};

export {
    trendList
}