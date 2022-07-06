package com.ecommerce.errorcodes;

public enum ErrorCodes {
	NONNUMERIC_ID(1), INVALID_ID(2), INVALID_PASSWORD(3);

	public final long value;

	ErrorCodes(long value) {
		this.value = value;
	}
}
