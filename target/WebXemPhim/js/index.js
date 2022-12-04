const getData = async () => {
    try {
        const list_movie = await axios({
            method: 'get',
            url: 'https://api.themoviedb.org/3/movie/now_playing?api_key=2f651929034a2704ad9b3e8c28cb6a5f&language=vi-VN&page=1',
        })
        const list_id_title = list_movie.data.results.map((item) => {
            return {
                id: item.id,
                title: item.title
            }
        })
        return list_id_title;
    } catch (error) {
        console.log(error);
    }
}

// Lấy dữ liệu movie chi tiết
const getMovieDetail = async (id) => {
    try {
        const movie_detail = await axios({
            method: 'get',
            url: `https://api.themoviedb.org/3/movie/${id}?api_key=2f651929034a2704ad9b3e8c28cb6a5f&language=en-US`,
        })
        return movie_detail.data;
    } catch (error) {
        console.log(error);
    }
}

// Render carousel-item
const renderCarouselItem = (item, data_detail, count) => {
    // console.log(count[0]);
    let tag = '<div class="carousel-item">';
    if(count[0]===0){
        tag = `<div class="carousel-item active">`
        count[0]+=1;
    }

    let image = `https://image.tmdb.org/t/p/original/${data_detail.backdrop_path}`;

    // Làm tròn data_detail.vote_average còn 1 số sau dấu phẩy
    let vote_average = Math.round(data_detail.vote_average * 10) / 10;
    // Nếu vote_average là số nguyên thì thêm .0 vào sau
    if (Number.isInteger(vote_average)) {
        vote_average = vote_average + '.0';
    }

    // Nếu data_detail.original_title quá 6 ký tự thì cắt thêm ... vào sau
    let original_title = data_detail.original_title;
    if (original_title.length > 16) {
        original_title = original_title.slice(0, 16) + '...';
    }

    // Nếu data_detail.overview quá 185 ký tự thì cắt thêm ... vào sau
    let overview = data_detail.overview;
    if (overview.length > 170) {
        overview = overview.slice(0, 170) + '...';
    }

    let span_list = '';
    for(let i=0; i<data_detail.genres.length; i++){
        if(i===4)
            break;
        span_list += `<span class='me-2'>${data_detail.genres[i].name}</span>`;
    }

    return (`${tag}
        <div class="colCenter_carousel_child_cover"></div>
        <div class="colCenter_carousel_content">
            <span class="star">
                <span>${vote_average} <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024"
                    height="15" width="15" xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M908.1 353.1l-253.9-36.9L540.7 86.1c-3.1-6.3-8.2-11.4-14.5-14.5-15.8-7.8-35-1.3-42.9 14.5L369.8 316.2l-253.9 36.9c-7 1-13.4 4.3-18.3 9.3a32.05 32.05 0 0 0 .6 45.3l183.7 179.1-43.4 252.9a31.95 31.95 0 0 0 46.4 33.7L512 754l227.1 119.4c6.2 3.3 13.4 4.4 20.3 3.2 17.4-3 29.1-19.5 26.1-36.9l-43.4-252.9 183.7-179.1c5-4.9 8.3-11.3 9.3-18.3 2.7-17.5-9.5-33.7-27-36.3z">
                    </path>
                </svg></span>
            </span>
            <div class="english_name width_limit">
                ${original_title}
            </div>
            <div class="vietnamese_name width_limit">
                ${item.title}
            </div>
            <div class="first_art_date width_limit">
                First air date: ${data_detail.release_date}
            </div>
            <div class="style_of_movie width_limit">
                ${span_list}
            </div>
            <div id="descript_of_movie" class="descript_movie width_limit">
            ${overview}
            </div>
        </div>
        <img src="${image}" class="d-block w-100" alt="...">
    </div>`
    )
}



getData().then((data) => {
    let count = [0];
    data.forEach((item) => {
        getMovieDetail(item.id).then((data_detail) => {
            let carousel_item = renderCarouselItem(item, data_detail, count);
            document.getElementById('carousel-inner').innerHTML+=carousel_item;
        })
    })
})

































