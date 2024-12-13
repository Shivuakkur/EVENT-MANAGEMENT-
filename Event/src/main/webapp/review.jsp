<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.Enquiry"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel='stylesheet' id='font-awesome-5-all-css'
	href='https://eventsstudio.in/wp-content/plugins/elementor/assets/lib/font-awesome/css/all.min.css?ver=3.18.3'
	type='text/css' media='all' />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous" />
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<link rel="stylesheet" href="review.css">
</head>
<body class="container"
	style="background-color: #f1f8e9; font-style: inherit; color: rgb(99, 118, 84);">
	<%@ include file="header.jsp"%>
	</br>
	<center>
		<div class="wrapper">
			<center>
				<%
				if (request.getAttribute("status") != null) {
				%>
				<div id="msg">
					<%=request.getAttribute("status")%></div>
				<%
				}
				%>
			</center>
			<h3>Rate Your Experience</h3>
			<form method="POST" id="review" action="register">
				<div class="rating">
					<input type="text" name="rating" hidden> <i
						class='bx bx-star star' style="--i: 1;"></i> <i
						class='bx bx-star star' style="--i: 2;"></i> <i
						class='bx bx-star star' style="--i: 3;"></i> <i
						class='bx bx-star star' style="--i: 4;"></i> <i
						class='bx bx-star star' style="--i: 5;"></i>
				</div>
				<div>
					<input type="text" class="form-control" name="name"
						value="<%=session.getAttribute("uname")%>"></br> <input
						type="email" class="form-control" name="email"
						value="<%=session.getAttribute("email")%>">
				</div>
				</br>
				<textarea type="text" name="opinion" cols="30" rows="5"
					placeholder="Your opinion..."
					style="height: 180px; background-color: #f5f5f5; border: none;"></textarea>
				<div class="btn-group">
					<button type="submit" class="btn submit" name="review">Submit</button>
				</div>
			</form>
		</div>
	</center>
	</br>
	<script>
	const allStar = document.querySelectorAll('.rating .star')
	const ratingValue = document.querySelector('.rating input')

	allStar.forEach((item, idx)=> {
		item.addEventListener('click', function () {
			let click = 0
			ratingValue.value = idx + 1

			allStar.forEach(i=> {
				i.classList.replace('bxs-star', 'bx-star')
				i.classList.remove('active')
			})
			for(let i=0; i<allStar.length; i++) {
				if(i <= idx) {
					allStar[i].classList.replace('bx-star', 'bxs-star')
					allStar[i].classList.add('active')
				} else {
					allStar[i].style.setProperty('--i', click)
					click++
				}
			}
		})
	})
	</script>
	<%@ include file="footer.jsp"%>
</body>
</html>