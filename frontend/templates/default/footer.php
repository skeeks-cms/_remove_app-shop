<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
?>

<!-- FOOTER -->
<footer id="footer">
	<div class="container">

		<div class="row">

			<div class="col-md-3">

				<?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
				'namespace'         => 'text-footer-left',
				'text'              => <<<HTML
				<!-- Footer Logo -->
				<h4 class="letter-spacing-1">О компании</h4>

				<!-- Small Description -->
				<p>Нас можно найти по адресу.</p>

				<!-- Contact Address -->
				<address>
					<ul class="list-unstyled">
						<li class="footer-sprite address">
							г. Москва,<br>
							г. Зеленоград 2005-29<br>
						</li>
						<li class="footer-sprite phone">
							Телефон: <a href="tel:+74957222873">+7 (495) 722 28-73</a><br />
						</li>
						<li class="footer-sprite email">
							<a href="mailto:info@skeeks.com">info@skeeks.com</a>
						</li>

					</ul>
				</address>
				<!-- /Contact Address -->
HTML
,
			]); ?>



			</div>

			<div class="col-md-3">

				<?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
					'namespace'         => 'ContentElementsCmsWidget-footer',
					'viewFile'          => '@template/widgets/ContentElementsCmsWidget/articles-footer',
					'label'             => 'Новости и статьи',
					'enabledCurrentTree'=> \skeeks\cms\components\Cms::BOOL_N,
					'limit'             => 4,
				])?>



			</div>

			<div class="col-md-2">

				<?= \skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget::widget([
					'namespace'      => 'menu-footer-2',
					'viewFile'       => '@template/widgets/TreeMenuCmsWidget/menu-footer.php',
					'label'          => 'Меню',
					'level'          => '1',
				]); ?>

			</div>

			<div class="col-md-4">

				<?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
				'namespace'         => 'text-footer-social-1',
				'text'              => <<<HTML
				<!-- Footer Logo -->
				<h4 class="letter-spacing-1">Социальные сети</h4>

				<!-- Small Description -->
				<p>Вступайте в наши группы и соц сети.</p>

				<!-- Social Icons -->
				<div class="margin-top-20">
					<a href="http://vk.com/skeeks_com" target="_blank" class="social-icon social-icon-border social-facebook pull-left" data-toggle="tooltip" data-placement="top" title="Vkontakte">

						<i class="icon-vk"></i>
						<i class="icon-vk"></i>
					</a>
					<a href="https://www.facebook.com/skeekscom" target="_blank" class="social-icon social-icon-border social-facebook pull-left" data-toggle="tooltip" data-placement="top" title="Vkontakte">

						<i class="icon-facebook"></i>
						<i class="icon-facebook"></i>
					</a>

					<a href="https://twitter.com/skeeks_com" target="_blank" class="social-icon social-icon-border social-twitter pull-left" data-toggle="tooltip" data-placement="top" title="Twitter">
						<i class="icon-twitter"></i>
						<i class="icon-twitter"></i>
					</a>


					<a href="https://www.youtube.com/channel/UC26fcOT8EK0Rr80WSM44mEA" target="_blank" class="social-icon social-icon-border social-twitter pull-left" data-toggle="tooltip" data-placement="top" title="Youtube">
						<i class="icon-youtube"></i>
						<i class="icon-youtube"></i>
					</a>


				</div>
				<!-- /Social Icons -->
HTML
,
			]); ?>

			</div>

		</div>

	</div>

	<div class="copyright">
		<div class="container">
			<ul class="pull-right nomargin list-inline mobile-block">
				<li><a href="http://skeeks.com" title="Студия SkeekS">Разработка сайта — SkeekS.com</a> (<a href="http://cms.skeeks.com" title="Система управления сайтом SkeekS CMS (Yii2 cms)">SkeekS CMS Yii2</a>)</li>

			</ul>
			<?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
				'namespace'         => 'text-footer-rights',
				'text'              => <<<HTML
				&copy; Все права защищены, SkeekS CMS - SHOP 2016
HTML
,
			]); ?>

		</div>
	</div>
</footer>
<!-- /FOOTER -->
