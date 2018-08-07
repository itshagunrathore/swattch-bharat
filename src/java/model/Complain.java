package model;

import java.io.InputStream;
import java.sql.Blob;

public class Complain 
{
    private String fname, lname ,email,pno,txtArea,uname ,Pass, name, LoginEmail ,Contact,Scomment,Slocation,Scontact,Semail,Sname;

    public String getScomment() {
        return Scomment;
    }

    public void setScomment(String Scomment) {
        this.Scomment = Scomment;
    }

    public String getSlocation() {
        return Slocation;
    }

    public void setSlocation(String Slocation) {
        this.Slocation = Slocation;
    }

    public String getScontact() {
        return Scontact;
    }

    public void setScontact(String Scontact) {
        this.Scontact = Scontact;
    }

    public String getSemail() {
        return Semail;
    }

    public void setSemail(String Semail) {
        this.Semail = Semail;
    }

    public String getSname() {
        return Sname;
    }

    public void setSname(String Sname) {
        this.Sname = Sname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLoginEmail() {
        return LoginEmail;
    }

    public void setLoginEmail(String LoginEmail) {
        this.LoginEmail = LoginEmail;
    }

    public String getContact() {
        return Contact;
    }

    public void setContact(String Contact) {
        this.Contact = Contact;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }
    InputStream is;

    public InputStream getIs() {
        return is;
    }

    public void setIs(InputStream is) {
        this.is = is;
    }

    
    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPno() {
        return pno;
    }

    public void setPno(String pno) {
        this.pno = pno;
    }

    public String getTxtArea() {
        return txtArea;
    }

    public void setTxtArea(String txtArea) {
        this.txtArea = txtArea;
    }
     
}
