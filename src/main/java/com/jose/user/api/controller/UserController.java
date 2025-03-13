package com.jose.user.api.controller;

import com.jose.user.api.model.request.CreateUserRequest;
import com.jose.user.api.model.response.UserCreatedResponse;
import com.jose.user.infraestructure.abstract_service.IUserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController(value = "/user")
public class UserController {

  private final IUserService userService;

  @PostMapping("/register")
  public ResponseEntity<UserCreatedResponse> registerNewUser(
    @Valid @RequestBody CreateUserRequest requestUser
  ) {
    UserCreatedResponse createdUser = this.userService.create(requestUser);
    return new ResponseEntity<UserCreatedResponse>(
      createdUser,
      HttpStatus.CREATED
    );
  }
}
