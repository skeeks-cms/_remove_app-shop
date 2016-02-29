<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 24.05.2015
 */
/* @var $this \yii\web\View */
/* @var $model \skeeks\cms\models\CmsContentElement */

\frontend\assets\OwnCarouselAsset::register($this);
\frontend\assets\ZoomAsset::register($this);
\frontend\assets\LightBoxAsset::register($this);

$this->registerJs(<<<JS
new sx.classes.OwnCarousel({
	'jsquerySelector' : '.owl-carousel'
});
new sx.classes.Zoom({
	'jsquerySelector' : '.zoom'
});
new sx.classes.LightBox({
	'jsquerySelector' : '.lightbox'
});


JS
);

$shopProduct = \skeeks\cms\shop\models\ShopProduct::getInstanceByContentElement($model);
$product = \common\models\Moto::instance($model);


$shopProduct->createNewView();

?>
<?= $this->render('@template/include/breadcrumbs', [
    'model' => $model
])?>

<!-- Product page -->
<section class="padding-xxs">
    <div class="container">
        <div class="row">

            <!-- RIGHT -->
            <div class="col-lg-9 col-md-9 col-sm-9">

                <div class="row">

                    <!-- IMAGE -->
                    <div class="col-lg-6 col-sm-6">

                        <div class="thumbnail relative margin-bottom-3">

                            <!--
                                IMAGE ZOOM

                                data-mode="mouseover|grab|click|toggle"
                            -->
                            <figure id="zoom-primary" class="zoom" data-mode="mouseover" style="position: relative; overflow: hidden;">
                                <!--
                                    zoom buttton

                                    positions available:
                                        .bottom-right
                                        .bottom-left
                                        .top-right
                                        .top-left
                                -->
                                <a class="lightbox bottom-right" href="<?= $model->image->src; ?>" data-plugin-options='{"type":"image"}'><i class="glyphicon glyphicon-search"></i></a>

                                <!--
                                    image

                                    Extra: add .image-bw class to force black and white!
                                -->
                                <img class="img-responsive" src="<?= \Yii::$app->imaging->getImagingUrl($model->image->src,
                                    new \skeeks\cms\components\imaging\filters\Thumbnail([
                                        'w'    => 800,
                                        'h'    => 600,
                                    ])
                                ) ?>" title="<?= $model->name; ?>" alt="<?= $model->name; ?>" width="1200" height="1500">
                                <img src="<?= $model->image->src; ?>" class="zoomImg" title="<?= $model->name; ?>" alt="<?= $model->name; ?>" style="position: absolute; top: -268.488px; left: -84.3509px; opacity: 0; width: 1000px; height: 1500px; border: none; max-width: none; max-height: none;">
                            </figure>

                        </div>
                        <? if( $gallery = $model->images ) : ?>
                        <!-- Thumbnails (required height:100px) -->

                        <div data-for="zoom-primary" class="zoom-more owl-carousel owl-padding-3 featured"  data-plugin-options='{"singleItem": false, "autoPlay": false, "navigation": true, "pagination": false, "items": 4}' style="opacity: 1; display: block;">
                                <a class="thumbnail active" href="<?= $model->image->src; ?>">
                                    <img src="<?= $model->image->src; ?>" height="100" alt="<?=$image->name; ?>" title="<?=$image->name; ?>" style="min-height: 100px">
                                </a>
                                <? foreach ($gallery as $image) : ?>
                                    <a class="thumbnail" href="<?=$image->src; ?>">
                                        <img src="<?= \Yii::$app->imaging->getImagingUrl($image->src,
                                            new \skeeks\cms\components\imaging\filters\Thumbnail([
                                                'h'    => 100,
                                                'w'    => 0,
                                            ])
                                        ) ?>" height="100" alt="<?=$image->name; ?>" title="<?=$image->name; ?>" style="min-height: 100px">
                                    </a>
                                    <? endforeach; ?>

                        </div>
                        <!-- /Thumbnails -->
                        <? endif; ?>
                    </div>
                    <!-- /IMAGE -->

                    <!-- ITEM DESC -->
                    <div class="col-lg-6 col-sm-6">

                        <!-- price -->
                        <div class="shop-item-price">
                            <!--<span class="line-through nopadding-left"></span>-->
                            <? if ($shopProduct->minProductPrice->id == $shopProduct->baseProductPrice->id) : ?>
                                <?= \Yii::$app->money->convertAndFormat($shopProduct->minProductPrice->money); ?>
                            <? else : ?>
                                <span class="line-through nopadding-left"><?= \Yii::$app->money->convertAndFormat($shopProduct->baseProductPrice->money); ?></span>
                                <?= \Yii::$app->money->convertAndFormat($shopProduct->minProductPrice->money); ?>
                            <? endif; ?>


                        </div>
                        <!-- /price -->

                        <hr>

                        <div class="clearfix margin-bottom-30">
                            <? if ($shopProduct->quantity > 0) : ?>
                                <span class="pull-right text-success"><i class="fa fa-check"></i> В наличии</span>
                            <? endif; ?>

                            <!--
                            <span class="pull-right text-danger"><i class="glyphicon glyphicon-remove"></i> Out of Stock</span>
                            -->

                            <strong>Артикул:</strong> <?= $model->id; ?><br>
                            <? if ($product->marka->name) : ?><strong>Марка:</strong> <a href="<?= \yii\helpers\Url::to(['/cms/tree/view', 'model' => $model->cmsTree, 'SearchRelatedPropertiesModel' => ['marka' => $product->marka->id]]); ?>"><?= $product->marka->name; ?></a><br><? endif; ?>
                            <? if ($product->type->name) : ?><strong>Тип:</strong> <a href="<?= \yii\helpers\Url::to(['/cms/tree/view', 'model' => $model->cmsTree, 'SearchRelatedPropertiesModel' => ['type' => $product->type->id]]); ?>"><?= $product->type->name; ?></a><br><? endif; ?>
                            <strong>Категория:</strong>
                            <a href="<?= $model->cmsTree->url; ?>"><?= $model->cmsTree->name; ?></a><br />

                            <? if ($product->year) : ?>
                                <strong>Год:</strong> <?= $product->year; ?><br />
                            <? endif; ?>
                            <? if ($product->volume) : ?>
                                <strong>Объем двигателя:</strong> <?= $product->volume; ?> см3<br />
                            <? endif; ?>
                            <? if ($product->mileage) : ?>
                                <strong>Пробег:</strong> <?= $product->mileage; ?> км<br />
                            <? endif; ?>
                            <? if ($product->color) : ?>
                                <strong>Цвет:</strong> <?= $product->color; ?><br />
                            <? endif; ?>
                        </div>


                        <!-- short description -->
                        <p><?= $model->description_short; ?></p>
                        <!-- /short description -->




                        <hr>



                            <a class="btn btn-default btn-primary btn-lg product-add-cart noradius" href="#" onclick="sx.Shop.addProduct(<?= $model->id; ?>, 1); return false;"><i class="fa fa-cart-plus"></i> В корзину</a>

                        <!--<img src="http://www.megamoto.ru/skin/frontend/megamoto/default/images/buy-by-credit.png" alt="">-->

                        <!-- /FORM -->


                        <hr>

                        Доставка по России расчитывается через менеджера по телефону

                        <hr>

                        <div class="">

                            <?=
                                \kartik\rating\StarRating::widget(\yii\helpers\ArrayHelper::merge([
                                        'name' => 'rating_1',
                                        'value' => (float) $model->relatedPropertiesModel->getAttribute('reviews2_rating'),
                                        'pluginOptions' => [
                                            'disabled'  => true,
                                            'showClear' => false,
                                            'size'      => 'sm',
                                            'clearCaption' => (int) $model->relatedPropertiesModel->getAttribute('reviews2_count') . ' отзывов',
                                            'starCaptions' =>
                                            [
                                                1 => 'Отзывов: ' . (int) $model->relatedPropertiesModel->getAttribute('reviews2_count'),
                                                2 => 'Отзывов: ' . (int) $model->relatedPropertiesModel->getAttribute('reviews2_count'),
                                                3 => 'Отзывов: ' . (int) $model->relatedPropertiesModel->getAttribute('reviews2_count'),
                                                4 => 'Отзывов: ' . (int) $model->relatedPropertiesModel->getAttribute('reviews2_count'),
                                                5 => 'Отзывов: ' . (int) $model->relatedPropertiesModel->getAttribute('reviews2_count'),
                                            ]
                                        ]
                                    ], (array) $options));
                            ?>
                        </div>

                        <hr>

                        <!-- Share -->
                        <div class="pull-right">

                            <?= \skeeks\cms\yandex\share\widget\YaShareWidget::widget([
                                'namespace' => 'YaShareWidget-main'
                            ]); ?>

                        </div>
                        <!-- /Share -->




                    </div>
                    <!-- /ITEM DESC -->

                </div>




                <ul id="myTab" class="nav nav-tabs nav-top-border" role="tablist">
                    <li role="presentation" class="active"><a href="#description" role="tab" data-toggle="tab">Описание</a></li>
                    <li role="presentation"><a href="#sx-vk" role="tab" data-toggle="tab">Обсуждение (Vkontakte)</a></li>
                    <li role="presentation"><a href="#sx-reviews" role="tab" data-toggle="tab">Отзывы (<?= $product->reviewsCount ?>)</a></li>
                    <li role="presentation"><a href="#sx-feedback" role="tab" data-toggle="tab">Обратная связь</a></li>
                </ul>

                <div class="tab-content padding-top-20">
                    <!-- DESCRIPTION -->
                    <div role="tabpanel" class="tab-pane fade in active" id="description">
                            <div style="padding-left: 10px;">
                                <?= $model->description_full; ?>

                                <strong>Артикул:</strong> <?= $model->id; ?><br>
                                <? if ($product->marka->name) : ?><strong>Марка:</strong> <a href="<?= \yii\helpers\Url::to(['/cms/tree/view', 'model' => $model->cmsTree, 'SearchRelatedPropertiesModel' => ['marka' => $product->marka->id]]); ?>"><?= $product->marka->name; ?></a><br><? endif; ?>
                                <? if ($product->type->name) : ?><strong>Тип:</strong> <a href="<?= \yii\helpers\Url::to(['/cms/tree/view', 'model' => $model->cmsTree, 'SearchRelatedPropertiesModel' => ['type' => $product->type->id]]); ?>"><?= $product->type->name; ?></a><br><? endif; ?>
                                <strong>Категория:</strong>
                                <a href="<?= $model->cmsTree->url; ?>"><?= $model->cmsTree->name; ?></a><br />

                                <? if ($product->year) : ?>
                                    <strong>Год:</strong> <?= $product->year; ?><br />
                                <? endif; ?>
                                <? if ($product->volume) : ?>
                                    <strong>Объем двигателя:</strong> <?= $product->volume; ?> см3<br />
                                <? endif; ?>
                                <? if ($product->mileage) : ?>
                                    <strong>Пробег:</strong> <?= $product->mileage; ?> км<br />
                                <? endif; ?>
                                <? if ($product->color) : ?>
                                    <strong>Цвет:</strong> <?= $product->color; ?><br />
                                <? endif; ?>

                            </div>
                    </div>
                    <!-- SPECIFICATIONS -->
                    <div role="tabpanel" class="tab-pane fade" id="sx-vk">
                        <?= \skeeks\cms\vk\comments\VkCommentsWidget::widget([
                            'namespace' => 'VkCommentsWidget-main',
                            'apiId'     => 5115405
                        ]); ?>
                    </div>

                    <div role="tabpanel" class="tab-pane fade" id="sx-reviews">
                        <?= \skeeks\cms\reviews2\widgets\reviews2\Reviews2Widget::widget([
                            'namespace'                 => 'Reviews2Widget',
                            'viewFile'                 => '@app/views/widgets/Reviews2Widget/package',
                            'cmsContentElement'         => $model
                        ]); ?>
                    </div>

                    <div role="tabpanel" class="tab-pane fade" id="sx-feedback">
                        <?=
                            \skeeks\modules\cms\form2\cmsWidgets\form2\FormWidget::widget([
                                'form_code' => 'feedback'
                            ]);
                        ?>
                    </div>

                </div>


                <hr>

                <?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
                        'namespace' => 'ContentElementsCmsWidget-sameProducts',
                        'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/sameProducts',
                        'label' 	=> 'Подобные товары',
                        'tree_ids' 	=> [$model->tree_id],
                        'limit' 	=> 10,
                        'activeQueryCallback' 	=> function(\yii\db\ActiveQuery $query) use ($model)
                        {
                            $query->andWhere(['!=', \skeeks\cms\models\CmsContentElement::tableName() . ".id", $model->id]);
                        }
                    ]); ?>
            </div>


            <!-- LEFT -->
            <div class="col-lg-3 col-md-3 col-sm-3">

                <!-- CATEGORIES -->
                <div class="side-nav margin-bottom-60">


                    <?= trim(\skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget::widget([
                        'namespace'         => 'TreeMenuCmsWidget-leftmenu',
                        'viewFile'          => '@template/widgets/TreeMenuCmsWidget/left-menu',
                        'treePid'           => $model->id,
                        'enabledRunCache'   => \skeeks\cms\components\Cms::BOOL_N,
                        'label'             => 'Каталог',
                    ])); ?>

                </div>

                <div class="side-nav margin-bottom-60">

                    <?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
                        'namespace' => 'ContentElementsCmsWidget-VisitedProducts',
                        'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/visitedProducts',
                        'label' 	=> 'Просмотренные товары',
                        'limit' 	=> 10,
                        'activeQueryCallback' 	=> function(\yii\db\ActiveQuery $query) use ($model)
                        {
                            $query->andWhere(['!=', \skeeks\cms\models\CmsContentElement::tableName() . ".id", $model->id]);
                        }
                    ]); ?>
                </div>
                <!-- /CATEGORIES -->
            </div>

        </div>
    </div>
</section>



