package kr.or.visitkorea.korean.global.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.http.HttpStatus;

public class CommonResponse<T> {

	@Getter @Setter
	public static class List<T> {

		private int code;
		private Data<T> data;
		private boolean result;
		private String message;

		public List() { }

		public List(Data<T> data) {
			this.code = 200;
			this.data = data;
			this.result = true;
			this.message = HttpStatus.OK.getReasonPhrase();
		}

		@Getter @Setter
		public static class Data<T> {

			private int total_count;
			private java.util.List<T> list;

			public Data() { }
			public Data(java.util.List<T> list) {
				this.list = list;
				this.total_count = list.size();
			}

		}

	}

}
