package com.kva777.crudappbooks.service;

/*
* @author Vladislav Klochkov
* @version 1.0
* 04.10.2017
*
* Implementation for {@link CRUDAppBooksService} interface
*
 */

import com.kva777.crudappbooks.dao.CRUDAppBooksDAO;
import com.kva777.crudappbooks.dao.CRUDAppBooksDAOImpl;
import com.kva777.crudappbooks.model.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CRUDAppBooksServiceImpl implements CRUDAppBooksService {

    private CRUDAppBooksDAO crudAppBooksDAO;

    public void setCrudAppBooksDAO(CRUDAppBooksDAO crudAppBooksDAO) {
        this.crudAppBooksDAO = crudAppBooksDAO;
    }

    @Override
    @Transactional
    public void createBook(Books book) {
        crudAppBooksDAO.createBook(book);
    }

    @Override
    @Transactional
    public void updateBook(Books book) {
        crudAppBooksDAO.updateBook(book);
    }

    @Override
    @Transactional
    public void deleteBook(int id) {
        crudAppBooksDAO.deleteBook(id);
    }

    @Override
    @Transactional
    public void readBook(Books book) {
        crudAppBooksDAO.readBook(book);
    }

    @Override
    @Transactional
    public List<Books> searchBook(String title) {
        return crudAppBooksDAO.searchBook(title);
    }

    @Override
    @Transactional
    public List<Books> searchBook(int printYear) {
        return crudAppBooksDAO.searchBook(printYear);
    }

    @Override
    @Transactional
    public List<Books> searchBook(boolean readAlready) {
        return crudAppBooksDAO.searchBook(readAlready);
    }

    @Override
    @Transactional
    public List<Books> listBooks() {
        return crudAppBooksDAO.listBooks();
    }

    @Override
    @Transactional
    public Books getBookById(int id) {
        return crudAppBooksDAO.getBookById(id);
    }
}
