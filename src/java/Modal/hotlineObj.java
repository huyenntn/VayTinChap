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
public class hotlineObj {
    int hotlineId;
    int hotlineNumber;

    public hotlineObj() {
    }

    public hotlineObj(int hotlineId, int hotlineNumber) {
        this.hotlineId = hotlineId;
        this.hotlineNumber = hotlineNumber;
    }

    public int getHotlineId() {
        return hotlineId;
    }

    public void setHotlineId(int hotlineId) {
        this.hotlineId = hotlineId;
    }

    public int getHotlineNumber() {
        return hotlineNumber;
    }

    public void setHotlineNumber(int hotlineNumber) {
        this.hotlineNumber = hotlineNumber;
    }
    
}
