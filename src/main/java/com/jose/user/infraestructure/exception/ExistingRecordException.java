package com.jose.user.infraestructure.exception;

public class ExistingRecordException extends RuntimeException {

  public ExistingRecordException(String message) {
    super(message);
  }
}
