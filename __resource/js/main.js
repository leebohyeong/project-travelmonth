import {find, findOne, on} from "./helper";

import Swiper, {Autoplay, Pagination, Navigation, Scrollbar, FreeMode} from "swiper";

const main = () => {

    //intro
    (() => {
        const intro = findOne('.main__intro');
        const introCarousel = new Swiper(findOne('.swiper', intro),{
            loop: true,
            slidesPerView: "auto",

            Autoplay: {
                delay: 1000,
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
        const category = findOne('.main__category');
        const tabMenus = find('.category-tab a', category);
        const tabPanels = find(`.category-panel`, category);
        const loaction = findOne('.category-tab-contents__location', category);
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

        const categoryLoactionCarousel = new Swiper(findOne('.swiper', loaction),{
            slidesPerView: 'auto',
            freeMode: {
                enabled: true,
            },
            modules: [FreeMode],
        });

        const categoryProgramCarousel = new Swiper(findOne('.swiper', program),{
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
        const trendCarousel = new Swiper(findOne('.swiper', trend),{
            spaceBetween: 10,
            slidesPerView: 4.5,

            freeMode: {
                enabled: true,
            },

            scrollbar: {
                el: '.swiper-scrollbar',
            },

            breakpoints: {
                //브라우저가 1200보다 클 때
                1200: {
                    slidesPerView: 10,
                    spaceBetween: 20,
                    // allowTouchMove: false,
                },
            },

            modules: [FreeMode, Navigation, Scrollbar],
        });
    })();

    //이벤트
    (() => {
        const event = findOne('.main__event');
        const eventCarousel = new Swiper(findOne('.swiper', event),{
            loop: false,
            speed: 500,
            spaceBetween: 20,
            slidesPerView: 2.5,
            centeredSlides: false,
            slideToClickedSlide: true,

            navigation: {
                prevEl: findOne('.event-swiper__paging-prev', event),
                nextEl: findOne('.event-swiper__paging-next', event),
            },

            scrollbar: {
                el: '.swiper-scrollbar',
            },

            breakpoints: {
                1200: {
                    spaceBetween: 20,
                    slidesPerView: 'auto',
                    centeredSlides: true,
                    initialSlide: 2,
                    allowTouchMove: false,
                },
            },

            modules: [Navigation, Scrollbar],
        });
    })();

    //여행가는 달 참여기관
    (() => {
        const organization = findOne('.main__organization');
        const organizationCarousel = new Swiper(findOne('.swiper', organization),{
            loop: false,
            slidesPerView: "auto",
            // centeredSlides: true,
            spaceBetween: 40,

            autoplay: {
                delay: 3000,
                disableOnInteraction: false,
            },

            breakpoints: {
                //브라우저가 1200보다 클 때
                1200: {
                    centeredSlides: false,
                    spaceBetween: 100,
                },
            },

            modules: [Autoplay],
        });
    })();

    //인스타그램
    (() => {
        const instagram = findOne('.main__instagram');
        const removeClass = findOne('.swiper');

        const instagramCarousel = new Swiper(findOne('.swiper', instagram),{
            loop: false,
            centeredSlides: true,
            slidesPerView: "auto",
            spaceBetween: 13,
            scrollbar: {
                el: '.swiper-scrollbar',
            },

            breakpoints: {
                //브라우저가 1200보다 클 때
                1200: {
                    centeredSlides: false,
                    slidesPerView: "5",
                    spaceBetween: 20,
                },
            },

            modules: [Scrollbar],
        });

    })();


};

export {
    main
}