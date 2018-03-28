<%@include file="/WEB-INF/views/template/header.jsp"%>


        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="first-slide home-image" src="<c:url value="/resources/images/backa.jpg"/>" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption text-left">
                            <h1>Kakoshima,Japan</h1>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="second-slide home-image" src="<c:url value="/resources/images/backb.jpg"/>" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Shanghai,China</h1>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="third-slide home-image" src="<c:url value="/resources/images/backc.jpg"/>" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption text-right">
                            <h1>Boracay,Philippines</h1>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


        <!-- Marketing messaging and featurettes
        ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->

        <div class="container marketing">

            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <a class="btn btn-light" href="<c:url value="/product/productList?searchCondition=Instrument"/> " role="button">
                        <img class="rounded-circle" src="<c:url value="/resources/images/shanghai.jpg"/> " alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Shanghai</h2>
                    <p>...</p>
                </div><!-- /.col-lg-4 -->




                <div class="col-lg-4">
                    <a class="btn btn-light" href="<c:url value="/product/productList?searchCondition=Record"/> " role="button">
                        <img class="rounded-circle" src="<c:url value="/resources/images/Boracay.jpg"/> " alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Boracay</h2>
                    <p>...</p>
                </div><!-- /.col-lg-4 -->



                <div class="col-lg-4">
                    <a class="btn btn-light" href="<c:url value="/product/productList?searchCondition=Accessory"/> " role="button">
                        <img class="rounded-circle" src="<c:url value="/resources/images/Kakoshima.jpg"/> " alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Kakoshima</h2>
                    <p>Safasdgfasgasdgasdgasgasg</p>
                </div><!-- /.col-lg-4 -->


            </div><!-- /.row -->





        </div><!-- /.container -->


<%@include file="/WEB-INF/views/template/footer.jsp"%>
