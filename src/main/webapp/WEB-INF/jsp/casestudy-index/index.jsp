<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<jsp:include page="../include/header.jsp" />

<main>
    <div class="marginForFooter container text-center">
        <h2 class="display-7 text-darkblue">Welcome, <span class="username text-bold">guest</span>!</h2>
        <p class="fs-5 text-darkblue w-75 m-auto">This inventory tracking web application for a logistics company implements basic CRUD functionality with additional advanced functions that mentioned below.</p>
        <p class="fs-5 text-darkblue w-75 m-auto text-center">Please <a href="#" onclick="formOpenClose('login-article')">Login</a> or <a href="/case/register">Register</a></p>
        <div class="row justify-content-center">
            <article id="login-article" class="d-none col col-lg-5 col-md-7 col-sm-10 shadow-lg rounded15px p-5 mt-3 text-start">
                <form action="#" name="login_form" class="row needs-validation" novalidate>
                    <input type="email" class="form-control" name="email" placeholder="Enter your email in format abc@abc.com" required aria-describedby="validationEmailLogin">
                    <!--                        <div class="valid-feedback">-->
                    <!--                            Passed!-->
                    <!--                        </div>-->
                    <div id="validationEmailLogin" class="invalid-feedback">
                        Please enter a valid email address.
                    </div>
                    <input type="password" class="mt-3 form-control" name="pass" placeholder="Enter your password" required aria-describedby="validationPassLogin">
                    <!--                        <div class="valid-feedback">-->
                    <!--                            Passed!-->
                    <!--                        </div>-->
                    <div id="validationPassLogin" class="invalid-feedback">
                        The mentioned pass didn't work.
                    </div>
                    <button class="mt-3 btn btn-dark btn-lg btn-block" type="submit">Login</button>
                    <a class="mb-3 mt-3 small text-muted" href="#">Forgot password?</a>
                    <p class="mb-3">Don't have an account? <a href="/case/register">Register here</a></p>
                    <a class="text-right text-muted" onclick="formOpenClose('login-article')" href="#">close</a>
                </form>
            </article>
        </div>
        <div class="row justify-content-md-center">
            <article class="d-none inventorywindow col col-lg-8 shadow-lg rounded15px p-5 mt-3 text-start">
                <p><i class="fas fa-circle me-2"></i>item2</p>
                <p><i class="fas fa-circle me-2"></i>Make sure you have an access  <span class="text-bold">for managing the Inventory system</span>. Make a request to our support group in order to get an access. Please attach your manager's approval with your request.</p>
            </article>
        </div>
        <h2 class="text-darkblue mt-3">Basic functionality:</h2>
        <div class="row justify-content-md-center">
            <article class="col col-lg-8 shadow-lg rounded15px p-5 mt-3 text-start">
                <p><i class="fas fa-circle me-2"></i>Create inventory items</p>
                <p><i class="fas fa-circle me-2"></i>Edit items (name, description, availableQuantity)</p>
                <p><i class="fas fa-circle me-2"></i>Delete items</p>
                <p><i class="fas fa-circle me-2"></i>View a list of items</p>
            </article>
        </div>
        <h2 class="text-darkblue mt-3">Additional functionality:</h2>
        <div class="row justify-content-md-center">
            <article class="col col-lg-8 shadow-lg rounded15px p-5 mt-3 text-start">
                <p><i class="far fa-circle me-2"></i>Push a button export product data to a CSV</p>
                <p><i class="far fa-circle me-2"></i>Allow image uploads AND store image with generated thumbnails</p>
                <p><i class="far fa-circle me-2"></i>When deleting, allow deletion comments and undeletion</p>
                <p><i class="far fa-circle me-2"></i>Filtering based on fields/inventory count/tags/other metadata</p>
                <p><i class="far fa-circle me-2"></i>Ability to assign/remove inventory items to a named group/collection</p>
                <p><i class="far fa-circle me-2"></i>Ability to create warehouses/locations and assign inventory to specific locations</p>
                <p><i class="far fa-circle me-2"></i>Ability to create “shipments” and assign inventory to the shipment, and adjust inventory appropriately</p>
                <p><i class="far fa-circle me-2"></i>Ability to generate a report on inventory levels over time, like: most in-stock or out-of-stock last month</p>
            </article>
        </div>
    </div>
</main>

<jsp:include page="../include/footer.jsp" />