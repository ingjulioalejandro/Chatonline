const searchBar = document.querySelector(".search input"),
searchIcon = document.querySelector(".search button"),
usersList = document.querySelector(".users-list");

searchIcon.onclick = () => {
    searchBar.classList.toggle("show");
    searchIcon.classList.toggle("active");
    searchBar.focus();
    if (searchBar.classList.contains("active")) {
        searchBar.value = "";
        searchBar.classList.remove("active");
    }
};

// Search for users or groups
searchBar.onkeyup = () => {
    let searchTerm = searchBar.value;
    if (searchTerm != "") {
        searchBar.classList.add("active");
    } else {
        searchBar.classList.remove("active");
    }
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "php/search.php", true);
    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                let data = xhr.response;
                usersList.innerHTML = data; // Update the list of users/groups
            }
        }
    };
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send("searchTerm=" + searchTerm);
};

// Dynamically load the list of users and groups every 500ms
setInterval(() => {
    let xhr = new XMLHttpRequest();
    xhr.open("GET", "php/load_users_and_groups.php", true); // Fetch both users and groups
    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                let data = xhr.response;
                if (!searchBar.classList.contains("active")) {
                    usersList.innerHTML = data;
                    // Añadimos un listener para manejar los clics
                    let links = document.querySelectorAll(".users-list a");
                    links.forEach(link => {
                        link.addEventListener("click", (e) => {
                            e.preventDefault();
                            let url = link.getAttribute("href");
                            console.log("Link: ", url);
                            window.location.href = url; // Redirigir a la URL
                        });
                    });
                }
            }
        }
    };
    xhr.send();
}, 500);
