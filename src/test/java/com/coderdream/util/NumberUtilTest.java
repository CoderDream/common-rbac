package com.coderdream.util;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class NumberUtilTest {

	private static final Logger logger = LoggerFactory
			.getLogger(NumberUtilTest.class);

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testBytes2BinStr() {
		// byte[] bArray = "#0A";
		// String result = NumberUtil.bytes2BinStr(bArray);

		fail("Not yet implemented");
	}

	@Test
	public void testBin2HexStr() {
		fail("Not yet implemented");
	}

	@Test
	public void testHexStr2BinArr() {
		fail("Not yet implemented");
	}

	@Test
	public void testHexStr2BinStr() {
		String hexString = "ff";
		String result = NumberUtil.hexStr2BinStr(hexString);
		logger.debug(result);
	}

}
