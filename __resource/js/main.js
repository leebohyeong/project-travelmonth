import {find, findOne, on} from "./helper";

import Swiper, {Autoplay, EffectFade, Pagination, Navigation, Scrollbar} from "swiper";

const main = () => {

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

        loaction

    })();

    //트렌드
    (() => {
        const trend = findOne('.main__trend');
        const trendCarousel = new Swiper(findOne('.swiper', trend),{
            loop: false,
            speed: 500,
            spaceBetween: 10,
            slidesPerView: "auto",
            slideToClickedSlide: true,

            scrollbar: {
                el: '.swiper-scrollbar',
            },

            breakpoints: {
                //브라우저가 1200보다 클 때
                1200: {
                    // loop: true,
                    slidesPerView: "auto",
                    spaceBetween: 20,
                    // allowTouchMove: false,
                },
            },

            modules: [Navigation, Scrollbar],
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
                //브라우저가 1200보다 클 때
                1200: {
                    // loop: true,
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
            loop: true,
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
            loop: true,
            centeredSlides: true,
            slidesPerView: "auto",
            spaceBetween: 13,
            scrollbar: {
                el: '.swiper-scrollbar',
            },

            breakpoints: {
                //브라우저가 1200보다 클 때
                1200: {
                    loop: false,
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