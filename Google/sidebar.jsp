<html>

<head>
    <title>SideBar</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
    img{
        padding-left:20px;
        height: 40px;
		width: 109px;
    }
    i,span{
        color: rgb(114, 108, 108);
    }
    i{
        padding-right:15px;
    }
    .nav-item{
        padding:6px 18px;
        background-color: #c2e7ff;
        border: none;
        outline: none;
        border-radius: 15px;
        margin-bottom: 15px;
    }
    .nav-item:hover{
        box-shadow: 0 1px 3px 0 rgba(60,64,67,0.302), 0 4px 8px 3px rgba(60,64,67,0.149);
    }
    ul li:nth-child(2){
      width:250px;  
      padding:4px;
    }
    ul li:nth-child(3){
      width:250px;  
      padding:4px;
    }
    ul li:nth-child(4){
      width:250px;  
      padding:4px;
    }
    ul li:nth-child(5){
      width:250px;  
      padding:4px;
    }
    i{
        padding: 2px;
    }
    li{
        padding-left: 40px;
    }
    .row li:nth-child(2):hover {
        background-color: rgb(230, 226, 226);
        border-top-right-radius: 50px 50px;
        border-bottom-right-radius: 50px 50px;
    }
    .row li:nth-child(3):hover {
        background-color: rgb(230, 226, 226);
        border-top-right-radius: 50px 50px;
        border-bottom-right-radius: 50px 50px;
    }
    .row li:nth-child(4):hover {
        background-color: rgb(230, 226, 226);
        border-top-right-radius: 50px 50px;
        border-bottom-right-radius: 50px 50px;
    }
    .row li:nth-child(5):hover {
        background-color: rgb(230, 226, 226);
        border-top-right-radius: 50px 50px;
        border-bottom-right-radius: 50px 50px;
    }
    #compose{
        width:100px !important;
    }
    .header1{
        display: flex;
    }
    .header1 button{
        outline:none;
        border:none;
        background: none;
        cursor: pointer;
    }
</style>

<body>
        <div class="row flex-nowrap" style="height: 100%;width: 20%;">
                <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 bg-light min-vh-100">
                    <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                        <li class="nav-item">
                            <a href="compose1.jsp" class="nav-link align-middle px-0">
                                <i class="fa-solid fa-pen fa-lg"></i> <span id="compose" class="ms-1 d-none d-sm-inline" onclick="">Compose</span>
                            </a>
                        </li>
                        <li>
                            <a href="Welcome.jsp" class="nav-link px-0 align-middle">
                                <i class="fa-solid fa-inbox fa-sm"></i> <span class="ms-1 d-none d-sm-inline">Inbox</span></a>
                        </li>
                        <li>
                            <a href="#" class="nav-link px-0 align-middle">
                                <i class="fa-regular fa-paper-plane fa-sm"></i> <span class="ms-1 d-none d-sm-inline">Sent</span></a>
                        </li>
                        <li>
                            <a href="draft.jsp" class="nav-link px-0 align-middle">
                                <i class="fa-regular fa-file fa-sm"></i> <span class="ms-1 d-none d-sm-inline">Drafts</span></a>
                        </li>
                        <li>
                            <a href="#" class="nav-link px-0 align-middle">
                                <i class="far fa-clock fa-sm"></i></i> <span class="ms-1 d-none d-sm-inline">Snooze</span>
                            </a>
                        </li>
                    </ul>
                    <hr>
                </div>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous">
    </script>
</body>

</html>