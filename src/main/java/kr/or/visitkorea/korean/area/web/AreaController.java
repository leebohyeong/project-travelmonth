package kr.or.visitkorea.korean.area.web;

import kr.or.visitkorea.korean.area.service.AreaService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequiredArgsConstructor
@RequestMapping("/area")
public class AreaController {

	private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	private final AreaService AREA_SERVICE;

	/**
	 * 지역별 목록 페이지
	 * @param area
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{area}.do", method = RequestMethod.GET)
	public String list(@PathVariable("area") String area, Model model) {
		try {
			model.addAttribute(AREA_SERVICE.getList(area));
		}
		catch (Exception exception) {
			LOGGER.error(area.toUpperCase() + " Page Exception : {}", exception.getMessage(), exception);
		}
		return "/area/list";
	}


}
