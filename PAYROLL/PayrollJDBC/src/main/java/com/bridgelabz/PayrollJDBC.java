package com.bridgelabz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class PayrollJDBC {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/payroll_service";
        try{
            Connection con = DriverManager.getConnection(url,"root","Pwd");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from employee_payroll");
            while (rs.next()){
                System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3));
            }
            int rs2 = st.executeUpdate("update employee_payroll set NetPay = 1000000 where EmployeeName = 'sai'");
            System.out.println(rs2+" records affected");

            con.close();
        }catch (Exception e){
            System.out.println(e);
        }
    }
}
