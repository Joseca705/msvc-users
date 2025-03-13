package com.jose.user.domain.repository;

import com.jose.user.api.model.projection.UserUniqueFieldsProjection;
import com.jose.user.domain.entity.UserEntity;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
  @Query(
    value = """
        SELECT json_build_object(
            'id', u.id,
            'firstName', u.first_name,
            'lastName', u.last_name,
            'username', u.username,
            'password', u.password,
            'roles', COALESCE(array_agg(r.role), '{}')
        )::TEXT
        FROM users u
        LEFT JOIN user_role ur ON u.id = ur.user_id
        LEFT JOIN roles r ON ur.role_id = r.id
        WHERE u.username = :username
        GROUP BY u.id
    """,
    nativeQuery = true
  )
  Optional<String> findUserByUsername(@Param("username") String username);

  List<UserUniqueFieldsProjection> findByUsernameOrEmail(
    String username,
    String email
  );
}
