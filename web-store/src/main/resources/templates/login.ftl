<#import "parts/common.ftl" as c>
<@c.page>
    <title>Login</title>
<div class="container">
    <#if message??>
        <div align="center" class="alert alert-dark" role="alert">
            <strong>${message}</strong>
        </div>
    </#if>
    <h1>Login</h1>
    <form action="/login" method="POST">
        <div class="mb-3">
            <label class="form-label">Name</label>
            <input name="username" type="text" class="form-control" required="required" id="username">
        </div>
        <div class="mb-3">
            <label class="form-label">Password</label>
            <input name="password" type="password" class="form-control" required="required">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-dark">Sign in</button>
    </form>
    <h3>Not registered yet?</h3>
    <form style="display: inline-block;" action="/registration" target="_self">
        <button class="btn btn-dark">Registration</button>
    </form>
    <form style="display: inline-block;" action="/" target="_self">
        <button class="btn btn-dark">Return to products</button>
    </form>
</div>
</@c.page>