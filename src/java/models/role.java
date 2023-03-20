/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rahul Bisht
 */public class Role implements Serializable{
    private int roleID;
    private String name;

    public Role() {
    }

    public Role(int roleID, String name) {
        this.roleID = roleID;
        this.name = name;
    }

    public int getRoleID() {
        return roleID;
    }

    public String getName() {
        return name;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String toString(){
        return this.name;
    }
    
}