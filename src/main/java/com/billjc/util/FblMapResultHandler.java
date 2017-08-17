package com.billjc.util;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.ResultContext;
import org.apache.ibatis.session.ResultHandler;

public class FblMapResultHandler implements ResultHandler {
	@SuppressWarnings("rawtypes")
	private final Map mappedResults = new HashMap();

	@SuppressWarnings("unchecked")
	@Override
	public void handleResult(ResultContext context) {
		@SuppressWarnings("rawtypes")
		Map map = (Map) context.getResultObject();
		// xml 配置里面的property的值，对应的列
		mappedResults.put(map.get("key"), map.get("value"));
	}

	public Map getMappedResults() {
		return mappedResults;
	}
}