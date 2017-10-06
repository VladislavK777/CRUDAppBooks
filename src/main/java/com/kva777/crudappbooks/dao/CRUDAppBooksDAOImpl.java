package com.kva777.crudappbooks.dao;

/*
* @author Vladislav Klochkov
* @version 1.0
* 03.10.2017
*
* Implementation for {@link CRUDAppBooksDAO} interface
*
 */

import com.kva777.crudappbooks.model.Books;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CRUDAppBooksDAOImpl implements CRUDAppBooksDAO {

    private SessionFactory sessionFactory;

    private static Logger logger  = LoggerFactory.getLogger(CRUDAppBooksDAOImpl.class);


    @Override
    public void createBook(Books book) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(book);
        logger.info("Книга " + book.getTitle() + " добавлена!");
    }

    public void updateBook(Books book) {
        Session session = sessionFactory.getCurrentSession();
        session.update(book);
        logger.info("Книга " + book.getTitle() + " обновлена!");

    }

    public void deleteBook(int id) {
        Session session = sessionFactory.getCurrentSession();
        Books book = (Books) session.load(Books.class, new Integer(id));
        if (book != null) {
            session.remove(book);
        }
        logger.info("Книга " + book.getTitle() + " удалена!");
    }

    public void readBook(Books book) {
        Session session = sessionFactory.getCurrentSession();
        session.update(book);
    }

    @SuppressWarnings("unchecked")
    public List<Books> searchBook(String title) {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Books where title = :title").setParameter("title", title).list();
    }

    @SuppressWarnings("unchecked")
    public List<Books> searchBook(int printYear) {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Books where printYear >= :printYear").setParameter("printYear", printYear).list();
    }

    @SuppressWarnings("unchecked")
    public List<Books> searchBook(boolean readAlready) {
        Session session = sessionFactory.getCurrentSession();
        return (readAlready) ? session.createQuery("from Books where readAlready = true").list() : session.createQuery("from Books where readAlready = false").list();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Books> listBooks() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Books").list();
    }

    @Override
    public Books getBookById(int id) {
        Session session = sessionFactory.getCurrentSession();
        System.out.println(session.load(Books.class, new Integer(id)));
        return session.load(Books.class, new Integer(id));
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
