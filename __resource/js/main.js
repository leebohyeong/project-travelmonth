import {find, findOne, on} from "./helper";

import Swiper, {Autoplay, Pagination, Navigation, Scrollbar, FreeMode} from "swiper";

const main = () => {

    (() => {
        document.addEventListener('scroll', function() {
            const currentScrollValue = document.documentElement.scrollTop;
            const siteHeader = findOne('#travelmonth-main .site-header');

            if(currentScrollValue > 70) {
                siteHeader.classList.add('active');
                siteHeader.classList.remove('on');
            } else {
                siteHeader.classList.remove('active');
                siteHeader.classList.add('on');
            }
        });
    })();

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

    //category tab
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

            breakpoints: {
                //브라우저가 1200보다 클 때
                1200: {
                    enabled: false,
                },
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
            spaceBetween: 10,
            slidesPerView: 2.5,

            freeMode: {
                enabled: true,
            },

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
                },
            },

            modules: [FreeMode, Navigation, Scrollbar],
        });
    })();

    //여행가는 달 참여기관
    (() => {
        const organization = findOne('.main__organization');
        const organizationCarousel = new Swiper(findOne('.swiper', organization),{
            slidesPerView: 3.5,
            spaceBetween: 20,

            autoplay: {
                delay: 3000,
                disableOnInteraction: false,
            },

            breakpoints: {
                //브라우저가 1200보다 클 때
                1200: {
                    slidesPerView: "auto",
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
            slidesPerView: 3.5,
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