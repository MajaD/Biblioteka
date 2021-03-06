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
    
    // lista typu book tu, przykladowe wpisy tam
    private static List<Book> books = new LinkedList<Book>() {
    {
        add(new Book(IdCounter, "Światła pochylenie","Laura Whitcomb", "Romans", "Initium", "Ktoś na mnie patrzył. To niezwykłe uczucie, gdy jest się martwym", 3, "2005", "2015/11/15", true));
        IdCounter++;
        add(new Book(IdCounter, "Sorry", "Thriller", "Zoran Drevenkar", "TELBIT", "To on robi sprawców ze swoich ofiar", 5, "2009", "", false));
        IdCounter++;
        add(new Book(IdCounter, "Kiedy śpisz","Alberto Marini", "Horror ", "Albatros", "On nigdy nie śpi", 4, "2011", "2015/11/10", true));
        IdCounter++;
        add(new Book(IdCounter, "Strażniczka bramy", "Michelle Zink","Fantastyka", "TELEBIT", "Otwieram książkę [...] i odczytuje treść proroctwa, starając się dostrzec sens w jego bezsensie", 3, "2009", "", false));
        IdCounter++;
        
    }
};
    
    
    public static int IdCounter;

    //dodaje ksiazke tutej
    
    public void addBook(Book book)
    {
        
        books.add(book);
        IdCounter++;
    }
    
    //zwracam cala liste tu
    public static List<Book> getAllBooks()
    {
        return books;
    }
    
    //zwrocam ksiazke o danym id tu
       
    public static Book getById(int id)
    {
        Book book = null;
        for(Book b : books)
        {
            if(b.getId() == id)
            {
                book = b;
                break;
            }
        }
        return book;
    }
    
   //metoda edycji tu
   public void edit (int id, String title, String author, String category, String publishingHouse, String description, int rate, String dateOfPublishing, String dateOfHire, boolean rent)
   {
       if(id < books.size() && id > -1)
       {
           books.get(id).setAuthor(author);
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
   
   //usuwanie tu
   public void delete (int id)
   {
       for(Book b : books)
       {
           if(b.getId() == id)
           {
               books.remove(b);
               break;
           }
       }
   }

    private void add(Book book) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
