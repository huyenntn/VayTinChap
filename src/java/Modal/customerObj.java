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
public class customerObj {
    int customerId;
    String customerName;
    String email;
    int phone;
    String address;
    int employeesupport;
    String company;
    String career;
    int companyNum;
    int typedealId;
    int employeeId;

    public customerObj() {
    }

    public customerObj(int customerId, String customerName, String email, int phone, String address, int employeesupport, String company, String career, int companyNum, int typedealId, int employeeId) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.employeesupport = employeesupport;
        this.company = company;
        this.career = career;
        this.companyNum = companyNum;
        this.typedealId = typedealId;
        this.employeeId = employeeId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getEmployeesupport() {
        return employeesupport;
    }

    public void setEmployeesupport(int employeesupport) {
        this.employeesupport = employeesupport;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getCareer() {
        return career;
    }

    public void setCareer(String career) {
        this.career = career;
    }

    public int getCompanyNum() {
        return companyNum;
    }

    public void setCompanyNum(int companyNum) {
        this.companyNum = companyNum;
    }

    public int getTypedealId() {
        return typedealId;
    }

    public void setTypedealId(int typedealId) {
        this.typedealId = typedealId;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }
    
}
