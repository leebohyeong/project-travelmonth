package kr.or.visitkorea.korean.global.util;

import kr.or.visitkorea.korean.global.common.service.CommonService;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Component
public class Local
{

	private static CommonService SERVICE;
	private final CommonService FINAL_SERVICE;


	public Local(CommonService SERVICE)
	{
		this.FINAL_SERVICE = SERVICE;
	}

	@PostConstruct
	private void init()
	{
		SERVICE = FINAL_SERVICE;
	}

	/**
	 * GET LIST
	 * @return
	 */
	public static Object getList()
	{
		try
		{
			return SERVICE.getLocalList();
		}
		catch (Exception exception)
		{
			exception.printStackTrace();
		}
		return null;
	}

	/**
	 * GET FILTERED LIST
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Object getFilteredList()
	{
		try
		{
			List<HashMap<String, String>>list = ((CommonResponse.List) SERVICE.getLocalList()).getData().getList();
			List<HashMap<String, String>> filteredList = list.stream()
					.filter(row -> !row.get("name_kr").matches("(서울|경기|인천)")).collect(Collectors.toList());
			filteredList.add(0, new LinkedHashMap<String, String>() {{
				put("code","01-04-09");
				put("name_en","seoul-incheon-gyeonggi");
				put("name_kr","서울/인천/경기");
				put("name_detail_kr","서울특별시/인천광역시/경기도");
			}});
			return new CommonResponse.List(new CommonResponse.List.Data(filteredList));
		}
		catch (Exception exception)
		{
			exception.printStackTrace();
		}
		return null;
	}

}
