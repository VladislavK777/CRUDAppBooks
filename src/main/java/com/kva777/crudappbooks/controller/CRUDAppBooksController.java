package com.kva777.crudappbooks.controller;

/*
* @author Vladislav Klochkov
* @version 1.0
* 04.10.2017
*
* Controller
*
 */

import com.kva777.crudappbooks.model.Books;
import com.kva777.crudappbooks.service.CRUDAppBooksService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.portlet.ModelAndView;

import java.util.List;

@Controller
public class CRUDAppBooksController {

    private static Logger logger = LoggerFactory.getLogger(CRUDAppBooksController.class);

    @Autowired
    @Qualifier("crudAppBooksService")
    private CRUDAppBooksService crudAppBooksService;

    public void setCrudAppBooksService(CRUDAppBooksService crudAppBooksService) {
        this.crudAppBooksService = crudAppBooksService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
        model.addAttribute("book", new Books());
        model.addAttribute("listBooks", crudAppBooksService.listBooks());
        return "books";
    }

    @RequestMapping(value = "/list")
    public String listOfUsers(@RequestParam(required = false) Integer page, Model model) {


        List<Books> book = crudAppBooksService.listBooks();
        PagedListHolder<Books> pagedListHolder = new PagedListHolder<Books>(book);
        pagedListHolder.setPageSize(5);
        model.addAttribute("maxPages", pagedListHolder.getPageCount());

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) page = 1;

        model.addAttribute("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            model.addAttribute("book", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
            model.addAttribute("book", pagedListHolder.getPageList());
        }

        return "books";
    }

    @RequestMapping(value = "/books/add", method = RequestMethod.POST)
    public String createBook(@ModelAttribute("book") Books books) {
        if (books.getId() == 0) {
            crudAppBooksService.createBook(books);
        } else {
            crudAppBooksService.updateBook(books);
        }
        return "redirect:/";
    }

    @RequestMapping("/delete/{id}")
    public String deleteBook(@PathVariable("id") int id) {
        crudAppBooksService.deleteBook(id);
        return "redirect:/";
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, Model model) {
        model.addAttribute("book", crudAppBooksService.getBookById(id));
        model.addAttribute("listBooks", crudAppBooksService.listBooks());
        return "books";
    }

    @RequestMapping("/search/title")
    public String searchBookByTitle(@RequestParam(value = "title") String title, Model model) {
        model.addAttribute("book", new Books());
        model.addAttribute("listBooks", crudAppBooksService.searchBookByTitle(title));
        return "books";
    }

    @RequestMapping("/search/year")
    public String searchBookByYear(@RequestParam(value = "year") int year, Model model) {
        model.addAttribute("book", new Books());
        model.addAttribute("listBooks", crudAppBooksService.searchBookByYear(year));
        return "books";
    }

    @RequestMapping("/search/read")
    public String searchBookByRead(@RequestParam(value = "read") boolean read, Model model) {
        model.addAttribute("book", new Books());
        model.addAttribute("listBooks", crudAppBooksService.searchBookByRead(read));
        return "books";
    }

}
