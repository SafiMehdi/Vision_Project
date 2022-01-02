package com.Vision.login;


import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Arrays;
import java.util.Base64;
import java.util.Random;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import model.User;
import database_service.Db_services;


public class LoginService {
		
		public User getUser(String email,String enc_password) {
			java.sql.Connection con = Db_services.connect();
			User user = new User();
			try {
				String sql = "SELECT * FROM user WHERE email = '" + email + "' AND password = '"+ enc_password +"'";
				System.out.println(sql);
				Statement smt = con.createStatement();
				ResultSet rs = smt.executeQuery(sql);
				while(rs.next()) {
					
						String first_name = rs.getString("first_name");
						String last_name = rs.getString("last_name");
						int user_id = rs.getInt("user_id");
						String saltvalue = rs.getString("saltvalue");
						
						user.setEmail(email);
						user.setFirst_name(first_name);
						user.setLast_name(last_name);
						user.setPassword(enc_password);
						user.setsaltvalue(saltvalue);
						user.setID(user_id);
						
				}
				return user;
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("the selection failed");
				return user;
			}
		} 
		
		public boolean isUserValid(String email,String password) {
			java.sql.Connection con = Db_services.connect();
			boolean found = false;
			try {
				String sql = "SELECT * FROM user WHERE email = '" + email + "'";
				System.out.println(sql);
				Statement smt = con.createStatement();
				ResultSet rs = smt.executeQuery(sql);
				while(rs.next()) {
					
					String enc_password = rs.getString("password");
					String saltvalue = rs.getString("saltvalue");
					
					if (New_accountService.verifyUserPassword(password,enc_password,saltvalue)) {
						found = true;
						System.out.println("---------------------------------------------------------------------");
						 System.out.println("Password Matched!!"); 
						 System.out.println("---------------------------------------------------------------------");
					}else {
						System.out.println("---------------------------------------------------------------------");
						System.out.println("no match"); 
						System.out.println("---------------------------------------------------------------------");
					}	
				}
				return found;
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("the selection failed");
				return false;
			}
			
		}
}

class New_accountService {  
    /* Declaration of variables */   
    private static final Random random = new SecureRandom();  
    private static final String characters = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";  
    private static final int iterations = 10000;  
    private static final int keylength = 256;  
      
    /* Method to generate the salt value. */  
    public static String getSaltvalue(int length)   
    {  
        StringBuilder finalval = new StringBuilder(length);  
  
        for (int i = 0; i < length; i++)   
        {  
            finalval.append(characters.charAt(random.nextInt(characters.length())));  
        }  
  
        return new String(finalval);  
    }     
  
    /* Method to generate the hash value */  
    public static byte[] hash(char[] password, byte[] salt)   
    {  
        PBEKeySpec spec = new PBEKeySpec(password, salt, iterations, keylength);  
        Arrays.fill(password, Character.MIN_VALUE);  
        try   
        {  
            SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");  
            return skf.generateSecret(spec).getEncoded();  
        }   
        catch (NoSuchAlgorithmException | InvalidKeySpecException e)   
        {  
            throw new AssertionError("Error while hashing a password: " + e.getMessage(), e);  
        }   
        finally   
        {  
            spec.clearPassword();  
        }  
    }  
   
    public static String generateSecurePassword(String password, String salt)   
    {  
        String finalval = null;  
  
        byte[] securePassword = hash(password.toCharArray(), salt.getBytes());  
   
        finalval = Base64.getEncoder().encodeToString(securePassword);  
   
        return finalval;  
    }  
       
    public static boolean verifyUserPassword(String providedPassword,  
            String securedPassword, String salt)  
    {  
        boolean finalval = false;  
          
        /* Generate New secure password with the same salt */  
        String newSecurePassword = generateSecurePassword(providedPassword, salt);  
          
        /* Check if two passwords are equal */  
        finalval = newSecurePassword.equalsIgnoreCase(securedPassword);  
          
        return finalval;  
    }  
}

