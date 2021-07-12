<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
	<xsl:param name="col-count" select="7" />
	<xsl:template match="/collection">
		<html>
			<head>
				<link rel="icon" href="img/webicon.ico" />
				<link rel="stylesheet" type="text/css" href="css/main.css" />
				<meta charset="UTF-8" />
				<title>Deep learning </title>
			</head>
			<body>
			
				<div class="wrapper">
				<div class="nav-menu">
						
						<ul id="menu">
							<li class="menu-li" id="webicon"></li>
							<li class="menu-li"><a href="../demo.html">Accueil</a></li>
							<li class="menu-li"><a href="">Documentation</a></li>
							<li class="menu-li"><a href="">Modalités</a></li>
							<li class="menu-li"><a href="">Imagerie Medicale</a></li>
							<li class="menu-li"><a href="">Segmentation</a></li>
							<li class="menu-li"><a href="">Reconstruction</a></li>
							<li class="menu-li">Voir plus<div id="down-arrow"></div><ul class="subm">
									<li><a href="">Maladies Valvulaire</a></li>
									<li><a href="">Fuite Valvulaire</a></li>
									<li><a href="">Rétrécissement Valvulaire</a></li>
									<li><a href="">Recalage d'Imagerie Cardiaque</a></li>
								</ul>
							</li>
						</ul>
					</div>
					
					<center>
						<span id="bg-text">FIELD</span>
						<div id="bg-img"></div>
					</center>
					<center>
						<div class="wrapper-2">
							<p>
								<xsl:value-of select="header/introduction" />
								<br />
							</p>
						</div>
						<br />
						<br />
						<div class="wrapper-3">
							<xsl:for-each select="software">
								<div class="soft-info">
									<table id="soft-t">
										<th id="img">
											<img>
												<xsl:attribute name="src">
									<xsl:value-of select="icon/@href" />
								</xsl:attribute>
												<xsl:attribute name="width">
									<xsl:value-of select="icon/@width" />
								</xsl:attribute>
												<xsl:attribute name="height">
									<xsl:value-of select="icon/@height" />
								</xsl:attribute>
											</img>
										</th>
										<th id="name">
											<xsl:value-of select="name" />
										</th>

									</table>
									<p>
										<xsl:value-of select="description" />
									</p>
									<p>
										<strong></strong>
										<br />
										<br />
										<strong></strong>
										<xsl:value-of select="version" />
										<br />
										<strong></strong>
										<xsl:value-of select="requirements/os" />
										<br />
										<strong></strong>
										<xsl:value-of select="developer" />
										<br />
										
									</p>
									<p class="d-link">
										<strong></strong>
										<br />
										<ul id="ul-link">
											<xsl:for-each select="download/link">
												<li id="li-link">
													<a id="a-link" target="_blank">
														<xsl:attribute name="href">
												<xsl:value-of select="@href" />
											</xsl:attribute>
														<xsl:value-of select="@os" />
													</a>
												</li>
											</xsl:for-each>
										</ul>
									</p>
									<p class="d-link">
										<strong></strong>
										<a id="a-link" target="_blank">
											<xsl:attribute name="href">
												<xsl:value-of select="website/@url" />
											</xsl:attribute>
											<xsl:value-of select="name" />
										</a>
									</p>
									<p>
										<strong></strong>
										<div id="img-container">
											<xsl:for-each select="screenshots/screenshot">
												<a target="_blank">
													<xsl:attribute name="href">
									<xsl:value-of select="@href" />
								</xsl:attribute>
													<img>
														<xsl:attribute name="src">
										<xsl:value-of select="@href" />
									</xsl:attribute>
														<xsl:attribute name="width">
										<xsl:value-of select="@width" />
									</xsl:attribute>
														<xsl:attribute name="height">
										<xsl:value-of select="@height" />
									</xsl:attribute>
													</img>
												</a>
											</xsl:for-each>
										</div>
									</p>

								</div>
							</xsl:for-each>
							<button id="visit-more">Autres Logiciels</button>
						</div>

						<div class="wrapper-4">
							<div class="text-w4">
								<p>
									Pour vous aider a choisir le bon logiciel, nous avons construit un
									tableau comparatif entre les differents logiciels en fonction
									d'un certain nombre de critères:
								</p>
							</div>

							<div id="c-tb">
							</div>
							<table border='1'>
								<th class="tb-s">
									Logiciels\Critères
								</th>
								<xsl:for-each select="criteria/item1">
									<th class="tb-s">
										<xsl:value-of select="@title" />
									</th>
								</xsl:for-each>
								<xsl:apply-templates select="software" />
							</table>
						</div>
					</center>

					<footer id="soft-footer">
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
					var visit_more = document.getElementById("visit-more");
					a.onclick = function(){
					document.body.scrollTop = 0;
					document.documentElement.scrollTop = 0;
					};
					visit_more.onclick = function(){
						location.href = "list.xml";
					};
				</script>

			</body>
		</html>
	</xsl:template>


	<xsl:template match="software">
		<tr class="tb-s">
			<td class="tb-s">
				<strong>
					<xsl:value-of select="name" />
				</strong>
			</td>
			<xsl:apply-templates select="features/feature" />
		</tr>

	</xsl:template>

	<xsl:template match="features/feature">

		<td class="tb-s">
			<!--<xsl:value-of select="exist"/> -->
			<xsl:choose>
				<xsl:when test="contains(exist,'true')">
					<center>
						<img>
							<xsl:attribute name="src">
							<xsl:value-of select="../../../utils/green/@href" />
						</xsl:attribute>
							<xsl:attribute name="width">
							<xsl:value-of select="../../../utils/green/@width" />
						</xsl:attribute>
							<xsl:attribute name="height">
							<xsl:value-of select="../../../utils/green/@height" />
						</xsl:attribute>
						</img>
					</center>
				</xsl:when>
				<xsl:when test="contains(exist,'false')">
					<center>
						<img>
							<xsl:attribute name="src">
							<xsl:value-of select="../../../utils/red/@href" />
						</xsl:attribute>
							<xsl:attribute name="width">
							<xsl:value-of select="../../../utils/red/@width" />
						</xsl:attribute>
							<xsl:attribute name="height">
							<xsl:value-of select="../../../utils/red/@height" />
						</xsl:attribute>
						</img>
					</center>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="exist" />
				</xsl:otherwise>
			</xsl:choose>
		</td>

	</xsl:template>

</xsl:stylesheet>