package dataAccess;

import java.util.LinkedList;
import java.util.List;
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
    
   
    
}
