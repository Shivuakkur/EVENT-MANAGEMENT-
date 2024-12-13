<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.Enquiry"%>
<%@page import="model.Dproduct"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700&display=swap"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700&display=swap"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,700&display=swap"
	rel="stylesheet" type="text/css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
<title>Insert title here</title>
<style>
@media only screen and (min-width: 720px) {
	.u-row {
		width: 700px !important;
	}
	.u-row .u-col {
		vertical-align: top;
	}
	.u-row .u-col-100 {
		width: 700px !important;
	}
}

@media ( max-width : 720px) {
	.u-row-container {
		max-width: 100% !important;
		padding-left: 0px !important;
		padding-right: 0px !important;
	}
	.u-row .u-col {
		min-width: 320px !important;
		max-width: 100% !important;
		display: block !important;
	}
	.u-row {
		width: 100% !important;
	}
	.u-col {
		width: 100% !important;
	}
	.u-col>div {
		margin: 0 auto;
	}
}

body {
	margin: 0;
	padding: 0;
}

table, tr, td {
	vertical-align: top;
	border-collapse: collapse;
}

p {
	margin: 0;
}

.ie-container table, .mso-container table {
	table-layout: fixed;
}

* {
	line-height: inherit;
}

a[x-apple-data-detectors='true'] {
	color: inherit !important;
	text-decoration: none !important;
}

table, td {
	color: #000000;
}

@media ( max-width : 480px) {
	#u_content_image_1 .v-src-width {
		width: auto !important;
	}
	#u_content_image_1 .v-src-max-width {
		max-width: 48% !important;
	}
	#u_content_image_2 .v-src-width {
		width: auto !important;
	}
	#u_content_image_2 .v-src-max-width {
		max-width: 36% !important;
	}
	#u_content_text_15 .v-container-padding-padding {
		padding: 10px 10px 10px 20px !important;
	}
}
</style>
</head>
<body class="clean-body u_body"
	style="margin: 0; padding: 0; -webkit-text-size-adjust: 100%; background-color: #f1f8e9; color: #000000">
	<%@include file="header.jsp"%></br>
	<%
	if (session.getAttribute("uname") != null) {
	%>
	<center>
		<button class="btn btn-primary" style="align: center;" id="download">Download</button>
	</center>
	</br>
	<div id="invoice">
		<table
			style="border-collapse: collapse; table-layout: fixed; border-spacing: 0; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; min-width: 320px; Margin: 0 auto; background-color: #f1f8e9; width: 100%"
			cellpadding="0" cellspacing="0">
			<tbody>
				<tr style="vertical-align: top">
					<td
						style="word-break: break-word; border-collapse: collapse !important; vertical-align: top">
						<div class="u-row-container"
							style="padding: 0px; background-color: transparent">
							<div class="u-row"
								style="margin: 0 auto; min-width: 320px; max-width: 700px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #e6a501;">
								<div
									style="border-collapse: collapse; display: table; width: 100%; height: 100%; background-color: transparent;">
									<div class="u-col u-col-100"
										style="max-width: 320px; min-width: 700px; display: table-cell; vertical-align: top;">
										<div
											style="background-color: #658357; height: 100%; width: 100% !important;">
											<div
												style="box-sizing: border-box; height: 100%; padding: 0px; border-top: 0px solid transparent; border-left: 0px solid transparent; border-right: 0px solid transparent; border-bottom: 0px solid transparent;">
												<br>
												<table style="font-family: 'Source Sans Pro', sans-serif;"
													role="presentation" cellpadding="0" cellspacing="0"
													width="100%" border="0">
													<tbody>
														<tr>
															<td class="v-container-padding-padding"
																style="overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: 'Source Sans Pro', sans-serif;"
																align="left">
																<h1
																	style="margin: 0px; color: #ffffff; line-height: 100%; text-align: center; word-wrap: break-word; font-family: 'Raleway', sans-serif; font-size: 25px; font-weight: 700;">
																	<span style="line-height: 25px;"><span
																		style="line-height: 25px;"><span
																			style="line-height: 25px;"><strong>Booking
																					Confirmed !</strong></span></span></span>
																</h1>
															</td>
														</tr>
													</tbody>
												</table>
												<table id="u_content_image_2"
													style="font-family: 'Source Sans Pro', sans-serif;"
													role="presentation" cellpadding="0" cellspacing="0"
													width="100%" border="0">
													<tbody>
														<tr>
															<td class="v-container-padding-padding"
																style="overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: 'Source Sans Pro', sans-serif;"
																align="left"></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%
							Enquiry s1 = new Enquiry(session);
							ArrayList<Dproduct> ar = s1.getBill();
							Iterator<Dproduct> itr = ar.iterator();
							while (itr.hasNext()) {
								Dproduct s = itr.next();
							%>
							<div class="u-row-container"
								style="padding: 0px; background-color: transparent">
								<div class="u-row"
									style="margin: 0 auto; min-width: 320px; max-width: 700px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;">
									<div
										style="border-collapse: collapse; display: table; width: 100%; height: 100%; background-color: transparent;">
										<div class="u-col u-col-100"
											style="max-width: 320px; min-width: 700px; display: table-cell; vertical-align: top;">
											<div style="height: 100%; width: 100% !important;">
												<div
													style="box-sizing: border-box; height: 100%; padding: 0px; border-top: 0px solid transparent; border-left: 0px solid transparent; border-right: 0px solid transparent; border-bottom: 0px solid transparent;">
													<table style="font-family: 'Source Sans Pro', sans-serif;"
														role="presentation" cellpadding="0" cellspacing="0"
														width="100%" border="0">
														<tbody>
															<tr>
																<td class="v-container-padding-padding"
																	style="overflow-wrap: break-word; word-break: break-word; padding: 30px 10px 30px 20px; font-family: 'Source Sans Pro', sans-serif;"
																	align="left">
																	<div
																		style="font-size: 14px; color: #333333; line-height: 130%; text-align: left; word-wrap: break-word;">
																		<p style="font-size: 14px; line-height: 130%;">
																			<strong><span
																				style="font-size: 16px; line-height: 20.8px;"><%=s.getUname()%></span></strong>
																		</p>
																		<p style="font-size: 14px; line-height: 130%;"> </p>
																		<p style="font-size: 14px; line-height: 130%;">
																			<span
																				style="font-size: 16px; line-height: 20.8px; font-family: Lato, sans-serif;">Thank
																				you for booking  this event ! </span>
																		</p>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="u-row-container"
									style="padding: 0px; background-color: transparent">
									<div class="u-row"
										style="margin: 0 auto; min-width: 320px; max-width: 700px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #f7f6f4;">
										<div
											style="border-collapse: collapse; display: table; width: 100%; height: 100%; background-color: transparent;">
											<div class="u-col u-col-100"
												style="max-width: 320px; min-width: 700px; display: table-cell; vertical-align: top;">
												<div style="height: 100%; width: 100% !important;">
													<div
														style="box-sizing: border-box; height: 100%; padding: 0px; border-top: 0px solid transparent; border-left: 0px solid transparent; border-right: 0px solid transparent; border-bottom: 0px solid transparent;">
														<table style="font-family: 'Source Sans Pro', sans-serif;"
															role="presentation" cellpadding="0" cellspacing="0"
															width="100%" border="0">
															<tbody>
																<tr>
																	<td class="v-container-padding-padding"
																		style="overflow-wrap: break-word; word-break: break-word; padding: 25px 10px 0px 20px; font-family: 'Source Sans Pro', sans-serif;"
																		align="left">
																		<div
																			style="font-size: 14px; line-height: 140%; text-align: left; word-wrap: break-word;">
																			<p style="font-size: 14px; line-height: 140%;">
																				<span
																					style="font-family: Lato, sans-serif; font-size: 14px; line-height: 19.6px;"><strong><span
																						style="font-size: 18px; line-height: 25.2px; color: #236fa1;">EVENT
																							DETAILS</span></strong></span>
																			</p>
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
														<table style="font-family: 'Source Sans Pro', sans-serif;"
															role="presentation" cellpadding="0" cellspacing="0"
															width="100%" border="0">
															<tbody>
																<tr>
																	<td class="v-container-padding-padding"
																		style="overflow-wrap: break-word; word-break: break-word; padding: 5px 10px 10px 20px; font-family: 'Source Sans Pro', sans-serif;"
																		align="left">
																		<table height="0px" align="left" border="0"
																			cellpadding="0" cellspacing="0" width="22%"
																			style="border-collapse: collapse; table-layout: fixed; border-spacing: 0; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; border-top: 3px solid #e67e23; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%">
																			<tbody>
																				<tr style="vertical-align: top">
																					<td
																						style="word-break: break-word; border-collapse: collapse !important; vertical-align: top; font-size: 0px; line-height: 0px; mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%">
																						<span>&#160;</span>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
															</tbody>
														</table>
														<table style="font-family: 'Source Sans Pro', sans-serif;"
															role="presentation" cellpadding="0" cellspacing="0"
															width="100%" border="0">
															<tbody>
																<tr>
																	<td class="v-container-padding-padding"
																		style="overflow-wrap: break-word; word-break: break-word; padding: 10px 10px 10px 20px; font-family: 'Source Sans Pro', sans-serif;"
																		align="left">
																		<div
																			style="font-size: 14px; color: #333333; line-height: 140%; text-align: left; word-wrap: break-word;">
																			<p style="font-size: 14px; line-height: 140%;">
																				<strong>Event Name: </strong> <span
																					style="color: #828080; font-size: 14px; line-height: 19.6px;"><%=s.getP_name()%></span>
																			</p>
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
														<table style="font-family: 'Source Sans Pro', sans-serif;"
															role="presentation" cellpadding="0" cellspacing="0"
															width="100%" border="0">
															<tbody>
																<tr>
																	<td class="v-container-padding-padding"
																		style="overflow-wrap: break-word; word-break: break-word; padding: 5px 10px 10px 20px; font-family: 'Source Sans Pro', sans-serif;"
																		align="left">
																		<div
																			style="font-size: 14px; color: #333333; line-height: 140%; text-align: left; word-wrap: break-word;">
																			<p style="font-size: 14px; line-height: 140%;">
																				<strong>EventDate : </strong> <span
																					style="color: #828080; font-size: 14px; line-height: 19.6px;"><%=s.getDate()%></span>
																			</p>
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
														<table style="font-family: 'Source Sans Pro', sans-serif;"
															role="presentation" cellpadding="0" cellspacing="0"
															width="100%" border="0">
															<tbody>
																<tr>
																	<td class="v-container-padding-padding"
																		style="overflow-wrap: break-word; word-break: break-word; padding: 5px 10px 25px 20px; font-family: 'Source Sans Pro', sans-serif;"
																		align="left">
																		<div
																			style="font-size: 14px; color: #333333; line-height: 140%; text-align: left; word-wrap: break-word;">
																			<p style="font-size: 14px; line-height: 140%;">
																				<strong>Location :  </strong><span
																					style="color: #828080; font-size: 14px; line-height: 19.6px;"><%=s.getAddress()%></span> 
																			</p>
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
														<table style="font-family: 'Source Sans Pro', sans-serif;"
															role="presentation" cellpadding="0" cellspacing="0"
															width="100%" border="0">
															<tbody>
																<tr>
																	<td class="v-container-padding-padding"
																		style="overflow-wrap: break-word; word-break: break-word; padding: 5px 10px 25px 20px; font-family: 'Source Sans Pro', sans-serif;"
																		align="left">
																		<div
																			style="font-size: 14px; color: #333333; line-height: 140%; text-align: left; word-wrap: break-word;">
																			<p style="font-size: 14px; line-height: 140%;">
																				<strong>Price :  </strong><span
																					style="color: #828080; font-size: 14px; line-height: 19.6px;"><%=s.getP_cost()%></span>
																			</p>
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
									<%
									}
									%>
									<div class="u-row-container"
										style="padding: 0px; background-color: transparent">
										<div class="u-row"
											style="margin: 0 auto; min-width: 320px; max-width: 700px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;">
											<div
												style="border-collapse: collapse; display: table; width: 100%; height: 100%; background-color: transparent;">
												<div class="u-col u-col-100"
													style="max-width: 320px; min-width: 700px; display: table-cell; vertical-align: top;">
													<div style="height: 100%; width: 100% !important;">
														<div
															style="box-sizing: border-box; height: 100%; padding: 0px; border-top: 0px solid transparent; border-left: 0px solid transparent; border-right: 0px solid transparent; border-bottom: 0px solid transparent;">
															<table id="u_content_text_15"
																style="font-family: 'Source Sans Pro', sans-serif;"
																role="presentation" cellpadding="0" cellspacing="0"
																width="100%" border="0">
																<tbody>
																	<tr>
																		<td class="v-container-padding-padding"
																			style="overflow-wrap: break-word; word-break: break-word; padding: 20px 20px 15px; font-family: 'Source Sans Pro', sans-serif;"
																			align="left">
																			<div
																				style="font-size: 14px; color: #333333; line-height: 160%; text-align: left; word-wrap: break-word;">
																				<p style="font-size: 14px; line-height: 160%;">
																					<span
																						style="font-size: 16px; line-height: 25.6px; font-family: Lato, sans-serif;">If
																						you have any questions contact us <span
																						style="text-decoration: underline; line-height: 25.6px; color: #e67e23; font-size: 16px;">samratevents@gmail.com</span>
																					</span>
																				</p>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
															<table
																style="font-family: 'Source Sans Pro', sans-serif;"
																role="presentation" cellpadding="0" cellspacing="0"
																width="100%" border="0">
																<tbody>
																	<tr>
																		<td class="v-container-padding-padding"
																			style="overflow-wrap: break-word; word-break: break-word; padding: 0px 10px 30px 20px; font-family: 'Source Sans Pro', sans-serif;"
																			align="left">
																			<div
																				style="font-size: 14px; color: #333333; line-height: 160%; text-align: left; word-wrap: break-word;">
																				<p style="font-size: 14px; line-height: 160%;">
																					<span
																						style="font-size: 16px; line-height: 25.6px; font-family: Lato, sans-serif;">We
																						look forward to seeing you at the event.</span>
																				</p>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
															<table
																style="font-family: 'Source Sans Pro', sans-serif;"
																role="presentation" cellpadding="0" cellspacing="0"
																width="100%" border="0">
																<tbody>
																	<tr>
																		<td class="v-container-padding-padding"
																			style="overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: 'Source Sans Pro', sans-serif;"
																			align="left">
																			<table height="0px" align="center" border="0"
																				cellpadding="0" cellspacing="0" width="100%"
																				style="border-collapse: collapse; table-layout: fixed; border-spacing: 0; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; border-top: 2px solid #939391; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%">
																				<tbody>
																					<tr style="vertical-align: top">
																						<td
																							style="word-break: break-word; border-collapse: collapse !important; vertical-align: top; font-size: 0px; line-height: 0px; mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%">
																							<span>&#160;</span>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																	</tr>
																</tbody>
															</table>
															<table
																style="font-family: 'Source Sans Pro', sans-serif;"
																role="presentation" cellpadding="0" cellspacing="0"
																width="100%" border="0">
																<tbody>
																	<tr>
																		<td class="v-container-padding-padding"
																			style="overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: 'Source Sans Pro', sans-serif;"
																			align="left">
																			<div
																				style="font-size: 14px; color: #828080; line-height: 160%; text-align: center; word-wrap: break-word;">
																				<p style="line-height: 160%;">Office Address:
																					Plot No.765,8th Cross Road,</p>
																				<div>
																					<div>
																						<p style="line-height: 160%;">M.R.C.R
																							Extension, Govindaraja Nagar,Bengaluru-560040</p>
																						<p style="line-height: 160%;">(Near Hosahalli
																							metro station)</p>
																					</div>
																				</div>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
															<table
																style="font-family: 'Source Sans Pro', sans-serif;"
																role="presentation" cellpadding="0" cellspacing="0"
																width="100%" border="0">
																<tbody>
																	<tr>
																		<td class="v-container-padding-padding"
																			style="overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: 'Source Sans Pro', sans-serif;"
																			align="left">
																			<table height="0px" align="center" border="0"
																				cellpadding="0" cellspacing="0" width="64%"
																				style="border-collapse: collapse; table-layout: fixed; border-spacing: 0; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; border-top: 1px solid #BBBBBB; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%">
																				<tbody>
																					<tr style="vertical-align: top">
																						<td
																							style="word-break: break-word; border-collapse: collapse !important; vertical-align: top; font-size: 0px; line-height: 0px; mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%">
																							<span>&#160;</span>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																	</tr>
																</tbody>
															</table>
															<table
																style="font-family: 'Source Sans Pro', sans-serif;"
																role="presentation" cellpadding="0" cellspacing="0"
																width="100%" border="0">
																<tbody>
																	<tr>
																		<td class="v-container-padding-padding"
																			style="overflow-wrap: break-word; word-break: break-word; padding: 0px 10px 20px; font-family: 'Source Sans Pro', sans-serif;"
																			align="left">
																			<div
																				style="font-size: 14px; color: #828080; line-height: 140%; text-align: center; word-wrap: break-word;">
																				<p style="font-size: 14px; line-height: 140%;">All
																					Rights Reserved © Samrat Events 2024.</p>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<%
	}
	%>
	<script>
window.onload = function () {
    document.getElementById("download")
        .addEventListener("click", () => {
            const invoice = this.document.getElementById("invoice");
            console.log(invoice);
            console.log(window);
            var opt = {
                margin: 1,
                filename: 'bookingConfirmation.pdf',
                image: { type: 'jpeg', quality: 0.98 },
                html2canvas: { scale: 2 },
                jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
            };
            html2pdf().from(invoice).set(opt).save();
        })
}
</script>
</body>
</html>