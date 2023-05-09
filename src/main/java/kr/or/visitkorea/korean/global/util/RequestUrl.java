package kr.or.visitkorea.korean.global.util;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;

public class RequestUrl {

	public static String readHtml(String url)
	{
		try
		{
			HttpURLConnection httpURLConnection = connection(url);

			if (HttpURLConnection.HTTP_OK != httpURLConnection.getResponseCode())
			{
				throw new RuntimeException("API 응답을 읽는 데 실패했습니다.");
			}

			StringBuilder responseBody = new StringBuilder();
			InputStreamReader streamReader = new InputStreamReader(httpURLConnection.getInputStream());
			BufferedReader lineReader = new BufferedReader(streamReader);

			String line;
			while ((line = lineReader.readLine()) != null)
			{
				responseBody.append(line);
			}

			return responseBody.toString();
		}
		catch (Exception exception)
		{
			exception.printStackTrace();
			return null;
		}
	}

	public static JSONObject get(String url)
	{
		return Send(url, "GET", null, null);
	}

	public static JSONObject get(String url, Map<String, String> parameters)
	{
		return Send(url, "GET", null, parameters);
	}

	public static JSONObject post(String url)
	{
		return Send(url, "POST", null, null);
	}

	public static JSONObject post(String url, Map<String, String> parameters)
	{
		return Send(url, "POST", null, parameters);
	}

	public static JSONObject Send(String url, String method, Map<String, String> headers, Map<String, String> parameters)
	{
		HttpURLConnection httpURLConnection = connection(url + toString(parameters));
		try
		{
			httpURLConnection.setRequestMethod(method);

			if (headers != null)
			{
				for(Map.Entry<String, String> header : headers.entrySet())
				{
					httpURLConnection.setRequestProperty(header.getKey(), header.getValue());
				}
			}

			if (HttpURLConnection.HTTP_OK != httpURLConnection.getResponseCode())
			{
				return readBody(httpURLConnection.getErrorStream());
			}

			return readBody(httpURLConnection.getInputStream());
		}
		catch (Exception exception)
		{
			throw new RuntimeException("API 요청과 응답 실패", exception);
		}
		finally
		{
			httpURLConnection.disconnect();
		}
	}

	/**
	 * CONNECTION
	 * @param url
	 * @return
	 */
	private static HttpURLConnection connection(String url)
	{
		try
		{
			return (HttpURLConnection) new URL(url).openConnection();
		}
		catch (MalformedURLException malformedURLException)
		{
			throw new RuntimeException("API URL이 잘못되었습니다. : " + url, malformedURLException);
		}
		catch (IOException ioException)
		{
			throw new RuntimeException("연결이 실패했습니다. : " + url, ioException);
		}
	}

	/**
	 * READ BODY
	 * @param body
	 * @return
	 */
	private static JSONObject readBody(InputStream body)
	{

		InputStreamReader streamReader = new InputStreamReader(body);

		try (BufferedReader lineReader = new BufferedReader(streamReader))
		{
			StringBuilder responseBody = new StringBuilder();

			String line;
			while ((line = lineReader.readLine()) != null)
			{
				responseBody.append(line);
			}

			return ((JSONObject) new JSONParser().parse(responseBody.toString()));
		}
		catch (IOException ioException)
		{
			throw new RuntimeException("API 응답을 읽는 데 실패했습니다.", ioException);
		}
		catch (ParseException parseException)
		{
			throw new RuntimeException("API 응답 데이터를 변환하는데 실패했습니다.", parseException);
		}
	}

	/**
	 * TO MAP
	 * @param parameters
	 * @return
	 */
	private static String toString(Map<String, String> parameters)
	{
		try
		{
			if (parameters != null)
			{
				int count = 0;
				StringBuilder parameter = new StringBuilder();
				Iterator iterator = parameters.keySet().iterator();
				while (iterator.hasNext()) {
					if (count == 0) { parameter.append("?"); } else { parameter.append("&"); }
					String key = iterator.next().toString();
					if (parameters.get(key) != null)
					{
						parameter.append(key).append("=").append(URLEncoder.encode(parameters.get(key), "UTF-8"));
					}
					else
					{
						parameter.append(key).append("=");
					}
					count++;
				}
				return parameter.toString();
			}
		}
		catch (Exception exception)
		{
			throw new RuntimeException("파라미터를 변환하는데 실패했습니다.", exception);
		}
		return "";
	}

}
