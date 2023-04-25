/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./js/app.js":
/*!*******************!*\
  !*** ./js/app.js ***!
  \*******************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var hwaly_app__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! hwaly-app */ "./node_modules/hwaly-app/src/App.js");
/* harmony import */ var bootstrap__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! bootstrap */ "./node_modules/bootstrap/dist/js/bootstrap.esm.js");
/* harmony import */ var _common__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./common */ "./js/common.js");
/* harmony import */ var _main__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./main */ "./js/main.js");
/* harmony import */ var _benefits__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./benefits */ "./js/benefits.js");
/* harmony import */ var _trend__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./trend */ "./js/trend.js");


window.bootstrap = bootstrap__WEBPACK_IMPORTED_MODULE_1__;




const app = new hwaly_app__WEBPACK_IMPORTED_MODULE_0__["default"]();
app.add({ globalNav: _common__WEBPACK_IMPORTED_MODULE_2__.globalNav });
app.add({ benefitsLocal: _benefits__WEBPACK_IMPORTED_MODULE_4__.benefitsLocal });
app.add({ trendList: _trend__WEBPACK_IMPORTED_MODULE_5__.trendList });
app.add({ main: _main__WEBPACK_IMPORTED_MODULE_3__.main });
app.auto("globalNav");
app.readyAndRun();


/***/ }),

/***/ "./js/benefits.js":
/*!************************!*\
  !*** ./js/benefits.js ***!
  \************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "benefitsLocal": () => (/* binding */ benefitsLocal)
/* harmony export */ });
/* harmony import */ var _helper__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./helper */ "./js/helper.js");

const benefitsLocal = () => {
  const menu = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".benefits__menu--local nav + div");
  const currentItem = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)("strong", menu).closest("li");
  const localItems = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.find)("a", menu);
  const activeLocalClassName = "benefits__menu-item--local-hide";
  const showLocal = () => currentItem.classList.remove(activeLocalClassName);
  const removeLocal = () => currentItem.classList.add(activeLocalClassName);
  const togglEvent = (item) => {
    (0,_helper__WEBPACK_IMPORTED_MODULE_0__.on)(item, "mouseenter", removeLocal);
    (0,_helper__WEBPACK_IMPORTED_MODULE_0__.on)(item, "mouseleave", showLocal);
  };
};



/***/ }),

/***/ "./js/common.js":
/*!**********************!*\
  !*** ./js/common.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "ListThumbnail": () => (/* binding */ ListThumbnail),
/* harmony export */   "globalNav": () => (/* binding */ globalNav)
/* harmony export */ });
/* harmony import */ var _helper__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./helper */ "./js/helper.js");
/* harmony import */ var bootstrap__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! bootstrap */ "./node_modules/bootstrap/dist/js/bootstrap.esm.js");
var __accessCheck = (obj, member, msg) => {
  if (!member.has(obj))
    throw TypeError("Cannot " + msg);
};
var __privateGet = (obj, member, getter) => {
  __accessCheck(obj, member, "read from private field");
  return getter ? getter.call(obj) : member.get(obj);
};
var __privateAdd = (obj, member, value) => {
  if (member.has(obj))
    throw TypeError("Cannot add the same private member more than once");
  member instanceof WeakSet ? member.add(obj) : member.set(obj, value);
};
var __privateSet = (obj, member, value, setter) => {
  __accessCheck(obj, member, "write to private field");
  setter ? setter.call(obj, value) : member.set(obj, value);
  return value;
};
var __privateMethod = (obj, member, method) => {
  __accessCheck(obj, member, "access private method");
  return method;
};
var _hiddenItemClassName, _more, _hiddenItems, _showItems, showItems_fn, _hideMore, hideMore_fn, _initEvents, initEvents_fn, _a;


const globalNav = () => {
  const body = document.body;
  const siteHeader = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".site-header");
  const menu = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)("nav", siteHeader);
  const menuButton = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)("button", siteHeader);
  const toggleMenu = () => {
    body.classList.toggle("open-global-nav");
    menu.scrollTop = 0;
  };
  (0,_helper__WEBPACK_IMPORTED_MODULE_0__.on)(menuButton, "click", toggleMenu);
};
const ListThumbnail = (_a = class {
  constructor(element) {
    __privateAdd(this, _showItems);
    __privateAdd(this, _hideMore);
    __privateAdd(this, _initEvents);
    __privateAdd(this, _hiddenItemClassName, "list-thumbnail__item--hide");
    __privateAdd(this, _more, void 0);
    __privateAdd(this, _hiddenItems, void 0);
    if (!element)
      return;
    __privateSet(this, _more, (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)("p:last-of-type button", element));
    if (!__privateGet(this, _more))
      return;
    __privateSet(this, _hiddenItems, (0,_helper__WEBPACK_IMPORTED_MODULE_0__.find)(`.${__privateGet(this, _hiddenItemClassName)}`, element));
    __privateMethod(this, _initEvents, initEvents_fn).call(this);
  }
}, _hiddenItemClassName = new WeakMap(), _more = new WeakMap(), _hiddenItems = new WeakMap(), _showItems = new WeakSet(), showItems_fn = function() {
  __privateGet(this, _hiddenItems).forEach((item) => item.classList.remove(__privateGet(this, _hiddenItemClassName)));
}, _hideMore = new WeakSet(), hideMore_fn = function() {
  __privateGet(this, _more).parentNode.remove();
}, _initEvents = new WeakSet(), initEvents_fn = function() {
  (0,_helper__WEBPACK_IMPORTED_MODULE_0__.on)(__privateGet(this, _more), "click", () => {
    __privateMethod(this, _hideMore, hideMore_fn).call(this);
    __privateMethod(this, _showItems, showItems_fn).call(this);
  });
}, _a);



/***/ }),

/***/ "./js/helper.js":
/*!**********************!*\
  !*** ./js/helper.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "debounce": () => (/* binding */ debounce),
/* harmony export */   "delegate": () => (/* binding */ delegate),
/* harmony export */   "find": () => (/* binding */ find),
/* harmony export */   "findOne": () => (/* binding */ findOne),
/* harmony export */   "getOffset": () => (/* binding */ getOffset),
/* harmony export */   "off": () => (/* binding */ off),
/* harmony export */   "on": () => (/* binding */ on)
/* harmony export */ });
const findOne = (selector, context = document) => context.querySelector(selector);
const find = (selector, context = document) => [...context.querySelectorAll(selector)];
const on = (target, type, callback, capture = false) => {
  if (!target || !target.addEventListener)
    return;
  target.addEventListener(type, callback, capture);
};
const off = (target, type, callback) => target.removeEventListener(type, callback);
const delegate = (target, selector, type, handler, capture) => {
  const dispatchEvent = (event) => {
    const targetElement = event.target;
    const potentialElements = targetElement.closest(selector);
    if (potentialElements) {
      handler.call(potentialElements, event);
    }
  };
  on(target, type, dispatchEvent, !!capture);
};
const getOffset = (element) => {
  const rect = element.getBoundingClientRect();
  return {
    top: rect.top + window.scrollY,
    left: rect.left + window.scrollX
  };
};
const debounce = (func, wait = 300) => {
  let inDebounce;
  return (...args) => {
    inDebounce && clearTimeout(inDebounce);
    inDebounce = setTimeout(() => func(...args), wait);
  };
};


/***/ }),

/***/ "./js/main.js":
/*!********************!*\
  !*** ./js/main.js ***!
  \********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "main": () => (/* binding */ main)
/* harmony export */ });
/* harmony import */ var _helper__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./helper */ "./js/helper.js");
/* harmony import */ var swiper__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! swiper */ "./node_modules/swiper/swiper.esm.js");


const main = () => {
  (() => {
    const category = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".main__category");
    const tabMenus = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.find)(".category-tab a", category);
    const tabPanels = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.find)(`.category-panel`, category);
    const loaction = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".category-tab-contents__location", category);
    const program = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".category-tab-contents__program", category);
    const toggleTabPanels = (currentIndex) => {
      tabMenus.forEach((menu, index) => menu.classList[currentIndex === index ? "add" : "remove"](`category-tab__item--active`));
      tabPanels.forEach((panel, index) => panel.classList[currentIndex === index ? "add" : "remove"](`category-panel--active`));
    };
    tabMenus.forEach(
      (menu, index) => (0,_helper__WEBPACK_IMPORTED_MODULE_0__.on)(menu, "click", (event) => {
        event.preventDefault();
        toggleTabPanels(index);
      })
    );
    const categoryCarousel = new swiper__WEBPACK_IMPORTED_MODULE_1__["default"]((0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".swiper", category), {
      slidesPerView: "auto",
      freeMode: {
        enabled: true
      },
      modules: [swiper__WEBPACK_IMPORTED_MODULE_1__.FreeMode]
    });
  })();
  (() => {
    const trend = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".main__trend");
    const trendCarousel = new swiper__WEBPACK_IMPORTED_MODULE_1__["default"]((0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".swiper", trend), {
      loop: false,
      speed: 500,
      spaceBetween: 10,
      slidesPerView: "auto",
      slideToClickedSlide: true,
      scrollbar: {
        el: ".swiper-scrollbar"
      },
      breakpoints: {
        //브라우저가 1200보다 클 때
        1200: {
          // loop: true,
          slidesPerView: "auto",
          spaceBetween: 20
          // allowTouchMove: false,
        }
      },
      modules: [swiper__WEBPACK_IMPORTED_MODULE_1__.Navigation, swiper__WEBPACK_IMPORTED_MODULE_1__.Scrollbar]
    });
  })();
  (() => {
    const event = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".main__event");
    const eventCarousel = new swiper__WEBPACK_IMPORTED_MODULE_1__["default"]((0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".swiper", event), {
      loop: false,
      speed: 500,
      spaceBetween: 20,
      slidesPerView: 2.5,
      centeredSlides: false,
      slideToClickedSlide: true,
      navigation: {
        prevEl: (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".event-swiper__paging-prev", event),
        nextEl: (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".event-swiper__paging-next", event)
      },
      scrollbar: {
        el: ".swiper-scrollbar"
      },
      breakpoints: {
        1200: {
          // loop: true,
          spaceBetween: 20,
          slidesPerView: "auto",
          centeredSlides: true,
          initialSlide: 2,
          allowTouchMove: false
        }
      },
      modules: [swiper__WEBPACK_IMPORTED_MODULE_1__.Navigation, swiper__WEBPACK_IMPORTED_MODULE_1__.Scrollbar]
    });
  })();
  (() => {
    const organization = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".main__organization");
    const organizationCarousel = new swiper__WEBPACK_IMPORTED_MODULE_1__["default"]((0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".swiper", organization), {
      loop: true,
      slidesPerView: "auto",
      // centeredSlides: true,
      spaceBetween: 40,
      autoplay: {
        delay: 3e3,
        disableOnInteraction: false
      },
      breakpoints: {
        //브라우저가 1200보다 클 때
        1200: {
          centeredSlides: false,
          spaceBetween: 100
        }
      },
      modules: [swiper__WEBPACK_IMPORTED_MODULE_1__.Autoplay]
    });
  })();
  (() => {
    const instagram = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".main__instagram");
    const removeClass = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".swiper");
    const instagramCarousel = new swiper__WEBPACK_IMPORTED_MODULE_1__["default"]((0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".swiper", instagram), {
      loop: true,
      centeredSlides: true,
      slidesPerView: "auto",
      spaceBetween: 13,
      scrollbar: {
        el: ".swiper-scrollbar"
      },
      breakpoints: {
        //브라우저가 1200보다 클 때
        1200: {
          loop: false,
          centeredSlides: false,
          slidesPerView: "5",
          spaceBetween: 20
        }
      },
      modules: [swiper__WEBPACK_IMPORTED_MODULE_1__.Scrollbar]
    });
  })();
};



/***/ }),

/***/ "./js/trend.js":
/*!*********************!*\
  !*** ./js/trend.js ***!
  \*********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "trendList": () => (/* binding */ trendList)
/* harmony export */ });
/* harmony import */ var _helper__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./helper */ "./js/helper.js");
/* harmony import */ var swiper__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! swiper */ "./node_modules/swiper/swiper.esm.js");
/* harmony import */ var _common__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./common */ "./js/common.js");



const trendList = () => {
  (() => {
    const lists = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.find)(".list-thumbnail");
    lists.forEach((list) => new _common__WEBPACK_IMPORTED_MODULE_2__.ListThumbnail(list));
  })();
  (() => {
    const carouselContainer = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".trend-list nav .swiper");
    const carousel = new swiper__WEBPACK_IMPORTED_MODULE_1__["default"](carouselContainer, {
      slidesPerView: "auto",
      freeMode: {
        enabled: true
      },
      modules: [swiper__WEBPACK_IMPORTED_MODULE_1__.FreeMode]
    });
  })();
  (() => {
    const theme = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".trend-list aside");
    if (!theme)
      return;
    const carouselContainer = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".swiper", theme);
    const carouselWrapper = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".swiper-wrapper", theme);
    const carouselHtml = carouselWrapper.innerHTML;
    const carouselPrev = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".swiper-button-prev", theme);
    const carouselNext = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(".swiper-button-next", theme);
    const isLessThanExtraLarge = () => window.innerWidth < 1200;
    const getCarouselOptions = () => isLessThanExtraLarge() ? {
      slidesPerView: "auto",
      spaceBetween: 6,
      freeMode: {
        enabled: true
      },
      modules: [swiper__WEBPACK_IMPORTED_MODULE_1__.FreeMode]
    } : {
      // slidesPerGroup: 4,
      slidesPerView: 4,
      spaceBetween: 16,
      navigation: {
        nextEl: carouselNext,
        prevEl: carouselPrev
      },
      modules: [swiper__WEBPACK_IMPORTED_MODULE_1__.Navigation]
    };
    const makeCarousel = () => {
      if (carousel)
        carousel.destroy(true, true);
      carousel = new swiper__WEBPACK_IMPORTED_MODULE_1__["default"](carouselContainer, getCarouselOptions());
    };
    const getDeviceSize = () => isLessThanExtraLarge() ? "lg" : "xl";
    const onResize = () => {
      const deviceSize = getDeviceSize();
      if (currentDeviceSize === deviceSize)
        return;
      console.log("reset");
      currentDeviceSize = deviceSize;
      makeCarousel();
    };
    let currentDeviceSize = getDeviceSize();
    let carousel = new swiper__WEBPACK_IMPORTED_MODULE_1__["default"](carouselContainer, getCarouselOptions());
    requestAnimationFrame(onResize);
    (0,_helper__WEBPACK_IMPORTED_MODULE_0__.on)(window, "resize", (0,_helper__WEBPACK_IMPORTED_MODULE_0__.debounce)(onResize));
  })();
  (() => {
    const modalClassName = ".modal-trend-contents";
    const modals = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.find)(modalClassName);
    modals.forEach((modal) => (() => {
      const tab = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.findOne)(`${modalClassName}__tab`, modal);
      if (!tab)
        return;
      const tabMenus = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.find)("a", tab);
      const tabPanels = (0,_helper__WEBPACK_IMPORTED_MODULE_0__.find)(`${modalClassName}__panel`, modal);
      const toggleTabPanels = (currentIndex) => {
        tabMenus.forEach((menu, index) => menu.classList[currentIndex === index ? "add" : "remove"](`${modalClassName.substring(1)}__tab-item--active`));
        tabPanels.forEach((panel, index) => panel.classList[currentIndex === index ? "add" : "remove"](`${modalClassName.substring(1)}__panel--active`));
      };
      tabMenus.forEach(
        (menu, index) => (0,_helper__WEBPACK_IMPORTED_MODULE_0__.on)(menu, "click", (event) => {
          event.preventDefault();
          toggleTabPanels(index);
        })
      );
      (0,_helper__WEBPACK_IMPORTED_MODULE_0__.on)(
        modal,
        "show.bs.modal",
        () => toggleTabPanels(0)
      );
    })());
  })();
};



/***/ }),

/***/ "./scss/app.scss":
/*!***********************!*\
  !*** ./scss/app.scss ***!
  \***********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin


/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = __webpack_modules__;
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/chunk loaded */
/******/ 	(() => {
/******/ 		var deferred = [];
/******/ 		__webpack_require__.O = (result, chunkIds, fn, priority) => {
/******/ 			if(chunkIds) {
/******/ 				priority = priority || 0;
/******/ 				for(var i = deferred.length; i > 0 && deferred[i - 1][2] > priority; i--) deferred[i] = deferred[i - 1];
/******/ 				deferred[i] = [chunkIds, fn, priority];
/******/ 				return;
/******/ 			}
/******/ 			var notFulfilled = Infinity;
/******/ 			for (var i = 0; i < deferred.length; i++) {
/******/ 				var [chunkIds, fn, priority] = deferred[i];
/******/ 				var fulfilled = true;
/******/ 				for (var j = 0; j < chunkIds.length; j++) {
/******/ 					if ((priority & 1 === 0 || notFulfilled >= priority) && Object.keys(__webpack_require__.O).every((key) => (__webpack_require__.O[key](chunkIds[j])))) {
/******/ 						chunkIds.splice(j--, 1);
/******/ 					} else {
/******/ 						fulfilled = false;
/******/ 						if(priority < notFulfilled) notFulfilled = priority;
/******/ 					}
/******/ 				}
/******/ 				if(fulfilled) {
/******/ 					deferred.splice(i--, 1)
/******/ 					var r = fn();
/******/ 					if (r !== undefined) result = r;
/******/ 				}
/******/ 			}
/******/ 			return result;
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/define property getters */
/******/ 	(() => {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = (exports, definition) => {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	(() => {
/******/ 		__webpack_require__.o = (obj, prop) => (Object.prototype.hasOwnProperty.call(obj, prop))
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/jsonp chunk loading */
/******/ 	(() => {
/******/ 		// no baseURI
/******/ 		
/******/ 		// object to store loaded and loading chunks
/******/ 		// undefined = chunk not loaded, null = chunk preloaded/prefetched
/******/ 		// [resolve, reject, Promise] = chunk loading, 0 = chunk loaded
/******/ 		var installedChunks = {
/******/ 			"app": 0
/******/ 		};
/******/ 		
/******/ 		// no chunk on demand loading
/******/ 		
/******/ 		// no prefetching
/******/ 		
/******/ 		// no preloaded
/******/ 		
/******/ 		// no HMR
/******/ 		
/******/ 		// no HMR manifest
/******/ 		
/******/ 		__webpack_require__.O.j = (chunkId) => (installedChunks[chunkId] === 0);
/******/ 		
/******/ 		// install a JSONP callback for chunk loading
/******/ 		var webpackJsonpCallback = (parentChunkLoadingFunction, data) => {
/******/ 			var [chunkIds, moreModules, runtime] = data;
/******/ 			// add "moreModules" to the modules object,
/******/ 			// then flag all "chunkIds" as loaded and fire callback
/******/ 			var moduleId, chunkId, i = 0;
/******/ 			if(chunkIds.some((id) => (installedChunks[id] !== 0))) {
/******/ 				for(moduleId in moreModules) {
/******/ 					if(__webpack_require__.o(moreModules, moduleId)) {
/******/ 						__webpack_require__.m[moduleId] = moreModules[moduleId];
/******/ 					}
/******/ 				}
/******/ 				if(runtime) var result = runtime(__webpack_require__);
/******/ 			}
/******/ 			if(parentChunkLoadingFunction) parentChunkLoadingFunction(data);
/******/ 			for(;i < chunkIds.length; i++) {
/******/ 				chunkId = chunkIds[i];
/******/ 				if(__webpack_require__.o(installedChunks, chunkId) && installedChunks[chunkId]) {
/******/ 					installedChunks[chunkId][0]();
/******/ 				}
/******/ 				installedChunks[chunkId] = 0;
/******/ 			}
/******/ 			return __webpack_require__.O(result);
/******/ 		}
/******/ 		
/******/ 		var chunkLoadingGlobal = self["webpackChunk"] = self["webpackChunk"] || [];
/******/ 		chunkLoadingGlobal.forEach(webpackJsonpCallback.bind(null, 0));
/******/ 		chunkLoadingGlobal.push = webpackJsonpCallback.bind(null, chunkLoadingGlobal.push.bind(chunkLoadingGlobal));
/******/ 	})();
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module depends on other loaded chunks and execution need to be delayed
/******/ 	__webpack_require__.O(undefined, ["vendors"], () => (__webpack_require__("./js/app.js")))
/******/ 	var __webpack_exports__ = __webpack_require__.O(undefined, ["vendors"], () => (__webpack_require__("./scss/app.scss")))
/******/ 	__webpack_exports__ = __webpack_require__.O(__webpack_exports__);
/******/ 	
/******/ })()
;
//# sourceMappingURL=data:application/json;charset=utf-8;base64,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LGtCQUFrQixxQkFBcUI7V0FDdkM7V0FDQTtXQUNBLEtBQUs7V0FDTDtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7Ozs7O1dDM0JBO1dBQ0E7V0FDQTtXQUNBO1dBQ0EseUNBQXlDLHdDQUF3QztXQUNqRjtXQUNBO1dBQ0E7Ozs7O1dDUEE7Ozs7O1dDQUE7V0FDQTtXQUNBO1dBQ0EsdURBQXVELGlCQUFpQjtXQUN4RTtXQUNBLGdEQUFnRCxhQUFhO1dBQzdEOzs7OztXQ05BOztXQUVBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTs7V0FFQTs7V0FFQTs7V0FFQTs7V0FFQTs7V0FFQTs7V0FFQTs7V0FFQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQSxNQUFNLHFCQUFxQjtXQUMzQjtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBOztXQUVBO1dBQ0E7V0FDQTs7Ozs7VUVoREE7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vLy4vanMvYXBwLmpzIiwid2VicGFjazovLy8uL2pzL2JlbmVmaXRzLmpzIiwid2VicGFjazovLy8uL2pzL2NvbW1vbi5qcyIsIndlYnBhY2s6Ly8vLi9qcy9oZWxwZXIuanMiLCJ3ZWJwYWNrOi8vLy4vanMvbWFpbi5qcyIsIndlYnBhY2s6Ly8vLi9qcy90cmVuZC5qcyIsIndlYnBhY2s6Ly8vLi9zY3NzL2FwcC5zY3NzPzk3NDIiLCJ3ZWJwYWNrOi8vL3dlYnBhY2svYm9vdHN0cmFwIiwid2VicGFjazovLy93ZWJwYWNrL3J1bnRpbWUvY2h1bmsgbG9hZGVkIiwid2VicGFjazovLy93ZWJwYWNrL3J1bnRpbWUvZGVmaW5lIHByb3BlcnR5IGdldHRlcnMiLCJ3ZWJwYWNrOi8vL3dlYnBhY2svcnVudGltZS9oYXNPd25Qcm9wZXJ0eSBzaG9ydGhhbmQiLCJ3ZWJwYWNrOi8vL3dlYnBhY2svcnVudGltZS9tYWtlIG5hbWVzcGFjZSBvYmplY3QiLCJ3ZWJwYWNrOi8vL3dlYnBhY2svcnVudGltZS9qc29ucCBjaHVuayBsb2FkaW5nIiwid2VicGFjazovLy93ZWJwYWNrL2JlZm9yZS1zdGFydHVwIiwid2VicGFjazovLy93ZWJwYWNrL3N0YXJ0dXAiLCJ3ZWJwYWNrOi8vL3dlYnBhY2svYWZ0ZXItc3RhcnR1cCJdLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgQXBwIGZyb20gJ2h3YWx5LWFwcCc7XHJcbmltcG9ydCAqIGFzIGJvb3RzdHJhcCBmcm9tICdib290c3RyYXAnO1xyXG53aW5kb3cuYm9vdHN0cmFwID0gYm9vdHN0cmFwO1xyXG5cclxuaW1wb3J0IHtnbG9iYWxOYXZ9IGZyb20gJy4vY29tbW9uJztcclxuaW1wb3J0IHttYWlufSBmcm9tICcuL21haW4nO1xyXG5pbXBvcnQge2JlbmVmaXRzTG9jYWx9IGZyb20gJy4vYmVuZWZpdHMnO1xyXG5pbXBvcnQge3RyZW5kTGlzdH0gZnJvbSAnLi90cmVuZCc7XHJcblxyXG5jb25zdCBhcHAgPSBuZXcgQXBwKCk7XHJcblxyXG5hcHAuYWRkKHtnbG9iYWxOYXZ9KTtcclxuYXBwLmFkZCh7YmVuZWZpdHNMb2NhbH0pO1xyXG5hcHAuYWRkKHt0cmVuZExpc3R9KTtcclxuYXBwLmFkZCh7bWFpbn0pO1xyXG5cclxuYXBwLmF1dG8oJ2dsb2JhbE5hdicpO1xyXG5cclxuYXBwLnJlYWR5QW5kUnVuKCk7IiwiaW1wb3J0IHtmaW5kT25lLCBmaW5kLCBvbn0gZnJvbSAnLi9oZWxwZXInO1xyXG5cclxuY29uc3QgYmVuZWZpdHNMb2NhbCA9ICgpID0+IHtcclxuICAgIGNvbnN0IG1lbnUgPSBmaW5kT25lKCcuYmVuZWZpdHNfX21lbnUtLWxvY2FsIG5hdiArIGRpdicpO1xyXG4gICAgY29uc3QgY3VycmVudEl0ZW0gPSBmaW5kT25lKCdzdHJvbmcnLCBtZW51KS5jbG9zZXN0KCdsaScpO1xyXG4gICAgY29uc3QgbG9jYWxJdGVtcyA9IGZpbmQoJ2EnLCBtZW51KTtcclxuICAgIGNvbnN0IGFjdGl2ZUxvY2FsQ2xhc3NOYW1lID0gJ2JlbmVmaXRzX19tZW51LWl0ZW0tLWxvY2FsLWhpZGUnO1xyXG4gICAgY29uc3Qgc2hvd0xvY2FsID0gKCkgPT4gY3VycmVudEl0ZW0uY2xhc3NMaXN0LnJlbW92ZShhY3RpdmVMb2NhbENsYXNzTmFtZSk7XHJcbiAgICBjb25zdCByZW1vdmVMb2NhbCA9ICgpID0+IGN1cnJlbnRJdGVtLmNsYXNzTGlzdC5hZGQoYWN0aXZlTG9jYWxDbGFzc05hbWUpO1xyXG4gICAgY29uc3QgdG9nZ2xFdmVudCA9IChpdGVtKSA9PiB7XHJcbiAgICAgICAgb24oaXRlbSwgJ21vdXNlZW50ZXInLCByZW1vdmVMb2NhbCk7XHJcbiAgICAgICAgb24oaXRlbSwgJ21vdXNlbGVhdmUnLCBzaG93TG9jYWwpO1xyXG4gICAgfTtcclxuXHJcbiAgICAvLyBsb2NhbEl0ZW1zLmZvckVhY2goaXRlbSA9PiB0b2dnbEV2ZW50KGl0ZW0pKTtcclxufTtcclxuXHJcbmV4cG9ydCB7XHJcbiAgICBiZW5lZml0c0xvY2FsXHJcbn0iLCJpbXBvcnQge2ZpbmRPbmUsIGZpbmQsIG9ufSBmcm9tICcuL2hlbHBlcic7XHJcbmltcG9ydCAnYm9vdHN0cmFwJztcclxuXHJcbmNvbnN0IGdsb2JhbE5hdiA9ICgpID0+IHtcclxuICAgIGNvbnN0IGJvZHkgPSBkb2N1bWVudC5ib2R5O1xyXG4gICAgY29uc3Qgc2l0ZUhlYWRlciA9IGZpbmRPbmUoJy5zaXRlLWhlYWRlcicpO1xyXG4gICAgY29uc3QgbWVudSA9IGZpbmRPbmUoJ25hdicsIHNpdGVIZWFkZXIpO1xyXG4gICAgY29uc3QgbWVudUJ1dHRvbiA9IGZpbmRPbmUoJ2J1dHRvbicsIHNpdGVIZWFkZXIpO1xyXG4gICAgY29uc3QgdG9nZ2xlTWVudSA9ICgpID0+IHtcclxuICAgICAgICBib2R5LmNsYXNzTGlzdC50b2dnbGUoJ29wZW4tZ2xvYmFsLW5hdicpO1xyXG4gICAgICAgIG1lbnUuc2Nyb2xsVG9wID0gMDtcclxuICAgIH07XHJcblxyXG4gICAgb24obWVudUJ1dHRvbiwgJ2NsaWNrJywgdG9nZ2xlTWVudSlcclxufTtcclxuXHJcbmNvbnN0IExpc3RUaHVtYm5haWwgPSBjbGFzcyB7XHJcbiAgICAjaGlkZGVuSXRlbUNsYXNzTmFtZSA9ICdsaXN0LXRodW1ibmFpbF9faXRlbS0taGlkZSc7XHJcbiAgICAjbW9yZTtcclxuICAgICNoaWRkZW5JdGVtcztcclxuXHJcbiAgICBjb25zdHJ1Y3RvcihlbGVtZW50KSB7XHJcbiAgICAgICAgaWYgKCFlbGVtZW50KSByZXR1cm47XHJcblxyXG4gICAgICAgIHRoaXMuI21vcmUgPSBmaW5kT25lKCdwOmxhc3Qtb2YtdHlwZSBidXR0b24nLCBlbGVtZW50KTtcclxuXHJcbiAgICAgICAgaWYgKCF0aGlzLiNtb3JlKSByZXR1cm47XHJcblxyXG4gICAgICAgIHRoaXMuI2hpZGRlbkl0ZW1zID0gZmluZChgLiR7dGhpcy4jaGlkZGVuSXRlbUNsYXNzTmFtZX1gLCBlbGVtZW50KTtcclxuXHJcbiAgICAgICAgdGhpcy4jaW5pdEV2ZW50cygpO1xyXG4gICAgfVxyXG5cclxuICAgICNzaG93SXRlbXMoKSB7XHJcbiAgICAgICB0aGlzLiNoaWRkZW5JdGVtcy5mb3JFYWNoKGl0ZW0gPT4gaXRlbS5jbGFzc0xpc3QucmVtb3ZlKHRoaXMuI2hpZGRlbkl0ZW1DbGFzc05hbWUpKTtcclxuICAgIH1cclxuXHJcbiAgICAjaGlkZU1vcmUoKSB7XHJcbiAgICAgICAgdGhpcy4jbW9yZS5wYXJlbnROb2RlLnJlbW92ZSgpO1xyXG4gICAgfVxyXG5cclxuICAgICNpbml0RXZlbnRzKCkge1xyXG4gICAgICAgIG9uKHRoaXMuI21vcmUsICdjbGljaycsICgpID0+IHtcclxuICAgICAgICAgICAgdGhpcy4jaGlkZU1vcmUoKTtcclxuICAgICAgICAgICAgdGhpcy4jc2hvd0l0ZW1zKCk7XHJcbiAgICAgICAgfSk7XHJcbiAgICB9XHJcbn07XHJcblxyXG5leHBvcnQge1xyXG4gICAgZ2xvYmFsTmF2LFxyXG4gICAgTGlzdFRodW1ibmFpbCxcclxufSIsImV4cG9ydCBjb25zdCBmaW5kT25lID0gKHNlbGVjdG9yLCBjb250ZXh0ID0gZG9jdW1lbnQpID0+IGNvbnRleHQucXVlcnlTZWxlY3RvcihzZWxlY3Rvcik7XHJcbmV4cG9ydCBjb25zdCBmaW5kID0gKHNlbGVjdG9yLCBjb250ZXh0ID0gZG9jdW1lbnQpID0+IFsuLi5jb250ZXh0LnF1ZXJ5U2VsZWN0b3JBbGwoc2VsZWN0b3IpXTtcclxuXHJcbmV4cG9ydCBjb25zdCBvbiA9ICh0YXJnZXQsIHR5cGUsIGNhbGxiYWNrLCBjYXB0dXJlID0gZmFsc2UpID0+IHtcclxuICAgIGlmICghdGFyZ2V0IHx8ICF0YXJnZXQuYWRkRXZlbnRMaXN0ZW5lcikgcmV0dXJuO1xyXG5cclxuICAgIHRhcmdldC5hZGRFdmVudExpc3RlbmVyKHR5cGUsIGNhbGxiYWNrLCBjYXB0dXJlKTtcclxufTtcclxuZXhwb3J0IGNvbnN0IG9mZiA9ICh0YXJnZXQsIHR5cGUsIGNhbGxiYWNrKSA9PiB0YXJnZXQucmVtb3ZlRXZlbnRMaXN0ZW5lcih0eXBlLCBjYWxsYmFjayk7XHJcbmV4cG9ydCBjb25zdCBkZWxlZ2F0ZSA9ICh0YXJnZXQsIHNlbGVjdG9yLCB0eXBlLCBoYW5kbGVyLCBjYXB0dXJlKSA9PiB7XHJcbiAgICBjb25zdCBkaXNwYXRjaEV2ZW50ID0gKGV2ZW50KSA9PiB7XHJcbiAgICAgICAgY29uc3QgdGFyZ2V0RWxlbWVudCA9IGV2ZW50LnRhcmdldDtcclxuICAgICAgICBjb25zdCBwb3RlbnRpYWxFbGVtZW50cyA9IHRhcmdldEVsZW1lbnQuY2xvc2VzdChzZWxlY3Rvcik7XHJcblxyXG4gICAgICAgIGlmIChwb3RlbnRpYWxFbGVtZW50cykge1xyXG4gICAgICAgICAgICBoYW5kbGVyLmNhbGwocG90ZW50aWFsRWxlbWVudHMsIGV2ZW50KTtcclxuICAgICAgICB9XHJcbiAgICB9O1xyXG5cclxuICAgIG9uKHRhcmdldCwgdHlwZSwgZGlzcGF0Y2hFdmVudCwgISFjYXB0dXJlKTtcclxufTtcclxuXHJcbmV4cG9ydCBjb25zdCBnZXRPZmZzZXQgPSAoZWxlbWVudCkgPT4ge1xyXG4gICAgY29uc3QgcmVjdCA9IGVsZW1lbnQuZ2V0Qm91bmRpbmdDbGllbnRSZWN0KCk7XHJcblxyXG4gICAgcmV0dXJuIHtcclxuICAgICAgICB0b3A6IHJlY3QudG9wICsgd2luZG93LnNjcm9sbFksXHJcbiAgICAgICAgbGVmdDogcmVjdC5sZWZ0ICsgd2luZG93LnNjcm9sbFhcclxuICAgIH07XHJcbn07XHJcblxyXG5leHBvcnQgY29uc3QgZGVib3VuY2UgPSAoZnVuYywgd2FpdCA9IDMwMCkgPT4ge1xyXG4gICAgbGV0IGluRGVib3VuY2U7XHJcblxyXG4gICAgcmV0dXJuICguLi5hcmdzKSA9PiB7XHJcbiAgICAgICAgaW5EZWJvdW5jZSAmJiBjbGVhclRpbWVvdXQoaW5EZWJvdW5jZSk7XHJcbiAgICAgICAgaW5EZWJvdW5jZSA9IHNldFRpbWVvdXQoKCkgPT4gZnVuYyguLi5hcmdzKSwgd2FpdCk7XHJcbiAgICB9O1xyXG59OyIsImltcG9ydCB7ZmluZCwgZmluZE9uZSwgb259IGZyb20gXCIuL2hlbHBlclwiO1xyXG5cclxuaW1wb3J0IFN3aXBlciwge0F1dG9wbGF5LCBFZmZlY3RGYWRlLCBQYWdpbmF0aW9uLCBOYXZpZ2F0aW9uLCBTY3JvbGxiYXIsIEZyZWVNb2RlfSBmcm9tIFwic3dpcGVyXCI7XHJcblxyXG5jb25zdCBtYWluID0gKCkgPT4ge1xyXG5cclxuICAgIC8vdGFiXHJcbiAgICAoKCkgPT4ge1xyXG4gICAgICAgIGNvbnN0IGNhdGVnb3J5ID0gZmluZE9uZSgnLm1haW5fX2NhdGVnb3J5Jyk7XHJcbiAgICAgICAgY29uc3QgdGFiTWVudXMgPSBmaW5kKCcuY2F0ZWdvcnktdGFiIGEnLCBjYXRlZ29yeSk7XHJcbiAgICAgICAgY29uc3QgdGFiUGFuZWxzID0gZmluZChgLmNhdGVnb3J5LXBhbmVsYCwgY2F0ZWdvcnkpO1xyXG4gICAgICAgIGNvbnN0IGxvYWN0aW9uID0gZmluZE9uZSgnLmNhdGVnb3J5LXRhYi1jb250ZW50c19fbG9jYXRpb24nLCBjYXRlZ29yeSk7XHJcbiAgICAgICAgY29uc3QgcHJvZ3JhbSA9IGZpbmRPbmUoJy5jYXRlZ29yeS10YWItY29udGVudHNfX3Byb2dyYW0nLCBjYXRlZ29yeSk7XHJcblxyXG4gICAgICAgIGNvbnN0IHRvZ2dsZVRhYlBhbmVscyA9IChjdXJyZW50SW5kZXgpID0+IHtcclxuICAgICAgICAgICAgdGFiTWVudXMuZm9yRWFjaCgobWVudSwgaW5kZXgpID0+XHJcbiAgICAgICAgICAgICAgICBtZW51LmNsYXNzTGlzdFtcclxuICAgICAgICAgICAgICAgICAgICBjdXJyZW50SW5kZXggPT09IGluZGV4XHJcbiAgICAgICAgICAgICAgICAgICAgICAgID8gJ2FkZCdcclxuICAgICAgICAgICAgICAgICAgICAgICAgOiAncmVtb3ZlJ1xyXG4gICAgICAgICAgICAgICAgICAgIF0oYGNhdGVnb3J5LXRhYl9faXRlbS0tYWN0aXZlYCkpO1xyXG4gICAgICAgICAgICB0YWJQYW5lbHMuZm9yRWFjaCgocGFuZWwsIGluZGV4KSA9PlxyXG4gICAgICAgICAgICAgICAgcGFuZWwuY2xhc3NMaXN0W1xyXG4gICAgICAgICAgICAgICAgICAgIGN1cnJlbnRJbmRleCA9PT0gaW5kZXhcclxuICAgICAgICAgICAgICAgICAgICAgICAgPyAnYWRkJ1xyXG4gICAgICAgICAgICAgICAgICAgICAgICA6ICdyZW1vdmUnXHJcbiAgICAgICAgICAgICAgICAgICAgXShgY2F0ZWdvcnktcGFuZWwtLWFjdGl2ZWApKTtcclxuICAgICAgICB9O1xyXG5cclxuICAgICAgICB0YWJNZW51cy5mb3JFYWNoKChtZW51LCBpbmRleCkgPT5cclxuICAgICAgICAgICAgb24obWVudSwgJ2NsaWNrJywgKGV2ZW50KSA9PiB7XHJcbiAgICAgICAgICAgICAgICBldmVudC5wcmV2ZW50RGVmYXVsdCgpO1xyXG5cclxuICAgICAgICAgICAgICAgIHRvZ2dsZVRhYlBhbmVscyhpbmRleCk7XHJcbiAgICAgICAgICAgIH0pXHJcbiAgICAgICAgKTtcclxuXHJcbiAgICAgICAgY29uc3QgY2F0ZWdvcnlDYXJvdXNlbCA9IG5ldyBTd2lwZXIoZmluZE9uZSgnLnN3aXBlcicsIGNhdGVnb3J5KSx7XHJcbiAgICAgICAgICAgIHNsaWRlc1BlclZpZXc6ICdhdXRvJyxcclxuICAgICAgICAgICAgZnJlZU1vZGU6IHtcclxuICAgICAgICAgICAgICAgIGVuYWJsZWQ6IHRydWUsXHJcbiAgICAgICAgICAgIH0sXHJcbiAgICAgICAgICAgIG1vZHVsZXM6IFtGcmVlTW9kZV0sXHJcbiAgICAgICAgfSk7XHJcblxyXG4gICAgfSkoKTtcclxuXHJcbiAgICAvL+2KuOugjOuTnFxyXG4gICAgKCgpID0+IHtcclxuICAgICAgICBjb25zdCB0cmVuZCA9IGZpbmRPbmUoJy5tYWluX190cmVuZCcpO1xyXG4gICAgICAgIGNvbnN0IHRyZW5kQ2Fyb3VzZWwgPSBuZXcgU3dpcGVyKGZpbmRPbmUoJy5zd2lwZXInLCB0cmVuZCkse1xyXG4gICAgICAgICAgICBsb29wOiBmYWxzZSxcclxuICAgICAgICAgICAgc3BlZWQ6IDUwMCxcclxuICAgICAgICAgICAgc3BhY2VCZXR3ZWVuOiAxMCxcclxuICAgICAgICAgICAgc2xpZGVzUGVyVmlldzogXCJhdXRvXCIsXHJcbiAgICAgICAgICAgIHNsaWRlVG9DbGlja2VkU2xpZGU6IHRydWUsXHJcblxyXG4gICAgICAgICAgICBzY3JvbGxiYXI6IHtcclxuICAgICAgICAgICAgICAgIGVsOiAnLnN3aXBlci1zY3JvbGxiYXInLFxyXG4gICAgICAgICAgICB9LFxyXG5cclxuICAgICAgICAgICAgYnJlYWtwb2ludHM6IHtcclxuICAgICAgICAgICAgICAgIC8v67iM65287Jqw7KCA6rCAIDEyMDDrs7Tri6Qg7YG0IOuVjFxyXG4gICAgICAgICAgICAgICAgMTIwMDoge1xyXG4gICAgICAgICAgICAgICAgICAgIC8vIGxvb3A6IHRydWUsXHJcbiAgICAgICAgICAgICAgICAgICAgc2xpZGVzUGVyVmlldzogXCJhdXRvXCIsXHJcbiAgICAgICAgICAgICAgICAgICAgc3BhY2VCZXR3ZWVuOiAyMCxcclxuICAgICAgICAgICAgICAgICAgICAvLyBhbGxvd1RvdWNoTW92ZTogZmFsc2UsXHJcbiAgICAgICAgICAgICAgICB9LFxyXG4gICAgICAgICAgICB9LFxyXG5cclxuICAgICAgICAgICAgbW9kdWxlczogW05hdmlnYXRpb24sIFNjcm9sbGJhcl0sXHJcbiAgICAgICAgfSk7XHJcbiAgICB9KSgpO1xyXG5cclxuICAgIC8v7J2067Kk7Yq4XHJcbiAgICAoKCkgPT4ge1xyXG4gICAgICAgIGNvbnN0IGV2ZW50ID0gZmluZE9uZSgnLm1haW5fX2V2ZW50Jyk7XHJcbiAgICAgICAgY29uc3QgZXZlbnRDYXJvdXNlbCA9IG5ldyBTd2lwZXIoZmluZE9uZSgnLnN3aXBlcicsIGV2ZW50KSx7XHJcbiAgICAgICAgICAgIGxvb3A6IGZhbHNlLFxyXG4gICAgICAgICAgICBzcGVlZDogNTAwLFxyXG4gICAgICAgICAgICBzcGFjZUJldHdlZW46IDIwLFxyXG4gICAgICAgICAgICBzbGlkZXNQZXJWaWV3OiAyLjUsXHJcbiAgICAgICAgICAgIGNlbnRlcmVkU2xpZGVzOiBmYWxzZSxcclxuICAgICAgICAgICAgc2xpZGVUb0NsaWNrZWRTbGlkZTogdHJ1ZSxcclxuXHJcbiAgICAgICAgICAgIG5hdmlnYXRpb246IHtcclxuICAgICAgICAgICAgICAgIHByZXZFbDogZmluZE9uZSgnLmV2ZW50LXN3aXBlcl9fcGFnaW5nLXByZXYnLCBldmVudCksXHJcbiAgICAgICAgICAgICAgICBuZXh0RWw6IGZpbmRPbmUoJy5ldmVudC1zd2lwZXJfX3BhZ2luZy1uZXh0JywgZXZlbnQpLFxyXG4gICAgICAgICAgICB9LFxyXG5cclxuICAgICAgICAgICAgc2Nyb2xsYmFyOiB7XHJcbiAgICAgICAgICAgICAgICBlbDogJy5zd2lwZXItc2Nyb2xsYmFyJyxcclxuICAgICAgICAgICAgfSxcclxuXHJcbiAgICAgICAgICAgIGJyZWFrcG9pbnRzOiB7XHJcbiAgICAgICAgICAgICAgICAxMjAwOiB7XHJcbiAgICAgICAgICAgICAgICAgICAgLy8gbG9vcDogdHJ1ZSxcclxuICAgICAgICAgICAgICAgICAgICBzcGFjZUJldHdlZW46IDIwLFxyXG4gICAgICAgICAgICAgICAgICAgIHNsaWRlc1BlclZpZXc6ICdhdXRvJyxcclxuICAgICAgICAgICAgICAgICAgICBjZW50ZXJlZFNsaWRlczogdHJ1ZSxcclxuICAgICAgICAgICAgICAgICAgICBpbml0aWFsU2xpZGU6IDIsXHJcbiAgICAgICAgICAgICAgICAgICAgYWxsb3dUb3VjaE1vdmU6IGZhbHNlLFxyXG4gICAgICAgICAgICAgICAgfSxcclxuICAgICAgICAgICAgfSxcclxuXHJcbiAgICAgICAgICAgIG1vZHVsZXM6IFtOYXZpZ2F0aW9uLCBTY3JvbGxiYXJdLFxyXG4gICAgICAgIH0pO1xyXG4gICAgfSkoKTtcclxuXHJcbiAgICAvL+yXrO2WieqwgOuKlCDri6wg7LC47Jes6riw6rSAXHJcbiAgICAoKCkgPT4ge1xyXG4gICAgICAgIGNvbnN0IG9yZ2FuaXphdGlvbiA9IGZpbmRPbmUoJy5tYWluX19vcmdhbml6YXRpb24nKTtcclxuICAgICAgICBjb25zdCBvcmdhbml6YXRpb25DYXJvdXNlbCA9IG5ldyBTd2lwZXIoZmluZE9uZSgnLnN3aXBlcicsIG9yZ2FuaXphdGlvbikse1xyXG4gICAgICAgICAgICBsb29wOiB0cnVlLFxyXG4gICAgICAgICAgICBzbGlkZXNQZXJWaWV3OiBcImF1dG9cIixcclxuICAgICAgICAgICAgLy8gY2VudGVyZWRTbGlkZXM6IHRydWUsXHJcbiAgICAgICAgICAgIHNwYWNlQmV0d2VlbjogNDAsXHJcblxyXG4gICAgICAgICAgICBhdXRvcGxheToge1xyXG4gICAgICAgICAgICAgICAgZGVsYXk6IDMwMDAsXHJcbiAgICAgICAgICAgICAgICBkaXNhYmxlT25JbnRlcmFjdGlvbjogZmFsc2UsXHJcbiAgICAgICAgICAgIH0sXHJcblxyXG4gICAgICAgICAgICBicmVha3BvaW50czoge1xyXG4gICAgICAgICAgICAgICAgLy/ruIzrnbzsmrDsoIDqsIAgMTIwMOuztOuLpCDtgbQg65WMXHJcbiAgICAgICAgICAgICAgICAxMjAwOiB7XHJcbiAgICAgICAgICAgICAgICAgICAgY2VudGVyZWRTbGlkZXM6IGZhbHNlLFxyXG4gICAgICAgICAgICAgICAgICAgIHNwYWNlQmV0d2VlbjogMTAwLFxyXG4gICAgICAgICAgICAgICAgfSxcclxuICAgICAgICAgICAgfSxcclxuXHJcbiAgICAgICAgICAgIG1vZHVsZXM6IFtBdXRvcGxheV0sXHJcbiAgICAgICAgfSk7XHJcbiAgICB9KSgpO1xyXG5cclxuICAgIC8v7J247Iqk7YOA6re4656oXHJcbiAgICAoKCkgPT4ge1xyXG4gICAgICAgIGNvbnN0IGluc3RhZ3JhbSA9IGZpbmRPbmUoJy5tYWluX19pbnN0YWdyYW0nKTtcclxuICAgICAgICBjb25zdCByZW1vdmVDbGFzcyA9IGZpbmRPbmUoJy5zd2lwZXInKTtcclxuXHJcbiAgICAgICAgY29uc3QgaW5zdGFncmFtQ2Fyb3VzZWwgPSBuZXcgU3dpcGVyKGZpbmRPbmUoJy5zd2lwZXInLCBpbnN0YWdyYW0pLHtcclxuICAgICAgICAgICAgbG9vcDogdHJ1ZSxcclxuICAgICAgICAgICAgY2VudGVyZWRTbGlkZXM6IHRydWUsXHJcbiAgICAgICAgICAgIHNsaWRlc1BlclZpZXc6IFwiYXV0b1wiLFxyXG4gICAgICAgICAgICBzcGFjZUJldHdlZW46IDEzLFxyXG4gICAgICAgICAgICBzY3JvbGxiYXI6IHtcclxuICAgICAgICAgICAgICAgIGVsOiAnLnN3aXBlci1zY3JvbGxiYXInLFxyXG4gICAgICAgICAgICB9LFxyXG5cclxuICAgICAgICAgICAgYnJlYWtwb2ludHM6IHtcclxuICAgICAgICAgICAgICAgIC8v67iM65287Jqw7KCA6rCAIDEyMDDrs7Tri6Qg7YG0IOuVjFxyXG4gICAgICAgICAgICAgICAgMTIwMDoge1xyXG4gICAgICAgICAgICAgICAgICAgIGxvb3A6IGZhbHNlLFxyXG4gICAgICAgICAgICAgICAgICAgIGNlbnRlcmVkU2xpZGVzOiBmYWxzZSxcclxuICAgICAgICAgICAgICAgICAgICBzbGlkZXNQZXJWaWV3OiBcIjVcIixcclxuICAgICAgICAgICAgICAgICAgICBzcGFjZUJldHdlZW46IDIwLFxyXG4gICAgICAgICAgICAgICAgfSxcclxuICAgICAgICAgICAgfSxcclxuXHJcbiAgICAgICAgICAgIG1vZHVsZXM6IFtTY3JvbGxiYXJdLFxyXG4gICAgICAgIH0pO1xyXG5cclxuICAgIH0pKCk7XHJcblxyXG5cclxufTtcclxuXHJcbmV4cG9ydCB7XHJcbiAgICBtYWluXHJcbn0iLCJpbXBvcnQge2ZpbmRPbmUsIGZpbmQsIG9uLCBkZWJvdW5jZX0gZnJvbSAnLi9oZWxwZXInO1xyXG5pbXBvcnQgU3dpcGVyLCB7RnJlZU1vZGUsIE5hdmlnYXRpb259IGZyb20gJ3N3aXBlcic7XHJcbmltcG9ydCB7TGlzdFRodW1ibmFpbH0gZnJvbSAnLi9jb21tb24nO1xyXG5cclxuY29uc3QgdHJlbmRMaXN0ID0gKCkgPT4ge1xyXG4gICAgKCgpID0+IHtcclxuICAgICAgICBjb25zdCBsaXN0cyA9IGZpbmQoJy5saXN0LXRodW1ibmFpbCcpO1xyXG5cclxuICAgICAgICBsaXN0cy5mb3JFYWNoKGxpc3QgPT4gbmV3IExpc3RUaHVtYm5haWwobGlzdCkpO1xyXG4gICAgfSkoKTtcclxuXHJcbiAgICAoKCkgPT4ge1xyXG4gICAgICAgIGNvbnN0IGNhcm91c2VsQ29udGFpbmVyID0gZmluZE9uZSgnLnRyZW5kLWxpc3QgbmF2IC5zd2lwZXInKTtcclxuICAgICAgICBjb25zdCBjYXJvdXNlbCA9IG5ldyBTd2lwZXIoY2Fyb3VzZWxDb250YWluZXIsIHtcclxuICAgICAgICAgICAgc2xpZGVzUGVyVmlldzogJ2F1dG8nLFxyXG4gICAgICAgICAgICBmcmVlTW9kZToge1xyXG4gICAgICAgICAgICAgICAgZW5hYmxlZDogdHJ1ZSxcclxuICAgICAgICAgICAgfSxcclxuICAgICAgICAgICAgbW9kdWxlczogW0ZyZWVNb2RlXSxcclxuICAgICAgICB9KTtcclxuICAgIH0pKCk7XHJcblxyXG4gICAgKCgpID0+IHtcclxuICAgICAgICBjb25zdCB0aGVtZSA9IGZpbmRPbmUoJy50cmVuZC1saXN0IGFzaWRlJyk7XHJcblxyXG4gICAgICAgIGlmICghdGhlbWUpIHJldHVybjtcclxuXHJcbiAgICAgICAgY29uc3QgY2Fyb3VzZWxDb250YWluZXIgPSBmaW5kT25lKCcuc3dpcGVyJywgdGhlbWUpO1xyXG4gICAgICAgIGNvbnN0IGNhcm91c2VsV3JhcHBlciA9IGZpbmRPbmUoJy5zd2lwZXItd3JhcHBlcicsIHRoZW1lKTtcclxuICAgICAgICBjb25zdCBjYXJvdXNlbEh0bWwgPSBjYXJvdXNlbFdyYXBwZXIuaW5uZXJIVE1MO1xyXG4gICAgICAgIGNvbnN0IGNhcm91c2VsUHJldiA9IGZpbmRPbmUoJy5zd2lwZXItYnV0dG9uLXByZXYnLCB0aGVtZSk7XHJcbiAgICAgICAgY29uc3QgY2Fyb3VzZWxOZXh0ID0gZmluZE9uZSgnLnN3aXBlci1idXR0b24tbmV4dCcsIHRoZW1lKTtcclxuXHJcbiAgICAgICAgY29uc3QgaXNMZXNzVGhhbkV4dHJhTGFyZ2UgPSAoKSA9PiB3aW5kb3cuaW5uZXJXaWR0aCA8IDEyMDA7XHJcbiAgICAgICAgY29uc3QgZ2V0Q2Fyb3VzZWxPcHRpb25zID0gKCkgPT5cclxuICAgICAgICAgICAgaXNMZXNzVGhhbkV4dHJhTGFyZ2UoKVxyXG4gICAgICAgICAgICAgICAgPyB7XHJcbiAgICAgICAgICAgICAgICAgICAgc2xpZGVzUGVyVmlldzogJ2F1dG8nLFxyXG4gICAgICAgICAgICAgICAgICAgIHNwYWNlQmV0d2VlbjogNixcclxuICAgICAgICAgICAgICAgICAgICBmcmVlTW9kZToge1xyXG4gICAgICAgICAgICAgICAgICAgICAgICBlbmFibGVkOiB0cnVlLFxyXG4gICAgICAgICAgICAgICAgICAgIH0sXHJcbiAgICAgICAgICAgICAgICAgICAgbW9kdWxlczogW0ZyZWVNb2RlXSxcclxuICAgICAgICAgICAgICAgIH1cclxuICAgICAgICAgICAgICAgIDoge1xyXG4gICAgICAgICAgICAgICAgICAgIC8vIHNsaWRlc1Blckdyb3VwOiA0LFxyXG4gICAgICAgICAgICAgICAgICAgIHNsaWRlc1BlclZpZXc6IDQsXHJcbiAgICAgICAgICAgICAgICAgICAgc3BhY2VCZXR3ZWVuOiAxNixcclxuICAgICAgICAgICAgICAgICAgICBuYXZpZ2F0aW9uOiB7XHJcbiAgICAgICAgICAgICAgICAgICAgICAgIG5leHRFbDogY2Fyb3VzZWxOZXh0LFxyXG4gICAgICAgICAgICAgICAgICAgICAgICBwcmV2RWw6IGNhcm91c2VsUHJldixcclxuICAgICAgICAgICAgICAgICAgICB9LFxyXG4gICAgICAgICAgICAgICAgICAgIG1vZHVsZXM6IFtOYXZpZ2F0aW9uXSxcclxuICAgICAgICAgICAgICAgIH07XHJcbiAgICAgICAgY29uc3QgbWFrZUNhcm91c2VsID0gKCkgPT4ge1xyXG4gICAgICAgICAgICBpZiAoY2Fyb3VzZWwpIGNhcm91c2VsLmRlc3Ryb3kodHJ1ZSwgdHJ1ZSk7XHJcbiAgICAgICAgICAgIC8vIGNhcm91c2VsV3JhcHBlci5pbm5lckhUTUwgPSBjYXJvdXNlbEh0bWwgKyAoaXNMZXNzVGhhbkV4dHJhTGFyZ2UoKSA/ICcnIDogJzxkaXYgY2xhc3M9XCJzd2lwZXItc2xpZGVcIj48L2Rpdj4nLnJlcGVhdCgyKSk7XHJcbiAgICAgICAgICAgIGNhcm91c2VsID0gbmV3IFN3aXBlcihjYXJvdXNlbENvbnRhaW5lciwgZ2V0Q2Fyb3VzZWxPcHRpb25zKCkpO1xyXG4gICAgICAgIH07XHJcbiAgICAgICAgY29uc3QgZ2V0RGV2aWNlU2l6ZSA9ICgpID0+IGlzTGVzc1RoYW5FeHRyYUxhcmdlKCkgPyAnbGcnIDogJ3hsJztcclxuICAgICAgICBjb25zdCBvblJlc2l6ZSA9ICgpID0+IHtcclxuICAgICAgICAgICAgY29uc3QgZGV2aWNlU2l6ZSA9IGdldERldmljZVNpemUoKTtcclxuXHJcbiAgICAgICAgICAgIGlmIChjdXJyZW50RGV2aWNlU2l6ZSA9PT0gZGV2aWNlU2l6ZSkgcmV0dXJuO1xyXG4gICAgICAgICAgICBjb25zb2xlLmxvZygncmVzZXQnKTtcclxuXHJcbiAgICAgICAgICAgIGN1cnJlbnREZXZpY2VTaXplID0gZGV2aWNlU2l6ZTtcclxuICAgICAgICAgICAgbWFrZUNhcm91c2VsKCk7XHJcbiAgICAgICAgfTtcclxuICAgICAgICBsZXQgY3VycmVudERldmljZVNpemUgPSBnZXREZXZpY2VTaXplKCk7XHJcbiAgICAgICAgbGV0IGNhcm91c2VsID0gbmV3IFN3aXBlcihjYXJvdXNlbENvbnRhaW5lciwgZ2V0Q2Fyb3VzZWxPcHRpb25zKCkpO1xyXG5cclxuICAgICAgICByZXF1ZXN0QW5pbWF0aW9uRnJhbWUob25SZXNpemUpO1xyXG5cclxuICAgICAgICBvbih3aW5kb3csICdyZXNpemUnLCBkZWJvdW5jZShvblJlc2l6ZSkpO1xyXG4gICAgfSkoKTtcclxuXHJcbiAgICAoKCkgPT4ge1xyXG4gICAgICAgIGNvbnN0IG1vZGFsQ2xhc3NOYW1lID0gJy5tb2RhbC10cmVuZC1jb250ZW50cyc7XHJcbiAgICAgICAgY29uc3QgbW9kYWxzID0gZmluZChtb2RhbENsYXNzTmFtZSk7XHJcblxyXG4gICAgICAgIG1vZGFscy5mb3JFYWNoKG1vZGFsID0+ICgoKSA9PiB7XHJcbiAgICAgICAgICAgIGNvbnN0IHRhYiA9IGZpbmRPbmUoYCR7bW9kYWxDbGFzc05hbWV9X190YWJgLCBtb2RhbCk7XHJcblxyXG4gICAgICAgICAgICBpZiAoIXRhYikgcmV0dXJuO1xyXG5cclxuICAgICAgICAgICAgY29uc3QgdGFiTWVudXMgPSBmaW5kKCdhJywgdGFiKTtcclxuICAgICAgICAgICAgY29uc3QgdGFiUGFuZWxzID0gZmluZChgJHttb2RhbENsYXNzTmFtZX1fX3BhbmVsYCwgbW9kYWwpO1xyXG4gICAgICAgICAgICBjb25zdCB0b2dnbGVUYWJQYW5lbHMgPSAoY3VycmVudEluZGV4KSA9PiB7XHJcbiAgICAgICAgICAgICAgICB0YWJNZW51cy5mb3JFYWNoKChtZW51LCBpbmRleCkgPT5cclxuICAgICAgICAgICAgICAgICAgICBtZW51LmNsYXNzTGlzdFtcclxuICAgICAgICAgICAgICAgICAgICAgICAgY3VycmVudEluZGV4ID09PSBpbmRleFxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgPyAnYWRkJ1xyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgOiAncmVtb3ZlJ1xyXG4gICAgICAgICAgICAgICAgICAgICAgICBdKGAke21vZGFsQ2xhc3NOYW1lLnN1YnN0cmluZygxKX1fX3RhYi1pdGVtLS1hY3RpdmVgKSk7XHJcbiAgICAgICAgICAgICAgICB0YWJQYW5lbHMuZm9yRWFjaCgocGFuZWwsIGluZGV4KSA9PlxyXG4gICAgICAgICAgICAgICAgICAgIHBhbmVsLmNsYXNzTGlzdFtcclxuICAgICAgICAgICAgICAgICAgICAgICAgY3VycmVudEluZGV4ID09PSBpbmRleFxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgPyAnYWRkJ1xyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgOiAncmVtb3ZlJ1xyXG4gICAgICAgICAgICAgICAgICAgICAgICBdKGAke21vZGFsQ2xhc3NOYW1lLnN1YnN0cmluZygxKX1fX3BhbmVsLS1hY3RpdmVgKSk7XHJcbiAgICAgICAgICAgIH07XHJcblxyXG4gICAgICAgICAgICB0YWJNZW51cy5mb3JFYWNoKChtZW51LCBpbmRleCkgPT5cclxuICAgICAgICAgICAgICAgIG9uKG1lbnUsICdjbGljaycsIChldmVudCkgPT4ge1xyXG4gICAgICAgICAgICAgICAgICAgIGV2ZW50LnByZXZlbnREZWZhdWx0KCk7XHJcbiAgICAgICAgICAgICAgICAgICAgdG9nZ2xlVGFiUGFuZWxzKGluZGV4KTtcclxuICAgICAgICAgICAgICAgIH0pXHJcbiAgICAgICAgICAgICk7XHJcblxyXG4gICAgICAgICAgICBvbihtb2RhbCwgJ3Nob3cuYnMubW9kYWwnLCAoKSA9PlxyXG4gICAgICAgICAgICAgICAgdG9nZ2xlVGFiUGFuZWxzKDApXHJcbiAgICAgICAgICAgICk7XHJcbiAgICAgICAgfSkoKSk7XHJcbiAgICB9KSgpO1xyXG59O1xyXG5cclxuZXhwb3J0IHtcclxuICAgIHRyZW5kTGlzdFxyXG59IiwiLy8gZXh0cmFjdGVkIGJ5IG1pbmktY3NzLWV4dHJhY3QtcGx1Z2luXG5leHBvcnQge307IiwiLy8gVGhlIG1vZHVsZSBjYWNoZVxudmFyIF9fd2VicGFja19tb2R1bGVfY2FjaGVfXyA9IHt9O1xuXG4vLyBUaGUgcmVxdWlyZSBmdW5jdGlvblxuZnVuY3Rpb24gX193ZWJwYWNrX3JlcXVpcmVfXyhtb2R1bGVJZCkge1xuXHQvLyBDaGVjayBpZiBtb2R1bGUgaXMgaW4gY2FjaGVcblx0dmFyIGNhY2hlZE1vZHVsZSA9IF9fd2VicGFja19tb2R1bGVfY2FjaGVfX1ttb2R1bGVJZF07XG5cdGlmIChjYWNoZWRNb2R1bGUgIT09IHVuZGVmaW5lZCkge1xuXHRcdHJldHVybiBjYWNoZWRNb2R1bGUuZXhwb3J0cztcblx0fVxuXHQvLyBDcmVhdGUgYSBuZXcgbW9kdWxlIChhbmQgcHV0IGl0IGludG8gdGhlIGNhY2hlKVxuXHR2YXIgbW9kdWxlID0gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXSA9IHtcblx0XHQvLyBubyBtb2R1bGUuaWQgbmVlZGVkXG5cdFx0Ly8gbm8gbW9kdWxlLmxvYWRlZCBuZWVkZWRcblx0XHRleHBvcnRzOiB7fVxuXHR9O1xuXG5cdC8vIEV4ZWN1dGUgdGhlIG1vZHVsZSBmdW5jdGlvblxuXHRfX3dlYnBhY2tfbW9kdWxlc19fW21vZHVsZUlkXShtb2R1bGUsIG1vZHVsZS5leHBvcnRzLCBfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblxuXHQvLyBSZXR1cm4gdGhlIGV4cG9ydHMgb2YgdGhlIG1vZHVsZVxuXHRyZXR1cm4gbW9kdWxlLmV4cG9ydHM7XG59XG5cbi8vIGV4cG9zZSB0aGUgbW9kdWxlcyBvYmplY3QgKF9fd2VicGFja19tb2R1bGVzX18pXG5fX3dlYnBhY2tfcmVxdWlyZV9fLm0gPSBfX3dlYnBhY2tfbW9kdWxlc19fO1xuXG4iLCJ2YXIgZGVmZXJyZWQgPSBbXTtcbl9fd2VicGFja19yZXF1aXJlX18uTyA9IChyZXN1bHQsIGNodW5rSWRzLCBmbiwgcHJpb3JpdHkpID0+IHtcblx0aWYoY2h1bmtJZHMpIHtcblx0XHRwcmlvcml0eSA9IHByaW9yaXR5IHx8IDA7XG5cdFx0Zm9yKHZhciBpID0gZGVmZXJyZWQubGVuZ3RoOyBpID4gMCAmJiBkZWZlcnJlZFtpIC0gMV1bMl0gPiBwcmlvcml0eTsgaS0tKSBkZWZlcnJlZFtpXSA9IGRlZmVycmVkW2kgLSAxXTtcblx0XHRkZWZlcnJlZFtpXSA9IFtjaHVua0lkcywgZm4sIHByaW9yaXR5XTtcblx0XHRyZXR1cm47XG5cdH1cblx0dmFyIG5vdEZ1bGZpbGxlZCA9IEluZmluaXR5O1xuXHRmb3IgKHZhciBpID0gMDsgaSA8IGRlZmVycmVkLmxlbmd0aDsgaSsrKSB7XG5cdFx0dmFyIFtjaHVua0lkcywgZm4sIHByaW9yaXR5XSA9IGRlZmVycmVkW2ldO1xuXHRcdHZhciBmdWxmaWxsZWQgPSB0cnVlO1xuXHRcdGZvciAodmFyIGogPSAwOyBqIDwgY2h1bmtJZHMubGVuZ3RoOyBqKyspIHtcblx0XHRcdGlmICgocHJpb3JpdHkgJiAxID09PSAwIHx8IG5vdEZ1bGZpbGxlZCA+PSBwcmlvcml0eSkgJiYgT2JqZWN0LmtleXMoX193ZWJwYWNrX3JlcXVpcmVfXy5PKS5ldmVyeSgoa2V5KSA9PiAoX193ZWJwYWNrX3JlcXVpcmVfXy5PW2tleV0oY2h1bmtJZHNbal0pKSkpIHtcblx0XHRcdFx0Y2h1bmtJZHMuc3BsaWNlKGotLSwgMSk7XG5cdFx0XHR9IGVsc2Uge1xuXHRcdFx0XHRmdWxmaWxsZWQgPSBmYWxzZTtcblx0XHRcdFx0aWYocHJpb3JpdHkgPCBub3RGdWxmaWxsZWQpIG5vdEZ1bGZpbGxlZCA9IHByaW9yaXR5O1xuXHRcdFx0fVxuXHRcdH1cblx0XHRpZihmdWxmaWxsZWQpIHtcblx0XHRcdGRlZmVycmVkLnNwbGljZShpLS0sIDEpXG5cdFx0XHR2YXIgciA9IGZuKCk7XG5cdFx0XHRpZiAociAhPT0gdW5kZWZpbmVkKSByZXN1bHQgPSByO1xuXHRcdH1cblx0fVxuXHRyZXR1cm4gcmVzdWx0O1xufTsiLCIvLyBkZWZpbmUgZ2V0dGVyIGZ1bmN0aW9ucyBmb3IgaGFybW9ueSBleHBvcnRzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLmQgPSAoZXhwb3J0cywgZGVmaW5pdGlvbikgPT4ge1xuXHRmb3IodmFyIGtleSBpbiBkZWZpbml0aW9uKSB7XG5cdFx0aWYoX193ZWJwYWNrX3JlcXVpcmVfXy5vKGRlZmluaXRpb24sIGtleSkgJiYgIV9fd2VicGFja19yZXF1aXJlX18ubyhleHBvcnRzLCBrZXkpKSB7XG5cdFx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywga2V5LCB7IGVudW1lcmFibGU6IHRydWUsIGdldDogZGVmaW5pdGlvbltrZXldIH0pO1xuXHRcdH1cblx0fVxufTsiLCJfX3dlYnBhY2tfcmVxdWlyZV9fLm8gPSAob2JqLCBwcm9wKSA9PiAoT2JqZWN0LnByb3RvdHlwZS5oYXNPd25Qcm9wZXJ0eS5jYWxsKG9iaiwgcHJvcCkpIiwiLy8gZGVmaW5lIF9fZXNNb2R1bGUgb24gZXhwb3J0c1xuX193ZWJwYWNrX3JlcXVpcmVfXy5yID0gKGV4cG9ydHMpID0+IHtcblx0aWYodHlwZW9mIFN5bWJvbCAhPT0gJ3VuZGVmaW5lZCcgJiYgU3ltYm9sLnRvU3RyaW5nVGFnKSB7XG5cdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIFN5bWJvbC50b1N0cmluZ1RhZywgeyB2YWx1ZTogJ01vZHVsZScgfSk7XG5cdH1cblx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsICdfX2VzTW9kdWxlJywgeyB2YWx1ZTogdHJ1ZSB9KTtcbn07IiwiLy8gbm8gYmFzZVVSSVxuXG4vLyBvYmplY3QgdG8gc3RvcmUgbG9hZGVkIGFuZCBsb2FkaW5nIGNodW5rc1xuLy8gdW5kZWZpbmVkID0gY2h1bmsgbm90IGxvYWRlZCwgbnVsbCA9IGNodW5rIHByZWxvYWRlZC9wcmVmZXRjaGVkXG4vLyBbcmVzb2x2ZSwgcmVqZWN0LCBQcm9taXNlXSA9IGNodW5rIGxvYWRpbmcsIDAgPSBjaHVuayBsb2FkZWRcbnZhciBpbnN0YWxsZWRDaHVua3MgPSB7XG5cdFwiYXBwXCI6IDBcbn07XG5cbi8vIG5vIGNodW5rIG9uIGRlbWFuZCBsb2FkaW5nXG5cbi8vIG5vIHByZWZldGNoaW5nXG5cbi8vIG5vIHByZWxvYWRlZFxuXG4vLyBubyBITVJcblxuLy8gbm8gSE1SIG1hbmlmZXN0XG5cbl9fd2VicGFja19yZXF1aXJlX18uTy5qID0gKGNodW5rSWQpID0+IChpbnN0YWxsZWRDaHVua3NbY2h1bmtJZF0gPT09IDApO1xuXG4vLyBpbnN0YWxsIGEgSlNPTlAgY2FsbGJhY2sgZm9yIGNodW5rIGxvYWRpbmdcbnZhciB3ZWJwYWNrSnNvbnBDYWxsYmFjayA9IChwYXJlbnRDaHVua0xvYWRpbmdGdW5jdGlvbiwgZGF0YSkgPT4ge1xuXHR2YXIgW2NodW5rSWRzLCBtb3JlTW9kdWxlcywgcnVudGltZV0gPSBkYXRhO1xuXHQvLyBhZGQgXCJtb3JlTW9kdWxlc1wiIHRvIHRoZSBtb2R1bGVzIG9iamVjdCxcblx0Ly8gdGhlbiBmbGFnIGFsbCBcImNodW5rSWRzXCIgYXMgbG9hZGVkIGFuZCBmaXJlIGNhbGxiYWNrXG5cdHZhciBtb2R1bGVJZCwgY2h1bmtJZCwgaSA9IDA7XG5cdGlmKGNodW5rSWRzLnNvbWUoKGlkKSA9PiAoaW5zdGFsbGVkQ2h1bmtzW2lkXSAhPT0gMCkpKSB7XG5cdFx0Zm9yKG1vZHVsZUlkIGluIG1vcmVNb2R1bGVzKSB7XG5cdFx0XHRpZihfX3dlYnBhY2tfcmVxdWlyZV9fLm8obW9yZU1vZHVsZXMsIG1vZHVsZUlkKSkge1xuXHRcdFx0XHRfX3dlYnBhY2tfcmVxdWlyZV9fLm1bbW9kdWxlSWRdID0gbW9yZU1vZHVsZXNbbW9kdWxlSWRdO1xuXHRcdFx0fVxuXHRcdH1cblx0XHRpZihydW50aW1lKSB2YXIgcmVzdWx0ID0gcnVudGltZShfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblx0fVxuXHRpZihwYXJlbnRDaHVua0xvYWRpbmdGdW5jdGlvbikgcGFyZW50Q2h1bmtMb2FkaW5nRnVuY3Rpb24oZGF0YSk7XG5cdGZvcig7aSA8IGNodW5rSWRzLmxlbmd0aDsgaSsrKSB7XG5cdFx0Y2h1bmtJZCA9IGNodW5rSWRzW2ldO1xuXHRcdGlmKF9fd2VicGFja19yZXF1aXJlX18ubyhpbnN0YWxsZWRDaHVua3MsIGNodW5rSWQpICYmIGluc3RhbGxlZENodW5rc1tjaHVua0lkXSkge1xuXHRcdFx0aW5zdGFsbGVkQ2h1bmtzW2NodW5rSWRdWzBdKCk7XG5cdFx0fVxuXHRcdGluc3RhbGxlZENodW5rc1tjaHVua0lkXSA9IDA7XG5cdH1cblx0cmV0dXJuIF9fd2VicGFja19yZXF1aXJlX18uTyhyZXN1bHQpO1xufVxuXG52YXIgY2h1bmtMb2FkaW5nR2xvYmFsID0gc2VsZltcIndlYnBhY2tDaHVua1wiXSA9IHNlbGZbXCJ3ZWJwYWNrQ2h1bmtcIl0gfHwgW107XG5jaHVua0xvYWRpbmdHbG9iYWwuZm9yRWFjaCh3ZWJwYWNrSnNvbnBDYWxsYmFjay5iaW5kKG51bGwsIDApKTtcbmNodW5rTG9hZGluZ0dsb2JhbC5wdXNoID0gd2VicGFja0pzb25wQ2FsbGJhY2suYmluZChudWxsLCBjaHVua0xvYWRpbmdHbG9iYWwucHVzaC5iaW5kKGNodW5rTG9hZGluZ0dsb2JhbCkpOyIsIiIsIi8vIHN0YXJ0dXBcbi8vIExvYWQgZW50cnkgbW9kdWxlIGFuZCByZXR1cm4gZXhwb3J0c1xuLy8gVGhpcyBlbnRyeSBtb2R1bGUgZGVwZW5kcyBvbiBvdGhlciBsb2FkZWQgY2h1bmtzIGFuZCBleGVjdXRpb24gbmVlZCB0byBiZSBkZWxheWVkXG5fX3dlYnBhY2tfcmVxdWlyZV9fLk8odW5kZWZpbmVkLCBbXCJ2ZW5kb3JzXCJdLCAoKSA9PiAoX193ZWJwYWNrX3JlcXVpcmVfXyhcIi4vanMvYXBwLmpzXCIpKSlcbnZhciBfX3dlYnBhY2tfZXhwb3J0c19fID0gX193ZWJwYWNrX3JlcXVpcmVfXy5PKHVuZGVmaW5lZCwgW1widmVuZG9yc1wiXSwgKCkgPT4gKF9fd2VicGFja19yZXF1aXJlX18oXCIuL3Njc3MvYXBwLnNjc3NcIikpKVxuX193ZWJwYWNrX2V4cG9ydHNfXyA9IF9fd2VicGFja19yZXF1aXJlX18uTyhfX3dlYnBhY2tfZXhwb3J0c19fKTtcbiIsIiJdLCJuYW1lcyI6W10sInNvdXJjZVJvb3QiOiIifQ==