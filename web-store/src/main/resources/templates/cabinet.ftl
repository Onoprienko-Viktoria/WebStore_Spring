<#import "parts/common.ftl" as c>
<@c.page>
<div class="container">
    <div align="right">
        <form style="display: inline-block;" action="/" target="_self">
            <button class="btn btn-dark" >Return to products</button>
        </form>
        <form style="display: inline-block;" action="/product/add" target="_self">
            <button class="btn btn-dark" >Add new product</button>
        </form>
        <form style="display: inline-block;" action="/logout" target="_self">
            <button class="btn btn-dark" >Logout</button>
        </form>
    </div>
    <h1>Info about user:</h1>
    <h4>Name: ${user.getUsername()}</h4>
    <h4>Email: ${user.getEmail()}</h4>
    <h1 align="center">Products you add</h1>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Description</th>
            <th scope="col">Publish date</th>
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
        </tr>
            <td><form action="/product/edit/${product.id}" target="_self">
                    <button class="btn btn-dark" value=${product.id} name="id"> Edit</button>
                </form></td>
            <td><form action="/product/remove/${product.id}" target="_self">
                    <button class="btn btn-dark" value=${product.id} name="id"> Remove</button>
                </form></td>
        </tr>
        </#list>
        </tbody>
    </table>

</div>

</@c.page>