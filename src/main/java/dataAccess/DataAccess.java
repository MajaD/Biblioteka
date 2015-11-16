package dataAccess;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import model.Book;
/**
 *
 * @author Maja
 */
public class DataAccess {
    
    private static List<Book> books = new LinkedList<Book>();
    public static int IdCounter =0;

    public void addBook(Book book)
    {
        
        books.add(book);
        IdCounter++;
    }
    
    public static List<Book> getAllBooks()
    {
        return books;
    }
    
    public static List<Book> getById(int id)
    {
        List<Book> bookId = new LinkedList<Book>();
        if(id < books.size() && id > -1)
        {
            Book temp = books.get(id);
            bookId.add(temp);
            return bookId;
        }
        else 
            return null;
    }
    
   public void edit (int id, String title, String category, String publishingHouse, String description, int rate, String dateOfPublishing, String dateOfHire, boolean rent)
   {
       if(id < books.size() && id > -1)
       {
           books.get(id).setTitle(title);
           books.get(id).setCategory(category);
           books.get(id).setPublishingHouse(publishingHouse);
           books.get(id).setDescription(description);
           books.get(id).setRate(rate);
           books.get(id).setDateOfPublishing(dateOfPublishing);
           books.get(id).setDateOfHire(dateOfHire);
           books.get(id).setRent(rent);
       }
   }
   
   public void delete (int id)
   {
       if(id < books.size() && id > -1)
       {
           books.remove(id);
       }
   }
}
