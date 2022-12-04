<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="common.jsp" %>
    </head>

    <body>
        <div class="total container-fluid">
            <div class="total_child d-flex">
                <div class="colLeft">
                    <div class="colLeft_child">
                        <a class="exec_click" href="">
                            <div class="colLeft_logo__content row">
                                <span class="colLeft__Logo col-2 ps-48">
                                    <img class="w-10 h-10" src="image/index/logo.png" alt="#">
                                </span>
                                <h1 class="colLeft__text col-10" style="font-size: 1.4rem;">
                                    <span>MOON</span><span class="text-primary">LIGHT</span>
                                </h1>
                            </div>
                        </a>
                        <div class="colLeft_Menu">MENU</div>
                        <div class="colLeft_menu_item">
                            <a class="item active">
                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024" height="25"
                                     width="25" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M946.5 505L560.1 118.8l-25.9-25.9a31.5 31.5 0 0 0-44.4 0L77.5 505a63.9 63.9 0 0 0-18.8 46c.4 35.2 29.7 63.3 64.9 63.3h42.5V940h691.8V614.3h43.4c17.1 0 33.2-6.7 45.3-18.8a63.6 63.6 0 0 0 18.7-45.3c0-17-6.7-33.1-18.8-45.2zM568 868H456V664h112v204zm217.9-325.7V868H632V640c0-22.1-17.9-40-40-40H432c-22.1 0-40 17.9-40 40v228H238.1V542.3h-96l370-369.7 23.1 23.1L882 542.3h-96.1z">
                                </path>
                                </svg>
                                <span>Home</span>
                            </a>
                            <a class="item">
                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="25" width="25"
                                     xmlns="http://www.w3.org/2000/svg">
                                <path fill="none" d="M0 0h24v24H0V0z"></path>
                                <path
                                    d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm-5.5-2.5l7.51-3.49L17.5 6.5 9.99 9.99 6.5 17.5zm5.5-6.6c.61 0 1.1.49 1.1 1.1s-.49 1.1-1.1 1.1-1.1-.49-1.1-1.1.49-1.1 1.1-1.1z">
                                </path>
                                </svg>
                                <span>Explorer</span>
                            </a>
                            <a class="item">
                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="25" width="25"
                                     xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M10 18a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396 1.414-1.414-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8s-8 3.589-8 8 3.589 8 8 8zm0-14c3.309 0 6 2.691 6 6s-2.691 6-6 6-6-2.691-6-6 2.691-6 6-6z">
                                </path>
                                </svg>
                                <span>Search</span>
                            </a>
                        </div>
                        <div class="colLeft_Menu">PERSONAL</div>
                        <div class="colLeft_personal_item">
                            <a class="item active">
                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" height="25" width="25"
                                     xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M8 4.41c1.387-1.425 4.854 1.07 0 4.277C3.146 5.48 6.613 2.986 8 4.412z">
                                </path>
                                <path
                                    d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z">
                                </path>
                                </svg>
                                <span>Bookmarked</span>
                            </a>
                            <a class="item active">
                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024" height="25"
                                     width="25" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M536.1 273H488c-4.4 0-8 3.6-8 8v275.3c0 2.6 1.2 5 3.3 6.5l165.3 120.7c3.6 2.6 8.6 1.9 11.2-1.7l28.6-39c2.7-3.7 1.9-8.7-1.7-11.2L544.1 528.5V281c0-4.4-3.6-8-8-8zm219.8 75.2l156.8 38.3c5 1.2 9.9-2.6 9.9-7.7l.8-161.5c0-6.7-7.7-10.5-12.9-6.3L752.9 334.1a8 8 0 0 0 3 14.1zm167.7 301.1l-56.7-19.5a8 8 0 0 0-10.1 4.8c-1.9 5.1-3.9 10.1-6 15.1-17.8 42.1-43.3 80-75.9 112.5a353 353 0 0 1-112.5 75.9 352.18 352.18 0 0 1-137.7 27.8c-47.8 0-94.1-9.3-137.7-27.8a353 353 0 0 1-112.5-75.9c-32.5-32.5-58-70.4-75.9-112.5A353.44 353.44 0 0 1 171 512c0-47.8 9.3-94.2 27.8-137.8 17.8-42.1 43.3-80 75.9-112.5a353 353 0 0 1 112.5-75.9C430.6 167.3 477 158 524.8 158s94.1 9.3 137.7 27.8A353 353 0 0 1 775 261.7c10.2 10.3 19.8 21 28.6 32.3l59.8-46.8C784.7 146.6 662.2 81.9 524.6 82 285 82.1 92.6 276.7 95 516.4 97.4 751.9 288.9 942 524.8 942c185.5 0 343.5-117.6 403.7-282.3 1.5-4.2-.7-8.9-4.9-10.4z">
                                </path>
                                </svg>
                                <span>History</span>
                            </a>
                        </div>
                        <div class="colLeft_Menu">GENERAL</div>
                        <div class="colLeft_general_item">
                            <a class="item active" <c:if test="${sessionScope.user != null}">href="profile"</c:if>
                               <c:if test="${sessionScope.user == null}">href="login"</c:if>>
                                   <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="25" width="25"
                                        xmlns="http://www.w3.org/2000/svg">
                                   <path
                                       d="M12 2A10.13 10.13 0 0 0 2 12a10 10 0 0 0 4 7.92V20h.1a9.7 9.7 0 0 0 11.8 0h.1v-.08A10 10 0 0 0 22 12 10.13 10.13 0 0 0 12 2zM8.07 18.93A3 3 0 0 1 11 16.57h2a3 3 0 0 1 2.93 2.36 7.75 7.75 0 0 1-7.86 0zm9.54-1.29A5 5 0 0 0 13 14.57h-2a5 5 0 0 0-4.61 3.07A8 8 0 0 1 4 12a8.1 8.1 0 0 1 8-8 8.1 8.1 0 0 1 8 8 8 8 0 0 1-2.39 5.64z">
                                   </path>
                                   <path
                                       d="M12 6a3.91 3.91 0 0 0-4 4 3.91 3.91 0 0 0 4 4 3.91 3.91 0 0 0 4-4 3.91 3.91 0 0 0-4-4zm0 6a1.91 1.91 0 0 1-2-2 1.91 1.91 0 0 1 2-2 1.91 1.91 0 0 1 2 2 1.91 1.91 0 0 1-2 2z">
                                   </path>
                                   </svg>
                                   <span>Profile</span>
                               </a>
                            <c:if test="${sessionScope.user == null}">
                                <a class="item active" href="login">
                                    <svg stroke="currentColor" fill="none" stroke-width="0" viewBox="0 0 24 24" height="30" width="30"
                                         xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                          d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1">
                                    </path>
                                    </svg>
                                    <span>Login</span>
                                </a>
                            </c:if>
                            <c:if test="${sessionScope.user != null}">
                                <a class="item active" href="logout">
                                    <svg stroke="currentColor" fill="none" stroke-width="0" viewBox="0 0 24 24" height="30" width="30"
                                         xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                          d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1">
                                    </path>
                                    </svg>
                                    <span>Log Out</span>
                                </a>
                            </c:if>
                        </div>
                    </div>
                </div>
                <div class="colCenter">
                    <div class="colCenter_menu d-flex">
                        <div class="div1 d-flex" style="width: 18%;">
                            <span style="width: 40%;" class="Movie active">Movie</span>
                            <span style="width: 60%;" class="TV_Show">TV Show</span>
                        </div>
                        <span class="div2" style="width: 64%;"></span>
                        <div class="div3 d-flex" style="width: 18%;">
                            <c:if test="${sessionScope.user != null}">
                                <span style="width: 70%;" class="Anonymous">${user}</span>
                            </c:if>
                            <c:if test="${sessionScope.user == null}">
                                <span style="width: 70%;" class="Anonymous">Anonymous</span>
                            </c:if>
                            <span style="width: 30%;">
                                <img class="w-8 h-8" src="image/index/defaultAvatar.jpg" alt="">
                            </span>
                        </div>
                    </div>
                    <div class="colCenter_carousel">                                          
                        <a class="exec_click" <c:if test="${sessionScope.user != null}">href="<c:url value = '/watch'/>"</c:if>
                           <c:if test="${sessionScope.user == null}">href="<c:url value = '/login'/>"</c:if>>
                               <div class="colCenter_carousel_child">
                                   <div class="colCenter_carousel_child_cover_total">
                                       <div class="support_cover">
                                           <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" class="text-white"
                                                height="35" width="35" xmlns="http://www.w3.org/2000/svg">
                                           <path
                                               d="m11.596 8.697-6.363 3.692c-.54.313-1.233-.066-1.233-.697V4.308c0-.63.692-1.01 1.233-.696l6.363 3.692a.802.802 0 0 1 0 1.393z">
                                           </path>
                                           </svg>
                                       </div>
                                   </div>
                                   <!-- CAROUSEL -->
                                   <!-- data-bs-ride="carousel" -->
                                   <div id="carouselExampleCaptions" class="carousel slide">
                                       <div id="carousel-inner" class="carousel-inner">                 
                                       </div>
                                       <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                                               data-bs-slide="prev">
                                           <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                           <span class="visually-hidden">Previous</span>
                                       </button>
                                       <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                                               data-bs-slide="next">
                                           <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                           <span class="visually-hidden">Next</span>
                                       </button>
                                   </div>
                               </div>
                           </a>
                        </div>
                        <div class="popular mt-5">
                            <div class="title__mini">Popular</div>
                            <div class="owl-carousel owl-theme popular__carousel position-relative">
                            <c:forEach var="p" items="${Popular}">
                                <div class="item item__tag">
                                    <a href="#">
                                        <div class="item__content">
                                            <img class="img-fluid" src="${p.imageLink}" alt="#">
                                            <span class="vote">
                                                <span class="star">${p.movieStar}</span>
                                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024" height="15"
                                                     width="15" xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M908.1 353.1l-253.9-36.9L540.7 86.1c-3.1-6.3-8.2-11.4-14.5-14.5-15.8-7.8-35-1.3-42.9 14.5L369.8 316.2l-253.9 36.9c-7 1-13.4 4.3-18.3 9.3a32.05 32.05 0 0 0 .6 45.3l183.7 179.1-43.4 252.9a31.95 31.95 0 0 0 46.4 33.7L512 754l227.1 119.4c6.2 3.3 13.4 4.4 20.3 3.2 17.4-3 29.1-19.5 26.1-36.9l-43.4-252.9 183.7-179.1c5-4.9 8.3-11.3 9.3-18.3 2.7-17.5-9.5-33.7-27-36.3z">
                                                </path>
                                                </svg>
                                            </span>
                                            <div class="name">${p.movieName}</div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="top_rated mt-5">
                        <div class="title__mini">Top Rated</div>
                        <div class="owl-carousel owl-theme popular__carousel position-relative">
                            <c:forEach var="t" items="${TopRated}">
                                <div class="item item__tag">
                                    <a href="#">
                                        <div class="item__content">
                                            <img class="img-fluid" src="${t.imageLink}" alt="#">
                                            <span class="vote">
                                                <span class="star">${t.movieStar}</span>
                                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024" height="15"
                                                     width="15" xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M908.1 353.1l-253.9-36.9L540.7 86.1c-3.1-6.3-8.2-11.4-14.5-14.5-15.8-7.8-35-1.3-42.9 14.5L369.8 316.2l-253.9 36.9c-7 1-13.4 4.3-18.3 9.3a32.05 32.05 0 0 0 .6 45.3l183.7 179.1-43.4 252.9a31.95 31.95 0 0 0 46.4 33.7L512 754l227.1 119.4c6.2 3.3 13.4 4.4 20.3 3.2 17.4-3 29.1-19.5 26.1-36.9l-43.4-252.9 183.7-179.1c5-4.9 8.3-11.3 9.3-18.3 2.7-17.5-9.5-33.7-27-36.3z">
                                                </path>
                                                </svg>
                                            </span>
                                            <div class="name">${t.movieName}</div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="hot mt-5">
                        <div class="title__mini">Hot</div>
                        <div class="owl-carousel owl-theme popular__carousel position-relative">
                            <c:forEach var="h" items="${Hot}">
                                <div class="item item__tag">
                                    <a href="#">
                                        <div class="item__content">
                                            <img class="img-fluid" src="${h.imageLink}" alt="#">
                                            <span class="vote">
                                                <span class="star">${h.movieStar}</span>
                                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024" height="15"
                                                     width="15" xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M908.1 353.1l-253.9-36.9L540.7 86.1c-3.1-6.3-8.2-11.4-14.5-14.5-15.8-7.8-35-1.3-42.9 14.5L369.8 316.2l-253.9 36.9c-7 1-13.4 4.3-18.3 9.3a32.05 32.05 0 0 0 .6 45.3l183.7 179.1-43.4 252.9a31.95 31.95 0 0 0 46.4 33.7L512 754l227.1 119.4c6.2 3.3 13.4 4.4 20.3 3.2 17.4-3 29.1-19.5 26.1-36.9l-43.4-252.9 183.7-179.1c5-4.9 8.3-11.3 9.3-18.3 2.7-17.5-9.5-33.7-27-36.3z">
                                                </path>
                                                </svg>
                                            </span>
                                            <div class="name">${h.movieName}</div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="upcoming mt-5">
                        <div class="title__mini">Upcoming</div>
                        <div class="owl-carousel owl-theme popular__carousel position-relative">
                            <c:forEach var="hp" items="${Upcoming}">
                                <div class="item item__tag">
                                    <a href="#">
                                        <div class="item__content">
                                            <img class="img-fluid" src="${hp.imageLink}" alt="#">
                                            <span class="vote">
                                                <span class="star">${hp.movieStar}</span>
                                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024" height="15"
                                                     width="15" xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M908.1 353.1l-253.9-36.9L540.7 86.1c-3.1-6.3-8.2-11.4-14.5-14.5-15.8-7.8-35-1.3-42.9 14.5L369.8 316.2l-253.9 36.9c-7 1-13.4 4.3-18.3 9.3a32.05 32.05 0 0 0 .6 45.3l183.7 179.1-43.4 252.9a31.95 31.95 0 0 0 46.4 33.7L512 754l227.1 119.4c6.2 3.3 13.4 4.4 20.3 3.2 17.4-3 29.1-19.5 26.1-36.9l-43.4-252.9 183.7-179.1c5-4.9 8.3-11.3 9.3-18.3 2.7-17.5-9.5-33.7-27-36.3z">
                                                </path>
                                                </svg>
                                            </span>
                                            <div class="name">${hp.movieName}</div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="colRight">
                    <div class="search_bar">
                        <form class="relative">
                            <button class="button_search" style="background-color: #333335;">
                                <svg style="color: grey;" stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24"
                                     class="hover:text-white transition duration-300" height="25" width="25"
                                     xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M10 18a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396 1.414-1.414-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8s-8 3.589-8 8 3.589 8 8 8zm0-14c3.309 0 6 2.691 6 6s-2.691 6-6 6-6-2.691-6-6 2.691-6 6-6z">
                                </path>
                                </svg>
                            </button>
                            <input class="input_search" style="background-color: #333335;" type="text" placeholder="Search..." value="">
                        </form>
                    </div>
                    <div class="popular_content">
                        <span>Drama</span>
                        <span>Comedy</span>
                        <span>Talk</span>
                        <span>War & Politics</span>
                        <span>Family</span>
                        <span>Kids</span>
                        <span>Documentary</span>
                    </div>
                    <div class="trending">
                        <div class="trending_title">
                            <span>Trending</span>
                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" height="20" width="20"
                                 xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z">
                            </path>
                            </svg>
                        </div>
                        <div class="trending_content">
                            <div class="content">
                                <div class="image">
                                    <div class="image_cover"></div>
                                    <img class="img-fluid" src="image/index/trending1.jpg" alt="">
                                </div>
                                <div class="text">
                                    <div class="title">
                                        Beast
                                    </div>
                                    <div class="date">
                                        2022-08-11
                                    </div>
                                    <span class="star">
                                        <span>7.0</span>
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024" height="15"
                                             width="15" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M908.1 353.1l-253.9-36.9L540.7 86.1c-3.1-6.3-8.2-11.4-14.5-14.5-15.8-7.8-35-1.3-42.9 14.5L369.8 316.2l-253.9 36.9c-7 1-13.4 4.3-18.3 9.3a32.05 32.05 0 0 0 .6 45.3l183.7 179.1-43.4 252.9a31.95 31.95 0 0 0 46.4 33.7L512 754l227.1 119.4c6.2 3.3 13.4 4.4 20.3 3.2 17.4-3 29.1-19.5 26.1-36.9l-43.4-252.9 183.7-179.1c5-4.9 8.3-11.3 9.3-18.3 2.7-17.5-9.5-33.7-27-36.3z">
                                        </path>
                                        </svg>
                                    </span>
                                </div>
                            </div>
                            <div class="content">
                                <div class="image">
                                    <div class="image_cover"></div>
                                    <img class="img-fluid" src="image/index/trending2.jpg" alt="">
                                </div>
                                <div class="text">
                                    <div class="title">
                                        Belascoaran, PI
                                    </div>
                                    <div class="date">
                                        2022-10-12
                                    </div>
                                    <span class="star">
                                        <span>8.5</span>
                                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024" height="15"
                                             width="15" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M908.1 353.1l-253.9-36.9L540.7 86.1c-3.1-6.3-8.2-11.4-14.5-14.5-15.8-7.8-35-1.3-42.9 14.5L369.8 316.2l-253.9 36.9c-7 1-13.4 4.3-18.3 9.3a32.05 32.05 0 0 0 .6 45.3l183.7 179.1-43.4 252.9a31.95 31.95 0 0 0 46.4 33.7L512 754l227.1 119.4c6.2 3.3 13.4 4.4 20.3 3.2 17.4-3 29.1-19.5 26.1-36.9l-43.4-252.9 183.7-179.1c5-4.9 8.3-11.3 9.3-18.3 2.7-17.5-9.5-33.7-27-36.3z">
                                        </path>
                                        </svg>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="seeMore">See more</button>
                </div>
            </div>
        </div>


        <!-- BOOTSTRAP -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
        </script>

        <!-- JQUERY -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
                integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <!-- CAROUSEL -->
        <script src="js/owl.carousel.min.js"></script>

        <script>
                    $('.popular__carousel').owlCarousel({
                        loop: true,
                        margin: 25,
                        nav: true,
                        dots: false,
                        responsive: {
                            0: {
                                items: 1
                            },
                            600: {
                                items: 3
                            },
                            1000: {
                                items: 4.2
                            }
                        }
                    })
        </script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
        <script src="js/index.js"></script>
    </body>

</html>