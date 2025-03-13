package com.jose.user.infraestructure.service;

import com.jose.user.api.model.projection.UserUniqueFieldsProjection;
import com.jose.user.api.model.request.CreateUserRequest;
import com.jose.user.api.model.response.UserCreatedResponse;
import com.jose.user.domain.entity.Role;
import com.jose.user.domain.entity.UserEntity;
import com.jose.user.domain.entity.UserRole;
import com.jose.user.domain.repository.UserRepository;
import com.jose.user.domain.repository.UserRoleRepository;
import com.jose.user.infraestructure.abstract_service.IUserService;
import com.jose.user.infraestructure.exception.ExistingRecordException;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@RequiredArgsConstructor
@Service
public class UserService implements IUserService {

  private final UserRepository userRepository;
  private final UserRoleRepository userRoleRepository;
  private final BCryptPasswordEncoder encoder;

  @Override
  @Transactional
  public UserCreatedResponse create(CreateUserRequest request) {
    List<UserUniqueFieldsProjection> users =
      this.userRepository.findByUsernameOrEmail(
          request.getUsername(),
          request.getEmail()
        );
    if (!users.isEmpty()) throw new ExistingRecordException(
      "The username or email already exists"
    );

    UserEntity savedUser = this.userRepository.save(dtoToEntity(request));

    UserRole userRole = new UserRole(savedUser, new Role(2));

    this.userRoleRepository.save(userRole);

    return new UserCreatedResponse("User created succesfully");
  }

  @Override
  public UserCreatedResponse read(Integer id) {
    return null;
  }

  @Override
  @Transactional
  public UserCreatedResponse update(CreateUserRequest request, Integer id) {
    return null;
  }

  @Override
  @Transactional
  public void delete(Integer id) {
    throw new UnsupportedOperationException("Unimplemented method 'delete'");
  }

  private UserEntity dtoToEntity(CreateUserRequest dto) {
    UserEntity user = new UserEntity();
    BeanUtils.copyProperties(dto, user);
    user.setPassword(encoder.encode(dto.getPassword()));
    return user;
  }
}
