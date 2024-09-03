package org.example.mybatis.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private final UserDao userDao;

    public UserService(UserDao userDao) {
        this.userDao = userDao;
    }


    public List<UserDto> selectUsers() {
        return userDao.selectUsers();
    }
    public UserDto selectUsers(String id) {
        return userDao.selectOneUsers(id);
    }

    public void insertUser(UserDto users) {
        userDao.insertUser(users);
    }

    public void updateUser(UserDto user) {
        userDao.updateUser(user);
    }

    public void delete(String id) {
        userDao.delete(id);
    }
}
//유저 조회

