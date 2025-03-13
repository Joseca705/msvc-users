package com.jose.user.api.model.request;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CreateUserRequest implements Serializable {

  @NotBlank(message = "First name is required")
  @Size(
    min = 2,
    max = 50,
    message = "First name must be between 2 and 50 characters"
  )
  private String firstName;

  @NotBlank(message = "Last name is required")
  @Size(
    min = 2,
    max = 50,
    message = "Last name must be between 2 and 50 characters"
  )
  private String lastName;

  @NotBlank(message = "Username is required")
  @Size(
    min = 4,
    max = 30,
    message = "Username must be between 4 and 30 characters"
  )
  private String username;

  @NotBlank(message = "Password is required")
  @Size(min = 3, message = "Password must be at least 8 characters long")
  private String password;

  @NotBlank(message = "Email is required")
  @Email(message = "Invalid email format")
  private String email;
}
