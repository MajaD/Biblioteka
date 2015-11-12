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
    
    public void addBook(Book book)
    {
        books.add(book);
    }
    
    public static List<Book> getAllBooks()
    {
        return books;
    }
    
   
    
}
