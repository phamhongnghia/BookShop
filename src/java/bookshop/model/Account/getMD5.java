/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.Account;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/**
 *
 * @author Pham Hong Nghia
 */
public class getMD5 {
    public static String passMd5(String password){
        String result = "";
        MessageDigest diDigest;
        try {
            diDigest = MessageDigest.getInstance("MD5");
            diDigest.update(password.getBytes());
            BigInteger bigInteger = new BigInteger(1, diDigest.digest());
            result = bigInteger.toString(16);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
