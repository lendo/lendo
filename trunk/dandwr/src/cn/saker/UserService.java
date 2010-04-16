package cn.saker;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UserService {
    private final static List<User> users = Collections.synchronizedList(new ArrayList<User>());
    
    public void addUser(User user){
    	System.out.println(user.getCode() + " " + user.getName());
    	users.add(user);
    }
    
    public List<User> getUsers(){
    	return users;
    }
    
    public User getUser(int index){
    	return users.get(index);
    }
    
    public void removeUser(int index){
    	users.remove(index);
    }
}
