package dao;

import config.GetConnection;
import dto.CandidateDto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CandidateDao {
    public int addCandidate(CandidateDto candidate){
            Connection con = GetConnection.getConnect();
            int i=0;
            try{
                String query = "insert into candidate(name,email,password,contact,address,date,gender,qualification,experience) values(?,?,?,?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(query);
                ps.setString(1, candidate.getName());
                ps.setString(2, candidate.getEmail());
                ps.setString(3, candidate.getPassword());
                ps.setString(4, candidate.getContact());
                ps.setString(5, candidate.getAddress());
                ps.setString(6, candidate.getDate());
                ps.setString(7, candidate.getGender());
                ps.setString(8, candidate.getQualification());
                ps.setString(9, candidate.getExperience());
                i = ps.executeUpdate();
            }catch(Exception e){
                System.out.println("Exception : "+e);
            }
            return i;
    }
    
        public int checkCandidateLogin(String email, String password) {
        int i=0;
        try {
            Connection con = GetConnection.getConnect();
            String query = "select * from candidate where email=? and password = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if(rs.next())
                i=1;
        } catch (SQLException e) {
            System.out.println("Exception : " + e);
        }
        return i;
    }
        
        

    public CandidateDto getCandidateInfo(String email){
            CandidateDto candidate = new CandidateDto();
        try {
            Connection con = GetConnection.getConnect();
            String query = "select candidateId,name from candidate where email=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                candidate.setCandidateId(rs.getInt(1));
                candidate.setName(rs.getString(2));
            }
        } catch (SQLException e) {
            System.out.println("Exception : " + e);
        }
        return candidate;
    }   
    
    
    public List<CandidateDto> getAllCandidates() {
        List<CandidateDto> list = new ArrayList<>();
        try {
            Connection con = GetConnection.getConnect();
            String query = "SELECT * FROM candidate";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CandidateDto c = new CandidateDto();
                c.setCandidateId(rs.getInt("candidateId"));
                c.setName(rs.getString("name"));
                c.setEmail(rs.getString("email"));
                c.setPassword(rs.getString("password"));
                c.setContact(rs.getString("contact"));
                c.setAddress(rs.getString("address"));
                c.setDate(rs.getString("date"));
                c.setGender(rs.getString("gender"));
                c.setQualification(rs.getString("qualification"));
                c.setExperience(rs.getString("experience"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println("Exception : " + e);
        }
        return list;
    }
    
    public int updateCandidatePassword(String email, String newPassword) {
    int i = 0;
    try {
        Connection con = GetConnection.getConnect();
        String query = "UPDATE candidate SET password=? WHERE email=?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, newPassword);
        ps.setString(2, email);
        i = ps.executeUpdate();
    } catch (SQLException e) {
        System.out.println("Exception : " + e);
    }
    return i;
}

    
    public int updateCandidateProfile(CandidateDto candidate) {
    int i = 0;
    try {
        Connection con = GetConnection.getConnect();
        String query = "UPDATE candidate SET name=?, contact=?, address=?, qualification=?, experience=? WHERE email=?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, candidate.getName());
        ps.setString(2, candidate.getContact());
        ps.setString(3, candidate.getAddress());
        ps.setString(4, candidate.getQualification());
        ps.setString(5, candidate.getExperience());
        ps.setString(6, candidate.getEmail());
        i = ps.executeUpdate();
    } catch (SQLException e) {
        System.out.println("Exception : " + e);
    }
    return i;
}

    public int deactivateCandidateAccount(String email) {
    int i = 0;
    try {
        Connection con = GetConnection.getConnect();
        String query = "DELETE FROM candidate WHERE email = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, email);
        i = ps.executeUpdate();
    } catch (SQLException e) {
        System.out.println("Exception : " + e);
    }
    return i;
}

        
}