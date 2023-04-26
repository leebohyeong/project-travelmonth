package kr.or.visitkorea.korean.global.common.service.impl;

import egovframework.com.cmm.service.EgovProperties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CommonServiceImplWrapper
{

	protected  final Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	protected String TRAVEL_MONTH_SITE_URL =  EgovProperties.getProperty("Globals.TravelMonth.Site.Url");
	protected String INSTAGRAM_REQUEST_URL = EgovProperties.getProperty("Globals.Instagram.Request.Url");

}
