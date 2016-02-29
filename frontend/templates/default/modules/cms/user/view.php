<?php
use yii\helpers\Html;

use yii\widgets\ActiveForm;
/**
 * index
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 14.10.2014
 * @since 1.0.0
 */

/* @var $this yii\web\View */
/* @var $model common\models\User */
/* @var $personal bool */

$this->title = $model->getDisplayName();
\Yii::$app->breadcrumbs->createBase()->append($this->title);

/*\Yii::$app->response->redirect($model->getPageUrl('conference'));*/
?>

<?= $this->render('_header', [
    'model'     => $model,
    'personal'  => $personal,
    'title'     => 'Профиль',
]); ?>


    <div class="box-flip box-icon box-icon-center box-icon-round box-icon-large text-center nomargin" style="min-height: 201px;">
        <div class="front">
            <div class="box1 noradius" style="min-height: 201px;">
                <div class="box-icon-title">
                    <i class="fa fa-user"></i>
                    <h2><?= $model->displayName; ?></h2>
                </div>
                <p><?= $model->info; ?></p>
            </div>
        </div>

        <div class="back">
            <div class="box2 noradius" style="min-height: 201px;">
                <h4>Обо мне?</h4>
                <hr>
                <p><?= $model->info; ?></p>
            </div>
        </div>
    </div>





    <div class="box-light"><!-- .box-light OR .box-dark -->

        <div class="row">

            <!-- POPULAR POSTS -->
            <div class="col-md-6 col-sm-6">

                <div class="box-inner">
                    <h3>
                        <a class="pull-right size-11 text-warning" href="#">VIEW ALL</a>
                        POPULAR POSTS
                    </h3>
                    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 250px;"><div class="height-250 slimscroll" data-always-visible="true" data-size="5px" data-position="right" data-opacity="0.4" disable-body-scroll="true" style="overflow: hidden; width: auto; height: 250px;">

                        <div class="clearfix margin-bottom-10"><!-- post item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/b-min.jpg" width="60" height="60" alt="">
                            <h4 class="size-13 nomargin noborder nopadding"><a href="blog-single-default.html">Nullam Vitae Nibh Un Odiosters</a></h4>
                            <span class="size-11 text-muted">June 29, 2015</span>
                        </div><!-- /post item -->

                        <div class="clearfix margin-bottom-10"><!-- post item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/6-min.jpg" width="60" height="60" alt="">
                            <h4 class="size-13 nomargin noborder nopadding"><a href="blog-single-default.html">Nullam Vitae Nibh Un Odiosters</a></h4>
                            <span class="size-11 text-muted">June 29, 2015</span>
                        </div><!-- /post item -->

                        <div class="clearfix margin-bottom-10"><!-- post item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/d-min.jpg" width="60" height="60" alt="">
                            <h4 class="size-13 nomargin noborder nopadding"><a href="blog-single-default.html">Nullam Vitae Nibh Un Odiosters</a></h4>
                            <span class="size-11 text-muted">June 29, 2015</span>
                        </div><!-- /post item -->

                        <div class="clearfix margin-bottom-10"><!-- post item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/a-min.jpg" width="60" height="60" alt="">
                            <h4 class="size-13 nomargin noborder nopadding"><a href="blog-single-default.html">Nullam Vitae Nibh Un Odiosters</a></h4>
                            <span class="size-11 text-muted">June 29, 2015</span>
                        </div><!-- /post item -->

                        <div class="clearfix margin-bottom-10"><!-- post item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/5-min.jpg" width="60" height="60" alt="">
                            <h4 class="size-13 nomargin noborder nopadding"><a href="blog-single-default.html">Nullam Vitae Nibh Un Odiosters</a></h4>
                            <span class="size-11 text-muted">June 29, 2015</span>
                        </div><!-- /post item -->

                    </div><div class="slimScrollBar" style="width: 5px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; height: 156.25px; background: rgb(51, 51, 51);"></div><div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: block; border-radius: 7px; opacity: 0.05; z-index: 90; right: 1px; background: rgb(234, 234, 234);"></div></div>
                </div>

                <div class="box-footer">
                    <!-- INLINE SEARCH -->
                    <div class="inline-search clearfix">
                        <form action="#" method="get" class="widget_search nomargin">
                            <input type="search" placeholder="Search Post..." name="s" class="serch-input">
                            <button type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                            <div class="clear"></div>
                        </form>
                    </div>
                    <!-- /INLINE SEARCH -->

                </div>

            </div>
            <!-- /POPULAR POSTS -->

            <!-- FRIENDS -->
            <div class="col-md-6 col-sm-6">

                <div class="box-inner">
                    <h3>
                        <a class="pull-right size-11 text-warning" href="#">VIEW ALL</a>
                        FRIENDS
                    </h3>
                    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 250px;"><div class="height-250 slimscroll" data-always-visible="true" data-size="5px" data-position="right" data-opacity="0.4" disable-body-scroll="true" style="overflow: hidden; width: auto; height: 250px;">

                        <div class="clearfix margin-bottom-10"><!-- squared item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/1-min.jpg" width="40" height="40" alt="">
                            <h4 class="size-14 nomargin noborder nopadding bold"><a href="#">Joana Doe</a></h4>
                            <span class="size-12 text-muted">Lorem ipsum dolor sit amet.</span>
                        </div><!-- /squared item -->

                        <div class="clearfix margin-bottom-10"><!-- rounded item -->
                            <img class="thumbnail pull-left rounded" src="assets/images/demo/people/300x300/2-min.jpg" width="40" height="40" alt="">
                            <h4 class="size-14 nomargin noborder nopadding bold"><a href="#">Melissa Doe</a></h4>
                            <span class="size-12 text-muted">Lorem ipsum dolor sit amet.</span>
                        </div><!-- /rounded item -->

                        <div class="clearfix margin-bottom-10"><!-- squared item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/3-min.jpg" width="40" height="40" alt="">
                            <h4 class="size-14 nomargin noborder nopadding bold"><a href="#">Felicia Doe</a></h4>
                            <span class="size-12 text-muted">Lorem ipsum dolor sit amet.</span>
                        </div><!-- /squared item -->

                        <div class="clearfix margin-bottom-10"><!-- rounded item -->
                            <img class="thumbnail pull-left rounded" src="assets/images/demo/people/300x300/4-min.jpg" width="40" height="40" alt="">
                            <h4 class="size-14 nomargin noborder nopadding bold"><a href="#">Suzana Doe</a></h4>
                            <span class="size-12 text-muted">Lorem ipsum dolor sit amet.</span>
                        </div><!-- /rounded item -->

                        <div class="clearfix margin-bottom-10"><!-- squared item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/5-min.jpg" width="40" height="40" alt="">
                            <h4 class="size-14 nomargin noborder nopadding bold"><a href="#">Jolie Doe</a></h4>
                            <span class="size-12 text-muted">Lorem ipsum dolor sit amet.</span>
                        </div><!-- /squared item -->

                    </div><div class="slimScrollBar" style="width: 5px; position: absolute; top: 42px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; height: 208.333px; background: rgb(51, 51, 51);"></div><div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: block; border-radius: 7px; opacity: 0.05; z-index: 90; right: 1px; background: rgb(234, 234, 234);"></div></div>
                </div>

                <div class="box-footer">
                    <!-- INLINE SEARCH -->
                    <div class="inline-search clearfix">
                        <form action="#" method="get" class="widget_search nomargin">
                            <input type="search" placeholder="Search Friend..." name="s" class="serch-input">
                            <button type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                            <div class="clear"></div>
                        </form>
                    </div>
                    <!-- /INLINE SEARCH -->

                </div>

            </div>
            <!-- /FRIENDS -->

        </div>


        <div class="row margin-top-30">

            <!-- DISCUSSIONS -->
            <div class="col-md-6 col-sm-6">

                <div class="box-inner">
                    <h3>
                        <a class="pull-right size-11 text-warning" href="#">VIEW ALL</a>
                        DISCUSSIONS
                    </h3>
                    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 250px;"><div class="height-250 slimscroll" data-always-visible="true" data-size="5px" data-position="right" data-opacity="0.4" disable-body-scroll="true" style="overflow: hidden; width: auto; height: 250px;">

                        <div class="clearfix margin-bottom-20"><!-- discussion item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/3-min.jpg" width="60" height="60" alt="">
                            <h4 class="size-15 nomargin noborder nopadding bold"><a href="#">Joana Doe</a></h4>
                            <span class="size-13 text-muted">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                <span class="text-success size-11">12 min. ago</span>
                            </span>
                        </div><!-- /discussion item -->

                        <div class="clearfix margin-bottom-20"><!-- discussion item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/4-min.jpg" width="60" height="60" alt="">
                            <h4 class="size-15 nomargin noborder nopadding bold"><a href="#">Melissa Doe</a></h4>
                            <span class="size-13 text-muted">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                <span class="text-success size-11">54 min. ago</span>
                            </span>
                        </div><!-- /discussion item -->

                        <div class="clearfix margin-bottom-20"><!-- discussion item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/5-min.jpg" width="60" height="60" alt="">
                            <h4 class="size-15 nomargin noborder nopadding bold"><a href="#">juliet Doe</a></h4>
                            <span class="size-13 text-muted">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                <span class="text-success size-11">8 days ago</span>
                            </span>
                        </div><!-- /discussion item -->

                        <div class="clearfix margin-bottom-20"><!-- discussion item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/6-min.jpg" width="60" height="60" alt="">
                            <h4 class="size-15 nomargin noborder nopadding bold"><a href="#">Suanna Doe</a></h4>
                            <span class="size-13 text-muted">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                <span class="text-success size-11">12 day ago</span>
                            </span>
                        </div><!-- /discussion item -->

                        <div class="clearfix margin-bottom-20"><!-- discussion item -->
                            <img class="thumbnail pull-left" src="assets/images/demo/people/300x300/7-min.jpg" width="60" height="60" alt="">
                            <h4 class="size-15 nomargin noborder nopadding bold"><a href="#">Felicia Doe</a></h4>
                            <span class="size-13 text-muted">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                <span class="text-success size-11">1 month ago</span>
                            </span>
                        </div><!-- /discussion item -->

                    </div><div class="slimScrollBar" style="width: 5px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; height: 138.889px; background: rgb(51, 51, 51);"></div><div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: block; border-radius: 7px; opacity: 0.05; z-index: 90; right: 1px; background: rgb(234, 234, 234);"></div></div>
                </div>

                <div class="box-footer">
                    <!-- INLINE SEARCH -->
                    <div class="inline-search clearfix">
                        <form action="#" method="get" class="widget_search nomargin">
                            <input type="search" placeholder="Search Discussion..." name="s" class="serch-input">
                            <button type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                            <div class="clear"></div>
                        </form>
                    </div>
                    <!-- /INLINE SEARCH -->

                </div>

            </div>
            <!-- /DISCUSSIONS -->

            <!-- NOTIFICATIONS -->
            <div class="col-md-6 col-sm-6">

                <div class="box-inner">
                    <h3>
                        <a class="pull-right size-11 text-warning" href="#">VIEW ALL</a>
                        NOTIFICATIONS
                    </h3>
                    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 250px;"><div class="height-250 slimscroll" data-always-visible="true" data-size="5px" data-position="right" data-opacity="0.4" disable-body-scroll="true" style="overflow: hidden; width: auto; height: 250px;">

                        <div class="clearfix margin-bottom-20"><!-- notification item -->
                            <span class="label label-success label-square pull-left">
                                <i class="fa fa-comment"></i>
                            </span>
                            <span class="size-14 text-muted"><b>New Comment</b>: <a href="blog-single-default.html">Lorem ipsum Dolor</a></span>
                        </div><!-- /notification item -->

                        <div class="clearfix margin-bottom-20"><!-- notification item -->
                            <span class="label label-danger label-square pull-left">
                                <i class="glyphicon glyphicon-remove"></i>
                            </span>
                            <span class="size-14 text-muted"><b>Rejected</b>: <a href="#">Joana Doe</a> rejected friendship</span>
                        </div><!-- /notification item -->

                        <div class="clearfix margin-bottom-20"><!-- notification item -->
                            <span class="label label-warning label-square pull-left">
                                <i class="fa fa-warning"></i>
                            </span>
                            <span class="size-14 text-muted"><b>Warning</b>: Lorem ipsum Dolor</span>
                        </div><!-- /notification item -->

                        <div class="clearfix margin-bottom-20"><!-- notification item -->
                            <span class="label label-info label-square pull-left">
                                <i class="fa fa-info-circle"></i>
                            </span>
                            <span class="size-14 text-muted"><b>Info</b>: Lorem ipsum Dolor</span>
                        </div><!-- /notification item -->

                        <div class="clearfix margin-bottom-20"><!-- notification item -->
                            <span class="label label-primary label-square pull-left">
                                <i class="fa fa-check"></i>
                            </span>
                            <span class="size-14 text-muted"><b>Primary</b>: Lorem ipsum Dolor</span>
                        </div><!-- /notification item -->

                        <div class="clearfix margin-bottom-20"><!-- notification item -->
                            <span class="label label-default label-square pull-left">
                                <i class="fa fa-heart-o"></i>
                            </span>
                            <span class="size-14 text-muted"><b>Default</b>: Lorem ipsum Dolor</span>
                        </div><!-- /notification item -->

                        <div class="clearfix margin-bottom-20"><!-- notification item -->
                            <span class="label label-purple label-square pull-left">
                                <i class="fa fa-clock-o"></i>
                            </span>
                            <span class="size-14 text-muted"><b>Various</b>: Lorem ipsum Dolor</span>
                        </div><!-- /notification item -->

                    </div><div class="slimScrollBar" style="width: 5px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; height: 198.413px; background: rgb(51, 51, 51);"></div><div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: block; border-radius: 7px; opacity: 0.05; z-index: 90; right: 1px; background: rgb(234, 234, 234);"></div></div>
                </div>

                <div class="box-footer">
                    <!-- INLINE SEARCH -->
                    <div class="inline-search clearfix">
                        <form action="#" method="get" class="widget_search nomargin">
                            <input type="search" placeholder="Search notification..." name="s" class="serch-input">
                            <button type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                            <div class="clear"></div>
                        </form>
                    </div>
                    <!-- /INLINE SEARCH -->

                </div>

            </div>
            <!-- /NOTIFICATIONS -->

        </div>


    </div>



<?= $this->render('_footer'); ?>



