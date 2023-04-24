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

@Controller
@RequiredArgsConstructor
@RequestMapping("/area")
public class AreaController {

	private final AreaService AREA_SERVICE;
	private static final Logger LOGGER = LoggerFactory.getLogger(AreaController.class);

	/**
	 *
	 * @param area
	 * @param model
	 * @return
	 */
	@GetMapping("/{area}")
	public String list(@PathVariable("area") String area, Model model) {
		try {
			model.addAttribute(AREA_SERVICE.getList(area));
		}
		catch (Exception exception) {
			LOGGER.error("Area(" + area + ") Page Exception : {}", exception.getMessage(), exception);
		}
		return "/area/list";
	}


}
