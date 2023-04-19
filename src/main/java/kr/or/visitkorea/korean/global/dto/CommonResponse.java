package kr.or.visitkorea.korean.global.dto;

import lombok.Getter;
import lombok.Setter;

public class CommonResponse<T> {

	@Getter @Setter
	public static class List<T> {

		private int code;
		private Data<T> data;
		private boolean result;
		private String message;

		@Getter @Setter
		public static class Data<T> {

			private int total_count;
			private java.util.List<T> list;

		}

	}

}
