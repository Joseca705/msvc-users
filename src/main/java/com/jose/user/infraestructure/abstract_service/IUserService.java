package com.jose.user.infraestructure.abstract_service;

import com.jose.user.api.model.request.CreateUserRequest;
import com.jose.user.api.model.response.LoadedUserSecurity;
import com.jose.user.api.model.response.UserCreatedResponse;

public interface IUserService
  extends CrudService<CreateUserRequest, UserCreatedResponse, Integer> {
  LoadedUserSecurity loadUserByUsername(String username);
}
