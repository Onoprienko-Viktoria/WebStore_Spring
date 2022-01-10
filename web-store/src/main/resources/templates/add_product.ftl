<#import "parts/common.ftl" as c>
<@c.page>
    <title>Add product</title>
    <div conteiner align="center">
        <h1>Add your product!</h1>
        <strong>
            <form action="/product/add" method="POST">
                <p>Name: <input type="text" name="name"/></p>
                <p>Price: <input type="number" name="price"/></p>
                <p>Description: <input type="text" name="description"/></p>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <p><input class="btn btn-dark" type="submit" value="Add product"></p>
            </form>
            <form action="/" target="_self">
                <button class="btn btn-dark"> Return to products</button>
            </form>
        </strong>
    </div>

</@c.page>