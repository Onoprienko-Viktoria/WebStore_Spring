<#import "parts/common.ftl" as c>
<@c.page>
    <title>All products</title>
    <div class="container">
        <div align="right">
            <form style="display: inline-block;" action="/cabinet" target="_self">
                <button class="btn btn-dark">Cabinet</button>
            </form>
            <form style="display: inline-block;" action="/product/add" target="_self">
                <button class="btn btn-dark">Add new product</button>
            </form>
            <form style="display: inline-block;" action="/logout" target="_self" method="post">
                <button class="btn btn-dark">Logout</button>
            </form>
        </div>
        <div align="right">
            <form style="display: inline-block;" action="/login" target="_self">
                <button class="btn btn-dark">Login</button>
            </form>
            <form style="display: inline-block;" action="/registration" target="_self">
                <button class="btn btn-dark">Registration</button>
            </form>
        </div>

        <h1 align="center">List of products</h1>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Name</th>
                <th scope="col">Price</th>
                <th scope="col">Description</th>
                <th scope="col">Publish date</th>
                <th scope="col">Author</th>
            </tr>
            </thead>
            <tr>
                <#list products as product>
            <tr>
                <th scope="row">${product.id}</th>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td>${product.publishDate}</td>
                <td>${product.author.getUsername()}</td>
            </tr>
            </#list>
            </tbody>
        </table>
    </div>
</@c.page>