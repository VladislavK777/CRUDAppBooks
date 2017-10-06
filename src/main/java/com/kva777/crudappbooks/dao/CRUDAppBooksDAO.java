package com.kva777.crudappbooks.dao;

/*
* @author Vladislav Klochkov
* @version 1.0
* 03.10.2017
*
* Interface DAO
*
 */

import com.kva777.crudappbooks.model.Books;

import java.util.List;

public interface CRUDAppBooksDAO {

    // Метод создания книги
    public void createBook(Books book);

    // Метод редактирования клиги
    public void updateBook(Books book);

    // Метод удлаления книги
    public void deleteBook(int id);

    // Метод "чтения" книги
    public void readBook(Books book);

    // Метод поиска книги по названию
    public List<Books> searchBookByTitle(String title);

    // Метод поиска книги по году
    public List<Books> searchBookByYear(int printYear);

    // Метод поиска книги по прочтению
    public List<Books> searchBookByRead(boolean readAlready);

    // Метод вывода списка книг
    public List<Books> listBooks();

    // Получение книги по id
    public Books getBookById(int id);

}
