package kr.or.visitkorea.korean.global.common.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import kr.or.visitkorea.korean.global.util.Common;

public class CommonControllerWrapper
{

	/**
	 * SEARCH PARAMETER
	 * @param request
	 * @return
	 * @throws JsonProcessingException
	 * @throws IllegalAccessException
	 */
	protected Object searchParameter(Object request) throws JsonProcessingException, IllegalAccessException {
		return Common.searchParameter(request);
	}

}
