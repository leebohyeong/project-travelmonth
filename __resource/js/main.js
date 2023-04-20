import {find,findOne} from "./helper";
import Swiper, {Autoplay, EffectFade, Pagination, Navigation} from "swiper";

const main = () => {



    //이벤트
    (() => {
        const event = findOne('.main__event');
        const eventCarousel = new Swiper(findOne('.swiper', event),{
            slidesPerView: "auto",
            spaceBetween: 20,
        });
    })();

    //여행가는 달 참여기관
    (() => {
        const organization = findOne('.main__organization');
        const organizationCarousel = new Swiper(findOne('.swiper', organization),{
            slidesPerView: "auto",
            spaceBetween: 100,
        });
    })();

};

export {
    main
}