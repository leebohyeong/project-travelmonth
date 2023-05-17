package kr.or.visitkorea.korean.global.common.web;

import kr.or.visitkorea.korean.event.service.EventService;
import kr.or.visitkorea.korean.instagram.service.InstagramService;
import kr.or.visitkorea.korean.june.service.JuneService;
import kr.or.visitkorea.korean.showcase.service.ShowcaseService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Slf4j
@Controller
@RequiredArgsConstructor
public class CommonController<T> extends CommonControllerWrapper {

	private final JuneService JUNE_SERVICE;
	private final EventService EVENT_SERVICE;
	private final ShowcaseService SHOWCASE_SERVICE;
	private final InstagramService<T> INSTAGRAM_SERVICE;

	/**
	 * 메인 페이지
	 * @param
	 * @return 메인 페이지
	 * @throws Exception
	 */
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String index(Model model) throws Exception {
		try {
			model.addAttribute("june", JUNE_SERVICE.getList());
			model.addAttribute("event", EVENT_SERVICE.getMainList());
			model.addAttribute("showcase", SHOWCASE_SERVICE.getList());
			model.addAttribute("instagram", INSTAGRAM_SERVICE.getList());
		} catch (Exception exception) {
			log.error("Index Page Exception : {}", exception.getMessage(), exception);
		}
		return "index";
	}

	/**
	 * 여행가는 달이란? > 여행가는 달 소개 페이지
	 * @return
	 */
	@RequestMapping(value = "/intro.do", method = RequestMethod.GET)
	public String intro() {
		return "intro";
	}

	/**
	 * 여행가는 달이란? > 여행가는 달 참여기관 페이지
	 * @return
	 */
	@RequestMapping(value = "/organization.do", method = RequestMethod.GET)
	public String organization() {
		return "organization";
	}

}
