package com.jose.user.api.controller.error_handler;

import com.jose.user.api.model.response.ErrorResponse;
import com.jose.user.api.model.response.ErrorsResponse;
import com.jose.user.api.model.response.abstract_response.BaseErrorResponse;
import com.jose.user.infraestructure.exception.ExistingRecordException;
import java.util.ArrayList;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
@ResponseStatus(code = HttpStatus.BAD_REQUEST)
public class BadRequestController {

  @ExceptionHandler(exception = MethodArgumentNotValidException.class)
  public BaseErrorResponse handleFailedValidation(
    MethodArgumentNotValidException exception
  ) {
    var errors = new ArrayList<String>();
    exception
      .getAllErrors()
      .forEach(error -> errors.add(error.getDefaultMessage()));
    return ErrorsResponse.builder()
      .errors(errors)
      .status(HttpStatus.BAD_REQUEST.name())
      .code(HttpStatus.BAD_REQUEST.value())
      .build();
  }

  @ExceptionHandler(exception = ExistingRecordException.class)
  public BaseErrorResponse handleDuplicateRecordException(
    ExistingRecordException exception
  ) {
    return ErrorResponse.builder()
      .error(exception.getMessage())
      .status(HttpStatus.BAD_REQUEST.name())
      .code(HttpStatus.BAD_REQUEST.value())
      .build();
  }
}
