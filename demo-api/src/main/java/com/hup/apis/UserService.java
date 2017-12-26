package com.hup.apis;

import com.hup.db.Pager;
import com.hup.entities.User;
import java.util.List;

/**
 * Created by hpj
 */
public interface UserService {

    Pager<User> queryUsers(Pager<User> pager, User user);

    List<User> getUserByUserName(String userName);

    boolean deleteUser(Long userId);

    User getUserById(Long id);

    void addOrEditUser(User user);


}
