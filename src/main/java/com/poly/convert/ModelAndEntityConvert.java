package com.poly.convert;

import java.util.function.Function;

public interface ModelAndEntityConvert<E, M> extends Function<E, M>{
	
	M convertToModel (E tObject);
	
	E convertToEntity(M tObject);

}
