package pl.alx.debt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.alx.debt.DAO.DebtorDao;
import pl.alx.debt.DAO.UserDao;
import pl.alx.debt.model.User;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserDao userDao;
@GetMapping("/users")
public String usersList(Model model) {

    List<User> users = userDao.findAll();

    model.addAttribute("users", users);
    return "users-list";
    }
}
