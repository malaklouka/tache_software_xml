<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
	<xsl:param name="col-count" select="7" />
	<xsl:template match="/root">
		<html>
			<head>
				<link rel="icon" href="img/webicon.ico" />
				<link rel="stylesheet" type="text/css" href="css/list.css" />
				<meta charset="UTF-8" />
				<title>Field</title>
			</head>
			<body>

				<div class="wrapper">
					<div class="nav-menu">

						<ul id="menu">
						<li class="menu-li">
								<a href="../demo.html">Home</a>
							</li>
							<li class="menu-li">
								<a href="">Documentation</a>
							</li>
							<li class="menu-li">
								<a href="">Statistics</a>
							</li>
							
							<li class="menu-li">
								<a href="">National and international events</a>
							</li>
							
							
							
							<li class="menu-li">
								<a href="">Software</a>
							</li>
							<li class="menu-li">
								<a href="">fields</a>
							</li>
							
							<li class="menu-li">
								See More
								<div id="down-arrow"></div>
								<ul class="subm">
									<li>
										<a href=""></a>
									</li>
									<li>
										<a href=""></a>
									</li>
									<li>
										<a href=""></a>
									</li>
									<li>
										<a href=""></a>
									</li>
								</ul>
							</li>
						</ul>
					</div>


					<center>
						<div class="wrapper-4">
							<div class="text-w4">
								<p>

					Deep learning helps researchers analyze medical data to treat diseases. It enhances doctors’ ability to analyze medical images. It’s advancing the future of personalized medicine. It even helps the blind “see.”“Deep learning is revolutionizing a wide range of scientific fields,” said Jensen Huang, NVIDIA CEO and co-founder. “There could be no more important application of this new capability than improving patient care.
			</p>
							</div>

							<div id="c-tb">
							</div>
							<xsl:for-each select="item">
								<xsl:choose>
									<xsl:when test="contains(@type,'Field')">
						
										<center>
											<div class="type">Field</div>
											
											<table border="1">
											
												<tr>
													<th>Picture</th>
													<th>Field</th>
													<th>Description</th>
													
													
												</tr>
												<xsl:for-each select="field">
													<tr>
														<td id="img">
															<img>
																<xsl:attribute name="src">
														<xsl:value-of select="icon/@src" />
													</xsl:attribute>
																<xsl:attribute name="width">
														<xsl:value-of select="icon/@width" />
													</xsl:attribute>
																<xsl:attribute name="height">
														<xsl:value-of select="icon/@height" />
													</xsl:attribute>
															</img>
														</td>
														<td id="name">
														<center>
															<strong>
																<xsl:value-of select="name" />
															</strong>
															</center>
														</td>
														<td id="description">
															<xsl:value-of select="description" />
														</td>
													
													</tr>
												</xsl:for-each>
											</table>
										</center>
									</xsl:when>
									<xsl:when test="contains(@type,'Recalage')">

										<center>
											<div class="type">Recalage</div>
											<table border="1">
												<tr>
													<th></th>
													<th>Logiciel</th>
													<th>Description</th>
													<th>Lien</th>
												</tr>
												<xsl:for-each select="field">
													<tr>
														<td id="img">
															<img>
																<xsl:attribute name="src">
														<xsl:value-of select="icon/@src" />
													</xsl:attribute>
																<xsl:attribute name="width">
														<xsl:value-of select="icon/@width" />
													</xsl:attribute>
																<xsl:attribute name="height">
														<xsl:value-of select="icon/@height" />
													</xsl:attribute>
															</img>
														</td>
														<td id="name">
															<center>
															<strong>
																<xsl:value-of select="name" />
															</strong>
															</center>
														</td>
														<td id="description">
															<xsl:value-of select="description" />
														</td>
														<td id="link">
															<center>
															<a target="_blank">
																<xsl:attribute name="href">						
												<xsl:value-of select="link/@href" />
											</xsl:attribute>
																<xsl:value-of select="name" />
															</a>
															</center>
														</td>
													</tr>
												</xsl:for-each>
											</table>
										</center>
									</xsl:when>
									<xsl:when test="contains(@type,'Segmentation')">
										<center>
											<div class="type">Segmentation</div>
											<table border="1">
													<tr>
													<th></th>
													<th>Logiciel</th>
													<th>Description</th>
													<th>Lien</th>
												</tr>
												<xsl:for-each select="field">
													<tr>
														<td id="img">
															<img>
																<xsl:attribute name="src">
												<xsl:value-of select="icon/@src" />
											</xsl:attribute>
																<xsl:attribute name="width">
												<xsl:value-of select="icon/@width" />
											</xsl:attribute>
																<xsl:attribute name="height">
												<xsl:value-of select="icon/@height" />
											</xsl:attribute>
															</img>
														</td>
														<td id="name">
															<center>
															<strong>
																<xsl:value-of select="name" />
															</strong>
															</center>
														</td>
														<td id="description">
															<xsl:value-of select="description" />
														</td>
														<td id="link">
															<center>
															<a target="_blank">
																<xsl:attribute name="href">						
												<xsl:value-of select="link/@href" />
											</xsl:attribute>
																<xsl:value-of select="name" />
															</a>
															</center>
														</td>
													</tr>
												</xsl:for-each>
											</table>
										</center>
									</xsl:when>
									<xsl:when test="contains(@type,'Reconstruction')">

										<center>
											<div class="type">Reconstruction</div>
											<table border="1">
											<tr>
													<th></th>
													<th>Logiciel</th>
													<th>Description</th>
													<th>Lien</th>
												</tr>
												<xsl:for-each select="field">
													<tr>
														<td id="img">
															<img>
																<xsl:attribute name="src">
														<xsl:value-of select="icon/@src" />
													</xsl:attribute>
																<xsl:attribute name="width">
														<xsl:value-of select="icon/@width" />
													</xsl:attribute>
																<xsl:attribute name="height">
														<xsl:value-of select="icon/@height" />
													</xsl:attribute>
															</img>
														</td>
														<td id="name">
														<center>
															<strong>
																<xsl:value-of select="name" />
															</strong>
														</center>
														</td>
														<td id="description">
															<xsl:value-of select="description" />
														</td>
														<td id="link">
														<center>
															<a target="_blank">
																<xsl:attribute name="href">						
												<xsl:value-of select="link/@href" />
											</xsl:attribute>
																<xsl:value-of select="name" />
															</a>
														</center>
														</td>
													</tr>
												</xsl:for-each>
											</table>
										</center>
									</xsl:when>
									<xsl:when test="contains(@type,'Simulation')">

										<center>
											<div class="type">Simulation</div>
											<table border="1">
												<tr>
													<th></th>
													<th>Logiciel</th>
													<th>Description</th>
													<th>Lien</th>
												</tr>
												<xsl:for-each select="field">
													<tr>
														<td id="img">
															<img>
																<xsl:attribute name="src">
														<xsl:value-of select="icon/@src" />
													</xsl:attribute>
																<xsl:attribute name="width">
														<xsl:value-of select="icon/@width" />
													</xsl:attribute>
																<xsl:attribute name="height">
														<xsl:value-of select="icon/@height" />
													</xsl:attribute>
															</img>
														</td>
														<td id="name">
															<center>
															<strong>
																<xsl:value-of select="name" />
															</strong>
															</center>
														</td>
														<td id="description">
															<xsl:value-of select="description" />
														</td>
														
														<td id="link">
														<center>
														<a target="_blank">
																<xsl:attribute name="href">						
												<xsl:value-of select="link/@href" />
											</xsl:attribute>
																<xsl:value-of select="name" />
															</a>
															</center>
														</td>
													</tr>
												</xsl:for-each>
											</table>
										</center>
									</xsl:when>
									<xsl:when test="contains(@type,'Diffusion')">

										<center>
											<div class="type">Diffusion</div>
											<table border="1">
												<tr>
													<th></th>
													<th>Logiciel</th>
													<th>Description</th>
													<th>Lien</th>
												</tr>
												<xsl:for-each select="field">
													<tr>
														<td id="img">
															<img>
																<xsl:attribute name="src">
														<xsl:value-of select="icon/@src" />
													</xsl:attribute>
																<xsl:attribute name="width">
														<xsl:value-of select="icon/@width" />
													</xsl:attribute>
																<xsl:attribute name="height">
														<xsl:value-of select="icon/@height" />
													</xsl:attribute>
															</img>
														</td>
														<td id="name">
															<center>
															<strong>
																<xsl:value-of select="name" />
															</strong>
															</center>
														</td>
														<td id="description">
															<xsl:value-of select="description" />
														</td>
														<td id="link">
															<center>
															<a id="link" target="_blank">
																<xsl:attribute name="href">						
												<xsl:value-of select="link/@href" />
											</xsl:attribute>
																<xsl:value-of select="name" />
															</a>
															</center>
														</td>
													</tr>
												</xsl:for-each>
											</table>
										</center>
									</xsl:when>
								</xsl:choose>
							</xsl:for-each>


						</div>
					</center>
				
					
					
					<footer>
						<div id="ref-t">Références</div>
						<div id="ref-list">
							<xsl:for-each select="references/ref">
								<p>
									<xsl:value-of select="." />
								</p>
							</xsl:for-each>
						</div>
						<div class="left" id="up-b">
							<div id="uparrow"></div>
						</div>
					</footer>
					
				</div>
	<script>
					var a = document.getElementById("uparrow");
					a.onclick = function(){
					document.body.scrollTop = 0;
					document.documentElement.scrollTop = 0;
					};
					
				</script>
			</body>
		</html>
	</xsl:template>


</xsl:stylesheet>