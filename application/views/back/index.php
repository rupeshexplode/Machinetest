<?php 
ini_set('display_errors', 1);


include 'includes_top.php'; ?>
<body>
	<div id="container">
		<!--NAVBAR-->
		<?php include 'header.php'; ?>
		<!--END NAVBAR-->
		<div class="boxed" id="fol">
			<!--CONTENT CONTAINER-->
			<div>
			<?php include "adding_products".'/'.$page_name.'.php' ?>
			</div>
		</div>
		<?php include 'script_texts.php'; ?>
		<!-- END FOOTER -->
		<!-- SCROLL TOP BUTTON -->
		<button id="scroll-top" class="btn"><i class="fa fa-chevron-up"></i></button>
	</div>	
<?php include 'includes_bottom.php'; ?>

