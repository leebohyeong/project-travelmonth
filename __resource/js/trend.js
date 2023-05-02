import {findOne, find, on, debounce} from './helper';
import Swiper, {FreeMode, Navigation} from 'swiper';
import {ListThumbnail} from './common';

const trendList = () => {
    (() => {
        const lists = find('.list-thumbnail');

        lists.forEach(list => new ListThumbnail(list));
    })();

    (() => {
        const carouselContainer = findOne('.trend-list nav .swiper');
        const carousel = new Swiper(carouselContainer, {
            slidesPerView: 'auto',
            freeMode: {
                enabled: true,
            },
            modules: [FreeMode],
        });
    })();

    (() => {
        const theme = findOne('.trend-list aside');

        if (!theme) return;

        const carouselContainer = findOne('.swiper', theme);
        const carouselWrapper = findOne('.swiper-wrapper', theme);
        const carouselHtml = carouselWrapper.innerHTML;
        const carouselPrev = findOne('.swiper-button-prev', theme);
        const carouselNext = findOne('.swiper-button-next', theme);

        const isLessThanExtraLarge = () => window.innerWidth < 1200;
        const getCarouselOptions = () =>
            isLessThanExtraLarge()
                ? {
                    slidesPerView: 'auto',
                    spaceBetween: 6,
                    freeMode: {
                        enabled: true,
                    },
                    modules: [FreeMode],
                }
                : {
                    // slidesPerGroup: 4,
                    slidesPerView: 4,
                    spaceBetween: 16,
                    navigation: {
                        nextEl: carouselNext,
                        prevEl: carouselPrev,
                    },
                    modules: [Navigation],
                };
        const makeCarousel = () => {
            if (carousel) carousel.destroy(true, true);
            // carouselWrapper.innerHTML = carouselHtml + (isLessThanExtraLarge() ? '' : '<div class="swiper-slide"></div>'.repeat(2));
            carousel = new Swiper(carouselContainer, getCarouselOptions());
        };
        const getDeviceSize = () => isLessThanExtraLarge() ? 'lg' : 'xl';
        const onResize = () => {
            const deviceSize = getDeviceSize();

            if (currentDeviceSize === deviceSize) return;
            console.log('reset');

            currentDeviceSize = deviceSize;
            makeCarousel();
        };
        let currentDeviceSize = getDeviceSize();
        let carousel = new Swiper(carouselContainer, getCarouselOptions());

        requestAnimationFrame(onResize);

        on(window, 'resize', debounce(onResize));
    })();

    (() => {
        const modalClassName = '.modal-trend-contents';
        const modals = find(modalClassName);

        modals.forEach(modal => (() => {
            const tab = findOne(`${modalClassName}__tab`, modal);

            if (!tab) return;

            const tabMenus = find('a', tab);
            const tabPanels = find(`${modalClassName}__panel`, modal);
            const toggleTabPanels = (currentIndex) => {
                tabMenus.forEach((menu, index) =>
                    menu.classList[
                        currentIndex === index
                            ? 'add'
                            : 'remove'
                        ](`${modalClassName.substring(1)}__tab-item--active`));
                tabPanels.forEach((panel, index) =>
                    panel.classList[
                        currentIndex === index
                            ? 'add'
                            : 'remove'
                        ](`${modalClassName.substring(1)}__panel--active`));
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
    })();

    // findOne('[data-bs-target="#modal-trend-content-1"]').click();
};

export {
    trendList
}