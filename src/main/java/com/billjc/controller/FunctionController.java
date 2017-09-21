package com.billjc.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billjc.model.Function;
import com.billjc.service.FunctionService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/function")
public class FunctionController {

	private static Logger logger = LoggerFactory
					.getLogger(FunctionController.class);

	@Autowired
	private FunctionService functionService;

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping(value = "/getFunctionKeysByWorkId/{workId}", produces = "application/json;charset=UTF-8", method = RequestMethod.GET)
	public @ResponseBody String getFunctionKeysByWorkId(
					@PathVariable(value = "workId") String workId) {
		ObjectMapper mapper = new ObjectMapper();
		List<String> functionKeys = new ArrayList<String>();
		List<Function> functionMap = functionService
						.selectFunctonNamesByParams(workId);
		for (Function function : functionMap) {
			logger.debug(function.getId() + "\t" + function.getFunctionKey());
			functionKeys.add(function.getFunctionKey());
		}

		try {
			return mapper.writeValueAsString(functionKeys);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
			return null;
		}
	}

	// @RequestMapping(value = "/getFunctionsByWorkId/{workId}", produces =
	// "application/json;charset=UTF-8", method = RequestMethod.GET)
	// public @ResponseBody String findResourceIds(
	// @PathVariable(value = "workId") String workId) {
	// ObjectMapper mapper = new ObjectMapper();
	// Map<Long, String> map = new HashMap<Long, String>();
	// List<Function> functionMap = functionService
	// .selectFunctonNamesByParams(workId);
	// for (Function function : functionMap) {
	// logger.debug(function.getId() + "\t" + function.getFunctionName());
	// map.put(function.getId(), function.getFunctionName());
	// }
	//
	// try {
	// return mapper.writeValueAsString(map);
	// } catch (JsonProcessingException e) {
	// e.printStackTrace();
	// return null;
	// }
	// }

	@RequestMapping(value = "/getFunctions", produces = "application/json;charset=UTF-8", method = RequestMethod.GET)
	public @ResponseBody String getFunctions() {
		String workId = "B-28709";
		List<Function> functionMap = functionService
						.selectFunctonNamesByParams(workId);
		ObjectMapper mapper = new ObjectMapper();
		try {
			return mapper.writeValueAsString(functionMap);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
			return null;
		}
	}

}
