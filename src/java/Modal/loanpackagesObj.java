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
public class loanpackagesObj {
    int packageId;
    String packageName;
    String packageDescribe;

    public loanpackagesObj() {
    }

    public loanpackagesObj(int packageId, String packageName, String packageDescribe) {
        this.packageId = packageId;
        this.packageName = packageName;
        this.packageDescribe = packageDescribe;
    }

    public int getPackageId() {
        return packageId;
    }

    public void setPackageId(int packageId) {
        this.packageId = packageId;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getPackageDescribe() {
        return packageDescribe;
    }

    public void setPackageDescribe(String packageDescribe) {
        this.packageDescribe = packageDescribe;
    }
    
}
