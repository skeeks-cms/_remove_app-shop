<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 24.05.2015
 */
/* @var $this \yii\web\View */
/* @var $model \skeeks\cms\models\Tree */

?>



<!-- SLIDER -->
<section class="padding-top-20 padding-bottom-20" style="border: none;">
	<div class="container">

		<?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
			'namespace' => 'ContentElementsCmsWidget-slides',
			'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/slides',
		]); ?>


		<section class="callout-dark heading-title heading-arrow-bottom padding-top-20 padding-bottom-20">
			<div class="container">

				<div class="text-center">

					<?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
				'namespace'         => 'home-center-text',
				'text'              => <<<HTML

				<h3 class="size-30">SkeekS CMS - SHOP</h3>
				<p>один из ведущих мотосалонов России по продаже новой и б/у мототехники.</p>
HTML
,
			]); ?>



				</div>

			</div>
		</section>

		<!-- INFO BAR -->
		<!--<div class="info-bar info-bar-clean info-bar-bordered nomargin-bottom">
			<div class="container">

				<div class="row">

					<div class="col-sm-4">
						<i class="glyphicon glyphicon-globe"></i>
						<h3>Беслпатная доставка</h3>
						<p>Мы доставляем товары бесплатно.</p>
					</div>

					<div class="col-sm-4">
						<i class="glyphicon glyphicon-usd"></i>
						<h3>Не надо денег</h3>
						<p>Мы бесплатно раздаем весь товар.</p>
					</div>

					<div class="col-sm-4">
						<i class="glyphicon glyphicon-flag"></i>
						<h3>Онлайн поддержка 24/7</h3>
						<p>Звоните в любое время дня и ночи.</p>
					</div>

				</div>

			</div>
		</div>-->
		<!-- /INFO BAR -->

	</div>
</section>
<!-- /SLIDER -->



<section class="padding-top-20 padding-bottom-0">
	<div class="container">

		<div class="row">


			<div class="col-md-12">
				<?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
					'namespace' => 'ContentElementsCmsWidget-home-page',
					'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/products-home',
				]); ?>

			</div>
		</div>

	</div>
</section>





<section class="padding-top-20">
	<div class="container">

		<div class="row">


			<div class="col-md-12">
				<?= $model->description_full; ?>

			</div>
		</div>

	</div>
</section>

