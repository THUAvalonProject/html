<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="zh-cn">

    <head>
        <meta charset="utf-8">
        <title>登錄界面--avalon</title>

        <link rel="shortcut icon" href="img/logo-white.ico" />
    </head>

    <body oncontextmenu="return false" onselectstart="return false" ondragstart="return false" οncοpy="return false">

        <style type="text/css">
            @font-face {
                font-family: 'jetbrains mid';
                src: '\fonts\JetBrainsMono-Medium.ttf' format('truetype');
            }
            
            * {
                padding: 0;
                margin: 0;
            }
            html{
			height: 100%;
			}
			
            body{
			height: 100%;
			font-family: 'jetbrains mid';
			display: flex;
			align-items: center;
			justify-content: center;
			background-color: #191919;
			}
                
            .form-warpper {
                width: 300px;
                background-color: #262626;
                color: #fff;
                border: 2px;
                padding: 50px;
                border-radius: 20px;
            }
            
            .form-warpper .header {
                text-align: center;
                font-size: 35px;
                text-transform: uppercase;
                line-height: 100px;
            }
            
            .form-warpper .input-warpper input {
                background-color: #262626;
                border: 0;
                width: 100%;
                text-align: center;
                font-size: 15px;
                color: #fff;
                outline: none;
            }
            
            .form-warpper .input-warpper input::placeholder {
                text-transform: uppercase;
            }
            
            .form-warpper .input-warpper .border-warpper {
                background-image: linear-gradient(to right, #e8dee2, #e5e8f1);
                /* linear-gradient(to right,#e8198b,#0eb4dd) */
                width: 100%;
                height: 50px;
                margin-bottom: 20px;
                border-radius: 30px;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            
            .form-warpper .input-warpper .border-warpper .border-item {
                height: calc(100% - 4px);
                width: calc(100% - 4px);
                border-radius: 30px;
            }
            
            .form-warpper .action {
                display: flex;
                justify-content: center;
            }
            
            .form-warpper .action .btn {
                width: 60%;
                text-transform: uppercase;
                border: 2px solid #0e92b3;
                text-align: center;
                line-height: 30px;
                cursor: pointer;
                background-color: #262626;
                color: #EFEEEE;
            }
            
            .form-warpper .action .btn:hover {
                background-color: #0e92b3;
            }
            .form-warpper .action button{
                color: #262626
                outline: none;
            }
            .form-warpper .icon-warpper {
                text-align: center;
                width: 60%;
                margin: 0 auto;
                margin-top: 20px;
                border-top: 1px dashed rgb(146, 146, 146);
                padding: 20px;
            }
            
            .form-warpper .icon-warpper img {
                font-size: 20px;
                color: rgb(187, 187, 187);
                cursor: pointer;
                border: 1px solid #fff;
                padding: 5px;
                border-radius: 20px;
                height: 30px;
                width: 30px;
            }
            
            .form-warpper .icon-warpper img:hover {
                opacity: 0.6;
            }
        </style>
            
			<div class="form-warpper">
                <div class="header">

                    login
                </div>

				<div class="input-warpper">
                
                    <form action="check_login.jsp" method="POST" name="loginForm">
						<div class="form-group">

							<div class="border-warpper">
								<input type="text" name="username" placeholder="username" class="border-item" />

							</div>
						
						</div>
						
						<div class="form-group">
						
							<div class="border-warpper">
								<input type="password" name="password" placeholder="password" class="border-item" />

							</div>

						</div>
						<div class="action">
							<button type="submit" class="btn btn-primary" onclick="return checkForm()">
								login
							</button>
						</div>
						<div class="icon-warpper">
							<img src="img/ilearn-white.png" class="icon-font" onclick="window.open('https://tccas.thu.edu.tw/cas/login?service=https%3A//ilearn.thu.edu.tw/login%3Fnext%3D/user/index&locale=zh_TW')" />
							<!-- ilearn 以及 thu没有提供第三方登陆js 所以就拿原来的登陆网页将就一下 -->
							<img src="img/logo白.png" class="icon-font" onclick="window.open('https://fsis.thu.edu.tw/mosi/ccsd3/index.php?job=moodle&loginn=&r=')" />
							<img src="img/LOGO-white.png" class="icon-font" onclick="window.open('register.jsp')" />
						</div>
					
					</form>

                </div>
            </div>

			<script type="text/javascript">
				function checkForm() {
					var name = loginForm.username.value;
					var pwd = loginForm.password.value;
					console.log(name + pwd);
					if (name == "" || name == null) {
						alert("请输入用户名");
						loginForm.username.focus();
						return false;
					} else if (pwd == "" || pwd == null) {
						alert("请输入密码");
						loginForm.password.focus();
						return false;
					}
					return true;
				}
			</script>

        </body>

    </html>