<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <title><tiles:insertAttribute name="title"/></title>
    </head>
    <body>
        <h2>Hello World!</h2>
        <tiles:insertAttribute name="content"/>
    </body>
</html>
