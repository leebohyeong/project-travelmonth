import {find,findOne} from "./helper";
import Swiper, {Autoplay, EffectFade, Pagination, Navigation} from "swiper";

const main = () => {


    //여행가는 달 참여기관
    (() => {
        const organization = findOne('.main__organization');
        console.log(organization);

        const carousel = new Swiper(findOne('.swiper', organization),{

        });
    })();

};

export {
    main
}