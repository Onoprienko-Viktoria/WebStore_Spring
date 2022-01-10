<#import "parts/common.ftl" as c>
<@c.page>
    <title>Registration</title>
    <div class="container">
        <h1>Registration</h1>
        <form action="/registration" method="POST">
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input name="username" type="text" class="form-control" required="required" id="username">
            </div>
            <div class="mb-3">
                <label class="form-label">Email address</label>
                <input name="email" type="email" class="form-control" required="required" id="email">
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input name="password" type="password" class="form-control" required="required" id="password">
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit" class="btn btn-dark">Submit</button>
        </form>
        <h3>Already registered?</h3>
        <form style="display: inline-block;" action="/login" target="_self">
            <button class="btn btn-dark">Login</button>
        </form>
        <form style="display: inline-block;" action="/" target="_self">
            <button class="btn btn-dark">Return to products</button>
        </form>
    </div>
</@c.page>