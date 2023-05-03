import {find, findOne, getOffset, on} from "./helper";

import Swiper, {Autoplay, Pagination, Navigation, Scrollbar, FreeMode} from "swiper";

const main = () => {
    //main header
    (() => {
        const quickVisitkorea = findOne('.quick-visitkorea');
        const header = findOne('.site-header');
        const headerInitClassName = 'site-header--main-init';
        const scrollHeader = () => header.classList[window.scrollY < quickVisitkorea.clientHeight ? 'add' : 'remove'](headerInitClassName);

        scrollHeader();

        window.addEventListener('scroll', scrollHeader);
    })();

    //intro
    (() => {
        const intro = findOne('.main__intro');
        const introCarousel = new Swiper(findOne('.swiper', intro), {
            loop: true,
            slidesPerView: "auto",

            autoplay: {
                delay: 5000,
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

    //category tab
    (() => {
        const category = findOne('.main__category');
        const tabMenus = find('.category-tab a', category);
        const tabPanels = find(`.category-panel`, category);
        const location = findOne('.category-tab-contents__location', category);
        const program = findOne('.category-tab-contents__program', category);

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

        const categoryLocationCarousel = new Swiper(findOne('.swiper', location), {
            slidesPerView: 'auto',
            freeMode: {
                enabled: true,
            },

            breakpoints: {
                //브라우저가 1200보다 클 때
                1200: {
                    enabled: false,
                },
            },

            modules: [FreeMode],
        });

        const categoryProgramCarousel = new Swiper(findOne('.swiper', program), {
            slidesPerView: 5,
            freeMode: {
                enabled: true,
            },

            breakpoints: {
                //브라우저가 1200보다 클 때
                1200: {
                    slidesPerView: 'auto',
                },
            },

            modules: [FreeMode],
        });

    })();

    //트렌드
    (() => {
        const trend = findOne('.main__trend');
        const trendCarousel = new Swiper(findOne('.swiper', trend), {
            spaceBetween: 10,
            slidesPerView: 4.5,

            freeMode: {
                enabled: true,
            },

            scrollbar: {
                el: '.swiper-scrollbar',
            },

            breakpoints: {
                768: {
                    slidesPerView: 6.5,
                },
                992: {
                    slidesPerView: 8.5,
                },
                1200: {
                    slidesPerView: 10,
                    spaceBetween: 20,
                },
            },

            modules: [FreeMode, Navigation, Scrollbar],
        });
    })();

    //이벤트
    (() => {
        const event = findOne('.main__event');
        const eventCarousel = new Swiper(findOne('.swiper', event), {
            spaceBetween: 10,
            slidesPerView: 2.5,

            freeMode: {
                enabled: true,
            },

            navigation: {
                prevEl: findOne('.event-carousel__paging-prev', event),
                nextEl: findOne('.event-carousel__paging-next', event),
            },

            scrollbar: {
                el: '.swiper-scrollbar',
            },

            breakpoints: {
                1200: {
                    spaceBetween: 20,
                    slidesPerView: 'auto',
                },
            },

            modules: [FreeMode, Navigation, Scrollbar],
        });
    })();

    //인스타그램
    (() => {
        const instagram = findOne('.main__instagram');
        const removeClass = findOne('.swiper');

        const instagramCarousel = new Swiper(findOne('.swiper', instagram), {
            slidesPerView: 2.5,
            spaceBetween: 6,

            freeMode: {
                enabled: true,
            },

            scrollbar: {
                el: '.swiper-scrollbar',
            },

            breakpoints: {
                //브라우저가 1200보다 클 때
                996: {
                    slidesPerView: "5",
                    spaceBetween: 20,
                },
            },

            modules: [FreeMode, Scrollbar],
        });

    })();


};

export {
    main
}