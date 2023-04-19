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
/* harmony import */ var _benefits__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./benefits */ "./js/benefits.js");


window.bootstrap = bootstrap__WEBPACK_IMPORTED_MODULE_1__;


const app = new hwaly_app__WEBPACK_IMPORTED_MODULE_0__["default"]();
app.add({ globalNav: _common__WEBPACK_IMPORTED_MODULE_2__.globalNav });
app.add({ benefitsLocal: _benefits__WEBPACK_IMPORTED_MODULE_3__.benefitsLocal });
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
    item.addEventListener("mouseenter", removeLocal);
    item.addEventListener("mouseleave", showLocal);
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
/* harmony export */   "globalNav": () => (/* binding */ globalNav)
/* harmony export */ });
/* harmony import */ var _helper__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./helper */ "./js/helper.js");
/* harmony import */ var bootstrap__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! bootstrap */ "./node_modules/bootstrap/dist/js/bootstrap.esm.js");


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
//# sourceMappingURL=data:application/json;charset=utf-8;base64,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O1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBOztVQUVBO1VBQ0E7O1VBRUE7VUFDQTtVQUNBOztVQUVBO1VBQ0E7Ozs7O1dDekJBO1dBQ0E7V0FDQTtXQUNBO1dBQ0EsK0JBQStCLHdDQUF3QztXQUN2RTtXQUNBO1dBQ0E7V0FDQTtXQUNBLGlCQUFpQixxQkFBcUI7V0FDdEM7V0FDQTtXQUNBLGtCQUFrQixxQkFBcUI7V0FDdkM7V0FDQTtXQUNBLEtBQUs7V0FDTDtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7Ozs7O1dDM0JBO1dBQ0E7V0FDQTtXQUNBO1dBQ0EseUNBQXlDLHdDQUF3QztXQUNqRjtXQUNBO1dBQ0E7Ozs7O1dDUEE7Ozs7O1dDQUE7V0FDQTtXQUNBO1dBQ0EsdURBQXVELGlCQUFpQjtXQUN4RTtXQUNBLGdEQUFnRCxhQUFhO1dBQzdEOzs7OztXQ05BOztXQUVBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTs7V0FFQTs7V0FFQTs7V0FFQTs7V0FFQTs7V0FFQTs7V0FFQTs7V0FFQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQSxNQUFNLHFCQUFxQjtXQUMzQjtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBOztXQUVBO1dBQ0E7V0FDQTs7Ozs7VUVoREE7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vLy4vanMvYXBwLmpzIiwid2VicGFjazovLy8uL2pzL2JlbmVmaXRzLmpzIiwid2VicGFjazovLy8uL2pzL2NvbW1vbi5qcyIsIndlYnBhY2s6Ly8vLi9qcy9oZWxwZXIuanMiLCJ3ZWJwYWNrOi8vLy4vc2Nzcy9hcHAuc2Nzcz85NzQyIiwid2VicGFjazovLy93ZWJwYWNrL2Jvb3RzdHJhcCIsIndlYnBhY2s6Ly8vd2VicGFjay9ydW50aW1lL2NodW5rIGxvYWRlZCIsIndlYnBhY2s6Ly8vd2VicGFjay9ydW50aW1lL2RlZmluZSBwcm9wZXJ0eSBnZXR0ZXJzIiwid2VicGFjazovLy93ZWJwYWNrL3J1bnRpbWUvaGFzT3duUHJvcGVydHkgc2hvcnRoYW5kIiwid2VicGFjazovLy93ZWJwYWNrL3J1bnRpbWUvbWFrZSBuYW1lc3BhY2Ugb2JqZWN0Iiwid2VicGFjazovLy93ZWJwYWNrL3J1bnRpbWUvanNvbnAgY2h1bmsgbG9hZGluZyIsIndlYnBhY2s6Ly8vd2VicGFjay9iZWZvcmUtc3RhcnR1cCIsIndlYnBhY2s6Ly8vd2VicGFjay9zdGFydHVwIiwid2VicGFjazovLy93ZWJwYWNrL2FmdGVyLXN0YXJ0dXAiXSwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IEFwcCBmcm9tICdod2FseS1hcHAnO1xyXG5pbXBvcnQgKiBhcyBib290c3RyYXAgZnJvbSAnYm9vdHN0cmFwJztcclxud2luZG93LmJvb3RzdHJhcCA9IGJvb3RzdHJhcDtcclxuXHJcbmltcG9ydCB7Z2xvYmFsTmF2fSBmcm9tICcuL2NvbW1vbic7XHJcbmltcG9ydCB7YmVuZWZpdHNMb2NhbH0gZnJvbSAnLi9iZW5lZml0cyc7XHJcblxyXG5jb25zdCBhcHAgPSBuZXcgQXBwKCk7XHJcblxyXG5hcHAuYWRkKHtnbG9iYWxOYXZ9KTtcclxuYXBwLmFkZCh7YmVuZWZpdHNMb2NhbH0pO1xyXG5cclxuYXBwLmF1dG8oJ2dsb2JhbE5hdicpO1xyXG5cclxuYXBwLnJlYWR5QW5kUnVuKCk7IiwiaW1wb3J0IHtmaW5kT25lLCBmaW5kfSBmcm9tICcuL2hlbHBlcic7XHJcblxyXG5jb25zdCBiZW5lZml0c0xvY2FsID0gKCkgPT4ge1xyXG4gICAgY29uc3QgbWVudSA9IGZpbmRPbmUoJy5iZW5lZml0c19fbWVudS0tbG9jYWwgbmF2ICsgZGl2Jyk7XHJcbiAgICBjb25zdCBjdXJyZW50SXRlbSA9IGZpbmRPbmUoJ3N0cm9uZycsIG1lbnUpLmNsb3Nlc3QoJ2xpJyk7XHJcbiAgICBjb25zdCBsb2NhbEl0ZW1zID0gZmluZCgnYScsIG1lbnUpO1xyXG4gICAgY29uc3QgYWN0aXZlTG9jYWxDbGFzc05hbWUgPSAnYmVuZWZpdHNfX21lbnUtaXRlbS0tbG9jYWwtaGlkZSc7XHJcbiAgICBjb25zdCBzaG93TG9jYWwgPSAoKSA9PiBjdXJyZW50SXRlbS5jbGFzc0xpc3QucmVtb3ZlKGFjdGl2ZUxvY2FsQ2xhc3NOYW1lKTtcclxuICAgIGNvbnN0IHJlbW92ZUxvY2FsID0gKCkgPT4gY3VycmVudEl0ZW0uY2xhc3NMaXN0LmFkZChhY3RpdmVMb2NhbENsYXNzTmFtZSk7XHJcbiAgICBjb25zdCB0b2dnbEV2ZW50ID0gKGl0ZW0pID0+IHtcclxuICAgICAgICBpdGVtLmFkZEV2ZW50TGlzdGVuZXIoJ21vdXNlZW50ZXInLCByZW1vdmVMb2NhbCk7XHJcbiAgICAgICAgaXRlbS5hZGRFdmVudExpc3RlbmVyKCdtb3VzZWxlYXZlJywgc2hvd0xvY2FsKTtcclxuICAgIH07XHJcblxyXG4gICAgLy8gbG9jYWxJdGVtcy5mb3JFYWNoKGl0ZW0gPT4gdG9nZ2xFdmVudChpdGVtKSk7XHJcbn07XHJcblxyXG5leHBvcnQge1xyXG4gICAgYmVuZWZpdHNMb2NhbFxyXG59IiwiaW1wb3J0IHtmaW5kT25lLCBvbn0gZnJvbSAnLi9oZWxwZXInO1xyXG5pbXBvcnQgJ2Jvb3RzdHJhcCc7XHJcblxyXG5jb25zdCBnbG9iYWxOYXYgPSAoKSA9PiB7XHJcbiAgICBjb25zdCBib2R5ID0gZG9jdW1lbnQuYm9keTtcclxuICAgIGNvbnN0IHNpdGVIZWFkZXIgPSBmaW5kT25lKCcuc2l0ZS1oZWFkZXInKTtcclxuICAgIGNvbnN0IG1lbnUgPSBmaW5kT25lKCduYXYnLCBzaXRlSGVhZGVyKTtcclxuICAgIGNvbnN0IG1lbnVCdXR0b24gPSBmaW5kT25lKCdidXR0b24nLCBzaXRlSGVhZGVyKTtcclxuICAgIGNvbnN0IHRvZ2dsZU1lbnUgPSAoKSA9PiB7XHJcbiAgICAgICAgYm9keS5jbGFzc0xpc3QudG9nZ2xlKCdvcGVuLWdsb2JhbC1uYXYnKTtcclxuICAgICAgICBtZW51LnNjcm9sbFRvcCA9IDA7XHJcbiAgICB9O1xyXG5cclxuICAgIG9uKG1lbnVCdXR0b24sICdjbGljaycsIHRvZ2dsZU1lbnUpXHJcbn07XHJcblxyXG5leHBvcnQge1xyXG4gICAgZ2xvYmFsTmF2XHJcbn0iLCJleHBvcnQgY29uc3QgZmluZE9uZSA9IChzZWxlY3RvciwgY29udGV4dCA9IGRvY3VtZW50KSA9PiBjb250ZXh0LnF1ZXJ5U2VsZWN0b3Ioc2VsZWN0b3IpO1xyXG5leHBvcnQgY29uc3QgZmluZCA9IChzZWxlY3RvciwgY29udGV4dCA9IGRvY3VtZW50KSA9PiBbLi4uY29udGV4dC5xdWVyeVNlbGVjdG9yQWxsKHNlbGVjdG9yKV07XHJcblxyXG5leHBvcnQgY29uc3Qgb24gPSAodGFyZ2V0LCB0eXBlLCBjYWxsYmFjaywgY2FwdHVyZSA9IGZhbHNlKSA9PiB7XHJcbiAgICBpZiAoIXRhcmdldCB8fCAhdGFyZ2V0LmFkZEV2ZW50TGlzdGVuZXIpIHJldHVybjtcclxuXHJcbiAgICB0YXJnZXQuYWRkRXZlbnRMaXN0ZW5lcih0eXBlLCBjYWxsYmFjaywgY2FwdHVyZSk7XHJcbn07XHJcbmV4cG9ydCBjb25zdCBvZmYgPSAodGFyZ2V0LCB0eXBlLCBjYWxsYmFjaykgPT4gdGFyZ2V0LnJlbW92ZUV2ZW50TGlzdGVuZXIodHlwZSwgY2FsbGJhY2spO1xyXG5leHBvcnQgY29uc3QgZGVsZWdhdGUgPSAodGFyZ2V0LCBzZWxlY3RvciwgdHlwZSwgaGFuZGxlciwgY2FwdHVyZSkgPT4ge1xyXG4gICAgY29uc3QgZGlzcGF0Y2hFdmVudCA9IChldmVudCkgPT4ge1xyXG4gICAgICAgIGNvbnN0IHRhcmdldEVsZW1lbnQgPSBldmVudC50YXJnZXQ7XHJcbiAgICAgICAgY29uc3QgcG90ZW50aWFsRWxlbWVudHMgPSB0YXJnZXRFbGVtZW50LmNsb3Nlc3Qoc2VsZWN0b3IpO1xyXG5cclxuICAgICAgICBpZiAocG90ZW50aWFsRWxlbWVudHMpIHtcclxuICAgICAgICAgICAgaGFuZGxlci5jYWxsKHBvdGVudGlhbEVsZW1lbnRzLCBldmVudCk7XHJcbiAgICAgICAgfVxyXG4gICAgfTtcclxuXHJcbiAgICBvbih0YXJnZXQsIHR5cGUsIGRpc3BhdGNoRXZlbnQsICEhY2FwdHVyZSk7XHJcbn07XHJcblxyXG5leHBvcnQgY29uc3QgZ2V0T2Zmc2V0ID0gKGVsZW1lbnQpID0+IHtcclxuICAgIGNvbnN0IHJlY3QgPSBlbGVtZW50LmdldEJvdW5kaW5nQ2xpZW50UmVjdCgpO1xyXG5cclxuICAgIHJldHVybiB7XHJcbiAgICAgICAgdG9wOiByZWN0LnRvcCArIHdpbmRvdy5zY3JvbGxZLFxyXG4gICAgICAgIGxlZnQ6IHJlY3QubGVmdCArIHdpbmRvdy5zY3JvbGxYXHJcbiAgICB9O1xyXG59O1xyXG5cclxuZXhwb3J0IGNvbnN0IGRlYm91bmNlID0gKGZ1bmMsIHdhaXQgPSAzMDApID0+IHtcclxuICAgIGxldCBpbkRlYm91bmNlO1xyXG5cclxuICAgIHJldHVybiAoLi4uYXJncykgPT4ge1xyXG4gICAgICAgIGluRGVib3VuY2UgJiYgY2xlYXJUaW1lb3V0KGluRGVib3VuY2UpO1xyXG4gICAgICAgIGluRGVib3VuY2UgPSBzZXRUaW1lb3V0KCgpID0+IGZ1bmMoLi4uYXJncyksIHdhaXQpO1xyXG4gICAgfTtcclxufTsiLCIvLyBleHRyYWN0ZWQgYnkgbWluaS1jc3MtZXh0cmFjdC1wbHVnaW5cbmV4cG9ydCB7fTsiLCIvLyBUaGUgbW9kdWxlIGNhY2hlXG52YXIgX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fID0ge307XG5cbi8vIFRoZSByZXF1aXJlIGZ1bmN0aW9uXG5mdW5jdGlvbiBfX3dlYnBhY2tfcmVxdWlyZV9fKG1vZHVsZUlkKSB7XG5cdC8vIENoZWNrIGlmIG1vZHVsZSBpcyBpbiBjYWNoZVxuXHR2YXIgY2FjaGVkTW9kdWxlID0gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXTtcblx0aWYgKGNhY2hlZE1vZHVsZSAhPT0gdW5kZWZpbmVkKSB7XG5cdFx0cmV0dXJuIGNhY2hlZE1vZHVsZS5leHBvcnRzO1xuXHR9XG5cdC8vIENyZWF0ZSBhIG5ldyBtb2R1bGUgKGFuZCBwdXQgaXQgaW50byB0aGUgY2FjaGUpXG5cdHZhciBtb2R1bGUgPSBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdID0ge1xuXHRcdC8vIG5vIG1vZHVsZS5pZCBuZWVkZWRcblx0XHQvLyBubyBtb2R1bGUubG9hZGVkIG5lZWRlZFxuXHRcdGV4cG9ydHM6IHt9XG5cdH07XG5cblx0Ly8gRXhlY3V0ZSB0aGUgbW9kdWxlIGZ1bmN0aW9uXG5cdF9fd2VicGFja19tb2R1bGVzX19bbW9kdWxlSWRdKG1vZHVsZSwgbW9kdWxlLmV4cG9ydHMsIF9fd2VicGFja19yZXF1aXJlX18pO1xuXG5cdC8vIFJldHVybiB0aGUgZXhwb3J0cyBvZiB0aGUgbW9kdWxlXG5cdHJldHVybiBtb2R1bGUuZXhwb3J0cztcbn1cblxuLy8gZXhwb3NlIHRoZSBtb2R1bGVzIG9iamVjdCAoX193ZWJwYWNrX21vZHVsZXNfXylcbl9fd2VicGFja19yZXF1aXJlX18ubSA9IF9fd2VicGFja19tb2R1bGVzX187XG5cbiIsInZhciBkZWZlcnJlZCA9IFtdO1xuX193ZWJwYWNrX3JlcXVpcmVfXy5PID0gKHJlc3VsdCwgY2h1bmtJZHMsIGZuLCBwcmlvcml0eSkgPT4ge1xuXHRpZihjaHVua0lkcykge1xuXHRcdHByaW9yaXR5ID0gcHJpb3JpdHkgfHwgMDtcblx0XHRmb3IodmFyIGkgPSBkZWZlcnJlZC5sZW5ndGg7IGkgPiAwICYmIGRlZmVycmVkW2kgLSAxXVsyXSA+IHByaW9yaXR5OyBpLS0pIGRlZmVycmVkW2ldID0gZGVmZXJyZWRbaSAtIDFdO1xuXHRcdGRlZmVycmVkW2ldID0gW2NodW5rSWRzLCBmbiwgcHJpb3JpdHldO1xuXHRcdHJldHVybjtcblx0fVxuXHR2YXIgbm90RnVsZmlsbGVkID0gSW5maW5pdHk7XG5cdGZvciAodmFyIGkgPSAwOyBpIDwgZGVmZXJyZWQubGVuZ3RoOyBpKyspIHtcblx0XHR2YXIgW2NodW5rSWRzLCBmbiwgcHJpb3JpdHldID0gZGVmZXJyZWRbaV07XG5cdFx0dmFyIGZ1bGZpbGxlZCA9IHRydWU7XG5cdFx0Zm9yICh2YXIgaiA9IDA7IGogPCBjaHVua0lkcy5sZW5ndGg7IGorKykge1xuXHRcdFx0aWYgKChwcmlvcml0eSAmIDEgPT09IDAgfHwgbm90RnVsZmlsbGVkID49IHByaW9yaXR5KSAmJiBPYmplY3Qua2V5cyhfX3dlYnBhY2tfcmVxdWlyZV9fLk8pLmV2ZXJ5KChrZXkpID0+IChfX3dlYnBhY2tfcmVxdWlyZV9fLk9ba2V5XShjaHVua0lkc1tqXSkpKSkge1xuXHRcdFx0XHRjaHVua0lkcy5zcGxpY2Uoai0tLCAxKTtcblx0XHRcdH0gZWxzZSB7XG5cdFx0XHRcdGZ1bGZpbGxlZCA9IGZhbHNlO1xuXHRcdFx0XHRpZihwcmlvcml0eSA8IG5vdEZ1bGZpbGxlZCkgbm90RnVsZmlsbGVkID0gcHJpb3JpdHk7XG5cdFx0XHR9XG5cdFx0fVxuXHRcdGlmKGZ1bGZpbGxlZCkge1xuXHRcdFx0ZGVmZXJyZWQuc3BsaWNlKGktLSwgMSlcblx0XHRcdHZhciByID0gZm4oKTtcblx0XHRcdGlmIChyICE9PSB1bmRlZmluZWQpIHJlc3VsdCA9IHI7XG5cdFx0fVxuXHR9XG5cdHJldHVybiByZXN1bHQ7XG59OyIsIi8vIGRlZmluZSBnZXR0ZXIgZnVuY3Rpb25zIGZvciBoYXJtb255IGV4cG9ydHNcbl9fd2VicGFja19yZXF1aXJlX18uZCA9IChleHBvcnRzLCBkZWZpbml0aW9uKSA9PiB7XG5cdGZvcih2YXIga2V5IGluIGRlZmluaXRpb24pIHtcblx0XHRpZihfX3dlYnBhY2tfcmVxdWlyZV9fLm8oZGVmaW5pdGlvbiwga2V5KSAmJiAhX193ZWJwYWNrX3JlcXVpcmVfXy5vKGV4cG9ydHMsIGtleSkpIHtcblx0XHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBrZXksIHsgZW51bWVyYWJsZTogdHJ1ZSwgZ2V0OiBkZWZpbml0aW9uW2tleV0gfSk7XG5cdFx0fVxuXHR9XG59OyIsIl9fd2VicGFja19yZXF1aXJlX18ubyA9IChvYmosIHByb3ApID0+IChPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwob2JqLCBwcm9wKSkiLCIvLyBkZWZpbmUgX19lc01vZHVsZSBvbiBleHBvcnRzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLnIgPSAoZXhwb3J0cykgPT4ge1xuXHRpZih0eXBlb2YgU3ltYm9sICE9PSAndW5kZWZpbmVkJyAmJiBTeW1ib2wudG9TdHJpbmdUYWcpIHtcblx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywgU3ltYm9sLnRvU3RyaW5nVGFnLCB7IHZhbHVlOiAnTW9kdWxlJyB9KTtcblx0fVxuXHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywgJ19fZXNNb2R1bGUnLCB7IHZhbHVlOiB0cnVlIH0pO1xufTsiLCIvLyBubyBiYXNlVVJJXG5cbi8vIG9iamVjdCB0byBzdG9yZSBsb2FkZWQgYW5kIGxvYWRpbmcgY2h1bmtzXG4vLyB1bmRlZmluZWQgPSBjaHVuayBub3QgbG9hZGVkLCBudWxsID0gY2h1bmsgcHJlbG9hZGVkL3ByZWZldGNoZWRcbi8vIFtyZXNvbHZlLCByZWplY3QsIFByb21pc2VdID0gY2h1bmsgbG9hZGluZywgMCA9IGNodW5rIGxvYWRlZFxudmFyIGluc3RhbGxlZENodW5rcyA9IHtcblx0XCJhcHBcIjogMFxufTtcblxuLy8gbm8gY2h1bmsgb24gZGVtYW5kIGxvYWRpbmdcblxuLy8gbm8gcHJlZmV0Y2hpbmdcblxuLy8gbm8gcHJlbG9hZGVkXG5cbi8vIG5vIEhNUlxuXG4vLyBubyBITVIgbWFuaWZlc3RcblxuX193ZWJwYWNrX3JlcXVpcmVfXy5PLmogPSAoY2h1bmtJZCkgPT4gKGluc3RhbGxlZENodW5rc1tjaHVua0lkXSA9PT0gMCk7XG5cbi8vIGluc3RhbGwgYSBKU09OUCBjYWxsYmFjayBmb3IgY2h1bmsgbG9hZGluZ1xudmFyIHdlYnBhY2tKc29ucENhbGxiYWNrID0gKHBhcmVudENodW5rTG9hZGluZ0Z1bmN0aW9uLCBkYXRhKSA9PiB7XG5cdHZhciBbY2h1bmtJZHMsIG1vcmVNb2R1bGVzLCBydW50aW1lXSA9IGRhdGE7XG5cdC8vIGFkZCBcIm1vcmVNb2R1bGVzXCIgdG8gdGhlIG1vZHVsZXMgb2JqZWN0LFxuXHQvLyB0aGVuIGZsYWcgYWxsIFwiY2h1bmtJZHNcIiBhcyBsb2FkZWQgYW5kIGZpcmUgY2FsbGJhY2tcblx0dmFyIG1vZHVsZUlkLCBjaHVua0lkLCBpID0gMDtcblx0aWYoY2h1bmtJZHMuc29tZSgoaWQpID0+IChpbnN0YWxsZWRDaHVua3NbaWRdICE9PSAwKSkpIHtcblx0XHRmb3IobW9kdWxlSWQgaW4gbW9yZU1vZHVsZXMpIHtcblx0XHRcdGlmKF9fd2VicGFja19yZXF1aXJlX18ubyhtb3JlTW9kdWxlcywgbW9kdWxlSWQpKSB7XG5cdFx0XHRcdF9fd2VicGFja19yZXF1aXJlX18ubVttb2R1bGVJZF0gPSBtb3JlTW9kdWxlc1ttb2R1bGVJZF07XG5cdFx0XHR9XG5cdFx0fVxuXHRcdGlmKHJ1bnRpbWUpIHZhciByZXN1bHQgPSBydW50aW1lKF9fd2VicGFja19yZXF1aXJlX18pO1xuXHR9XG5cdGlmKHBhcmVudENodW5rTG9hZGluZ0Z1bmN0aW9uKSBwYXJlbnRDaHVua0xvYWRpbmdGdW5jdGlvbihkYXRhKTtcblx0Zm9yKDtpIDwgY2h1bmtJZHMubGVuZ3RoOyBpKyspIHtcblx0XHRjaHVua0lkID0gY2h1bmtJZHNbaV07XG5cdFx0aWYoX193ZWJwYWNrX3JlcXVpcmVfXy5vKGluc3RhbGxlZENodW5rcywgY2h1bmtJZCkgJiYgaW5zdGFsbGVkQ2h1bmtzW2NodW5rSWRdKSB7XG5cdFx0XHRpbnN0YWxsZWRDaHVua3NbY2h1bmtJZF1bMF0oKTtcblx0XHR9XG5cdFx0aW5zdGFsbGVkQ2h1bmtzW2NodW5rSWRdID0gMDtcblx0fVxuXHRyZXR1cm4gX193ZWJwYWNrX3JlcXVpcmVfXy5PKHJlc3VsdCk7XG59XG5cbnZhciBjaHVua0xvYWRpbmdHbG9iYWwgPSBzZWxmW1wid2VicGFja0NodW5rXCJdID0gc2VsZltcIndlYnBhY2tDaHVua1wiXSB8fCBbXTtcbmNodW5rTG9hZGluZ0dsb2JhbC5mb3JFYWNoKHdlYnBhY2tKc29ucENhbGxiYWNrLmJpbmQobnVsbCwgMCkpO1xuY2h1bmtMb2FkaW5nR2xvYmFsLnB1c2ggPSB3ZWJwYWNrSnNvbnBDYWxsYmFjay5iaW5kKG51bGwsIGNodW5rTG9hZGluZ0dsb2JhbC5wdXNoLmJpbmQoY2h1bmtMb2FkaW5nR2xvYmFsKSk7IiwiIiwiLy8gc3RhcnR1cFxuLy8gTG9hZCBlbnRyeSBtb2R1bGUgYW5kIHJldHVybiBleHBvcnRzXG4vLyBUaGlzIGVudHJ5IG1vZHVsZSBkZXBlbmRzIG9uIG90aGVyIGxvYWRlZCBjaHVua3MgYW5kIGV4ZWN1dGlvbiBuZWVkIHRvIGJlIGRlbGF5ZWRcbl9fd2VicGFja19yZXF1aXJlX18uTyh1bmRlZmluZWQsIFtcInZlbmRvcnNcIl0sICgpID0+IChfX3dlYnBhY2tfcmVxdWlyZV9fKFwiLi9qcy9hcHAuanNcIikpKVxudmFyIF9fd2VicGFja19leHBvcnRzX18gPSBfX3dlYnBhY2tfcmVxdWlyZV9fLk8odW5kZWZpbmVkLCBbXCJ2ZW5kb3JzXCJdLCAoKSA9PiAoX193ZWJwYWNrX3JlcXVpcmVfXyhcIi4vc2Nzcy9hcHAuc2Nzc1wiKSkpXG5fX3dlYnBhY2tfZXhwb3J0c19fID0gX193ZWJwYWNrX3JlcXVpcmVfXy5PKF9fd2VicGFja19leHBvcnRzX18pO1xuIiwiIl0sIm5hbWVzIjpbXSwic291cmNlUm9vdCI6IiJ9