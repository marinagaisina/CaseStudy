<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="../include/header.jsp" />

<main>
    <div class="marginForFooter container">
        <h2 class="display-4 text-darkblue text-center">New users registration</h2>
        <article class="m-auto col col-xl-7 col-md-10 shadow-lg rounded15px p-5 mt-4">
            <form method="GET" action="/case/registerSubmit" name="register-form" class="row">
                <input type="text" class="form-control" name="email" value="${formBeanKey.email}" placeholder="Enter your email in format abc@abc.com" aria-describedby="validationEmailRegister">
                <div id="validationEmailRegister" class="invalid-feedback">
                    Please enter a valid email address.
                </div>
                <input type="text" class="mt-3 form-control" name="firstName" value="${formBeanKey.firstName}" placeholder="Enter your first name" aria-describedby="validationFirstName">
                <div id="validationFirstName" class="invalid-feedback">
                    Please enter a valid first name.
                </div>
                <input type="text" class="mt-3 form-control" name="lastName" value="${formBeanKey.lastName}" placeholder="Enter your last name" aria-describedby="validationLastName">
                <div id="validationLastName" class="invalid-feedback">
                    Please enter a valid last name.
                </div>
                <input type="password" class="mt-3 form-control" name="password" value="${formBeanKey.password}" placeholder="Enter your password" aria-describedby="validationPassRegister">
                <div id="validationPassRegister" class="invalid-feedback">
                    Password doesn't match the confirmed password.
                </div>
                <input type="password" class="mt-3 form-control" name="confirmPassword" value="${formBeanKey.confirmPassword}" placeholder="Confirm your password" aria-describedby="validationPassRegisterConfirm">
                <div id="validationPassRegisterConfirm" class="invalid-feedback">
                    Password doesn't match the confirmed password.
                </div>
                <button class="mt-3 btn btn-dark btn-lg btn-block" type="submit">Register</button>
                <div class="mt-3">
                    <c:forEach items="${formBeanKey.errorMessages}" var="message">
                        <span class="text-danger">${message}</span><br>
                    </c:forEach>
                </div>
            </form>
        </article>
        <div class="w-75 m-auto mt-4 fs-5 text-darkblue">
            <p><i class="far fa-circle me-2"></i>Make sure you were given a permission  <span class="text-bold">for accessing Inventory Management System</span>.<br>
                Check your email for an email from support@ims.com. Your permission's details must be described in the email under topic "IMA Permission".<br>
            <p><i class="far fa-circle me-2"></i>In order to get a permission, please contact to our <a href="/case/usersupport">user support team</a>.<br>
            You will need to attach your manager's approval with your request for getting a permission.</p>
            <a class="mt-5 text-muted" href="/case">Go to Main page</a>
        </div>

    </div>
</main>

<jsp:include page="../include/footer.jsp" />