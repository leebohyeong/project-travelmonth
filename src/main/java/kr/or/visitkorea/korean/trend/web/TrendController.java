package kr.or.visitkorea.korean.trend.web;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/trend")
public class TrendController {

	/**
	 * 여행혜택 > 지역별 페이지
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(Model model)
	{
		try
		{

		}
		catch (Exception exception)
		{
			log.error("Trend Page Exception : {}", exception.getMessage(), exception);
		}
		return "/trend/list";
	}

}
