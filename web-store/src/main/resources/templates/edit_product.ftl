<#import "parts/common.ftl" as c>
<@c.page>
<div conteiner align="center">
    <h1>Edit your Product</h1>
    <strong>
        <form action="/products/edit/${product.id}" method="POST">
            <p>New name: <input type="text" name="name"/></p>
            <p>New price: <input type="number" name="price"/></p>
            <p>New description: <input type="text" name="description"/></p>
            <p><input class="btn btn-dark" type="submit" value="Edit product"></p>
        </form>
        <form action="/products" target="_self">
            <button class="btn btn-dark"> Return to products</button>
        </form>
    </strong>
</div>

</@c.page>