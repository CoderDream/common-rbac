package com.billjc.util;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

public class ClientTest {

	private RestTemplate restTemplate = new RestTemplate();

	@SuppressWarnings("rawtypes")
	@Test
	public void testGetFunctionByWorkId01() {
		String workId = "B-26026";
		String url = UriComponentsBuilder.fromHttpUrl(Constants.BASE_URL
						+ "function/getFunctionsByWorkId/" + workId).build()
						.toUriString();

		ResponseEntity responseEntity = restTemplate.getForEntity(url,
						String.class);
		String expected = "[{\"id\":1,\"functionName\":\"product.view\",\"systemId\":null}]";
		assertEquals(expected, responseEntity.getBody());
	}

	@SuppressWarnings("rawtypes")
	@Test
	public void testGetFunctionByWorkId02() {
		String workId = "B-28709";
		String url = UriComponentsBuilder.fromHttpUrl(Constants.BASE_URL
						+ "function/getFunctionsByWorkId/" + workId).build()
						.toUriString();

		ResponseEntity responseEntity = restTemplate.getForEntity(url,
						String.class);
		String expected = "[{\"id\":1,\"functionName\":\"product.view\",\"systemId\":null},{\"id\":2,\"functionName\":\"product.new\",\"systemId\":null},{\"id\":3,\"functionName\":\"product.edit\",\"systemId\":null},{\"id\":4,\"functionName\":\"product.delete\",\"systemId\":null}]";
		assertEquals(expected, responseEntity.getBody());
	}
}
