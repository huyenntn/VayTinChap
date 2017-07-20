/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

/**
 *
 * @author Ngoc
 */
public class employeeObj {
    int employeeId;
    String employeeName;
    String acc;
    int pass;

    public employeeObj() {
    }

    public employeeObj(int employeeId, String employeeName, String acc, int pass) {
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.acc = acc;
        this.pass = pass;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getAcc() {
        return acc;
    }

    public void setAcc(String acc) {
        this.acc = acc;
    }

    public int getPass() {
        return pass;
    }

    public void setPass(int pass) {
        this.pass = pass;
    }
    
    
}
