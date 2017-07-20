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
public class htmldisplayObj {
    int htmlId;
    String htmlcode;

    public htmldisplayObj() {
    }

    public htmldisplayObj(int htmlId, String htmlcode) {
        this.htmlId = htmlId;
        this.htmlcode = htmlcode;
    }

    public int getHtmlId() {
        return htmlId;
    }

    public void setHtmlId(int htmlId) {
        this.htmlId = htmlId;
    }

    public String getHtmlcode() {
        return htmlcode;
    }

    public void setHtmlcode(String htmlcode) {
        this.htmlcode = htmlcode;
    }
    
}
