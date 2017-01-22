package me.maartendev;

public class ProjectDonation {
    private String projectName;
    private Integer amount;

    public ProjectDonation(String projectName, Integer amount) {
        this.projectName = projectName;
        this.amount = amount;
    }


    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return this.getProjectName() + " - €" + this.getAmount();
    }
}
