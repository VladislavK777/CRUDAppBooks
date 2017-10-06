package com.kva777.crudappbooks.service;

/*
* @author Vladislav Klochkov
* @version 1.0
* 04.10.2017
*
* Interface Service
*
 */

import com.kva777.crudappbooks.model.Books;

import java.util.List;

public interface CRUDAppBooksService {

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
