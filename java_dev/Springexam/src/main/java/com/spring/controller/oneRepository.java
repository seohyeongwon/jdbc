package com.spring.controller;

import java.util.Map;

public interface oneRepository {

	void insert(Map<String, Object>map);
	
	Map<String, Object> select();
}
