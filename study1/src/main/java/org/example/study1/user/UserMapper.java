package org.example.study1.user;




import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {
    List<UserDto> selectUsers();


     void insertUser(UserDto users);

    UserDto selectOneUsers(String id);

    void updateUser(UserDto user);

    void delete(String id);
}
