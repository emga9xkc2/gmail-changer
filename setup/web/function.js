$(document).ready(function () {
    loadHome()
        .then(loadImport)
        .then(loadChucNang)
        .then(loadCaiDat)
        .then(loadTableMails)
        .then(loadPage)
        .then(clickPage);
    $.getScript("/codinglab.js", function () {
        // Code để gọi hàm hoặc xử lý dữ liệu tại đây
    });
    loadSidebar();
});
function clickPage() {
    return new Promise((resolve, reject) => {
        $("#back_page").click(function () {
            var currentPage = document.querySelector(".page__numbers.active");
            var nextPage = currentPage.previousElementSibling;
            if (nextPage && nextPage.classList.contains("page__numbers")) {
                nextPage.classList.add("active");
                currentPage.classList.remove("active");
                const numPage = nextPage.textContent;

                updateMails(numPage);
            }
        });

        $("#next_page").click(function () {
            var currentPage = document.querySelector(".page__numbers.active");
            var nextPage = currentPage.nextElementSibling;
            if (nextPage && nextPage.classList.contains("page__numbers")) {
                nextPage.classList.add("active");
                currentPage.classList.remove("active");
                const numPage = nextPage.textContent;

                updateMails(numPage);
            }
        });
        $(".page__numbers").click(function () {
            alert("1234");
            // Bỏ tất cả class "active"
            $(".page__numbers").removeClass("active");
            // Thêm class "active" cho phần tử đang được click
            $(this).addClass("active");
            const numPage = $(this).text();

            updateMails(numPage);
        });
        $(".page__numbers")[0].click();
        resolve();
    });
}
function loadSidebarHtml() {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: "html/sidebar.html",
            success: function (result) {
                $("#load-sidebar").html(result);
                resolve();
            },
            error: function (error) {
                reject(error);
            },
        });
    });
}
function loadHome() {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: "html/home.html",
            success: function (result) {
                $("#load-home").html(result);
                resolve();
            },
            error: function (error) {
                reject(error);
            },
        });
    });
}
function loadImport() {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: "html/import.html",
            success: function (result) {
                $("#load-import").html(result);
                resolve();
            },
            error: function (error) {
                reject(error);
            },
        });
    });
}
function loadChucNang() {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: "html/chucnang.html",
            success: function (result) {
                $("#load-chucnang").html(result);
                resolve();
            },
            error: function (error) {
                reject(error);
            },
        });
    });
}
function loadCaiDat() {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: "html/caidat.html",
            success: function (result) {
                $("#load-caidat").html(result);

                resolve();
            },
            error: function (error) {
                reject(error);
            },
        });
    });
}
function pagination(c, m) {
    var current = c,
        last = m,
        delta = 2,
        left = current - delta,
        right = current + delta + 1,
        range = [],
        rangeWithDots = [],
        l;

    for (let i = 1; i <= last; i++) {
        if (i == 1 || i == last || (i >= left && i < right)) {
            range.push(i);
        }
    }

    for (let i of range) {
        if (l) {
            if (i - l === 2) {
                rangeWithDots.push(`<li class="page__numbers">${l + 1}</li>`);
                // rangeWithDots.push(l + 1);
            } else if (i - l !== 1) {
                rangeWithDots.push(`<li class="page__dots">...</li>`);
            }
        }
        rangeWithDots.push(`<li class="page__numbers">${i}</li>`);
        // rangeWithDots.push(i);
        l = i;
    }

    return rangeWithDots;
}
var currentPageNum = 1;
function loadPage() {
    return new Promise((resolve, reject) => {
        eel.get_count_mail()(function (callback) {
            currentPageNum = parseInt(currentPageNum);
            // console.log(callback);
            var count_item = callback.msg;
            // alert(count_item);
            var num_per_page = 50;
            var num_pages = Math.ceil(count_item / num_per_page);
            // var page_html = "";

            // for (var i = 1; i <= num_pages; i++) {
            // page_html += `<li class="page__numbers">${i}</li>`;
            const page = pagination(currentPageNum, num_pages);
            // alert(currentPage);
            let page_html = page.join("");

            var thead = `<div id="app" class="container">
                <ul class="page">
                    <li class="page__btn" id="back_page"><span class="material-icons">chevron_left</span></li>
                    ${page_html}
                    <li class="page__btn" id="next_page"><span class="material-icons">chevron_right</span></li>
                </ul>
            </div>
            `;
            console.log(currentPageNum, page_html);
            setHtmlCssSelector("#load_page", thead);
            resolve();
        });
    });
}

function updateMails(numberPage) {
    currentPage = numberPage;

    const limit = 30;
    const skip = (numberPage - 1) * limit;
    eel.get_mails(
        skip,
        limit
    )(function (callback) {
        // console.log(callback);
        var success = callback.success;
        if (!success) {
            alert("lỗi");
            return;
        }
        var msg = callback.msg;
        var thead = `<thead><tr class="w3-light-grey w3-hover-red"><th>ID</th><th>Email</th><th>Password</th><th>Email Recovery</th></tr></thead>`;
        var tr = "";
        var i = 0;
        for (const element of msg) {
            i = i + 1;
            thead =
                thead +
                `<tr class="w3-hover-green">
                    <td>${i}</td>
                    <td>${element.email}</td>
                    <td>${element.password}</td>
                    <td>${element.emailrecovery}</td>
                </tr>`;
            // console.log(element);
        }
        setHtmlCssSelector("#tableMails", thead);
        // loadPage();
    });
}

function oimport() {
    var iaccount = getValue("#iaccount");
    eel.oimport(iaccount)(function (callback) {
        var msg = callback.msg;

        // if (mess != "success") {
        //     setHtmlCssSelector("#saveSettingStatus", `<div class="w3-panel w3-pale-red w3-bottombar w3-border-red w3-border">
        //     <h3>Kích hoạt tài khoản thất bại</h3>
        //     <p>${mess}</p>
        // </div>`  )
        //     return
        // }
        // var result = callback.result
        setHtmlCssSelector(
            "#saveSettingStatus",
            `<div class="w3-panel w3-pale-green w3-bottombar w3-border-green w3-border">
                    <h3>Kích hoạt tài khoản thành công</h3>
                    <p>${msg}</p>
                </div>`
        );
        console.log(callback);
    });
}
function openMenu(evt, cityName) {
    var i, x, tablinks;
    x = document.getElementsByClassName("tabs");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < x.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(
            " menuselected",
            ""
        );
    }
    document.getElementById(cityName).style.display = "block";
    // console.log(evt.currentTarget)
    evt.currentTarget.className += " menuselected";
    var linkName = evt.currentTarget.querySelector(".link_name").textContent;
    document.getElementById("title").textContent = linkName;
}

function loadSidebar() {
    let arrow = document.querySelectorAll(".arrow");
    for (var i = 0; i < arrow.length; i++) {
        arrow[i].addEventListener("click", (e) => {
            let arrowParent = e.target.parentElement.parentElement; //selecting main parent of arrow
            arrowParent.classList.toggle("showMenu");
        });
    }
    let sidebar = document.querySelector(".sidebar");
    let sidebarBtn = document.querySelector(".bx-menu");
    // console.log(sidebarBtn);
    sidebarBtn.addEventListener("click", () => {
        sidebar.classList.toggle("close");
    });

    let logout = document.querySelector(".logout");

    logout.addEventListener("click", () => {
        // eel.destroy()
        var objWindow = window.open(location.href, "_self");
        objWindow.close();
        // window.open('', '_self').close(); window.close()
    });
    // let logout = document.querySelector(".logout");
    // logout.addEventListener("click", () => {
    // 	eel.openFileDialog()(function (callback) {
    // 		console.log(callback)
    // 	}
    // 	)
    // });
}
function loadTableMails() {
    return new Promise((resolve, reject) => {
        const table = document.getElementById("tableMails");

        table.addEventListener("contextmenu", function (event) {
            event.preventDefault();
            let selectedData;

            if (event.target.nodeName === "TD") {
                const el = document.getElementsByName("menus");
                if (el.length > 0) {
                    el[0].remove();
                }

                const innerHTML = event.target.innerHTML;
                const colIndex = event.target.cellIndex;
                const rowIndex = event.target.parentNode.rowIndex;
                row = table.rows[rowIndex];
                console.log(row.innerHTML);
                selectedData = row.innerHTML;

                // Tạo menu chuột phải
                const menu = document.createElement("div");
                menu.setAttribute("name", "menus");

                menu.style.position = "fixed";
                menu.style.backgroundColor = "white";
                menu.style.top = `${event.clientY}px`;
                menu.style.left = `${event.clientX}px`;
                menu.style.boxShadow = "0px 0px 10px gray";
                menu.style.padding = "10px";
                menu.innerHTML = `
    <div class="menu-item" id="copy-item">Sao chép</div>
    <div class="menu-item" id="delete-item">Xóa</div>
    `;

                document.body.appendChild(menu);

                // Thêm sự kiện cho menu sao chép
                document
                    .getElementById("copy-item")
                    .addEventListener("click", function () {
                        navigator.clipboard.writeText(selectedData);
                        menu.remove();
                    });

                // Thêm sự kiện cho menu xóa
                document
                    .getElementById("delete-item")
                    .addEventListener("click", function () {
                        row.remove();
                        menu.remove();
                    });
                addEventListener("click", (event) => {
                    menu.remove();
                });
                // Thêm hiệu ứng đổi màu khi di chuột vào menu
                const menuItems = document.querySelectorAll(".menu-item");
                menuItems.forEach(function (item) {
                    item.addEventListener("mouseover", function () {
                        item.style.color = "white";
                        item.style.backgroundColor = "green";
                    });
                    item.addEventListener("mouseout", function () {
                        item.style.backgroundColor = "white";
                        item.style.color = "black";
                    });
                });
            }
        });
        resolve();
    });
}
