<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <!-- Page header with logo and tagline-->
        <header class="py-5 bg-light border-bottom mb-4">
        <div class="banner">
    <img src="../images/hotel.jpg" alt="배너 이미지" id="bannerImg">
</div>
        <script>let images = ["../images/hotel.jpg", "../images/monogram.jpg", "../images//seoulhotel.jpg"]; // 이미지 경로들
        let currentImageIndex = 0;
        let imageElement = document.getElementById("bannerImg");

        function changeImage() {
            imageElement.src = images[currentImageIndex];
            currentImageIndex = (currentImageIndex + 1) % images.length; // 다음 이미지 인덱스로 변경
        }

        setInterval(changeImage, 3000); /* // 3초마다 이미지 변경 (시간은 밀리초 단위로 설정) */</script>
    
 
        </header>
        <!-- Page content-->
        <div class="container">
            <div class="row">
                <!-- Blog entries-->
                <div class="col-lg-8">
                    <!-- Featured blog post-->
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="..\hotel.jpg" alt="..." /></a>
                        <div class="card-body">
                            <div class="small text-muted">작성 날짜</div>
                            <h2 class="card-title">메인 그림 제목</h2>
                            <p class="card-text">메인 이미지 부연설명</p>
                            <a class="btn btn-primary" href="#!">더보기 →</a>
                        </div>
                    </div>
                    
                    <!-- Nested row for non-featured blog posts-->
                    <div class="row">
                        <div class="col-lg-6">
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">작성 날짜</div>
                                    <h2 class="card-title h4">이미지 제목</h2>
                                    <p class="card-text">이미지 부연설명</p>
                                    <a class="btn btn-primary" href="#!">더보기 →</a>
                                </div>
                            </div>
                            
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">작성날짜</div>
                                    <h2 class="card-title h4">이미지 제목</h2>
                                    <p class="card-text">이미지 부연설명 </p>
                                     <a class="btn btn-primary" href="#!">더보기 →</a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6">
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">작성날짜</div>
                                    <h2 class="card-title h4">이미지 제목</h2>
                                    <p class="card-text">이미지 부연설명</p>
                                    <a class="btn btn-primary" href="#!">더보기 →</a>
                                </div>
                            </div>
                            
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">작성 날짜</div>
                                    <h2 class="card-title h4">이미지 제목</h2>
                                    <p class="card-text">이미지 부연설명</p>
                                    <a class="btn btn-primary" href="#!">더보기 →</a>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Pagination--> <!-- // 여러 페이지 넘김 탭 -->
                    
               </div>
                
                
                <!-- Side widgets-->
                <div class="col-lg-4">
                    <!-- Search widget--> <!-- 회원가입 대체 탭 -->
                    <div class="card mb-4">

                       
 

  
                    <!-- Categories widget-->
                    <div class="card mb-4">
                        <div class="card-header">카테고리</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#!">서울신라호텔</a></li>
                                        <li><a href="#!">제주신라호텔</a></li>
                                        <li><a href="#!">신라모노그램다낭</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#!">신라스테이</a></li>
                                        <li><a href="#!">신라리워즈</a></li>
                                        <li><a href="#!">고객문의</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Side widget-->
                    <div class="card mb-4">
                        <div class="card-header">Side Widget</div>
                        <div class="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5 card component!</div>
                    </div>   
                </div>
            </div>
        </div>
        </div>  <!-- div container 오류 의심 수정 -->
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer> 
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/boots trap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>