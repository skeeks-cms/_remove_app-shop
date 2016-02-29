<?
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
/* @var \skeeks\cms\models\Tree $model */
\Yii::$app->assetsAutoCompress->jsFileCompile = false;

$catalogHelper = \common\helpers\CatalogTreeHelper::instance($model);
?>

<?= $this->render('@template/include/breadcrumbs', [
    'model' => $model
])?>

<? if ($catalogHelper->viewType == \common\helpers\CatalogTreeHelper::VIEW_TREE) : ?>
    <!-- Product page -->
    <section class="padding-xxs">
        <div class="container">
            <div class="row">

                <div class="col-lg-9 col-md-9 col-sm-9 col-lg-push-3 col-md-push-3 col-sm-push-3">

                    <div class="row">



                            <?= \skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget::widget([
                                'namespace'      => 'catalog-pages-2',
                                'viewFile'       => '@template/widgets/TreeMenuCmsWidget/catalog-pages',
                                'label'          => 'Разделы каталога',
                                'treePid' 		 => [$model->id],
                                'enabledRunCache'=> \skeeks\cms\components\Cms::BOOL_N,
                            ]); ?>

                            <?= $model->description_full; ?>

                    </div>

                </div>

                <!-- LEFT -->
                <div class="col-lg-3 col-md-3 col-sm-3 col-lg-pull-9 col-md-pull-9 col-sm-pull-9">

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
                    <!-- /CATEGORIES -->
                </div>

            </div>
        </div>
    </section>

<? else : ?>

    <? \skeeks\cms\modules\admin\widgets\Pjax::begin(); ?>

    <?
    $this->registerCss(<<<CSS
.checkbox input[type=checkbox]
{
    left:auto;
}
#sx-filters-form label
{
    font-size: 12px;
    color: black;
}
#sx-filters-form input.form-control
{
    height: 30px;
}
CSS
);
    ?>

    <? $filters = \skeeks\cms\shop\cmsWidgets\filters\ShopProductFiltersWidget::begin([
        'namespace' => 'ShopProductFiltersWidget-left-' . $model->id
    ]); ?>




        <!-- Product page -->
        <section class="padding-xxs">
            <div class="container">

                <div class="col-lg-9 col-md-9 col-sm-9 col-lg-push-3 col-md-push-3 col-sm-push-3">



                    <?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
                        'namespace' => 'ContentElementsCmsWidget-second',
                        'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/products',
                        'dataProviderCallback' 	=> function(\yii\data\ActiveDataProvider $activeDataProvider) use ($filters)
                        {
                            $filters->search($activeDataProvider);
                        },
                    ]); ?>

                    <? if($model->description_full && !\Yii::$app->request->get('page')) : ?>
                            <?= $model->description_full; ?>
                    <? endif; ?>

                </div>

                <!-- LEFT -->
                <div class="col-lg-3 col-md-3 col-sm-3 col-lg-pull-9 col-md-pull-9 col-sm-pull-9 sx-bg-silver">

                    <!-- CATEGORIES -->
                    <div class="side-nav margin-bottom-60">

                        <? \skeeks\cms\shop\cmsWidgets\filters\ShopProductFiltersWidget::end(); ?>

                        <!--
                        <?/* $form = \yii\bootstrap\ActiveForm::begin(); */?>
                            <?/* if ($model->children) : */?>
                                <div class="side-nav-head">
                                    <button class="fa fa-bars"></button>
                                    <h4>Разделы</h4>
                                </div>
                                <?/*= \yii\helpers\Html::checkboxList('test', [], \yii\helpers\ArrayHelper::map($model->children, 'id', 'name')); */?>
                            <?/* endif; */?>
                        --><?/* \yii\bootstrap\ActiveForm::end(); */?>



                    </div>
                    <!-- /CATEGORIES -->
                </div>

            </div>
        </section>

    <? \skeeks\cms\modules\admin\widgets\Pjax::end(); ?>
<? endif; ?>



