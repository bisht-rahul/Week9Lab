/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import dataaccess.RoleDB;
import models.Role;
/*
 *
 * @author Rahul Bisht
 */
public class RoleService {
    
    public Role getRole(int iD) throws Exception{
        RoleDB roleDB = new RoleDB();
        Role role = roleDB.getRole(iD);
        return role;
    }
}