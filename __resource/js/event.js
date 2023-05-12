import {findOne, find, on} from './helper';
import Swiper, {Autoplay, Pagination, Navigation, Scrollbar, FreeMode} from "swiper";
import {BenefitsMenu, ListThumbnail} from './common';

const eventList = () => {

    (() => {
        const lists = find('.list-thumbnail');

        lists.forEach(list => new ListThumbnail(list));
    })();

    // swiper
    (() => {
        const list = findOne('.event-list');
        const listCarousel = new Swiper(findOne('.swiper', list),{
            // loop: true,
            slidesPerView: "auto",
            spaceBetween: 10,
            centeredSlides: true,

            breakpoints: {
                1200: {
                    spaceBetween: 20,
                },
            },

            Autoplay: {
                delay: 4000,
                disableOnInteraction: false,
            },

            pagination: {
                el: ".swiper-pagination",
            },

            navigation: {
                prevEl: ".swiper-navigation-prev",
                nextEl: ".swiper-navigation-next",
            },

            modules: [Autoplay, Navigation, Pagination],
        });
    })();

    //tab
    (() => {
        const category = findOne('.event-list--list__tab');
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
};

export {
    eventList
}