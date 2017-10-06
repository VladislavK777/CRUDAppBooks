<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%--
  Created by IntelliJ IDEA.
  User: Vladislav.Klochkov
  Date: 04.10.2017
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="text/javascript"
            src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js">
    </script>
    <title>CRUDAppBooks</title>
    <style type="text/css">
        .input_style_of_text {
            width: auto;
            font-size: 13px;
            padding: 6px 0 4px 10px;
            border: 1px solid #cecece;
            background: #F6F6f6;
            border-radius: 8px;
        }

        .bot1 {
            background-color: #FFFFFF;
            border: 1px solid #CCCCCC;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
            transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
            border-radius: 4px;
            color: #555555;
            width: auto;
            margin: auto;
            font-size: 14px;
            text-align: center;
            height: auto;
            line-height: 20px;
            margin-bottom: 10px;
            padding: 4px 6px;
            vertical-align: middle;
            text-decoration: none;
        }

        .bot1:hover, .bot1:focus {
            border-color: rgba(12, 123, 69, 0.8);
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(12, 123, 69, 0.9);
            outline: 0 none;
        }

        .bot3 {
            background-color: #FFFFFF;
            border: 1px solid #CCCCCC;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
            transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
            border-radius: 4px;
            color: #555555;
            width: auto;
            margin: auto;
            font-size: 14px;
            text-align: center;
            height: auto;
            line-height: 20px;
            margin-bottom: 10px;
            padding: 4px 6px;
            vertical-align: middle;
            text-decoration: none;
        }

        .bot3:hover, .bot3:focus {
            border-color: rgba(255, 0, 0, 0.8);
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(250, 0, 0, 0.9);
            outline: 0 none;
        }

        .bot2 {
            background: linear-gradient(to bottom, #FFFFFF, #E6E6E6) #F5F5F5 repeat-x;
            border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) #B3B3B3;
            border-radius: 4px;
            border-style: solid;
            border-width: 1px;
            box-shadow: 0 1px 0 rgba(255, 255, 255, 0.2) inset, 0 1px 2px rgba(0, 0, 0, 0.05);
            color: #333333;
            text-decoration: none;
            font-size: 14px;
            width: 120px;
            line-height: 20px;
            margin: 20px auto;
            padding: 4px 12px;
            text-align: center;
            text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
            vertical-align: middle;
            position: relative;
            -webkit-transition-duration: 0.3s;
            transition-duration: 0.3s;
            -webkit-transition-property: -webkit-transform;
            transition-property: transform;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
            -webkit-transform: translateZ(0);
            -ms-transform: translateZ(0);
            transform: translateZ(0);
            box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        }

        .bot2:before {
            pointer-events: none;
            position: absolute;
            z-index: -1;
            content: '';
            top: 100%;
            left: 5%;
            height: 10px;
            width: 90%;
            opacity: 0;
            background: -webkit-radial-gradient(center, ellipse, rgba(0, 0, 0, 0.35) 0%, rgba(0, 0, 0, 0) 80%);
            background: radial-gradient(ellipse at center, rgba(0, 0, 0, 0.35) 0%,
            rgba(0, 0, 0, 0) 80%);
            -webkit-transition-duration: 0.3s;
            transition-duration: 0.3s;
            -webkit-transition-property: -webkit-transform, opacity;
            transition-property: transform, opacity;
        }

        .bot2:hover {
            -webkit-transform: translateY(-5px);
            -ms-transform: translateY(-5px);
            transform: translateY(-5px);
        }

        .bot2:hover:before {
            opacity: 1;
            -webkit-transform: translateY(5px);
            -ms-transform: translateY(5px);
            transform: translateY(5px);
        }

        .table_report {
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
            font-size: 14px;
            background: white;
            max-width: 70%;
            width: 70%;
            border-collapse: collapse;
            text-align: left;
        }

        .th_report {
            font-weight: normal;
            color: #039;
            border-bottom: 2px solid #6678b1;
            padding: 10px 8px;
        }

        .td_report {
            border-bottom: 1px solid #ccc;
            color: #669;
            padding: 9px 8px;
            transition: .3s linear;
        }

        #footer {
            position: fixed;
            left: 0;
            bottom: 0;
            padding: 10px;
            background: #0c7b45;
            color: #fff;
            width: 100%;
        }

        .one {
            background: #fff;
            padding: 50px 20px;
        }

        .one h1 {
            font-family: 'Calibri Light', serif;
            position: relative;
            color: #0c7b45;
            font-size: 50px;
            font-weight: normal;
            font-weight: bold;
            padding: 8px 20px 7px 20px;
            border-top: 4px solid;
            border-left: 4px solid;
            display: inline-block;
            margin: 0;
            line-height: 1;
            padding: 8px 20px 7px 20px;
        }

        .one h1:before {
            content: "";
            position: absolute;
            width: 28px;
            height: 28px;
            top: -28px;
            left: -28px;
            border: 4px solid #0c7b45;
            box-sizing: border-box;
        }

        @media ( max-width: 450px) {
            .one h1 {
                font-size: 36px;
            }

            .one h1:before {
                width: 20px;
                height: 20px;
                top: -20px;
                left: -20px;
            }
        }

        .form {
            position: absolute;
            top: 30%;
            left: 40%;
            margin: auto;
            z-index: 2;
            width: 300px;
            padding: 40px 20px;
            background: #FFFFFF;
            border: 1px solid #666666;
            border-radius: 20px;
            box-shadow: 0 0 2px rgba(0, 0, 0, 0.9);
        }

        .form input {
            width: 96%;
            padding: 5px 2%;
            margin: 10px 0;
            border-radius: 4px;
        }

        .select-and-input {
            position: relative;
            height: 30px;
            width: 100px;
        }

        .select-and-input select {
            position: absolute;
            z-index: 0;
            top: 0;
            left: 0;
            height: 24px;
            width: 100px;
        }

        .select-and-input input {
            position: absolute;
            z-index: 1;
            top: 0;
            left: 0;
            height: 20px;
            padding: 0;
            width: 78px;
        }

    </style>
</head>
<body>
<div class="one">
    <h1>CRUDAppBooks</h1>
</div>

<!-- Используем JS для красивого всплывающего окна -->
<script type="text/javascript">
    $(document).ready(function () {

        $(popup_bg).click(function () {
            $(popup).fadeOut(800);
        });

    });

    function showPopup() {
        $(popup).fadeIn(800);
    }
</script>

<br>

<input type="button" value="Добавить книгу" onclick="showPopup()"
       class="bot1">

<table class="table_report">
    <tr>
        <td class="td_report">
            <div id="popup"
                 style="position: absolute; height: 100%; width: 100%; top: 0; left: 0; display: none;">
                <div id="popup_bg"
                     style="background: rgba(0, 0, 0, 0.2); position: absolute; z-index: 1; height: 100%; width: 100%;">
                </div>
                <div class="form">
                    <h1>Добавить книгу:</h1>
                    <c:url var="add" value="/books/add"/>
                    <form:form action="${add}" commandName="book">
                        <table>
                            <c:if test="${!empty book.title}">
                                <tr>
                                    <td>
                                        <form:label path="id">
                                        </form:label>
                                    </td>
                                    <td>
                                        <form:input path="id" readonly="true" disabled="true" type="hidden"/>
                                        <form:hidden path="id"/>
                                    </td>
                                </tr>
                            </c:if>
                            <tr>
                                <td>Title:</td>
                                <td><form:input path="title"
                                                class="input_style_of_text"/></td>

                            </tr>
                            <tr>
                                <td>Description:</td>
                                <td><form:input path="description"
                                                class="input_style_of_text"/></td>
                            </tr>
                            <tr>
                                <td>Author:</td>
                                <c:if test="${!empty book.title}">
                                    <td><form:input path="author"
                                                    class="input_style_of_text" readonly="true"/></td>
                                </c:if>
                                <c:if test="${empty book.title}">
                                    <td><form:input path="author"
                                                    class="input_style_of_text"/></td>
                                </c:if>

                            </tr>
                            <tr>
                                <td>ISBN:</td>
                                <td><form:input path="isbn"
                                                class="input_style_of_text"/></td>
                            </tr>
                            <tr>
                                <td>PrintYear:</td>
                                <td><form:input path="printYear"
                                                class="input_style_of_text"/></td>
                            </tr>
                            <tr>
                                <td>ReadAlready:</td>
                                <c:if test="${empty book.title}">
                                    <td><form:input path="readAlready" value="false"
                                                    class="input_style_of_text" readonly="true"/></td>
                                </c:if>
                                <c:if test="${!empty book.title}">
                                    <td>
                                        <form>
                                            <div class="select-and-input">
                                                <select name="selectName"
                                                        onchange="parentNode.getElementsByTagName('input')[0].value=value">
                                                    <c:if test="${book.readAlready}">
                                                        <option value="true">Yes</option>
                                                        <option value="false">No</option>
                                                    </c:if>
                                                    <c:if test="${!book.readAlready}">
                                                        <option value="false">No</option>
                                                        <option value="true">Yes</option>
                                                    </c:if>
                                                </select>
                                                <form:input path="readAlready"
                                                            class="input_style_of_text" type="hidden"/>
                                            </div>
                                        </form>
                                    </td>
                                </c:if>
                            </tr>
                        </table>
                        <c:if test="${!empty book.title}">
                            <input type="submit"
                                   value="<spring:message text="Edit book"/>" class="bot2"/>
                        </c:if>
                        <c:if test="${empty book.title}">
                            <input type="submit"
                                   value="<spring:message text="Add book"/>" class="bot2"/>
                        </c:if>
                    </form:form>
                </div>
            </div>
        </td>
    </tr>
</table>

<c:if test="${!empty listBooks}">
    <table class="table_report">
        <tr>
            <th class="th_report">Title</th>
            <th class="th_report">Description</th>
            <th class="th_report">Author</th>
            <th class="th_report">ISBN</th>
            <th class="th_report">PrintYear</th>
            <th class="th_report">ReadAlready</th>
            <th class="th_report">Edit</th>
            <th class="th_report">Delete</th>

        </tr>
        <c:forEach items="${listBooks}" var="listBooks">
            <tr>
                <td class="td_report">${listBooks.title}</td>
                <td class="td_report">${listBooks.description}</td>
                <td class="td_report">${listBooks.author}</td>
                <td class="td_report">${listBooks.isbn}</td>
                <td class="td_report">${listBooks.printYear}</td>
                <td class="td_report">${listBooks.readAlready}</td>
                <td class="td_report">
                    <form action="/edit/${listBooks.id}">
                        <input type="submit" value="Edit" class="bot1" onclick="showPopupBook()">
                    </form>
                </td>
                <td class="td_report">
                    <form action="/delete/${listBooks.id}">
                        <input type="submit" value="Delete" class="bot3">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<script type="text/javascript">
    $(document).ready(function () {

        $(popup_bg_book).click(function () {
            $(popup_book).fadeOut(800);
        });

    });

    function showPopupBook() {
        $(popup_book).fadeIn(800);
    }
</script>

<table class="table_report">
    <tr>
        <td class="td_report">
            <div id="popup_book"
                 style="position: absolute; height: 100%; width: 100%; top: 0; left: 0; display: none;">
                <div id="popup_bg_book"
                     style="background: rgba(0, 0, 0, 0.2); position: absolute; z-index: 1; height: 100%; width: 100%;">
                </div>
                <div class="form">
                    <h1>Добавить книгу:</h1>
                    <c:url var="add" value="/books/add"/>
                    <form:form action="${add}" commandName="book">
                        <table>
                            <c:if test="${!empty book.title}">
                                <tr>
                                    <td>
                                        <form:label path="id">
                                        </form:label>
                                    </td>
                                    <td>
                                        <form:input path="id" readonly="true" disabled="true" type="hidden"/>
                                        <form:hidden path="id"/>
                                    </td>
                                </tr>
                            </c:if>
                            <tr>
                                <td>Title:</td>
                                <td><form:input path="title"
                                                class="input_style_of_text"/></td>

                            </tr>
                            <tr>
                                <td>Description:</td>
                                <td><form:input path="description"
                                                class="input_style_of_text"/></td>
                            </tr>
                            <tr>
                                <td>Author:</td>
                                <c:if test="${!empty book.title}">
                                    <td><form:input path="author"
                                                    class="input_style_of_text" readonly="true"/></td>
                                </c:if>
                                <c:if test="${empty book.title}">
                                    <td><form:input path="author"
                                                    class="input_style_of_text"/></td>
                                </c:if>

                            </tr>
                            <tr>
                                <td>ISBN:</td>
                                <td><form:input path="isbn"
                                                class="input_style_of_text"/></td>
                            </tr>
                            <tr>
                                <td>PrintYear:</td>
                                <td><form:input path="printYear"
                                                class="input_style_of_text"/></td>
                            </tr>
                            <tr>
                                <td>ReadAlready:</td>
                                <c:if test="${empty book.title}">
                                    <td><form:input path="readAlready" value="false"
                                                    class="input_style_of_text" readonly="true"/></td>
                                </c:if>
                                <c:if test="${!empty book.title}">
                                    <td>
                                        <form>
                                            <div class="select-and-input">
                                                <select name="selectName"
                                                        onchange="parentNode.getElementsByTagName('input')[0].value=value">
                                                    <c:if test="${book.readAlready}">
                                                        <option value="true">Yes</option>
                                                        <option value="false">No</option>
                                                    </c:if>
                                                    <c:if test="${!book.readAlready}">
                                                        <option value="false">No</option>
                                                        <option value="true">Yes</option>
                                                    </c:if>
                                                </select>
                                                <form:input path="readAlready"
                                                            class="input_style_of_text" type="hidden"/>
                                            </div>
                                        </form>
                                    </td>
                                </c:if>
                            </tr>
                        </table>
                        <c:if test="${!empty book.title}">
                            <input type="submit"
                                   value="<spring:message text="Edit book"/>" class="bot2"/>
                        </c:if>
                        <c:if test="${empty book.title}">
                            <input type="submit"
                                   value="<spring:message text="Add book"/>" class="bot2"/>
                        </c:if>
                    </form:form>
                </div>
            </div>
        </td>
    </tr>
</table>

<div id="pagination">
    <c:url value="/list" var="prev">
        <c:param name="page" value="${page-1}"/>
    </c:url>
    <c:if test="${page > 1}">
        <a href="<c:out value="${prev}" />" class="pn prev">Prev</a>
    </c:if>

    <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
        <c:choose>
            <c:when test="${page == i.index}">
                <span>${i.index}</span>
            </c:when>
            <c:otherwise>
                <c:url value="/list" var="url">
                    <c:param name="page" value="${i.index}"/>
                </c:url>
                <a href='<c:out value="${url}" />'>${i.index}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:url value="/list" var="next">
        <c:param name="page" value="${page + 1}"/>
    </c:url>
    <c:if test="${page + 1 <= maxPages}">
        <a href='<c:out value="${next}" />' class="pn next">Next</a>
    </c:if>
</div>


</body>
</html>