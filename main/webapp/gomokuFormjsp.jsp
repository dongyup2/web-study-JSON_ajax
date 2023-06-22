<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>오목</title>
    <!-- <link rel="stylesheet" href="./index.scss"> -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
/*  body 영역 css */
body {
    position: relative;
    height: 100vh;
    background-image: linear-gradient(135deg, #fdfcfb 0%, #e2d1c3 100%);
}

 /* 모든 div를 block으로 지정 */
div {
    display: block;
}

/* 조 이름을 센스있게 나타내줄 nav에 css적용 */
.nav {
    margin-top: 70px;
    height: 10vh;
    text-align: center;
    font-family: 'Hanna';
    font-size: 50px;
}

/* nav와 board를 떨어뜨려놓을 장치 */
.empty {
    height: 3vh;
}


.board {
    width: 500px;
    margin: auto;
    border: 1px solid black;
    box-shadow: 1px 1px 1px black;
    &__row {
        display: flex;
    }
    &__col {
        $col-width: 30px;
        width: $col-width;
        height: $col-width;
        background: #ffc078;
        position: relative;
        flex-grow: 1;
        cursor: pointer;
        font-size: 30px;
        text-align: center; // border: 1px solid black;
    }
    &__col:hover {
        background: #fd7e14;
    }
}


.black::after {
    width: 30px;
    height: 30px;
    position: absolute;
    background-color: black;
    border-radius: 50%
}

.white::after {
    width: 30px;
    height: 30px;
    background-color: white;
    position: absolute;
    border-radius: 50%;
    z-index: 7;
}


.currentTurn {
    text-align: center;
    font-family: 'Hanna';
    font-size: 30px;
}


.footer {
    margin-top: 50px;
    height: 20vh;
    background-color: transparent;
    text-align: center;
    font-family: 'Hanna';
    font-size: 25px;
}

// alert customizing
.swal-title {
    font-family: 'Hanna';
    margin: 0px;
    font-size: 30px;
    margin-bottom: 28px;
}

.swal-button {
    padding: 7px 19px;
    border-radius: 2px;
    background-image: linear-gradient(to top, #dad4ec 0%, #dad4ec 1%, #f3e7e9 100%);
    font-size: 15px;
    border: 1px solid transparent;
    color: #5f5f5f;
    text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
}

// 바둑판 선 CSS
.col__grid {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
}

.col__grid::after {
    display: block;
    content: '';
    position: absolute;
    top: 0;
    right: calc(50% - 1px);
    bottom: calc(50% - 1px);
    left: 0;
    border-right: 1px solid black;
    border-bottom: 1px solid black;
    box-sizing: border-box;
}

.col__grid::before {
    display: block;
    content: '';
    position: absolute;
    top: calc(50%);
    right: -1px;
    bottom: -1px;
    left: calc(50%);
    border-top: 1px solid black;
    border-left: 1px solid black;
    box-sizing: border-box;
}

.board__row:first-child .col__grid::after {
    //::after :가상선택자
    border-top: none;
    border-left: none;
    border-right: none;
}

.board__row:last-child .col__grid::before {
    //::before:가상선택자
    border-bottom: none;
    border-left: none;
    border-right: none;
}

.board__col:first-child .col__grid::after {
    border-top: none;
    border-left: none;
    border-bottom: none;
}

.board__col:last-child .col__grid::before {
    border-top: none;
    border-bottom: none;
    border-right: none;
}
</style>
<body>
    <div class="container">
        <div class="nav">
            오목한판하고 쪼꼼만 이따가
        </div>
        <div class="empty"></div>
        <div class="board">
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
            <div class="board__row">
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
                <div class="board__col">
                    <div class="col__grid"></div>
                </div>
            </div>
        </div>
        <br/>
        <div class="currentTurn"></div>
    </div>
    <div class="footer">Made by Kimhaneol, moong2</div>
</body>

</html>