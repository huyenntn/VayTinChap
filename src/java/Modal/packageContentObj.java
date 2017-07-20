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
public class packageContentObj {
    int packageId;
    int profiled;

    public packageContentObj() {
    }

    public packageContentObj(int packageId, int profiled) {
        this.packageId = packageId;
        this.profiled = profiled;
    }

    public int getPackageId() {
        return packageId;
    }

    public void setPackageId(int packageId) {
        this.packageId = packageId;
    }

    public int getProfiled() {
        return profiled;
    }

    public void setProfiled(int profiled) {
        this.profiled = profiled;
    }
    
}
