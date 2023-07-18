<%-- 
    Document   : wishlist
    Created on : Jul 14, 2023, 9:31:16 AM
    Author     : dvan2301
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.store2.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>My Wishlist</title>
        <!-- Include CSS and Bootstrap -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="index.css"/>
        <style>

        </style>
    </head>
    <body>
        <!-- Include header -->
        <%@ include file="header.jsp" %>

        <!-- Wishlist content -->

        <%List<Product> productList = new ArrayList<>();
            productList.add(new Product("img/banana.jpg", "Banana", "$.98 / lb", 122, "In Stock"));
            productList.add(new Product("img/kiwi.jpg", "Kiwi", "4 no", 1112, "In Stock"));
            productList.add(new Product("img/trai-dua.jpg", "Golden Pineapple", "2 no", 1312, "Out of Stock"));
            productList.add(new Product("img/cu-den.jpg", "BeatRoot", "1 kg", 122, "In Stock"));
            productList.add(new Product("img/tao.jpg", "Apple", "2 kg", 121, "Out of Stock"));
            productList.add(new Product("https://media1.thehungryjpeg.com/thumbs2/ori_3738163_spvm16qxewy7ye3ihctjh3sycddm1v3hue9jvmhr_pomegranate-fruit-isolated-on-white-background.jpg", "Pomegranate", "10 no", 1111, "In Stock"));


        %>
        <section class="mt-8 mb-14">
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="mb-8">
                            <!-- heading -->
                            <h1 class="mb-1">My Wishlist</h1>
                            <p>There are <%= productList.size()%> products in this wishlist.</p>
                        </div>
                        <div>
                            <!-- table -->
                            <div class="table-responsive">
                                <table class="table text-nowrap table-with-checkbox">
                                    <thead class="table-light">
                                        <tr>
                                            <th>

                                            </th>
                                            <th></th>
                                            <th>Product</th>
                                            <th>Amount</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                            <th>Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%-- bat dau vvong for de lap--%>
                                        <%  for (Product st : productList) {%>
                                        <tr>

                                            <td class="align-middle">
                                                <!--                                                form check -->
                                                <div class="form-check">
                                                    <!-- input -->    <input class="form-check-input" type="checkbox" value=""
                                                                             id="chechboxTwo">
                                                    <!--  label--> <label class="form-check-label" for="chechboxTwo">

                                                    </label>
                                                </div>

                                            </td>

                                            <%-- get  product img url--%>
                                            <td class="align-middle">


                                                <a  href="#"><img class="img-fruit" src="<%= st.getImgUrl()%>" class="icon-shape icon-xxl "
                                                                  alt=""></a>

                                            </td>

                                            <%-- get product name--%>
                                            <td class="align-middle">
                                                <div>
                                                    <h5 class="fs-6 mb-0"><a href="#" class="text-inherit"><%= st.getName()%></a></h5>
                                                    <small><%= st.getSellway()%></small>
                                                </div>  
                                            </td>

                                            <%-- get product amount--%>
                                            <td class="align-middle">$<%= st.getAmount()%></td>

                                            <%-- get product status--%>
                                            <td class="align-middle">
                                                <% if (st.getStatus().equalsIgnoreCase("Out of Stock")) {%>
                                                <span class="badge bg-danger"><%= st.getStatus()%> </span>

                                                <% } else {%> 
                                                <span class="badge bg-success"><%= st.getStatus()%> </span> 
                                                <% } %> 

                                            </td>

                                            <%-- Contact us--%>
                                            <% if (st.getStatus().equalsIgnoreCase("Out of Stock")) {%>
                                            <td class="align-middle">
                                                <div class="btn btn-dark btn-sm">Contact us</div>
                                            </td>

                                            <%-- add to card--%>
                                            <% } else {%> 
                                            <td class="align-middle">
                                                <div class="btn btn-primary btn-sm">Add to Cart</div>
                                            </td>
                                            <% } %> 



                                            <%-- icon thung rac sieu dep --%>
                                            <td class="align-middle "><a href="#" class="text-muted"
                                                                         >
                                                    <img class="icon-trash" src="img/trash-2.svg" alt="">
                                                </a></td>
                                        </tr>

                                        <%}%>


                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>

                </div>



            </div>

        </section>
        <!-- Include footer -->
        <%@ include file="footer.jsp" %>
    </body>
</html>

