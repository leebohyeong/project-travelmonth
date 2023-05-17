import {findOne, find, on} from './helper';
import 'bootstrap';

const globalNav = () => {
    const body = document.body;
    const siteHeader = findOne('.site-header');
    const menu = findOne('nav', siteHeader);
    const menuButton = findOne('button', siteHeader);
    const toggleMenu = () => {
        body.classList.toggle('open-global-nav');
        menu.scrollTop = 0;
    };

    on(menuButton, 'click', toggleMenu);
};

const ListThumbnail = class {
    #hiddenItemClassName = 'list-thumbnail__item--hide';
    #more;
    #hiddenItems;

    constructor(element) {
        if (!element) return;

        this.#more = findOne('p:last-of-type button', element);

        if (!this.#more) return;

        this.#hiddenItems = find(`.${this.#hiddenItemClassName}`, element);

        this.#initEvents();
    }

    #showItems() {
        this.#hiddenItems.forEach(item => item.classList.remove(this.#hiddenItemClassName));
    }

    #hideMore() {
        this.#more.parentNode.remove();
    }

    #initEvents() {
        on(this.#more, 'click', () => {
            this.#hideMore();
            this.#showItems();
        });
    }
};

const BenefitsMenu = class {
    #menu = findOne('.benefits__menu nav + div');
    #select;
    #options;

    constructor() {
        if (!this.#menu) return;

        this.#select = findOne('select', this.#menu);
        this.#options = find('option', this.#select);

        this.#initEvents();
    }

    #initEvents() {
        on(this.#select, 'change', () => {
            location.href = this.#options[this.#select.selectedIndex].dataset.url;
        });
    }
};

const googleTag = () => {
    const triggers = find('[data-gtag-action]');
    const fireEvent = (trigger) => {
        const {gtagAction, gtagCategory, gtagLabel} = trigger.dataset;
        const options = {}

        if (gtagCategory && gtagLabel) {
            options[`${gtagCategory.trim()}`] = gtagLabel.trim();
        }

        gtag('event', gtagAction, JSON.parse(JSON.stringify(options)));
    };

    triggers.forEach(trigger => on(trigger, 'click', () => fireEvent(trigger)));
};

const googleAnalytics = () => {
    const triggers = find('[data-ga-action]');
    const fireEvent = (trigger) => {
        const {gaAction, gaCategory, gaLabel} = trigger.dataset;

        if (!gaCategory) return;

        if (!gaLabel) {
            ga('send', 'event', gaCategory, gaAction);
        } else  {
            ga('send', 'event', gaCategory, gaAction, gaLabel);
        }
    };

    triggers.forEach(trigger => on(trigger, 'click', () => fireEvent(trigger)));
};

const initOpenModal = () => {
    const urlSearchParams = new URLSearchParams(location.search);
    const paramModal = urlSearchParams.get('modal');

    if (paramModal) {
        const modalId = `#modal-${paramModal}`;
        const modal = findOne(modalId);
        const trigger = findOne(`[href="${modalId}"]`);

        if (modal && trigger) {
            trigger.click();
        }
    }
};

const Movie = class {
    constructor() {
        this.#loadApi();
        this.players = {};
    }

    #loadApi() {
        const tag = document.createElement('script');

        tag.src = "https://www.youtube.com/iframe_api";
        const firstScriptTag = document.getElementsByTagName('script')[0];
        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

        window.onYouTubeIframeAPIReady = () => this.init();
    }

    init() {
        const movieContainers = find('[data-movie-id]');

        movieContainers.reduce((players, movie) => {
            const {movieId: videoId} = movie.dataset;

            players[videoId] = new window.YT.Player(movie, {
                width: '100%',
                height: 'auto',
                videoId,
            });

            return players;
        }, this.players);
    }
}

export {
    globalNav,
    googleTag,
    googleAnalytics,
    ListThumbnail,
    BenefitsMenu,
    initOpenModal,
    Movie,
}