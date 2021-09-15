/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.unipiloto.edu;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

/**
 *
 * @author Usuario
 */
public class NameHandler {
    
    String name;
    LocalDate birthDate;
    
    public NameHandler(){
        name=null;
        birthDate=null;
    }
    
    public int age(){
     
        return birthDate.until(LocalDate.now()).getYears(); 
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthDate() {
       return birthDate.toString();
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = LocalDate.parse(birthDate);
    }
    
    
}
