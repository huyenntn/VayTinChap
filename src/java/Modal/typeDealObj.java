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
public class typeDealObj {
    int typedealId;
    String typedealName	;

    public typeDealObj() {
    }

    public typeDealObj(int typedealId, String typedealName) {
        this.typedealId = typedealId;
        this.typedealName = typedealName;
    }

    public int getTypedealId() {
        return typedealId;
    }

    public void setTypedealId(int typedealId) {
        this.typedealId = typedealId;
    }

    public String getTypedealName() {
        return typedealName;
    }

    public void setTypedealName(String typedealName) {
        this.typedealName = typedealName;
    }

    
    
}
