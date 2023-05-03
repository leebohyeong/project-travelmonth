package kr.or.visitkorea.korean.trend.web.dto;

import lombok.*;

import java.io.Serializable;

public class TrendRequest {

	@Data
	@Builder
	@NoArgsConstructor
	@AllArgsConstructor
	public static class Search implements Serializable {

		private String search_trend_gb;

	}

	@Data
	@EqualsAndHashCode(callSuper = true)
	public static class Goods extends Search {

		private String search_travel_gb = "P";

		public Goods(Search search) {
			super(search.getSearch_trend_gb());
		}

	}

	@Data
	@EqualsAndHashCode(callSuper = true)
	public static class Content extends Search {

		private String search_travel_gb = "C";

		public Content(Search search) {
			super(search.getSearch_trend_gb());
		}

	}

}
