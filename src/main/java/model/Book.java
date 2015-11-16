
package model;

/**
 *
 * @author Maja
 */
public class Book {
    
    private int id;
    private String title;
    private String category;
    private String publishingHouse;
    private String description;
    private int rate;
    private String dateOfPublishing;
    private String dateOfHire;
    private boolean rent;

    public Book(int id, String title, String category, String publishingHouse, String description, int rate, String dateOfPublishing, String dateOfHire, boolean rent) {
        this.id = id;
        this.title = title;
        this.category = category;
        this.publishingHouse = publishingHouse;
        this.description = description;
        this.rate = rate;
        this.dateOfPublishing = dateOfPublishing;
        this.dateOfHire = dateOfHire;
        this.rent = rent;
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPublishingHouse() {
        return publishingHouse;
    }

    public void setPublishingHouse(String publishingHouse) {
        this.publishingHouse = publishingHouse;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public String getDateOfPublishing() {
        return dateOfPublishing;
    }

    public void setDateOfPublishing(String dateOfPublishing) {
        this.dateOfPublishing = dateOfPublishing;
    }

    public String getDateOfHire() {
        return dateOfHire;
    }

    public void setDateOfHire(String dateOfHire) {
        this.dateOfHire = dateOfHire;
    }

    public boolean isRent() {
        return rent;
    }

    public void setRent(boolean rent) {
        this.rent = rent;
    }
    
    
    
    
}
