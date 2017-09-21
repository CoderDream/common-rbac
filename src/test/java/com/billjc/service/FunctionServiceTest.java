package com.billjc.service;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.billjc.base.BaseTest;
import com.billjc.model.Function;

public class FunctionServiceTest extends BaseTest {

	@Autowired
	private FunctionService functionService;

	@Test
	public void testSelectByParams01() {
		Long id = 1L;
		Function function = functionService.selectByPrimaryKey(id);
		System.out.println(
						function.getId() + "\t" + function.getFunctionKey());
	}

	// @Test
	// public void testSelectFunctonNamesByParams01() {
	// String workId = "B-28709";
	// Map<Integer, String> functionMap = functionService
	// .selectFunctonNamesByParams(workId);
	// for (Map.Entry<Integer, String> entry : functionMap.entrySet()) {
	// System.out.println("Key = " + entry.getKey() + ", Value = "
	// + entry.getValue());
	// }
	// }

	@Test
	public void testSelectFunctonNamesByParams01() {
		String workId = "B-28709";
		List<Function> functionMap = functionService
						.selectFunctonNamesByParams(workId);
		for (Function function : functionMap) {
			System.out.println(function.getId() + "\t"
							+ function.getFunctionKey());
		}
	}

	// @Test
	// public void testSelectByParams02() {
	// List<Function> functionList = functionService.selectByParams("沈");
	// for (Function function : functionList) {
	// System.out.println(function);
	// }
	// }
	//
	//
	// @Test
	// public void testSelectByFunctionname01() {
	// String functionname = "沈";
	// List<Function> functionList =
	// functionService.selectByFunctionname(functionname);
	// for (Function function : functionList) {
	// System.out.println(function);
	// }
	// }

}
