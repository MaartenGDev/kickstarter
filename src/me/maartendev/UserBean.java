package me.maartendev;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class UserBean implements java.io.Serializable {
    private String name = null;
    private String email = null;
    private boolean isRegistered = false;
    private HttpSession session;
    private ArrayList<ProjectDonation> donations = new ArrayList<>();

    public UserBean() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isRegistered() {
        return this.session.getAttribute("isRegistered").equals(true);
    }

    public void setSession(HttpSession session) {
        this.session = session;
    }

    public void addDonation(String project, Integer amount) {
        ProjectDonation donation = new ProjectDonation(project, amount);

        donations.add(donation);
    }

    public ArrayList<ProjectDonation> getDonations() {
        return donations;
    }

}