import {find,findOne} from "./helper";
import Swiper, {Autoplay, EffectFade, Pagination, Navigation} from "swiper";

const main = () => {


    //여행가는 달 참여기관
    (() => {
        const organization = findOne('.main__organization');


        const carousel = new Swiper(findOne('.swiper', organization),{
            slidesPerView: 6,
            spaceBetween: 100,
        });
    })();

};

export {
    main
}