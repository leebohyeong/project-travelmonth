package kr.or.visitkorea.korean.global.common.web;

import kr.or.visitkorea.korean.event.service.EventService;
import kr.or.visitkorea.korean.instagram.service.InstagramService;
import kr.or.visitkorea.korean.showcase.service.ShowcaseService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequiredArgsConstructor
public class CommonController<T> {

	private static final Logger LOGGER = LoggerFactory.getLogger(CommonController.class);

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
			model.addAttribute("event", EVENT_SERVICE.getMainList());
			model.addAttribute("showcase", SHOWCASE_SERVICE.getList());
			model.addAttribute("instagram", INSTAGRAM_SERVICE.getList());
		}
		catch (Exception exception) {
			LOGGER.error("Main Page Exception : {}", exception.getMessage(), exception);
		}
		return "/index";
	}

}
