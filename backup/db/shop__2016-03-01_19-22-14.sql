-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_assignment_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('root',1,1439037301);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('admin',1,'Администратор',NULL,NULL,1439037301,1439037301),('admin/admin-permission',2,'Администрирование | Управление привилегиями',NULL,NULL,1439297538,1439297538),('admin/admin-role',2,'Администрирование | Управление ролями',NULL,NULL,1439297538,1439297538),('admin/checker',2,'Администрирование | Проверка системы',NULL,NULL,1439297538,1439297538),('admin/clear',2,'Администрирование | Удаление временных файлов',NULL,NULL,1439297538,1439297538),('admin/db',2,'Администрирование | Удаление временных файлов',NULL,NULL,1439297538,1439297538),('admin/email',2,'Администрирование | Тестирование отправки email сообщений с сайта',NULL,NULL,1439297538,1439297538),('admin/gii',2,'Администрирование | Генератор кода',NULL,NULL,1439297538,1439297538),('admin/index',2,'Администрирование | Рабочий стол',NULL,NULL,1443369655,1443369655),('admin/info',2,'Администрирование | Информация о системе',NULL,NULL,1439297538,1439297538),('admin/ssh',2,'Администрирование | Ssh консоль',NULL,NULL,1439297538,1439297538),('approved',1,'Подтвержденный пользователь',NULL,NULL,1443369238,1443369238),('buy-shop-type-price-1',2,'Права на покупку по цене: \'Базовая цена\'',NULL,NULL,1444381054,1444381054),('cms.admin-access',2,'Доступ к системе администрирования',NULL,NULL,1439037301,1439037301),('cms.admin-dashboards-edit',2,'Access to edit dashboards',NULL,NULL,1455901159,1455901159),('cms.controll-panel-access',2,'Доступ к панеле управления сайтом',NULL,NULL,1439037301,1439037301),('cms.edit-view-files',2,'The ability to edit view files',NULL,NULL,1446933396,1446933396),('cms.elfinder-additional-files',2,'Доступ ко всем файлам',NULL,NULL,1439037301,1439037301),('cms.elfinder-common-public-files',2,'Доступ к общим публичным файлам',NULL,NULL,1439037301,1439037301),('cms.elfinder-user-files',2,'Доступ к личным файлам',NULL,NULL,1439037301,1439037301),('cms.model-create',2,'Возможность создания записей',NULL,NULL,1439037301,1439037301),('cms.model-delete',2,'Удаление записей',NULL,NULL,1439037301,1439037301),('cms.model-delete-own',2,'Удаление своих записей','isAuthor',NULL,1439037301,1439037301),('cms.model-update',2,'Обновление данных записей',NULL,NULL,1439037301,1439037301),('cms.model-update-advanced',2,'Обновление дополнительных данных записей',NULL,NULL,1439037301,1439037301),('cms.model-update-advanced-own',2,'Обновление дополнительных данных своих записей','isAuthor',NULL,1439037301,1439037301),('cms.model-update-own',2,'Обновление данных своих записей','isAuthor',NULL,1439037301,1439037301),('cms.user-full-edit',2,'The ability to manage user groups',NULL,NULL,1456849290,1456849290),('cms/admin-cms-agent',2,'Администрирование | Управление агентами',NULL,NULL,1439297538,1439297538),('cms/admin-cms-content',2,'Администрирование | Управление контентом',NULL,NULL,1443688294,1443688294),('cms/admin-cms-content-element',2,'Администрирование | Элементы',NULL,NULL,1443686861,1443686861),('cms/admin-cms-content-element__1',2,'Администрирование | Публикации',NULL,NULL,1443633788,1443633788),('cms/admin-cms-content-element__2',2,'Администрирование | Товары',NULL,NULL,1443604421,1443604421),('cms/admin-cms-content-element__3',2,'Администрирование | Брэнды',NULL,NULL,1443604272,1443604272),('cms/admin-cms-content-element__4',2,'Администрирование | Слайды',NULL,NULL,1443606853,1443606853),('cms/admin-cms-content-element__5',2,'Администрирование | Music',NULL,NULL,1444824004,1444824004),('cms/admin-cms-content-element__6',2,'Администрирование | Марка мотоцикла',NULL,NULL,1445101817,1445101817),('cms/admin-cms-content-element__7',2,'Администрирование | Тип мотоцикла',NULL,NULL,1445102054,1445102054),('cms/admin-cms-content-element__8',2,'Администрирование | Мототехника',NULL,NULL,1445115585,1445115585),('cms/admin-cms-content-property',2,'Администрирование | Управление свойствами',NULL,NULL,1443688297,1443688297),('cms/admin-cms-content-property-enum',2,'Администрирование | Управление значениями свойств',NULL,NULL,1444924083,1444924083),('cms/admin-cms-content-type',2,'Администрирование | Управление контентом',NULL,NULL,1439297538,1439297538),('cms/admin-cms-lang',2,'Администрирование | Управление языками',NULL,NULL,1439297538,1439297538),('cms/admin-cms-site',2,'Администрирование | Управление сайтами',NULL,NULL,1439297538,1439297538),('cms/admin-cms-tree-type',2,'Администрирование | Настройки разделов',NULL,NULL,1439297538,1439297538),('cms/admin-cms-tree-type-property',2,'Администрирование | Управление свойствами раздела',NULL,NULL,1444824658,1444824658),('cms/admin-cms-user-universal-property',2,'Администрирование | Управление свойствами пользователя',NULL,NULL,1444926976,1444926976),('cms/admin-component-settings',2,'Администрирование | Управление настройками компонентов',NULL,NULL,1443369661,1443369661),('cms/admin-file-manager',2,'Администрирование | Файловый менеджер',NULL,NULL,1439297538,1439297538),('cms/admin-marketplace',2,'Администрирование | Маркетплейс',NULL,NULL,1439297538,1439297538),('cms/admin-profile',2,'Администрирование | Личный кабинет',NULL,NULL,1443430967,1443430967),('cms/admin-search-phrase',2,'Администрирование | Список переходов',NULL,NULL,1444205747,1444205747),('cms/admin-search-phrase-group',2,'Администрирование | Поисковые фразы',NULL,NULL,1445346545,1445346545),('cms/admin-settings',2,'Администрирование | Управление настройками',NULL,NULL,1439297538,1439297538),('cms/admin-storage',2,'Администрирование | Управление серверами',NULL,NULL,1439297538,1439297538),('cms/admin-storage-files',2,'Администрирование | Управление файлами хранилища',NULL,NULL,1439297538,1439297538),('cms/admin-tools',2,'Администрирование | Управление шаблоном',NULL,NULL,1446933450,1446933450),('cms/admin-tree',2,'Администрирование | Дерево страниц',NULL,NULL,1439297538,1439297538),('cms/admin-tree-menu',2,'Администрирование | Управление позициями меню',NULL,NULL,1439297538,1439297538),('cms/admin-universal-component-settings',2,'Администрирование | Управление настройками компонента',NULL,NULL,1443708675,1443708675),('cms/admin-user',2,'Администрирование | Управление пользователями',NULL,NULL,1439297538,1439297538),('cms/admin-user-auth-client',2,'Администрирование | Управление социальными профилями',NULL,NULL,1444850797,1444850797),('cms/admin-user-email',2,'Администрирование | Управление email адресами',NULL,NULL,1439297538,1439297538),('cms/admin-user-phone',2,'Администрирование | Управление телефонами',NULL,NULL,1439297538,1439297538),('editor',1,'Редактор (доступ а администрированию)',NULL,NULL,1439037301,1439037301),('form2/admin-form',2,'Администрирование | Управление формами',NULL,NULL,1439297538,1439297538),('form2/admin-form-property',2,'Администрирование | Управление свойствами',NULL,NULL,1445106311,1445106311),('form2/admin-form-send',2,'Администрирование | Сообщения с форм',NULL,NULL,1439297538,1439297538),('guest',1,'Неавторизованный пользователь',NULL,NULL,1439037301,1439037301),('kladr/admin-kladr-location',2,'Администрирование | База местоположений',NULL,NULL,1444329702,1444329702),('logDbTarget/admin-log-db-target',2,'Администрирование | Управление логами',NULL,NULL,1445336472,1445336472),('manager',1,'Менеджер (доступ а администрированию)',NULL,NULL,1439037301,1439037301),('measure/admin-measure',2,'Администрирование | Единицы измерений',NULL,NULL,1443604436,1443604436),('money/admin-currency',2,'Администрирование | Управление валютами',NULL,NULL,1443782201,1443782201),('reviews2.add.review',2,'Добавление отзывов',NULL,NULL,1442576268,1442576268),('reviews2/admin-message',2,'Администрирование | Управление отзывами',NULL,NULL,1439297538,1439297538),('root',1,'Суперпользователь',NULL,NULL,1439037301,1439037301),('shop-discount-',2,'Группы пользователей, которые могут воспользоваться скидкой: \'\'',NULL,NULL,1444512357,1444512357),('shop-discount-1',2,'Группы пользователей, которые могут воспользоваться скидкой: \'постоянным покупателям\'',NULL,NULL,1444509288,1444509288),('shop-type-price-1',2,'Права на просмотр цены: \'Базовая цена\'',NULL,NULL,1444380984,1444380984),('shop/admin-affiliate',2,'Администрирование | Аффилиаты',NULL,NULL,1443430053,1443430053),('shop/admin-affiliate-plan',2,'Администрирование | Планы коммисий аффилиатов',NULL,NULL,1443633741,1443633741),('shop/admin-affiliate-tier',2,'Администрирование | Пирамида',NULL,NULL,1443633742,1443633742),('shop/admin-basket',2,'Администрирование | Позиции корзины',NULL,NULL,1454592382,1454592382),('shop/admin-buyer',2,'Администрирование | Покупатели',NULL,NULL,1443369404,1443369404),('shop/admin-buyer-user',2,'Администрирование | Покупатели',NULL,NULL,1443717109,1443717109),('shop/admin-cms-content-element',2,'Администрирование | Товары',NULL,NULL,1443453760,1443453760),('shop/admin-content',2,'Администрирование | Настройка контента',NULL,NULL,1443369417,1443369417),('shop/admin-delivery',2,'Администрирование | Службы доставки',NULL,NULL,1443460481,1443460481),('shop/admin-discount',2,'Администрирование | Скидки на товар',NULL,NULL,1444469618,1444469618),('shop/admin-discsave',2,'Администрирование | Накопительные скидки',NULL,NULL,1444512070,1444512070),('shop/admin-extra',2,'Администрирование | Наценки',NULL,NULL,1444206980,1444206980),('shop/admin-fuser',2,'Администрирование | Корзины',NULL,NULL,1443369405,1443369405),('shop/admin-order',2,'Администрирование | Заказы',NULL,NULL,1443369384,1443369384),('shop/admin-order-status',2,'Администрирование | Статусы заказов',NULL,NULL,1443629534,1443629534),('shop/admin-pay-system',2,'Администрирование | Платежные системы',NULL,NULL,1443433770,1443433770),('shop/admin-person-type',2,'Администрирование | Типы плательщиков',NULL,NULL,1443433534,1443433534),('shop/admin-person-type-property',2,'Администрирование | Управление свойствами плательщика',NULL,NULL,1443454999,1443454999),('shop/admin-report-order',2,'Администрирование | Отчеты по заказам',NULL,NULL,1446391847,1446391847),('shop/admin-report-product',2,'Администрирование | Отчеты по заказам',NULL,NULL,1454242450,1454242450),('shop/admin-store',2,'Администрирование | Склады',NULL,NULL,1443632538,1443632538),('shop/admin-tax',2,'Администрирование | Список налогов',NULL,NULL,1444292033,1444292033),('shop/admin-tax-rate',2,'Администрирование | Ставки налогов',NULL,NULL,1444297863,1444297863),('shop/admin-type-price',2,'Администрирование | Типы цен',NULL,NULL,1443433771,1443433771),('shop/admin-user-account',2,'Администрирование | Счета покупателей',NULL,NULL,1443369401,1443369401),('shop/admin-vat',2,'Администрирование | VAT_rates',NULL,NULL,1445550781,1445550781),('shop/admin-viewed-product',2,'Администрирование | Просмотренные товары',NULL,NULL,1443805928,1443805928),('user',1,'Зарегистрированный пользователь',NULL,NULL,1439037301,1439037301),('view-shop-type-price-1',2,'Права на просмотр цен: \'Базовая цена\'',NULL,NULL,1444381054,1444381054),('view-shop-type-price-2',2,'Права на просмотр цен: \'Розничная цена\'',NULL,NULL,1444381952,1444381952),('view-shop-type-price-3',2,'Права на просмотр цен: \'Оптовая цена\'',NULL,NULL,1444381976,1444381976),('view-shop-type-price-5',2,'Права на просмотр цен \'Цена со скидкой\'',NULL,NULL,1449327704,1449327704);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('root','admin'),('root','admin/admin-permission'),('root','admin/admin-role'),('root','admin/checker'),('root','admin/clear'),('root','admin/db'),('root','admin/email'),('root','admin/gii'),('root','admin/index'),('root','admin/info'),('root','admin/ssh'),('root','approved'),('root','buy-shop-type-price-1'),('admin','cms.admin-access'),('editor','cms.admin-access'),('manager','cms.admin-access'),('root','cms.admin-access'),('root','cms.admin-dashboards-edit'),('admin','cms.controll-panel-access'),('editor','cms.controll-panel-access'),('manager','cms.controll-panel-access'),('root','cms.controll-panel-access'),('root','cms.edit-view-files'),('admin','cms.elfinder-additional-files'),('root','cms.elfinder-additional-files'),('admin','cms.elfinder-common-public-files'),('editor','cms.elfinder-common-public-files'),('manager','cms.elfinder-common-public-files'),('root','cms.elfinder-common-public-files'),('admin','cms.elfinder-user-files'),('editor','cms.elfinder-user-files'),('manager','cms.elfinder-user-files'),('root','cms.elfinder-user-files'),('admin','cms.model-create'),('editor','cms.model-create'),('manager','cms.model-create'),('root','cms.model-create'),('admin','cms.model-delete'),('cms.model-delete-own','cms.model-delete'),('manager','cms.model-delete'),('root','cms.model-delete'),('editor','cms.model-delete-own'),('root','cms.model-delete-own'),('admin','cms.model-update'),('cms.model-update-own','cms.model-update'),('manager','cms.model-update'),('root','cms.model-update'),('admin','cms.model-update-advanced'),('cms.model-update-advanced-own','cms.model-update-advanced'),('root','cms.model-update-advanced'),('root','cms.model-update-advanced-own'),('editor','cms.model-update-own'),('root','cms.model-update-own'),('root','cms.user-full-edit'),('root','cms/admin-cms-agent'),('root','cms/admin-cms-content'),('root','cms/admin-cms-content-element'),('admin','cms/admin-cms-content-element__1'),('manager','cms/admin-cms-content-element__1'),('root','cms/admin-cms-content-element__1'),('admin','cms/admin-cms-content-element__2'),('manager','cms/admin-cms-content-element__2'),('root','cms/admin-cms-content-element__2'),('root','cms/admin-cms-content-element__3'),('admin','cms/admin-cms-content-element__4'),('manager','cms/admin-cms-content-element__4'),('root','cms/admin-cms-content-element__4'),('root','cms/admin-cms-content-element__5'),('root','cms/admin-cms-content-element__6'),('root','cms/admin-cms-content-element__7'),('admin','cms/admin-cms-content-element__8'),('manager','cms/admin-cms-content-element__8'),('root','cms/admin-cms-content-element__8'),('root','cms/admin-cms-content-property'),('root','cms/admin-cms-content-property-enum'),('root','cms/admin-cms-content-type'),('root','cms/admin-cms-lang'),('root','cms/admin-cms-site'),('root','cms/admin-cms-tree-type'),('root','cms/admin-cms-tree-type-property'),('root','cms/admin-cms-user-universal-property'),('root','cms/admin-component-settings'),('admin','cms/admin-file-manager'),('manager','cms/admin-file-manager'),('root','cms/admin-file-manager'),('root','cms/admin-marketplace'),('root','cms/admin-profile'),('admin','cms/admin-search-phrase'),('manager','cms/admin-search-phrase'),('root','cms/admin-search-phrase'),('admin','cms/admin-search-phrase-group'),('manager','cms/admin-search-phrase-group'),('root','cms/admin-search-phrase-group'),('root','cms/admin-settings'),('root','cms/admin-storage'),('admin','cms/admin-storage-files'),('manager','cms/admin-storage-files'),('root','cms/admin-storage-files'),('root','cms/admin-tools'),('admin','cms/admin-tree'),('manager','cms/admin-tree'),('root','cms/admin-tree'),('root','cms/admin-tree-menu'),('root','cms/admin-universal-component-settings'),('root','cms/admin-user'),('root','cms/admin-user-auth-client'),('root','cms/admin-user-email'),('root','cms/admin-user-phone'),('root','editor'),('root','form2/admin-form'),('root','form2/admin-form-property'),('admin','form2/admin-form-send'),('editor','form2/admin-form-send'),('manager','form2/admin-form-send'),('root','form2/admin-form-send'),('root','guest'),('root','kladr/admin-kladr-location'),('root','logDbTarget/admin-log-db-target'),('root','manager'),('root','measure/admin-measure'),('root','money/admin-currency'),('admin','reviews2.add.review'),('approved','reviews2.add.review'),('editor','reviews2.add.review'),('guest','reviews2.add.review'),('manager','reviews2.add.review'),('root','reviews2.add.review'),('user','reviews2.add.review'),('root','reviews2/admin-message'),('root','shop-discount-'),('root','shop-discount-1'),('root','shop-type-price-1'),('root','shop/admin-affiliate'),('root','shop/admin-affiliate-plan'),('root','shop/admin-affiliate-tier'),('manager','shop/admin-basket'),('root','shop/admin-basket'),('manager','shop/admin-buyer'),('root','shop/admin-buyer'),('root','shop/admin-buyer-user'),('editor','shop/admin-cms-content-element'),('manager','shop/admin-cms-content-element'),('root','shop/admin-cms-content-element'),('root','shop/admin-content'),('root','shop/admin-delivery'),('root','shop/admin-discount'),('root','shop/admin-discsave'),('root','shop/admin-extra'),('root','shop/admin-fuser'),('admin','shop/admin-order'),('manager','shop/admin-order'),('root','shop/admin-order'),('root','shop/admin-order-status'),('root','shop/admin-pay-system'),('root','shop/admin-person-type'),('root','shop/admin-person-type-property'),('manager','shop/admin-report-order'),('root','shop/admin-report-order'),('manager','shop/admin-report-product'),('root','shop/admin-report-product'),('root','shop/admin-store'),('root','shop/admin-tax'),('root','shop/admin-tax-rate'),('root','shop/admin-type-price'),('root','shop/admin-user-account'),('root','shop/admin-vat'),('root','shop/admin-viewed-product'),('root','user'),('admin','view-shop-type-price-1'),('approved','view-shop-type-price-1'),('editor','view-shop-type-price-1'),('guest','view-shop-type-price-1'),('manager','view-shop-type-price-1'),('root','view-shop-type-price-1'),('user','view-shop-type-price-1'),('admin','view-shop-type-price-2'),('approved','view-shop-type-price-2'),('editor','view-shop-type-price-2'),('guest','view-shop-type-price-2'),('manager','view-shop-type-price-2'),('root','view-shop-type-price-2'),('user','view-shop-type-price-2'),('root','view-shop-type-price-3'),('admin','view-shop-type-price-5'),('approved','view-shop-type-price-5'),('editor','view-shop-type-price-5'),('guest','view-shop-type-price-5'),('manager','view-shop-type-price-5'),('root','view-shop-type-price-5'),('user','view-shop-type-price-5');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
INSERT INTO `auth_rule` VALUES ('isAuthor','O:26:\"skeeks\\cms\\rbac\\AuthorRule\":3:{s:4:\"name\";s:8:\"isAuthor\";s:9:\"createdAt\";i:1439037301;s:9:\"updatedAt\";i:1439037301;}',1439037301,1439037301);
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_agent`
--

DROP TABLE IF EXISTS `cms_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_exec_at` int(11) DEFAULT NULL,
  `next_exec_at` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text,
  `agent_interval` int(11) NOT NULL DEFAULT '86400',
  `priority` int(11) NOT NULL DEFAULT '100',
  `active` char(1) NOT NULL DEFAULT 'Y',
  `is_period` char(1) NOT NULL DEFAULT 'Y',
  `is_running` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `last_exec_at` (`last_exec_at`),
  KEY `next_exec_at` (`next_exec_at`),
  KEY `agent_interval` (`agent_interval`),
  KEY `priority` (`priority`),
  KEY `active` (`active`),
  KEY `is_period` (`is_period`),
  KEY `is_running` (`is_running`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Агенты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_agent`
--

LOCK TABLES `cms_agent` WRITE;
/*!40000 ALTER TABLE `cms_agent` DISABLE KEYS */;
INSERT INTO `cms_agent` VALUES (1,1456846109,1456856909,'cms/db/db-refresh','Инвалидация кэша структуры таблиц',10800,100,'Y','N','N'),(2,1456798820,1456885220,'cms/utils/clear-runtimes','Чистка временных диррикторий',86400,100,'Y','N','N'),(3,1456798821,1456885221,'cms/backup/db-execute','Бэкап базы данных',86400,100,'Y','N','N'),(4,1456798821,1456885221,'cms/utils/clear-search-phrase','Чистка поисковых запросов',86400,100,'Y','N','N'),(5,1456846109,1456856909,'logDbTarget/agents/clear-logs','Чистка mysql логов',10800,100,'Y','N','N');
/*!40000 ALTER TABLE `cms_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_component_settings`
--

DROP TABLE IF EXISTS `cms_component_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_component_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `value` longtext,
  `site_code` char(15) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lang_code` char(5) DEFAULT NULL,
  `namespace` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `component` (`component`),
  KEY `site_code` (`site_code`),
  KEY `user_id` (`user_id`),
  KEY `lang_code` (`lang_code`),
  KEY `namespace` (`namespace`),
  CONSTRAINT `cms_component_settings_lang_code` FOREIGN KEY (`lang_code`) REFERENCES `cms_lang` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_component_settings_site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_component_settings_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_settings_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_settings_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_component_settings`
--

LOCK TABLES `cms_component_settings` WRITE;
/*!40000 ALTER TABLE `cms_component_settings` DISABLE KEYS */;
INSERT INTO `cms_component_settings` VALUES (1,1,1,1439039222,1439039222,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"4\",\"active\":\"Y\",\"level\":\"\",\"label\":\"\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"3\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/sub-catalog\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":3,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"TreeMenuCmsWidget-sub-catalog-main\"},\"namespace\":\"TreeMenuCmsWidget-sub-catalog-main\"}',NULL,NULL,NULL,'TreeMenuCmsWidget-sub-catalog-main'),(2,1,1,1442582746,1446591419,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"Новости и статьи\",\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":\"\",\"limit\":\"4\",\"active\":\"\",\"createdBy\":[],\"content_ids\":[\"1\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"@template/widgets/ContentElementsCmsWidget/articles-footer\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-footer\"},\"namespace\":\"ContentElementsCmsWidget-footer\"}',NULL,NULL,NULL,'ContentElementsCmsWidget-footer'),(3,1,1,1442841137,1442841137,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"Товары\",\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"N\",\"enabledCurrentTreeChildAll\":\"N\",\"tree_ids\":\"\",\"limit\":\"0\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"2\"],\"enabledActiveTime\":\"Y\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/products\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-home\"},\"namespace\":\"ContentElementsCmsWidget-home\"}',NULL,NULL,NULL,'ContentElementsCmsWidget-home'),(4,1,1,1442849079,1456745637,'skeeks\\cms\\components\\Cms','{\"adminEmail\":\"admin@skeeks.com\",\"notifyAdminEmailsHidden\":\"client-orders@skeeks.com\",\"notifyAdminEmails\":\"\",\"appName\":\"SkeekS SHOP\",\"noImageUrl\":\"http://vk.com/images/deactivated_100.gif\",\"userPropertyTypes\":[],\"registerRoles\":[\"user\"],\"languageCode\":\"ru\",\"passwordResetTokenExpire\":\"3600\",\"enabledHitAgents\":\"Y\",\"hitAgentsInterval\":\"60\",\"enabledHttpAuth\":\"N\",\"enabledHttpAuthAdmin\":\"N\",\"httpAuthLogin\":\"semenov\",\"httpAuthPassword\":\"skeeks\",\"debugEnabled\":\"N\",\"debugAllowedIPs\":\"*\",\"giiEnabled\":\"N\",\"giiAllowedIPs\":\"*\",\"licenseKey\":\"\",\"templatesDefault\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/views\":[\"@app/templates/default\"]}}},\"templates\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/views\":[\"@app/templates/default\"]}}},\"template\":\"default\",\"emailTemplatesDefault\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/mail\":[\"@app/mail\",\"@skeeks/cms/mail\"]}}},\"emailTemplates\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/mail\":[\"@app/mail\",\"@skeeks/cms/mail\"]}}},\"emailTemplate\":\"default\",\"defaultAttributes\":{\"adminEmail\":\"admin@skeeks.com\",\"notifyAdminEmailsHidden\":\"\",\"notifyAdminEmails\":\"\",\"appName\":null,\"noImageUrl\":null,\"userPropertyTypes\":[],\"registerRoles\":[\"user\"],\"languageCode\":\"ru\",\"passwordResetTokenExpire\":3600,\"enabledHitAgents\":\"Y\",\"hitAgentsInterval\":60,\"enabledHttpAuth\":\"N\",\"enabledHttpAuthAdmin\":\"N\",\"httpAuthLogin\":\"\",\"httpAuthPassword\":\"\",\"debugEnabled\":\"N\",\"debugAllowedIPs\":\"*\",\"giiEnabled\":\"N\",\"giiAllowedIPs\":\"*\",\"licenseKey\":\"\",\"templatesDefault\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/views\":[\"@app/templates/default\"]}}},\"templates\":[],\"template\":\"default\",\"emailTemplatesDefault\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/mail\":[\"@app/mail\",\"@skeeks/cms/mail\"]}}},\"emailTemplates\":[],\"emailTemplate\":\"default\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(5,1,1,1442924340,1445552823,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"1\",\"active\":\"Y\",\"level\":\"0\",\"label\":\"Верхнее меню\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"4\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/menu-top.php\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":3,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"menu-top\"},\"namespace\":\"menu-top\"}',NULL,NULL,NULL,'menu-top'),(6,1,1,1442927188,1456747734,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"priority\",\"order\":\"4\",\"label\":\"\",\"enabledSearchParams\":\"N\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"N\",\"enabledCurrentTreeChildAll\":\"N\",\"tree_ids\":\"\",\"limit\":\"0\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"4\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/slides\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-slides\"},\"namespace\":\"ContentElementsCmsWidget-slides\"}',NULL,NULL,NULL,'ContentElementsCmsWidget-slides'),(7,1,1,1442932192,1456745664,'skeeks\\cms\\assetsAuto\\SettingsAssetsAutoCompress','{\"enabled\":\"0\",\"jsCompress\":\"1\",\"jsCompressFlaggedComments\":\"1\",\"cssCompress\":\"1\",\"cssFileCompile\":\"1\",\"cssFileRemouteCompile\":\"0\",\"cssFileCompress\":\"0\",\"cssFileBottom\":\"0\",\"cssFileBottomLoadOnJs\":\"0\",\"jsFileCompile\":\"1\",\"jsFileRemouteCompile\":\"0\",\"jsFileCompress\":\"1\",\"jsFileCompressFlaggedComments\":\"1\",\"enabledPreloader\":\"0\",\"preloaderBodyHtml\":\"<div class=\\\"sx-preloader\\\">\\r\\n    <div id=\\\"sx-loaderImage\\\"></div>\\r\\n</div>\",\"preloaderBodyCss\":\".sx-preloader{\\r\\n  display: table;\\r\\n  background: #1e1e1e;\\r\\n  z-index: 999999;\\r\\n  position: fixed;\\r\\n  height: 100%;\\r\\n  width: 100%;\\r\\n  left: 0;\\r\\n  top: 0;\\r\\n}\\r\\n\\r\\n#sx-loaderImage {\\r\\n  display: table-cell;\\r\\n  vertical-align: middle;\\r\\n  overflow: hidden;\\r\\n  text-align: center;\\r\\n}\\r\\n\\r\\n\\r\\n#sx-canvas {\\r\\n  display: table-cell;\\r\\n  vertical-align: middle;\\r\\n  margin: 0 auto;\\r\\n}\",\"preloaderBodyJs\":\"\\tjQuery(window).load(function(){\\r\\n\\t\\tjQuery(\'.sx-preloader\').fadeOut(\'slow\',function(){jQuery(this).remove();});\\r\\n\\t});\",\"defaultAttributes\":{\"enabled\":false,\"jsCompress\":true,\"jsCompressFlaggedComments\":true,\"cssCompress\":true,\"cssFileCompile\":true,\"cssFileRemouteCompile\":false,\"cssFileCompress\":false,\"cssFileBottom\":false,\"cssFileBottomLoadOnJs\":false,\"jsFileCompile\":true,\"jsFileRemouteCompile\":false,\"jsFileCompress\":true,\"jsFileCompressFlaggedComments\":true,\"enabledPreloader\":false,\"preloaderBodyHtml\":\"<div class=\\\"sx-preloader\\\">\\n    <div id=\\\"sx-loaderImage\\\"></div>\\n</div>\",\"preloaderBodyCss\":\".sx-preloader{\\n  display: table;\\n  background: #1e1e1e;\\n  z-index: 999999;\\n  position: fixed;\\n  height: 100%;\\n  width: 100%;\\n  left: 0;\\n  top: 0;\\n}\\n\\n#sx-loaderImage {\\n  display: table-cell;\\n  vertical-align: middle;\\n  overflow: hidden;\\n  text-align: center;\\n}\\n\\n\\n#sx-canvas {\\n  display: table-cell;\\n  vertical-align: middle;\\n  margin: 0 auto;\\n}\",\"preloaderBodyJs\":\"\\tjQuery(window).load(function(){\\n\\t\\tjQuery(\'.sx-preloader\').fadeOut(\'slow\',function(){jQuery(this).remove();});\\n\\t});\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(8,1,1,1443274700,1445106497,'skeeks\\modules\\cms\\form2\\cmsWidgets\\form2\\FormWidget','{\"form_id\":\"2\",\"form_code\":null,\"btnSubmit\":\"Отправить\",\"btnSubmitClass\":\"btn btn-primary\",\"modelForm\":null,\"viewFile\":\"default\",\"defaultAttributes\":{\"form_id\":null,\"form_code\":null,\"btnSubmit\":\"Отправить\",\"btnSubmitClass\":\"btn btn-primary\",\"modelForm\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,'FormWidget-header-feedback'),(9,1,1,1443606781,1445556036,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"9\",\"active\":\"Y\",\"level\":\"\",\"label\":\"Каталог\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"4\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/left-menu\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":4,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"TreeMenuCmsWidget-leftmenu\"},\"namespace\":\"TreeMenuCmsWidget-leftmenu\"}',NULL,NULL,NULL,'TreeMenuCmsWidget-leftmenu'),(10,1,1,1443782348,1443782348,'skeeks\\modules\\cms\\money\\components\\money\\Money','{\"currencyCode\":\"RUB\",\"defaultAttributes\":{\"currencyCode\":\"RUB\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(11,1,1,1444118553,1444121360,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"9\",\"active\":\"Y\",\"level\":\"2\",\"label\":\"Разделы каталога\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"3\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/catalog-pages.php\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":3,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"catalog-pages\"},\"namespace\":\"catalog-pages\"}',NULL,NULL,NULL,'catalog-pages'),(12,1,1,1444126587,1445105425,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"9\",\"active\":\"Y\",\"level\":\"2\",\"label\":\"Разделы каталога\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"3\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/catalog-pages.php\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":3,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"home-catalog-pages\"},\"namespace\":\"home-catalog-pages\"}',NULL,NULL,NULL,'home-catalog-pages'),(13,1,1,1444128113,1444128458,'skeeks\\cms\\cmsWidgets\\text\\TextCmsWidget','{\"text\":\"\\t\\t\\t\\t<!-- Footer Logo -->\\r\\n                                <h4 class=\\\"letter-spacing-1\\\">Оплата заказа удобной платежной системой</h4>\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\">\\r\\n                                           <img src=\\\"/img/trust_left.png\\\">\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\t\\t\\t\\t\\t\\r\\n\\r\\n\\r\\n\\t\\t\\t\\t<h4 class=\\\"letter-spacing-1\\\">Социальные сети</h4>\\r\\n\\r\\n\\t\\t\\t\\t<!-- Small Description -->\\r\\n\\t\\t\\t\\t<p>Вступайте в наши группы и соц сети.</p>\\r\\n\\r\\n\\t\\t\\t\\t<!-- Social Icons -->\\r\\n\\t\\t\\t\\t<div class=\\\"margin-top-20\\\">\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"social-icon social-icon-border social-facebook pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\" title=\\\"Facebook\\\">\\r\\n\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-facebook\\\"></i>\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-facebook\\\"></i>\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"social-icon social-icon-border social-twitter pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\" title=\\\"Twitter\\\">\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-twitter\\\"></i>\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-twitter\\\"></i>\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"social-icon social-icon-border social-gplus pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\" title=\\\"Google plus\\\">\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-gplus\\\"></i>\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-gplus\\\"></i>\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"social-icon social-icon-border social-linkedin pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\" title=\\\"Linkedin\\\">\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-linkedin\\\"></i>\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-linkedin\\\"></i>\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"social-icon social-icon-border social-rss pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\" title=\\\"Rss\\\">\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-rss\\\"></i>\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-rss\\\"></i>\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\r\\n\\t\\t\\t\\t</div>\\r\\n\\t\\t\\t\\t<!-- /Social Icons -->\",\"defaultAttributes\":{\"text\":\"\",\"defaultAttributes\":[],\"namespace\":\"text-footer-social\"},\"namespace\":\"text-footer-social\"}',NULL,NULL,NULL,'text-footer-social'),(16,1,1,1444327637,1445439462,'skeeks\\cms\\components\\CmsSettings','{\"sessionType\":\"file\",\"defaultAttributes\":{\"sessionType\":\"file\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(17,1,1,1444728427,1446675953,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"N\",\"pageSize\":\"9\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"\",\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":\"\",\"limit\":\"0\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"2\",\"8\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/products\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-second\"},\"namespace\":\"ContentElementsCmsWidget-second\"}',NULL,NULL,NULL,'ContentElementsCmsWidget-second'),(18,1,1,1444731273,1445436106,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"8\",\"searchModelAttributes\":\"\",\"realatedProperties\":[\"volume\",\"mileage\",\"year\",\"marka\",\"type\",\"color\"],\"type_price_id\":\"4\",\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":{\"volumeSxrangeFrom\":\"\",\"volumeSxrangeTo\":\"\",\"volume\":\"\",\"mileageSxrangeFrom\":\"\",\"mileageSxrangeTo\":\"\",\"mileage\":\"\",\"yearSxrangeFrom\":\"\",\"yearSxrangeTo\":\"\",\"year\":\"\",\"marka\":\"\",\"type\":\"\",\"color\":\"\",\"vin\":\"\"},\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left\"},\"namespace\":\"ShopProductFiltersWidget-left\"}',NULL,NULL,NULL,'ShopProductFiltersWidget-left'),(22,1,1,1444813796,1446118031,'skeeks\\cms\\modules\\admin\\components\\settings\\AdminSettings','{\"asset\":null,\"enableCustomConfirm\":\"Y\",\"enableCustomPromt\":\"Y\",\"languageCode\":\"ru\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"ckeditorPreset\":\"extra\",\"ckeditorSkin\":\"moonocolor\",\"ckeditorHeight\":\"400\",\"ckeditorCodeSnippetGeshi\":\"N\",\"ckeditorCodeSnippetTheme\":\"monokai_sublime\",\"blockedTime\":\"900000\",\"defaultAttributes\":{\"asset\":null,\"enableCustomConfirm\":\"Y\",\"enableCustomPromt\":\"Y\",\"languageCode\":\"ru\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageParamName\":\"page\",\"ckeditorPreset\":\"extra\",\"ckeditorSkin\":\"moonocolor\",\"ckeditorHeight\":400,\"ckeditorCodeSnippetGeshi\":\"N\",\"ckeditorCodeSnippetTheme\":\"monokai_sublime\",\"blockedTime\":900,\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(24,1,1,1444829890,1447079683,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"\",\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":\"\",\"limit\":\"0\",\"active\":\"\",\"createdBy\":[],\"content_ids\":[\"1\",\"6\",\"7\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/articles\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-sub-catalog\"},\"namespace\":\"ContentElementsCmsWidget-sub-catalog\"}',NULL,NULL,NULL,'ContentElementsCmsWidget-sub-catalog'),(29,1,1,1444990652,1449079559,'skeeks\\cms\\modules\\admin\\components\\settings\\AdminSettings','{\"languageCode\":\"ru\"}',NULL,1,NULL,NULL),(31,1,1,1445441281,1445441281,'skeeks\\cms\\vk\\comments\\VkCommentsWidget','{\"limit\":\"10\",\"width\":\"800\",\"autoPublish\":\"1\",\"mini\":\"auto\",\"height\":\"0\",\"norealtime\":\"0\",\"attach\":[\"graffiti\",\"photo\",\"video\",\"audio\",\"link\"],\"apiId\":\"5115405\",\"viewFile\":\"default\",\"defaultAttributes\":{\"limit\":10,\"width\":500,\"autoPublish\":1,\"mini\":\"auto\",\"height\":0,\"norealtime\":0,\"attach\":[\"graffiti\",\"photo\",\"audio\",\"video\",\"link\"],\"apiId\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"VkCommentsWidget-main\"},\"namespace\":\"VkCommentsWidget-main\"}',NULL,NULL,NULL,'VkCommentsWidget-main'),(32,1,1,1445442558,1445442558,'skeeks\\cms\\yandex\\share\\widget\\YaShareWidget','{\"typeView\":\"button\",\"services\":[\"vkontakte\",\"facebook\",\"twitter\",\"odnoklassniki\",\"gplus\"],\"viewFile\":\"default\",\"defaultAttributes\":{\"typeView\":\"button\",\"services\":[\"vkontakte\",\"facebook\",\"twitter\",\"odnoklassniki\"],\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"YaShareWidget-main\"},\"namespace\":\"YaShareWidget-main\"}',NULL,NULL,NULL,'YaShareWidget-main'),(36,1,1,1445556389,1456330054,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"8\",\"searchModelAttributes\":\"\",\"realatedProperties\":[\"volume\",\"mileage\",\"year\",\"marka\",\"type\",\"availability\"],\"type_price_id\":\"4\",\"elementIds\":[],\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":{\"volumeSxrangeFrom\":\"\",\"volumeSxrangeTo\":\"\",\"volume\":\"\",\"mileageSxrangeFrom\":\"\",\"mileageSxrangeTo\":\"\",\"mileage\":\"\",\"yearSxrangeFrom\":\"\",\"yearSxrangeTo\":\"\",\"year\":\"\",\"marka\":\"\",\"type\":\"\",\"color\":\"\",\"vin\":\"\",\"abs\":\"\",\"availability\":\"\",\"reviews2_ratingSxrangeFrom\":\"\",\"reviews2_ratingSxrangeTo\":\"\",\"reviews2_rating\":\"\",\"reviews2_countSxrangeFrom\":\"\",\"reviews2_countSxrangeTo\":\"\",\"reviews2_count\":\"\"},\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"elementIds\":[],\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-31\"},\"namespace\":\"ShopProductFiltersWidget-left-31\"}',NULL,NULL,NULL,'ShopProductFiltersWidget-left-31'),(37,1,1,1445556427,1445556427,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"2\",\"searchModelAttributes\":\"\",\"realatedProperties\":[],\"type_price_id\":\"4\",\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-36\"},\"namespace\":\"ShopProductFiltersWidget-left-36\"}',NULL,NULL,NULL,'ShopProductFiltersWidget-left-36'),(38,1,1,1445556475,1445634832,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"8\",\"searchModelAttributes\":\"\",\"realatedProperties\":[\"volume\",\"mileage\",\"year\",\"marka\",\"type\"],\"type_price_id\":\"4\",\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":{\"volumeSxrangeFrom\":\"\",\"volumeSxrangeTo\":\"\",\"volume\":\"\",\"mileageSxrangeFrom\":\"\",\"mileageSxrangeTo\":\"\",\"mileage\":\"\",\"yearSxrangeFrom\":\"\",\"yearSxrangeTo\":\"\",\"year\":\"\",\"marka\":\"\",\"type\":\"\",\"color\":\"\",\"vin\":\"\",\"reviews2_ratingSxrangeFrom\":\"\",\"reviews2_ratingSxrangeTo\":\"\",\"reviews2_rating\":\"\",\"reviews2_countSxrangeFrom\":\"\",\"reviews2_countSxrangeTo\":\"\",\"reviews2_count\":\"\"},\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-9\"},\"namespace\":\"ShopProductFiltersWidget-left-9\"}',NULL,NULL,NULL,'ShopProductFiltersWidget-left-9'),(39,1,1,1445608385,1445608385,'skeeks\\cms\\authclient\\AuthClientSettings','{\"enabled\":\"0\",\"githubEnabled\":\"1\",\"githubClientId\":\"\",\"githubClientSecret\":\"\",\"githubClass\":\"\",\"vkEnabled\":\"1\",\"vkClientId\":\"\",\"vkClientSecret\":\"\",\"vkClass\":\"\",\"defaultAttributes\":{\"enabled\":false,\"githubEnabled\":true,\"githubClientId\":\"\",\"githubClientSecret\":\"\",\"githubClass\":\"\",\"vkEnabled\":true,\"vkClientId\":\"\",\"vkClientSecret\":\"\",\"vkClass\":\"\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(40,1,1,1445614850,1445614942,'skeeks\\cms\\components\\CmsSearchComponent','{\"searchElementContentIds\":[\"2\",\"8\"],\"searchElementFields\":[\"id\",\"name\",\"description_short\",\"description_full\"],\"enabledElementProperties\":\"Y\",\"enabledElementPropertiesSearchable\":\"Y\",\"searchQueryParamName\":\"q\",\"phraseLiveTime\":\"0\",\"defaultAttributes\":{\"searchElementContentIds\":[],\"searchElementFields\":[\"description_full\",\"description_short\",\"name\"],\"enabledElementProperties\":\"Y\",\"enabledElementPropertiesSearchable\":\"Y\",\"searchQueryParamName\":\"q\",\"phraseLiveTime\":0,\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(42,1,1,1445886368,1445886368,'skeeks\\cms\\components\\Seo','{\"maxKeywordsLength\":\"1000\",\"minKeywordLenth\":\"8\",\"keywordsStopWords\":[],\"enableKeywordsGenerator\":\"1\",\"robotsContent\":\"User-agent: *\\r\\nDisallow: *\\r\\nDisallow: /\",\"useLastDelimetrContentElements\":\"0\",\"useLastDelimetrTree\":\"0\",\"keywordsPriority\":{\"title\":8,\"h1\":6,\"h2\":4,\"h3\":3,\"h5\":2,\"h6\":2},\"defaultAttributes\":{\"maxKeywordsLength\":1000,\"minKeywordLenth\":8,\"keywordsStopWords\":[],\"enableKeywordsGenerator\":true,\"robotsContent\":\"User-agent: *\",\"useLastDelimetrContentElements\":false,\"useLastDelimetrTree\":false,\"keywordsPriority\":{\"title\":8,\"h1\":6,\"h2\":4,\"h3\":3,\"h5\":2,\"h6\":2},\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(43,1,1,1446027498,1453222880,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"16\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"\",\"enabledSearchParams\":\"N\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"N\",\"enabledCurrentTreeChildAll\":\"N\",\"tree_ids\":[\"31\"],\"limit\":\"12\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"8\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/products-home\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-home-page\"},\"namespace\":\"ContentElementsCmsWidget-home-page\"}',NULL,NULL,NULL,'ContentElementsCmsWidget-home-page'),(44,1,1,1446313777,1456828589,'skeeks\\cms\\components\\CmsToolbar','{\"isOpen\":\"Y\",\"mode\":\"no-edit\",\"editViewFiles\":\"N\",\"editWidgets\":\"N\"}',NULL,1,NULL,NULL),(47,1,1,1446387738,1456748609,'skeeks\\cms\\vk\\community\\VkCommunityWidget','{\"adaptiveWith\":true,\"wide\":\"N\",\"width\":\"260\",\"height\":\"400\",\"autoPublish\":1,\"color1\":\"FFFFFF\",\"color2\":\"2B587A\",\"color3\":\"A94545\",\"norealtime\":0,\"selectMode\":\"0\",\"apiId\":\"40207385\",\"viewFile\":\"default\",\"defaultAttributes\":{\"adaptiveWith\":true,\"wide\":\"N\",\"width\":220,\"height\":400,\"autoPublish\":1,\"color1\":\"FFFFFF\",\"color2\":\"2B587A\",\"color3\":\"5B7FA6\",\"norealtime\":0,\"selectMode\":0,\"apiId\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"VkCommunityWidget-moto\"},\"namespace\":\"VkCommunityWidget-moto\"}',NULL,NULL,NULL,'VkCommunityWidget-moto'),(48,1,1,1446457887,1446457953,'skeeks\\cms\\instagram\\widget\\InstagramWidget','{\"clientId\":\"65fac7b148f043d191c8313d135fab25\",\"userName\":\"SELECTMOTO\",\"media\":null,\"user\":null,\"tag\":\"\",\"showBy\":\"user\",\"error_message\":null,\"width\":\"260\",\"imgWidth\":\"0\",\"inline\":\"4\",\"isShowToolbar\":\"1\",\"count\":\"\",\"imgRes\":\"thumbnail\",\"viewFile\":\"default\",\"defaultAttributes\":{\"clientId\":null,\"userName\":null,\"media\":null,\"user\":null,\"tag\":null,\"showBy\":\"user\",\"error_message\":null,\"width\":260,\"imgWidth\":0,\"inline\":4,\"isShowToolbar\":true,\"count\":null,\"imgRes\":\"thumbnail\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(49,1,1,1446564694,1446564759,'skeeks\\cms\\reviews2\\components\\Reviews2Component','{\"enabledBeforeApproval\":\"Y\",\"maxValue\":\"5\",\"maxCountMessagesForUser\":\"1\",\"elementPropertyRatingCode\":\"reviews2_rating\",\"elementPropertyCountCode\":\"reviews2_count\",\"notifyEmails\":[\"selectmoto@yandex.ru\"],\"notifyPhones\":[],\"securityEnabledRateLimit\":\"Y\",\"securityRateLimitRequests\":\"10\",\"securityRateLimitTime\":\"3600\",\"messageSuccessBeforeApproval\":\"Отзыв успешно добавлен, и будет опубликован на сайте после проверки модератора.\",\"messageSuccess\":\"Отзыв успешно добавлен, спасибо.\",\"enabledFieldsOnUser\":[\"comments\",\"dignity\",\"disadvantages\"],\"enabledFieldsOnGuest\":[\"user_name\",\"user_email\",\"comments\",\"dignity\",\"disadvantages\",\"verifyCode\"],\"defaultAttributes\":{\"enabledBeforeApproval\":\"Y\",\"maxValue\":5,\"maxCountMessagesForUser\":1,\"elementPropertyRatingCode\":\"reviews2_rating\",\"elementPropertyCountCode\":\"reviews2_count\",\"notifyEmails\":[],\"notifyPhones\":[],\"securityEnabledRateLimit\":\"Y\",\"securityRateLimitRequests\":10,\"securityRateLimitTime\":3600,\"messageSuccessBeforeApproval\":\"Отзыв успешно добавлен, и будет опубликован на сайте после проверки модератора.\",\"messageSuccess\":\"Отзыв успешно добавлен, спасибо.\",\"enabledFieldsOnUser\":[\"comments\",\"dignity\",\"disadvantages\"],\"enabledFieldsOnGuest\":[\"comments\",\"user_email\",\"user_name\",\"dignity\",\"disadvantages\",\"verifyCode\"],\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(50,1,1,1446643812,1449073260,'skeeks\\cms\\modules\\admin\\widgets\\gridView\\GridViewSettings','{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[\"5aa37184\",\"1cce4459\",\"6738afae\",\"e04112b1\",\"4663e865\",\"f9337702\",\"03609d28\",\"c4ae63b5\",\"bac9dcc0\",\"ec489d1d\",\"2564e302\"],\"grid\":null,\"orderBy\":\"id\",\"order\":\"3\",\"defaultAttributes\":{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[],\"grid\":null,\"orderBy\":\"id\",\"order\":3,\"defaultAttributes\":[],\"namespace\":\"shop/admin-cms-content-element/index8\"},\"namespace\":\"shop/admin-cms-content-element/index8\"}',NULL,NULL,NULL,'shop/admin-cms-content-element/index8'),(55,1,1,1449072849,1449073112,'skeeks\\cms\\modules\\admin\\widgets\\gridView\\GridViewSettings','{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[\"5aa37184\",\"1cce4459\",\"6738afae\",\"e04112b1\",\"c79b45e9\",\"4663e865\",\"c4ae63b5\",\"ec489d1d\",\"1c54e010\",\"03609d28\",\"bac9dcc0\",\"2564e302\"],\"grid\":null,\"orderBy\":\"id\",\"order\":\"3\",\"defaultAttributes\":{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[],\"grid\":null,\"orderBy\":\"id\",\"order\":3,\"defaultAttributes\":[],\"namespace\":\"cms/admin-cms-content-element/index8\"},\"namespace\":\"cms/admin-cms-content-element/index8\"}',NULL,NULL,NULL,'cms/admin-cms-content-element/index8'),(57,1,1,1453645562,1453645562,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"8\",\"searchModelAttributes\":\"\",\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-37\"},\"namespace\":\"ShopProductFiltersWidget-left-37\"}',NULL,NULL,NULL,'ShopProductFiltersWidget-left-37'),(58,1,1,1453645666,1453645810,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"8\",\"searchModelAttributes\":\"\",\"realatedProperties\":[\"volume\",\"mileage\",\"year\",\"type\"],\"type_price_id\":\"4\",\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":{\"volumeSxrangeFrom\":\"\",\"volumeSxrangeTo\":\"\",\"volume\":\"\",\"mileageSxrangeFrom\":\"\",\"mileageSxrangeTo\":\"\",\"mileage\":\"\",\"yearSxrangeFrom\":\"\",\"yearSxrangeTo\":\"\",\"year\":\"\",\"marka\":\"\",\"type\":\"\",\"color\":\"\",\"vin\":\"\",\"abs\":\"\",\"availability\":\"\",\"reviews2_ratingSxrangeFrom\":\"\",\"reviews2_ratingSxrangeTo\":\"\",\"reviews2_rating\":\"\",\"reviews2_countSxrangeFrom\":\"\",\"reviews2_countSxrangeTo\":\"\",\"reviews2_count\":\"\"},\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-pos-6\"},\"namespace\":\"ShopProductFiltersWidget-left-pos-6\"}',NULL,NULL,NULL,'ShopProductFiltersWidget-left-pos-6'),(59,1,1,1453645775,1453645786,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"8\",\"searchModelAttributes\":\"\",\"realatedProperties\":[\"volume\",\"mileage\",\"year\",\"marka\"],\"type_price_id\":\"4\",\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":{\"volumeSxrangeFrom\":\"\",\"volumeSxrangeTo\":\"\",\"volume\":\"\",\"mileageSxrangeFrom\":\"\",\"mileageSxrangeTo\":\"\",\"mileage\":\"\",\"yearSxrangeFrom\":\"\",\"yearSxrangeTo\":\"\",\"year\":\"\",\"marka\":\"\",\"type\":\"\",\"color\":\"\",\"vin\":\"\",\"abs\":\"\",\"availability\":\"\",\"reviews2_ratingSxrangeFrom\":\"\",\"reviews2_ratingSxrangeTo\":\"\",\"reviews2_rating\":\"\",\"reviews2_countSxrangeFrom\":\"\",\"reviews2_countSxrangeTo\":\"\",\"reviews2_count\":\"\"},\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-pos-7\"},\"namespace\":\"ShopProductFiltersWidget-left-pos-7\"}',NULL,NULL,NULL,'ShopProductFiltersWidget-left-pos-7'),(60,1,1,1455223407,1455223407,'skeeks\\cms\\externalLinks\\CmsSettingsExternalLinksComponent','{\"enabled\":\"1\",\"noReplaceLinksOnDomainsString\":\"skeeks.com,www.skeeks.com,cms.skeeks.com\",\"noReplaceLocalDomain\":\"1\",\"enabledB64Encode\":\"1\",\"defaultAttributes\":{\"enabled\":false,\"noReplaceLinksOnDomainsString\":\"skeeks.com,www.skeeks.com,cms.skeeks.com\",\"noReplaceLocalDomain\":true,\"enabledB64Encode\":true,\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(61,1,1,1456747764,1456747764,'skeeks\\cms\\modules\\admin\\widgets\\gridView\\GridViewSettings','{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[\"5aa37184\",\"1cce4459\",\"6738afae\",\"e04112b1\",\"6f4cf3ff\",\"9d505500\",\"c79b45e9\",\"b77921d4\",\"4663e865\",\"2564e302\"],\"grid\":null,\"orderBy\":\"priority\",\"order\":\"4\",\"defaultAttributes\":{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[],\"grid\":null,\"orderBy\":\"id\",\"order\":3,\"defaultAttributes\":[],\"namespace\":\"cms/admin-cms-content-element/index4\"},\"namespace\":\"cms/admin-cms-content-element/index4\"}',NULL,NULL,NULL,'cms/admin-cms-content-element/index4');
/*!40000 ALTER TABLE `cms_component_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content`
--

DROP TABLE IF EXISTS `cms_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `description` text,
  `index_for_search` char(1) NOT NULL DEFAULT 'Y',
  `name_meny` varchar(100) DEFAULT NULL,
  `name_one` varchar(100) DEFAULT NULL,
  `tree_chooser` char(1) DEFAULT NULL,
  `list_mode` char(1) DEFAULT NULL,
  `content_type` varchar(32) NOT NULL,
  `default_tree_id` int(11) DEFAULT NULL,
  `is_allow_change_tree` varchar(1) NOT NULL DEFAULT 'Y',
  `root_tree_id` int(11) DEFAULT NULL,
  `viewFile` varchar(255) DEFAULT NULL,
  `meta_title_template` varchar(500) DEFAULT NULL,
  `meta_description_template` text,
  `meta_keywords_template` text,
  `access_check_element` varchar(1) NOT NULL DEFAULT 'N',
  `parent_content_id` int(11) DEFAULT NULL,
  `visible` varchar(1) NOT NULL DEFAULT 'Y',
  `parent_content_on_delete` varchar(10) NOT NULL DEFAULT 'CASCADE',
  `parent_content_is_required` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `index_for_search` (`index_for_search`),
  KEY `name_meny` (`name_meny`),
  KEY `name_one` (`name_one`),
  KEY `tree_chooser` (`tree_chooser`),
  KEY `list_mode` (`list_mode`),
  KEY `content_type` (`content_type`),
  KEY `default_tree_id` (`default_tree_id`),
  KEY `is_allow_change_tree` (`is_allow_change_tree`),
  KEY `root_tree_id` (`root_tree_id`),
  KEY `viewFile` (`viewFile`),
  KEY `parent_content_id` (`parent_content_id`),
  KEY `visible` (`visible`),
  KEY `parent_content_on_delete` (`parent_content_on_delete`),
  KEY `parent_content_is_required` (`parent_content_is_required`),
  CONSTRAINT `cms_content_cms_content_type` FOREIGN KEY (`content_type`) REFERENCES `cms_content_type` (`code`),
  CONSTRAINT `cms_content_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content__cms_content` FOREIGN KEY (`parent_content_id`) REFERENCES `cms_content` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content__default_tree_id` FOREIGN KEY (`default_tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content__root_tree_id` FOREIGN KEY (`root_tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content`
--

LOCK TABLES `cms_content` WRITE;
/*!40000 ALTER TABLE `cms_content` DISABLE KEYS */;
INSERT INTO `cms_content` VALUES (1,1,1,1442576667,1445550928,'Публикации','publication','Y',500,NULL,'','Публикации','Публикация',NULL,NULL,'publications',18,'N',18,NULL,NULL,NULL,NULL,'N',NULL,'Y','CASCADE','Y'),(2,1,1,1442576684,1445598041,'Товары','product','Y',2000,NULL,'','Товары','Товар',NULL,NULL,'products',36,'N',36,'moto',NULL,NULL,NULL,'N',NULL,'Y','CASCADE','Y'),(4,1,1,1442926518,1445550973,'Слайды','slide','Y',500,NULL,'','Слайды','Слайд',NULL,NULL,'services',NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'Y','CASCADE','Y'),(6,1,1,1445100879,1453645267,'Марка мотоцикла','moto-mark','Y',500,NULL,'','Элементы','Элемент',NULL,NULL,'info',NULL,'Y',NULL,'catalog','','','','N',NULL,'Y','CASCADE','Y'),(7,1,1,1445100910,1453645744,'Тип мотоцикла','moto-type','Y',500,NULL,'','Элементы','Элемент',NULL,NULL,'info',NULL,'Y',NULL,'catalog','','','','N',NULL,'Y','CASCADE','Y'),(8,1,1,1445100975,1456309727,'Мототехника','moto','Y',500,NULL,'','Мотоциклы','Мотоцикл',NULL,NULL,'products',31,'N',31,'','{=model.name} / Купить мотоцикл (мото) недорого.','','','N',NULL,'Y','CASCADE','Y');
/*!40000 ALTER TABLE `cms_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_element`
--

DROP TABLE IF EXISTS `cms_content_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `published_to` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  `active` char(1) NOT NULL DEFAULT 'Y',
  `name` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `image_full_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description_short` longtext,
  `description_full` longtext,
  `files_depricated` longtext,
  `content_id` int(11) DEFAULT NULL,
  `tree_id` int(11) DEFAULT NULL,
  `show_counter` int(11) DEFAULT NULL,
  `show_counter_start` int(11) DEFAULT NULL,
  `meta_title` varchar(500) NOT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `description_short_type` varchar(10) NOT NULL DEFAULT 'text',
  `description_full_type` varchar(10) NOT NULL DEFAULT 'text',
  `parent_content_element_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_id_2` (`content_id`,`code`),
  UNIQUE KEY `tree_id_2` (`tree_id`,`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `published_at` (`published_at`),
  KEY `published_to` (`published_to`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `active` (`active`),
  KEY `content_id` (`content_id`),
  KEY `tree_id` (`tree_id`),
  KEY `show_counter` (`show_counter`),
  KEY `show_counter_start` (`show_counter_start`),
  KEY `meta_title` (`meta_title`(255)),
  KEY `description_short_type` (`description_short_type`),
  KEY `description_full_type` (`description_full_type`),
  KEY `image_id` (`image_id`),
  KEY `image_full_id` (`image_full_id`),
  KEY `parent_content_element_id` (`parent_content_element_id`),
  CONSTRAINT `cms_content_element__cms_content_element` FOREIGN KEY (`parent_content_element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`id`),
  CONSTRAINT `cms_content_element_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element__image_full_id` FOREIGN KEY (`image_full_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element`
--

LOCK TABLES `cms_content_element` WRITE;
/*!40000 ALTER TABLE `cms_content_element` DISABLE KEYS */;
INSERT INTO `cms_content_element` VALUES (30,1,1,1445101957,1447079649,1445101957,NULL,500,'Y','Kawasaki',NULL,NULL,'kawasaki','','',NULL,6,68,NULL,NULL,'','','','text','text',NULL),(31,1,1,1445101967,1447079649,1445101967,NULL,500,'Y','Honda',NULL,NULL,'honda','','',NULL,6,68,NULL,NULL,'','','','text','text',NULL),(32,1,1,1445101976,1447079649,1445101976,NULL,500,'Y','Yamaha',NULL,NULL,'yamaha','','',NULL,6,68,NULL,NULL,'','','','text','text',NULL),(33,1,1,1445101990,1447079649,1445101990,NULL,500,'Y','Suzuki',NULL,NULL,'suzuki','','',NULL,6,68,NULL,NULL,'','','','text','text',NULL),(34,1,1,1445102002,1447079649,1445102002,NULL,500,'Y','Ducati',NULL,NULL,'ducati','','',NULL,6,68,NULL,NULL,'','','','text','text',NULL),(35,1,1,1445102014,1447079649,1445102014,NULL,500,'Y','BMW',NULL,NULL,'bmw','','',NULL,6,68,NULL,NULL,'','','','text','text',NULL),(36,1,1,1445102024,1447079649,1445102024,NULL,500,'Y','Aprilia',NULL,NULL,'aprilia','','',NULL,6,68,NULL,NULL,'','','','text','text',NULL),(37,1,1,1445102035,1453646346,1445102035,NULL,500,'Y','Harley-Davidson',NULL,NULL,'harley-davidson','','',NULL,6,68,NULL,NULL,'','','','text','editor',NULL),(38,1,1,1445102047,1447079649,1445102047,NULL,500,'Y','Triumph',NULL,NULL,'triumph','','',NULL,6,68,NULL,NULL,'','','','text','text',NULL),(39,1,1,1445102059,1447079658,1445102059,NULL,500,'Y','Спорт/CпортТурист',NULL,NULL,'sport_cportturist','','',NULL,7,69,NULL,NULL,'','','','text','text',NULL),(40,1,1,1445102072,1447079658,1445102072,NULL,500,'Y','Классик/Naked',NULL,NULL,'klassik_naked','','',NULL,7,69,NULL,NULL,'','','','text','text',NULL),(41,1,1,1445102085,1447079658,1445102085,NULL,500,'Y','Чоппер/Круизер',NULL,NULL,'chopper_kruizer','','',NULL,7,69,NULL,NULL,'','','','text','text',NULL),(42,1,1,1445102097,1447079658,1445102097,NULL,500,'Y','Эндуро/Супермото',NULL,NULL,'enduro_supermoto','','',NULL,7,69,NULL,NULL,'','','','text','text',NULL),(43,1,1,1445102108,1447079658,1445102108,NULL,500,'Y','Турэндуро',NULL,NULL,'turenduro','','',NULL,7,69,NULL,NULL,'','','','text','text',NULL),(44,1,1,1445102122,1447079658,1445102122,NULL,500,'Y','Максискутер',NULL,NULL,'maksiskuter','','',NULL,7,69,NULL,NULL,'','','','text','text',NULL),(49,1,1,1445347390,1447079649,1445347390,NULL,500,'Y','Husaberg',NULL,NULL,'husaberg','','',NULL,6,68,NULL,NULL,'','','','text','text',NULL),(50,1,1,1445347398,1447079649,1445347398,NULL,500,'Y','BRP',NULL,NULL,'brp','','',NULL,6,68,NULL,NULL,'','','','text','text',NULL),(137,1,1,1446124349,1446145245,1446124349,NULL,500,'Y','Новое поступление техники',NULL,NULL,'novyiy-prihod-tehniki','','Мотоциклисты! Хотим сообщить Вам, что буквально завтра 30.10.2015г. к нам приходит контейнер с 50 единицами безпробежных японских байков!!! Спешите приобрести отличные мотоциклы по отличным ценам!!!',NULL,1,18,NULL,NULL,'','','','text','text',NULL),(144,1,1,1446142801,1446146496,1446142801,NULL,500,'Y','Внимание АКЦИЯ! Купившему мотоцикл, БЕСПЛАТНАЯ доставка в регионы. Предложение действительно до конца 2015 года.',NULL,NULL,'besplatnaya-dostavka-v-lyubuyu-tochku','','<p style=\"text-align: justify;\"><span style=\"font-size: 14px; line-height: 24.8889px;\">Мотосалон&nbsp;</span><strong style=\"font-size: 14px; line-height: 24.8889px;\">Select-Moto&nbsp;</strong><span style=\"font-size: 14px; line-height: 24.8889px;\">рад сообщить своим будущим клиентам о бесплатной доставке приобретенной техники в любые города России до конца 20</span><span style=\"font-size: 14px; line-height: 24.8889px;\">15 года! Клие</span><span style=\"font-size: 14px; line-height: 24.8889px;\">нт опла</span><span style=\"font-size: 14px; line-height: 24.8889px;\">чива</span><span style=\"font-size: 14px; line-height: 24.8889px;\">ет технику, предоставляет данные для отправки - остальное мы берем на себя!!!</span></p>\r\n',NULL,1,18,NULL,NULL,'','','','text','editor',NULL),(264,1,1,1449989262,1451203042,1449989262,NULL,500,'Y','Новогоднее поступление техники',NULL,NULL,'novogodnee-postuplenie-tehniki','','Дорогие друзья! Мы рады сообщить Вам, что в наш салон в конце декабря приходит контейнер с более чем 40-ка единицами техники !!! Приезжайте выбирать себе подарок!!!!',NULL,1,18,NULL,NULL,'','','','text','text',NULL),(294,1,1,1452671724,1456747773,1452671724,NULL,100,'Y','Салон',2183,NULL,'salon','','',NULL,4,NULL,NULL,NULL,'','','','text','text',NULL),(295,1,1,1452671780,1456747576,1452671780,NULL,500,'Y','Салон',2182,NULL,'salon-294','','',NULL,4,NULL,NULL,NULL,'','','','text','text',NULL),(310,1,1,1456747838,1456747889,1456747838,NULL,500,'Y','Мотоцикл 1',2184,NULL,'mototsikl-1','','',NULL,8,31,NULL,NULL,'','','','text','text',NULL);
/*!40000 ALTER TABLE `cms_content_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_element_file`
--

DROP TABLE IF EXISTS `cms_content_element_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `content_element_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__content_element_id` (`storage_file_id`,`content_element_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `content_element_id` (`content_element_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_content_element_file_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_file_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_file__content_element_id` FOREIGN KEY (`content_element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_file__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь элементов и файлов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_file`
--

LOCK TABLES `cms_content_element_file` WRITE;
/*!40000 ALTER TABLE `cms_content_element_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_content_element_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_element_image`
--

DROP TABLE IF EXISTS `cms_content_element_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `content_element_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__content_element_id` (`storage_file_id`,`content_element_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `content_element_id` (`content_element_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_content_element_image_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_image_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_image__content_element_id` FOREIGN KEY (`content_element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_image__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1634 DEFAULT CHARSET=utf8 COMMENT='Связь элементов и файлов изображений';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_image`
--

LOCK TABLES `cms_content_element_image` WRITE;
/*!40000 ALTER TABLE `cms_content_element_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_content_element_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_element_property`
--

DROP TABLE IF EXISTS `cms_content_element_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `value` longtext NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  CONSTRAINT `cms_content_element_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_content_element_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_content_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1749 DEFAULT CHARSET=utf8 COMMENT='Связь товара свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_property`
--

LOCK TABLES `cms_content_element_property` WRITE;
/*!40000 ALTER TABLE `cms_content_element_property` DISABLE KEYS */;
INSERT INTO `cms_content_element_property` VALUES (1738,1,1,1456747838,1456747860,12,310,'600',600,600.0000,NULL),(1739,1,1,1456747838,1456747860,13,310,'5000',5000,5000.0000,NULL),(1740,1,1,1456747838,1456747860,14,310,'2009',2009,2009.0000,NULL),(1741,1,1,1456747838,1456747860,11,310,'36',36,36.0000,NULL),(1742,1,1,1456747839,1456747860,10,310,'41',41,41.0000,NULL),(1743,1,1,1456747839,1456747860,15,310,'',0,0.0000,NULL),(1744,1,1,1456747839,1456747860,16,310,'asdsas',0,0.0000,NULL),(1745,1,1,1456747839,1456747860,19,310,'3',3,3.0000,NULL),(1746,1,1,1456747839,1456747861,20,310,'5',5,5.0000,NULL),(1747,1,1,1456747839,1456747861,17,310,'',0,0.0000,NULL),(1748,1,1,1456747839,1456747861,18,310,'',0,0.0000,NULL);
/*!40000 ALTER TABLE `cms_content_element_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_element_tree`
--

DROP TABLE IF EXISTS `cms_content_element_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `element_id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `element_id_2` (`element_id`,`tree_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `tree_id` (`tree_id`),
  KEY `element_id` (`element_id`),
  CONSTRAINT `cms_content_element_tree_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_content_element_tree_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_tree_tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_tree_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='Связь контента и разделов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_tree`
--

LOCK TABLES `cms_content_element_tree` WRITE;
/*!40000 ALTER TABLE `cms_content_element_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_content_element_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_property`
--

DROP TABLE IF EXISTS `cms_content_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `list_type` char(1) NOT NULL DEFAULT 'L',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `multiple_cnt` int(11) DEFAULT NULL,
  `with_description` char(1) DEFAULT NULL,
  `searchable` char(1) NOT NULL DEFAULT 'N',
  `filtrable` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `component` varchar(255) DEFAULT NULL,
  `component_settings` longtext,
  `hint` varchar(255) DEFAULT NULL,
  `smart_filtrable` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_2` (`code`,`content_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `content_id` (`content_id`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `list_type` (`list_type`),
  KEY `multiple` (`multiple`),
  KEY `multiple_cnt` (`multiple_cnt`),
  KEY `with_description` (`with_description`),
  KEY `searchable` (`searchable`),
  KEY `filtrable` (`filtrable`),
  KEY `is_required` (`is_required`),
  KEY `version` (`version`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `smart_filtrable` (`smart_filtrable`),
  KEY `code` (`code`) USING BTREE,
  CONSTRAINT `cms_content_property_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`id`),
  CONSTRAINT `cms_content_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_content_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Свойства элементов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_property`
--

LOCK TABLES `cms_content_property` WRITE;
/*!40000 ALTER TABLE `cms_content_property` DISABLE KEYS */;
INSERT INTO `cms_content_property` VALUES (3,1,1,1443710061,1444925238,'Характеристики','characters',2,'Y',2000,'S','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\userPropertyTypes\\UserPropertyTypeComboText','','','N'),(10,1,1,1445101071,1447674542,'Тип','type',8,'Y',5000,'E','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeElement','a:9:{s:4:\"code\";s:1:\"E\";s:4:\"name\";s:36:\"Привязка к элементу\";s:10:\"content_id\";s:1:\"7\";s:8:\"multiple\";s:1:\"N\";s:5:\"model\";N;s:8:\"property\";N;s:10:\"activeForm\";N;s:17:\"defaultAttributes\";a:0:{}s:9:\"namespace\";N;}','','N'),(11,1,1,1445101134,1447674542,'Марка','marka',8,'Y',4000,'E','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeElement','a:9:{s:4:\"code\";s:1:\"E\";s:4:\"name\";s:36:\"Привязка к элементу\";s:10:\"content_id\";s:1:\"6\";s:8:\"multiple\";s:1:\"N\";s:5:\"model\";N;s:8:\"property\";N;s:10:\"activeForm\";N;s:17:\"defaultAttributes\";a:0:{}s:9:\"namespace\";N;}','','N'),(12,1,1,1445101882,1447674542,'Объем (см3)','volume',8,'Y',1000,'N','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeNumber','','','N'),(13,1,1,1445101913,1447674542,'Пробег (км)','mileage',8,'Y',2000,'N','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeNumber','','','N'),(14,1,1,1445101927,1447674542,'Год','year',8,'Y',3000,'N','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeNumber','','','N'),(15,1,1,1445102263,1447674542,'Цвет','color',8,'Y',6000,'S','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N'),(16,1,1,1445347512,1447674542,'VIN','vin',8,'Y',7000,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N'),(17,1,1,1445441895,1447674542,'Рейтинг','reviews2_rating',8,'Y',10000,'N','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeNumber','','Это поле заполняется автоматически','N'),(18,1,1,1445441924,1447674542,'Количество отзывов','reviews2_count',8,'Y',11000,'N','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeNumber','','','N'),(19,1,1,1446643740,1449071907,'Наличие ABS','abs',8,'Y',8000,'L','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeList','a:0:{}','','N'),(20,1,1,1447674471,1447674542,'Наличие','availability',8,'Y',9000,'L','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeList','','','N');
/*!40000 ALTER TABLE `cms_content_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_property_enum`
--

DROP TABLE IF EXISTS `cms_content_property_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `cms_content_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_content_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_content_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств типа список';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_property_enum`
--

LOCK TABLES `cms_content_property_enum` WRITE;
/*!40000 ALTER TABLE `cms_content_property_enum` DISABLE KEYS */;
INSERT INTO `cms_content_property_enum` VALUES (3,1,1,1446643752,1446643755,19,'Да','N','Y',500),(4,1,1,1446643768,1446643768,19,'Нет','N','N',500),(5,1,1,1447674483,1447674532,20,'В наличии','N','y',500),(6,1,1,1447674518,1447674518,20,'В пути','N','way',500);
/*!40000 ALTER TABLE `cms_content_property_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_type`
--

DROP TABLE IF EXISTS `cms_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `files` text,
  `priority` int(11) NOT NULL DEFAULT '500',
  `name` varchar(255) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  CONSTRAINT `cms_content_type_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_type_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_type`
--

LOCK TABLES `cms_content_type` WRITE;
/*!40000 ALTER TABLE `cms_content_type` DISABLE KEYS */;
INSERT INTO `cms_content_type` VALUES (1,1,1,1442576605,1445554128,NULL,200,'Публикации','publications'),(2,1,1,1442576618,1445553156,NULL,100,'Торговый каталог','products'),(3,1,1,1442926503,1442926503,NULL,500,'Сервисы','services'),(5,1,1,1445100854,1445554135,NULL,300,'Справочники','info');
/*!40000 ALTER TABLE `cms_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_dashboard`
--

DROP TABLE IF EXISTS `cms_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `cms_user_id` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `columns` int(11) unsigned NOT NULL DEFAULT '1',
  `columns_settings` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `cms_user_id` (`cms_user_id`),
  KEY `priority` (`priority`),
  KEY `columns` (`columns`),
  CONSTRAINT `cms_dashboard_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_dashboard_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_dashboard__cms_user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Рабочий стол';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard`
--

LOCK TABLES `cms_dashboard` WRITE;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
INSERT INTO `cms_dashboard` VALUES (1,1,1,1455901293,1455901299,'Стол по умолчанию',NULL,100,2,NULL),(2,1,1,1455912727,1455912762,'Магазин',NULL,100,2,NULL);
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_dashboard_widget`
--

DROP TABLE IF EXISTS `cms_dashboard_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_dashboard_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_dashboard_id` int(11) NOT NULL,
  `cms_dashboard_column` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '100',
  `component` varchar(255) NOT NULL,
  `component_settings` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `component` (`component`),
  KEY `cms_dashboard_id` (`cms_dashboard_id`),
  KEY `cms_dashboard_column` (`cms_dashboard_column`),
  CONSTRAINT `cms_dashboard_widget__cms_dashboard_id` FOREIGN KEY (`cms_dashboard_id`) REFERENCES `cms_dashboard` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_dashboard_widget_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_dashboard_widget_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Виджет рабочего стола';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard_widget`
--

LOCK TABLES `cms_dashboard_widget` WRITE;
/*!40000 ALTER TABLE `cms_dashboard_widget` DISABLE KEYS */;
INSERT INTO `cms_dashboard_widget` VALUES (1,1,1,1455901305,1456330155,1,1,100,'skeeks\\cms\\modules\\admin\\dashboards\\AboutCmsDashboard',''),(2,1,1,1455901312,1456330155,1,1,200,'skeeks\\cms\\modules\\admin\\dashboards\\CmsInformDashboard',''),(3,1,1,1455901319,1456330155,1,2,100,'skeeks\\cms\\modules\\admin\\dashboards\\DiscSpaceDashboard',''),(4,1,1,1455912733,1455912733,2,1,50,'skeeks\\cms\\shop\\dashboards\\ReportOrderDashboard','');
/*!40000 ALTER TABLE `cms_dashboard_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_event`
--

DROP TABLE IF EXISTS `cms_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `priority` int(11) NOT NULL DEFAULT '150',
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_name` (`event_name`),
  KEY `priority` (`priority`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_event`
--

LOCK TABLES `cms_event` WRITE;
/*!40000 ALTER TABLE `cms_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_lang`
--

DROP TABLE IF EXISTS `cms_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `def` char(1) NOT NULL DEFAULT 'N',
  `priority` int(11) NOT NULL DEFAULT '500',
  `code` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_2` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `description` (`description`),
  KEY `cms_lang__image_id` (`image_id`),
  CONSTRAINT `cms_lang_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_lang_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_lang__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Доступные языки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_lang`
--

LOCK TABLES `cms_lang` WRITE;
/*!40000 ALTER TABLE `cms_lang` DISABLE KEYS */;
INSERT INTO `cms_lang` VALUES (1,1,NULL,1432126580,1444825042,'Y','Y',500,'ru','Русский','',NULL),(2,1,NULL,1432126667,1444825052,'Y','N',600,'en','Английский','',NULL);
/*!40000 ALTER TABLE `cms_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_search_phrase`
--

DROP TABLE IF EXISTS `cms_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_search_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `phrase` varchar(255) DEFAULT NULL,
  `result_count` int(11) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) DEFAULT NULL,
  `session_id` varchar(32) DEFAULT NULL,
  `site_code` char(15) DEFAULT NULL,
  `data_server` text,
  `data_session` text,
  `data_cookie` text,
  `data_request` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `phrase` (`phrase`),
  KEY `result_count` (`result_count`),
  KEY `pages` (`pages`),
  KEY `ip` (`ip`),
  KEY `session_id` (`session_id`),
  KEY `site_code` (`site_code`),
  CONSTRAINT `cms_search_phrase_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_search_phrase_site_code_fk` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_search_phrase_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Поисковые фразы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_search_phrase`
--

LOCK TABLES `cms_search_phrase` WRITE;
/*!40000 ALTER TABLE `cms_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_session`
--

DROP TABLE IF EXISTS `cms_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_session` (
  `id` char(64) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longtext,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `data_server` text,
  `data_cookie` text,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `expire` (`expire`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_session`
--

LOCK TABLES `cms_session` WRITE;
/*!40000 ALTER TABLE `cms_session` DISABLE KEYS */;
INSERT INTO `cms_session` VALUES ('26hgmd667dtbd3irfm3p88n9m3',1445443062,'__flash|a:0:{}__id|i:1;skeeks-cms-toolbar-mode|s:7:\"no-edit\";elFinderCaches|a:11:{s:8:\"_optsMD5\";s:32:\"b7bcddce85f03fe58320f56176375132\";s:3:\"l1_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMDp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQ1MDk1MTU5O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDFfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDFfIjtzOjQ6Im5hbWUiO3M6MjM6ItCb0LjRh9C90YvQtSDRhNCw0LnQu9GLIjtzOjQ6Imljb24iO3M6NDE6Ii9hc3NldHMvYzQ4NTBhNS9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO30=\";}s:3:\"l2_\";a:1:{s:8:\"rootstat\";s:356:\"YToxMDp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQ1MDk1MTU5O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDJfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDJfIjtzOjQ6Im5hbWUiO3M6MjE6ItCe0LHRidC40LUg0YTQsNC50LvRiyI7czo0OiJpY29uIjtzOjQxOiIvYXNzZXRzL2M0ODUwYTUvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTt9\";}s:3:\"l3_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQ1MzM2MTM4O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDNfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDNfIjtzOjQ6Im5hbWUiO3M6ODoiUk9PVF9ESVIiO3M6NDoiaWNvbiI7czo0MToiL2Fzc2V0cy9jNDg1MGE1L2ltZy92b2x1bWVfaWNvbl9sb2NhbC5wbmciO3M6NjoibG9ja2VkIjtpOjE7czo0OiJkaXJzIjtpOjE7fQ==\";}s:3:\"l4_\";a:1:{s:8:\"rootstat\";s:392:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQ1MDk1MTYwO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDRfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDRfIjtzOjQ6Im5hbWUiO3M6MzI6ItCa0L7RgNC10L3RjCAocm9ib3RzLnR4dCDRgtGD0YIpIjtzOjQ6Imljb24iO3M6NDE6Ii9hc3NldHMvYzQ4NTBhNS9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO3M6NDoiZGlycyI7aToxO30=\";}s:3:\"l5_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMDp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQ1MDk1MTU5O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDVfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDVfIjtzOjQ6Im5hbWUiO3M6MjM6ItCb0LjRh9C90YvQtSDRhNCw0LnQu9GLIjtzOjQ6Imljb24iO3M6NDE6Ii9hc3NldHMvYzQ4NTBhNS9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO30=\";}s:3:\"l6_\";a:1:{s:8:\"rootstat\";s:368:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQ1MDk1MTYwO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDZfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDZfIjtzOjQ6Im5hbWUiO3M6MTQ6ImZyb250ZW5kL3ZpZXdzIjtzOjQ6Imljb24iO3M6NDE6Ii9hc3NldHMvYzQ4NTBhNS9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO3M6NDoiZGlycyI7aToxO30=\";}s:3:\"l7_\";a:1:{s:8:\"rootstat\";s:372:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQ1NDE0NTE4O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDdfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDdfIjtzOjQ6Im5hbWUiO3M6MTY6ImZyb250ZW5kL3J1bnRpbWUiO3M6NDoiaWNvbiI7czo0MToiL2Fzc2V0cy9jNDg1MGE1L2ltZy92b2x1bWVfaWNvbl9sb2NhbC5wbmciO3M6NjoibG9ja2VkIjtpOjE7czo0OiJkaXJzIjtpOjE7fQ==\";}s:3:\"l8_\";a:1:{s:8:\"rootstat\";s:368:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQ1Mzc4MjE5O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDhfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDhfIjtzOjQ6Im5hbWUiO3M6MTU6ImNvbnNvbGUvcnVudGltZSI7czo0OiJpY29uIjtzOjQxOiIvYXNzZXRzL2M0ODUwYTUvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTtzOjQ6ImRpcnMiO2k6MTt9\";}s:3:\"l9_\";a:1:{s:8:\"rootstat\";s:388:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQ1MzQwOTMxO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDlfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDlfIjtzOjQ6Im5hbWUiO3M6Mjg6ItCS0YDQtdC80LXQvdC90YvQtSBqcyDQuCBjc3MiO3M6NDoiaWNvbiI7czo0MToiL2Fzc2V0cy9jNDg1MGE1L2ltZy92b2x1bWVfaWNvbl9sb2NhbC5wbmciO3M6NjoibG9ja2VkIjtpOjE7czo0OiJkaXJzIjtpOjE7fQ==\";}s:4:\"l10_\";a:1:{s:8:\"rootstat\";s:368:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQ1MjUzMTE4O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NjoibDEwX0x3IjtzOjg6InZvbHVtZWlkIjtzOjQ6ImwxMF8iO3M6NDoibmFtZSI7czoxMjoi0JHRjdC60LDQv9GLIjtzOjQ6Imljb24iO3M6NDE6Ii9hc3NldHMvYzQ4NTBhNS9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO3M6NDoiZGlycyI7aToxO30=\";}}elFinderCaches:ARCHIVERS_CACHE|a:2:{s:6:\"create\";a:3:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-cf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-czf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-cJf\";s:3:\"ext\";s:2:\"xz\";}}s:7:\"extract\";a:4:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-xf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xzf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xJf\";s:3:\"ext\";s:2:\"xz\";}s:15:\"application/zip\";a:3:{s:3:\"cmd\";s:5:\"unzip\";s:4:\"argc\";s:0:\"\";s:3:\"ext\";s:3:\"zip\";}}}elFinderCaches:LAST_ACTIVITY|i:1445438250;cms-tree-opened|a:1:{i:0;s:1:\"1\";}',1445414596,1445439462,'80.243.13.242','{\"REDIRECT_STATUS\":\"200\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"CONTENT_LENGTH\":\"409\",\"HTTP_X_REAL_IP\":\"80.243.13.242\",\"HTTP_X_FORWARDED_FOR\":\"80.243.13.242\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ORIGIN\":\"http://select-moto.ru\",\"HTTP_X_CSRF_TOKEN\":\"d0l5MnNZaDMVfUFeABgkbCE9FkNBEVp2IiQIXjwoRWIYGDJkBSMiCw==\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36\",\"CONTENT_TYPE\":\"multipart/form-data; boundary=----WebKitFormBoundary9yXaY7MyNQ09QHhi\",\"HTTP_ACCEPT\":\"text/html, */*; q=0.01\",\"HTTP_X_REQUESTED_WITH\":\"XMLHttpRequest\",\"HTTP_X_PJAX\":\"true\",\"HTTP_X_PJAX_CONTAINER\":\"#sx-pjax-form-w0\",\"HTTP_REFERER\":\"http://select-moto.ru/~sx/cms/admin-component-settings/index?componentClassName=skeeks%5Ccms%5Ccomponents%5CCmsSettings&attributes%5BsessionType%5D=file&_sx%5Bsx-empty-layout%5D=true\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_ACCEPT_LANGUAGE\":\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\",\"HTTP_COOKIE\":\"_csrf=36ae95e0ae82ccce63bc5f65f6141cbba9e04158e018b793eff67c348bf7ec40a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22b48lsAL_Vtoq2H2EUmqlOq-QoQKVvzJ8%22%3B%7D; undefined__skeeks-toolbar__container=opened; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=26hgmd667dtbd3irfm3p88n9m3\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"80.243.13.242\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"51386\",\"REDIRECT_QUERY_STRING\":\"componentClassName=skeeks%5Ccms%5Ccomponents%5CCmsSettings&attributes%5BsessionType%5D=file&_sx%5Bsx-empty-layout%5D=true\",\"REDIRECT_URL\":\"/~sx/cms/admin-component-settings/index\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"POST\",\"QUERY_STRING\":\"componentClassName=skeeks%5Ccms%5Ccomponents%5CCmsSettings&attributes%5BsessionType%5D=file&_sx%5Bsx-empty-layout%5D=true\",\"REQUEST_URI\":\"/~sx/cms/admin-component-settings/index?componentClassName=skeeks%5Ccms%5Ccomponents%5CCmsSettings&attributes%5BsessionType%5D=file&_sx%5Bsx-empty-layout%5D=true\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"PHP_AUTH_USER\":\"semenov\",\"PHP_AUTH_PW\":\"skeeks\",\"REQUEST_TIME_FLOAT\":1445439462.346,\"REQUEST_TIME\":1445439462}','{\"_csrf\":\"36ae95e0ae82ccce63bc5f65f6141cbba9e04158e018b793eff67c348bf7ec40a:2:{i:0;s:5:\\\"_csrf\\\";i:1;s:32:\\\"b48lsAL_Vtoq2H2EUmqlOq-QoQKVvzJ8\\\";}\",\"undefined__skeeks-toolbar__container\":\"opened\",\"_identity\":\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\\\"_identity\\\";i:1;s:46:\\\"[1,\\\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\\\",2592000]\\\";}\",\"PHPSESSID\":\"26hgmd667dtbd3irfm3p88n9m3\"}'),('27jdkvhsengtb0b2t8bedrfk72',1445420288,'s:14:\"__flash|a:0:{}\";',1445416688,1445416688,'66.249.64.217','{\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"HTTP_X_REAL_IP\":\"66.249.64.217\",\"HTTP_X_FORWARDED_FOR\":\"66.249.64.217\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ACCEPT\":\"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\",\"HTTP_FROM\":\"googlebot(at)googlebot.com\",\"HTTP_ACCEPT_ENCODING\":\"gzip,deflate\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"66.249.64.217\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"58647\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"/\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"REQUEST_TIME_FLOAT\":1445416688.3,\"REQUEST_TIME\":1445416688}','[]'),('7c4fpf8bh6ngkb3kuga0eo5od7',1445406359,'s:14:\"__flash|a:0:{}\";',1445402759,1445402759,'93.183.196.76','{\"REDIRECT_STATUS\":\"200\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"HTTP_X_REAL_IP\":\"93.183.196.76\",\"HTTP_X_FORWARDED_FOR\":\"93.183.196.76\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"93.183.196.76\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"52863\",\"REDIRECT_URL\":\"/downloader/connect.cfg\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"/downloader/connect.cfg\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"REQUEST_TIME_FLOAT\":1445402759.573,\"REQUEST_TIME\":1445402759}','[]'),('7o64mlghmel8uaf1c2c4935hk3',1445438124,'s:14:\"__flash|a:0:{}\";',1445434524,1445434524,'66.249.67.200','{\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"HTTP_X_REAL_IP\":\"66.249.67.200\",\"HTTP_X_FORWARDED_FOR\":\"66.249.67.200\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ACCEPT\":\"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\",\"HTTP_FROM\":\"googlebot(at)googlebot.com\",\"HTTP_ACCEPT_ENCODING\":\"gzip,deflate\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"66.249.67.200\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"58525\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"/\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"REQUEST_TIME_FLOAT\":1445434524.587,\"REQUEST_TIME\":1445434524}','[]'),('8l9828im4f2gq26lpil3hhj4q7',1445398100,'s:14:\"__flash|a:0:{}\";',1445394500,1445394500,'66.249.64.217','{\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"HTTP_X_REAL_IP\":\"66.249.64.217\",\"HTTP_X_FORWARDED_FOR\":\"66.249.64.217\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ACCEPT\":\"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\",\"HTTP_FROM\":\"googlebot(at)googlebot.com\",\"HTTP_ACCEPT_ENCODING\":\"gzip,deflate\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"66.249.64.217\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"41217\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"/\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"REQUEST_TIME_FLOAT\":1445394500.55,\"REQUEST_TIME\":1445394500}','[]'),('bo4hdoq5a89lke7sa2a90be527',1445422846,'s:14:\"__flash|a:0:{}__flash|a:0:{}SKEEKS_CMS_SHOP|i:65;',1445419232,1445419246,'80.243.13.242','{\"REDIRECT_STATUS\":\"200\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"test.select-moto.ru\",\"HTTP_X_REAL_IP\":\"80.243.13.242\",\"HTTP_X_FORWARDED_FOR\":\"80.243.13.242\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ACCEPT\":\"text/html\",\"HTTP_X_REQUESTED_WITH\":\"XMLHttpRequest\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36\",\"HTTP_REFERER\":\"http://test.select-moto.ru/dostavka\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, sdch\",\"HTTP_ACCEPT_LANGUAGE\":\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\",\"HTTP_COOKIE\":\"PHPSESSID=bo4hdoq5a89lke7sa2a90be527; _csrf=3d4798ed8a1596f3b16a696bafe4a52ffed74a08013d436fa923408ace803c1ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%223hrKJTa8z4Esn-SlRNL-yZKs4skeAGmX%22%3B%7D\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at test.select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"test.select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"80.243.13.242\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"38054\",\"REDIRECT_QUERY_STRING\":\"tag=562758ee5658e\",\"REDIRECT_URL\":\"/debug/default/toolbar\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"tag=562758ee5658e\",\"REQUEST_URI\":\"/debug/default/toolbar?tag=562758ee5658e\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"PHP_AUTH_USER\":\"semenov\",\"PHP_AUTH_PW\":\"skeeks\",\"REQUEST_TIME_FLOAT\":1445419246.795,\"REQUEST_TIME\":1445419246}','{\"PHPSESSID\":\"bo4hdoq5a89lke7sa2a90be527\",\"_csrf\":\"3d4798ed8a1596f3b16a696bafe4a52ffed74a08013d436fa923408ace803c1ca:2:{i:0;s:5:\\\"_csrf\\\";i:1;s:32:\\\"3hrKJTa8z4Esn-SlRNL-yZKs4skeAGmX\\\";}\"}'),('ejs98004jcnej7u8bfsngjlbb1',1445442452,'s:14:\"__flash|a:0:{}__flash|a:0:{}SKEEKS_CMS_SHOP|i:66;',1445438247,1445438852,'46.235.71.235','{\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"HTTP_X_REAL_IP\":\"46.235.71.235\",\"HTTP_X_FORWARDED_FOR\":\"46.235.71.235\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ACCEPT\":\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36\",\"HTTP_REFERER\":\"http://select-moto.ru/about\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, sdch\",\"HTTP_ACCEPT_LANGUAGE\":\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\",\"HTTP_COOKIE\":\"_csrf=029a9c0956d82481201b988c8613cb543ee35a25c089201d16391382b8aa5060a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22OhpEDI9yn6Fu_6uFaM1NQkNk-QYZA7qB%22%3B%7D; PHPSESSID=ejs98004jcnej7u8bfsngjlbb1\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"46.235.71.235\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"54099\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"/\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"PHP_AUTH_USER\":\"semenov\",\"PHP_AUTH_PW\":\"skeeks\",\"REQUEST_TIME_FLOAT\":1445438852.252,\"REQUEST_TIME\":1445438852}','{\"_csrf\":\"029a9c0956d82481201b988c8613cb543ee35a25c089201d16391382b8aa5060a:2:{i:0;s:5:\\\"_csrf\\\";i:1;s:32:\\\"OhpEDI9yn6Fu_6uFaM1NQkNk-QYZA7qB\\\";}\",\"PHPSESSID\":\"ejs98004jcnej7u8bfsngjlbb1\"}'),('f9g1aat5repoe4kggb11mcdj95',1445442197,'__flash|a:0:{}__id|i:17;',1445430802,1445438597,'46.235.71.235','{\"REDIRECT_STATUS\":\"200\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"HTTP_X_REAL_IP\":\"46.235.71.235\",\"HTTP_X_FORWARDED_FOR\":\"46.235.71.235\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ACCEPT\":\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36\",\"HTTP_REFERER\":\"http://select-moto.ru/~sx/shop/admin-cms-content-element/create?content_id=8&_sx%5Bref%5D=%2F%7Esx%2Fshop%2Fadmin-cms-content-element%2Findex%3Fcontent_id%3D8\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, sdch\",\"HTTP_ACCEPT_LANGUAGE\":\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\",\"HTTP_COOKIE\":\"_csrf=860a70b7e03fb0883cf78bc97e0be5bfb0dd2eba98bd790eaeef71a7497990b0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22xs3uRuCvZ4XbJcDp6dLmKc0ZFn9JfMQ7%22%3B%7D; undefined__skeeks-toolbar__container=closed; PHPSESSID=f9g1aat5repoe4kggb11mcdj95; _identity=81c14c8240fdeebb048e79ea4580d70210dd4c8d2ce429f858ac063332ffc5f0a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A15%3A%22%5B17%2C%22%22%2C2592000%5D%22%3B%7D\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"46.235.71.235\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"47838\",\"REDIRECT_QUERY_STRING\":\"mode=combo&_sx%5Bsx-empty-layout%5D=true&_sx%5Bno-actions%5D=true\",\"REDIRECT_URL\":\"/~sx/cms/admin-tree\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"mode=combo&_sx%5Bsx-empty-layout%5D=true&_sx%5Bno-actions%5D=true\",\"REQUEST_URI\":\"/~sx/cms/admin-tree?mode=combo&_sx%5Bsx-empty-layout%5D=true&_sx%5Bno-actions%5D=true\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"PHP_AUTH_USER\":\"semenov\",\"PHP_AUTH_PW\":\"skeeks\",\"REQUEST_TIME_FLOAT\":1445438597.897,\"REQUEST_TIME\":1445438597}','{\"_csrf\":\"860a70b7e03fb0883cf78bc97e0be5bfb0dd2eba98bd790eaeef71a7497990b0a:2:{i:0;s:5:\\\"_csrf\\\";i:1;s:32:\\\"xs3uRuCvZ4XbJcDp6dLmKc0ZFn9JfMQ7\\\";}\",\"undefined__skeeks-toolbar__container\":\"closed\",\"PHPSESSID\":\"f9g1aat5repoe4kggb11mcdj95\",\"_identity\":\"81c14c8240fdeebb048e79ea4580d70210dd4c8d2ce429f858ac063332ffc5f0a:2:{i:0;s:9:\\\"_identity\\\";i:1;s:15:\\\"[17,\\\"\\\",2592000]\\\";}\"}'),('hq44csei0p923kjsjl1m3l1gm6',1445388421,'s:35:\"__flash|a:0:{}__flash|a:0:{}__id|i:1;',1445383269,1445384821,'91.219.165.198','{\"REDIRECT_STATUS\":\"200\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"HTTP_X_REAL_IP\":\"91.219.165.198\",\"HTTP_X_FORWARDED_FOR\":\"91.219.165.198\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ACCEPT\":\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36\",\"HTTP_REFERER\":\"http://select-moto.ru/katalog?SearchProductsModel%5Btype_price_id%5D=4&SearchProductsModel%5Bprice_from%5D=&SearchProductsModel%5Bprice_to%5D=&SearchRelatedPropertiesModel%5BpropertyB7ef4d74ed5e1a63a0bcae5f8acc2491SxrangeFrom%5D=&SearchRelatedPropertiesModel%5BpropertyB7ef4d74ed5e1a63a0bcae5f8acc2491SxrangeTo%5D=&SearchRelatedPropertiesModel%5Bproperty3d09aeeae6440e233939548da918b4c6SxrangeFrom%5D=&SearchRelatedPropertiesModel%5Bproperty3d09aeeae6440e233939548da918b4c6SxrangeTo%5D=&SearchRelatedPropertiesModel%5Bproperty55a730049e5505f172c07ceef0f549adSxrangeFrom%5D=&SearchRelatedPropertiesModel%5Bproperty55a730049e5505f172c07ceef0f549adSxrangeTo%5D=&SearchRelatedPropertiesModel%5Bmarka%5D=&SearchRelatedPropertiesModel%5Btype%5D=\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, sdch\",\"HTTP_ACCEPT_LANGUAGE\":\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\",\"HTTP_COOKIE\":\"_csrf=b0c1d1b388099d3f429c0bfe39a808e6de4107f0cf97292dc4cd59d66504322aa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22_6HsaRkMzajddyDdNBbfnBeLS5CzGTFx%22%3B%7D; PHPSESSID=hq44csei0p923kjsjl1m3l1gm6; undefined__skeeks-toolbar__container=closed; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"91.219.165.198\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"40476\",\"REDIRECT_URL\":\"/katalog/moto/48-yamaha-xv1700a-road-star-midnight-silverado\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"/katalog/moto/48-yamaha-xv1700a-road-star-midnight-silverado\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"PHP_AUTH_USER\":\"semenov\",\"PHP_AUTH_PW\":\"skeeks\",\"REQUEST_TIME_FLOAT\":1445384821.432,\"REQUEST_TIME\":1445384821}','{\"_csrf\":\"b0c1d1b388099d3f429c0bfe39a808e6de4107f0cf97292dc4cd59d66504322aa:2:{i:0;s:5:\\\"_csrf\\\";i:1;s:32:\\\"_6HsaRkMzajddyDdNBbfnBeLS5CzGTFx\\\";}\",\"PHPSESSID\":\"hq44csei0p923kjsjl1m3l1gm6\",\"undefined__skeeks-toolbar__container\":\"closed\",\"_identity\":\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\\\"_identity\\\";i:1;s:46:\\\"[1,\\\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\\\",2592000]\\\";}\"}'),('kdeib16k8ubbefbder24b1pq92',1445405905,'s:14:\"__flash|a:0:{}\";',1445402305,1445402305,'66.249.64.222','{\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"HTTP_X_REAL_IP\":\"66.249.64.222\",\"HTTP_X_FORWARDED_FOR\":\"66.249.64.222\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ACCEPT\":\"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\",\"HTTP_FROM\":\"googlebot(at)googlebot.com\",\"HTTP_ACCEPT_ENCODING\":\"gzip,deflate\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"66.249.64.222\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"46043\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"/\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"REQUEST_TIME_FLOAT\":1445402305.488,\"REQUEST_TIME\":1445402305}','[]'),('mhggbsl9fl2nnicpjf28gnqjs7',1445398100,'s:14:\"__flash|a:0:{}\";',1445394500,1445394500,'66.249.64.217','{\"REDIRECT_STATUS\":\"200\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"HTTP_X_REAL_IP\":\"66.249.64.217\",\"HTTP_X_FORWARDED_FOR\":\"66.249.64.217\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ACCEPT\":\"text/plain,text/html\",\"HTTP_FROM\":\"googlebot(at)googlebot.com\",\"HTTP_ACCEPT_ENCODING\":\"gzip,deflate\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"66.249.64.217\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"41212\",\"REDIRECT_URL\":\"/robots.txt\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"/robots.txt\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"REQUEST_TIME_FLOAT\":1445394500.295,\"REQUEST_TIME\":1445394500}','[]'),('nuj5r4cej0t7vl2ad0ckq6vik7',1445418196,'s:14:\"__flash|a:0:{}\";',1445414596,1445414596,'80.243.13.242','{\"REDIRECT_STATUS\":\"200\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"CONTENT_LENGTH\":\"68\",\"HTTP_X_REAL_IP\":\"80.243.13.242\",\"HTTP_X_FORWARDED_FOR\":\"80.243.13.242\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_CACHE_CONTROL\":\"max-age=0\",\"HTTP_ACCEPT\":\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\",\"HTTP_ORIGIN\":\"http://select-moto.ru\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36\",\"CONTENT_TYPE\":\"application/x-www-form-urlencoded\",\"HTTP_REFERER\":\"http://select-moto.ru/katalog/moto?SearchProductsModel%5Btype_price_id%5D=4&SearchProductsModel%5Bprice_from%5D=&SearchProductsModel%5Bprice_to%5D=&SearchRelatedPropertiesModel%5BpropertyB7ef4d74ed5e1a63a0bcae5f8acc2491SxrangeFrom%5D=&SearchRelatedPropertiesModel%5BpropertyB7ef4d74ed5e1a63a0bcae5f8acc2491SxrangeTo%5D=&SearchRelatedPropertiesModel%5Bproperty3d09aeeae6440e233939548da918b4c6SxrangeFrom%5D=&SearchRelatedPropertiesModel%5Bproperty3d09aeeae6440e233939548da918b4c6SxrangeTo%5D=&SearchRelatedPropertiesModel%5Bproperty55a730049e5505f172c07ceef0f549adSxrangeFrom%5D=&SearchRelatedPropertiesModel%5Bproperty55a730049e5505f172c07ceef0f549adSxrangeTo%5D=&SearchRelatedPropertiesModel%5Bmarka%5D=&SearchRelatedPropertiesModel%5Btype%5D=\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_ACCEPT_LANGUAGE\":\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\",\"HTTP_COOKIE\":\"_csrf=36ae95e0ae82ccce63bc5f65f6141cbba9e04158e018b793eff67c348bf7ec40a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22b48lsAL_Vtoq2H2EUmqlOq-QoQKVvzJ8%22%3B%7D; PHPSESSID=nuj5r4cej0t7vl2ad0ckq6vik7; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=opened\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"80.243.13.242\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"39578\",\"REDIRECT_QUERY_STRING\":\"_sx%5Bref%5D=%2Fkatalog%2Fmoto%3FSearchProductsModel%255Btype_price_id%255D%3D4%26SearchProductsModel%255Bprice_from%255D%3D%26SearchProductsModel%255Bprice_to%255D%3D%26SearchRelatedPropertiesModel%255BpropertyB7ef4d74ed5e1a63a0bcae5f8acc2491SxrangeFrom%255D%3D%26SearchRelatedPropertiesModel%255BpropertyB7ef4d74ed5e1a63a0bcae5f8acc2491SxrangeTo%255D%3D%26SearchRelatedPropertiesModel%255Bproperty3d09aeeae6440e233939548da918b4c6SxrangeFrom%255D%3D%26SearchRelatedPropertiesModel%255Bproperty3d09aeeae6440e233939548da918b4c6SxrangeTo%255D%3D%26SearchRelatedPropertiesModel%255Bproperty55a730049e5505f172c07ceef0f549adSxrangeFrom%255D%3D%26SearchRelatedPropertiesModel%255Bproperty55a730049e5505f172c07ceef0f549adSxrangeTo%255D%3D%26SearchRelatedPropertiesModel%255Bmarka%255D%3D%26SearchRelatedPropertiesModel%255Btype%255D%3D\",\"REDIRECT_URL\":\"/~sx/admin/auth/logout\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"POST\",\"QUERY_STRING\":\"_sx%5Bref%5D=%2Fkatalog%2Fmoto%3FSearchProductsModel%255Btype_price_id%255D%3D4%26SearchProductsModel%255Bprice_from%255D%3D%26SearchProductsModel%255Bprice_to%255D%3D%26SearchRelatedPropertiesModel%255BpropertyB7ef4d74ed5e1a63a0bcae5f8acc2491SxrangeFrom%255D%3D%26SearchRelatedPropertiesModel%255BpropertyB7ef4d74ed5e1a63a0bcae5f8acc2491SxrangeTo%255D%3D%26SearchRelatedPropertiesModel%255Bproperty3d09aeeae6440e233939548da918b4c6SxrangeFrom%255D%3D%26SearchRelatedPropertiesModel%255Bproperty3d09aeeae6440e233939548da918b4c6SxrangeTo%255D%3D%26SearchRelatedPropertiesModel%255Bproperty55a730049e5505f172c07ceef0f549adSxrangeFrom%255D%3D%26SearchRelatedPropertiesModel%255Bproperty55a730049e5505f172c07ceef0f549adSxrangeTo%255D%3D%26SearchRelatedPropertiesModel%255Bmarka%255D%3D%26SearchRelatedPropertiesModel%255Btype%255D%3D\",\"REQUEST_URI\":\"/~sx/admin/auth/logout?_sx%5Bref%5D=%2Fkatalog%2Fmoto%3FSearchProductsModel%255Btype_price_id%255D%3D4%26SearchProductsModel%255Bprice_from%255D%3D%26SearchProductsModel%255Bprice_to%255D%3D%26SearchRelatedPropertiesModel%255BpropertyB7ef4d74ed5e1a63a0bcae5f8acc2491SxrangeFrom%255D%3D%26SearchRelatedPropertiesModel%255BpropertyB7ef4d74ed5e1a63a0bcae5f8acc2491SxrangeTo%255D%3D%26SearchRelatedPropertiesModel%255Bproperty3d09aeeae6440e233939548da918b4c6SxrangeFrom%255D%3D%26SearchRelatedPropertiesModel%255Bproperty3d09aeeae6440e233939548da918b4c6SxrangeTo%255D%3D%26SearchRelatedPropertiesModel%255Bproperty55a730049e5505f172c07ceef0f549adSxrangeFrom%255D%3D%26SearchRelatedPropertiesModel%255Bproperty55a730049e5505f172c07ceef0f549adSxrangeTo%255D%3D%26SearchRelatedPropertiesModel%255Bmarka%255D%3D%26SearchRelatedPropertiesModel%255Btype%255D%3D\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"PHP_AUTH_USER\":\"semenov\",\"PHP_AUTH_PW\":\"skeeks\",\"REQUEST_TIME_FLOAT\":1445414596.02,\"REQUEST_TIME\":1445414596}','{\"_csrf\":\"36ae95e0ae82ccce63bc5f65f6141cbba9e04158e018b793eff67c348bf7ec40a:2:{i:0;s:5:\\\"_csrf\\\";i:1;s:32:\\\"b48lsAL_Vtoq2H2EUmqlOq-QoQKVvzJ8\\\";}\",\"PHPSESSID\":\"nuj5r4cej0t7vl2ad0ckq6vik7\",\"_identity\":\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\\\"_identity\\\";i:1;s:46:\\\"[1,\\\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\\\",2592000]\\\";}\",\"undefined__skeeks-toolbar__container\":\"opened\"}'),('rdb80apng7jkrgdnnejfcasnp6',1445438124,'s:14:\"__flash|a:0:{}\";',1445434524,1445434524,'66.249.67.208','{\"REDIRECT_STATUS\":\"200\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"HTTP_X_REAL_IP\":\"66.249.67.208\",\"HTTP_X_FORWARDED_FOR\":\"66.249.67.208\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ACCEPT\":\"text/plain,text/html\",\"HTTP_FROM\":\"googlebot(at)googlebot.com\",\"HTTP_ACCEPT_ENCODING\":\"gzip,deflate\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"66.249.67.208\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"58521\",\"REDIRECT_URL\":\"/robots.txt\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"/robots.txt\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"REQUEST_TIME_FLOAT\":1445434524.349,\"REQUEST_TIME\":1445434524}','[]'),('recd17p032tu22p1f9vbjk1681',1445389198,'s:14:\"__flash|a:0:{}__flash|a:0:{}SKEEKS_CMS_SHOP|i:63;',1445385583,1445385598,'91.219.165.198','{\"REDIRECT_STATUS\":\"200\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"HTTP_X_REAL_IP\":\"91.219.165.198\",\"HTTP_X_FORWARDED_FOR\":\"91.219.165.198\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_ACCEPT\":\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36\",\"HTTP_REFERER\":\"http://select-moto.ru/katalog\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, sdch\",\"HTTP_ACCEPT_LANGUAGE\":\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\",\"HTTP_COOKIE\":\"PHPSESSID=recd17p032tu22p1f9vbjk1681; _csrf=6a8b51a504d8bea78321afc60b883dff7b2cd4ccfcfcf3c51c4fde291214311da%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220Jg3saVXgwUkWlg54drpwy3U5AstQ48y%22%3B%7D\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"91.219.165.198\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"60623\",\"REDIRECT_URL\":\"/katalog/moto/48-yamaha-xv1700a-road-star-midnight-silverado\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"/katalog/moto/48-yamaha-xv1700a-road-star-midnight-silverado\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"PHP_AUTH_USER\":\"semenov\",\"PHP_AUTH_PW\":\"skeeks\",\"REQUEST_TIME_FLOAT\":1445385597.906,\"REQUEST_TIME\":1445385597}','{\"PHPSESSID\":\"recd17p032tu22p1f9vbjk1681\",\"_csrf\":\"6a8b51a504d8bea78321afc60b883dff7b2cd4ccfcfcf3c51c4fde291214311da:2:{i:0;s:5:\\\"_csrf\\\";i:1;s:32:\\\"0Jg3saVXgwUkWlg54drpwy3U5AstQ48y\\\";}\"}'),('rmjf5n9bp29vvicnpksslvmi85',1445386869,'s:14:\"__flash|a:0:{}\";',1445383269,1445383269,'91.219.165.198','{\"REDIRECT_STATUS\":\"200\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"select-moto.ru\",\"CONTENT_LENGTH\":\"66\",\"HTTP_X_REAL_IP\":\"91.219.165.198\",\"HTTP_X_FORWARDED_FOR\":\"91.219.165.198\",\"HTTP_X_FORWARDED_PROTO\":\"http\",\"HTTP_CACHE_CONTROL\":\"max-age=0\",\"HTTP_ACCEPT\":\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\",\"HTTP_ORIGIN\":\"http://select-moto.ru\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_USER_AGENT\":\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36\",\"CONTENT_TYPE\":\"application/x-www-form-urlencoded\",\"HTTP_REFERER\":\"http://select-moto.ru/\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_ACCEPT_LANGUAGE\":\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\",\"HTTP_COOKIE\":\"_csrf=b0c1d1b388099d3f429c0bfe39a808e6de4107f0cf97292dc4cd59d66504322aa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22_6HsaRkMzajddyDdNBbfnBeLS5CzGTFx%22%3B%7D; PHPSESSID=rmjf5n9bp29vvicnpksslvmi85; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=closed\",\"PATH\":\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\",\"SERVER_SIGNATURE\":\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\\n\",\"SERVER_SOFTWARE\":\"Apache/2.4.7 (Ubuntu)\",\"SERVER_NAME\":\"select-moto.ru\",\"SERVER_ADDR\":\"127.0.0.56\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"91.219.165.198\",\"DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"/var/www/sites/select-moto.ru/frontend/web/\",\"SERVER_ADMIN\":\"support@skeeks.com\",\"SCRIPT_FILENAME\":\"/var/www/sites/select-moto.ru/frontend/web/index.php\",\"REMOTE_PORT\":\"54816\",\"REDIRECT_QUERY_STRING\":\"_sx%5Bref%5D=%2F\",\"REDIRECT_URL\":\"/~logout\",\"GATEWAY_INTERFACE\":\"CGI/1.1\",\"SERVER_PROTOCOL\":\"HTTP/1.0\",\"REQUEST_METHOD\":\"POST\",\"QUERY_STRING\":\"_sx%5Bref%5D=%2F\",\"REQUEST_URI\":\"/~logout?_sx%5Bref%5D=%2F\",\"SCRIPT_NAME\":\"/index.php\",\"PHP_SELF\":\"/index.php\",\"PHP_AUTH_USER\":\"semenov\",\"PHP_AUTH_PW\":\"skeeks\",\"REQUEST_TIME_FLOAT\":1445383269.826,\"REQUEST_TIME\":1445383269}','{\"_csrf\":\"b0c1d1b388099d3f429c0bfe39a808e6de4107f0cf97292dc4cd59d66504322aa:2:{i:0;s:5:\\\"_csrf\\\";i:1;s:32:\\\"_6HsaRkMzajddyDdNBbfnBeLS5CzGTFx\\\";}\",\"PHPSESSID\":\"rmjf5n9bp29vvicnpksslvmi85\",\"_identity\":\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\\\"_identity\\\";i:1;s:46:\\\"[1,\\\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\\\",2592000]\\\";}\",\"undefined__skeeks-toolbar__container\":\"closed\"}');
/*!40000 ALTER TABLE `cms_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_site`
--

DROP TABLE IF EXISTS `cms_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `def` char(1) NOT NULL DEFAULT 'N',
  `priority` int(11) NOT NULL DEFAULT '500',
  `code` char(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `server_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `active` (`active`),
  KEY `server_name` (`server_name`),
  KEY `def` (`def`),
  KEY `priority` (`priority`),
  KEY `cms_site__image_id` (`image_id`),
  CONSTRAINT `cms_site_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_site_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_site__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Сайты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site`
--

LOCK TABLES `cms_site` WRITE;
/*!40000 ALTER TABLE `cms_site` DISABLE KEYS */;
INSERT INTO `cms_site` VALUES (1,1,1,1432128290,1445584852,'Y','Y',50,'s1','Сайт 1','','',NULL);
/*!40000 ALTER TABLE `cms_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_site_domain`
--

DROP TABLE IF EXISTS `cms_site_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_site_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `site_code` char(15) NOT NULL,
  `domain` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`,`site_code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `cms_site_domain_site_code` (`site_code`),
  CONSTRAINT `cms_site_domain_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_site_domain_site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_site_domain_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Доменные имена сайтов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site_domain`
--

LOCK TABLES `cms_site_domain` WRITE;
/*!40000 ALTER TABLE `cms_site_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_site_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_storage_file`
--

DROP TABLE IF EXISTS `cms_storage_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_storage_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) NOT NULL,
  `cluster_id` varchar(16) DEFAULT NULL,
  `cluster_file` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `size` bigint(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `mime_type` varchar(16) DEFAULT NULL,
  `extension` varchar(16) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `name_to_save` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description_short` text,
  `description_full` text,
  `image_height` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `linked_to_model` varchar(255) DEFAULT NULL,
  `linked_to_value` varchar(255) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `src` (`src`),
  UNIQUE KEY `cluster_id` (`cluster_id`,`cluster_file`),
  KEY `cluster_id_2` (`cluster_id`),
  KEY `cluster_file` (`cluster_file`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `size` (`size`),
  KEY `extension` (`extension`),
  KEY `name_to_save` (`name_to_save`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `mime_type` (`mime_type`),
  KEY `image_height` (`image_height`),
  KEY `image_width` (`image_width`),
  KEY `linked_to_model` (`linked_to_model`),
  KEY `linked_to_value` (`linked_to_value`),
  KEY `published_at` (`published_at`),
  CONSTRAINT `storage_file_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `storage_file_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2185 DEFAULT CHARSET=utf8 COMMENT='Файл';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_storage_file`
--

LOCK TABLES `cms_storage_file` WRITE;
/*!40000 ALTER TABLE `cms_storage_file` DISABLE KEYS */;
INSERT INTO `cms_storage_file` VALUES (2181,'/uploads/all/aa/0c/cd/aa0ccddf4df24b7289c489aa4012dc44.jpg','local','aa/0c/cd/aa0ccddf4df24b7289c489aa4012dc44.jpg',1,1,1456747384,1456747386,6326,'image','image/jpeg','jpg','a_66be1587.jpg',NULL,'Семенов Александр',NULL,NULL,223,200,NULL,NULL,1456747384),(2182,'/uploads/all/5a/e4/ca/5ae4cafa3e35dd4c75bfe7f45838d577.jpg','local','5a/e4/ca/5ae4cafa3e35dd4c75bfe7f45838d577.jpg',1,1,1456747576,1456747576,447668,'image','image/jpeg','jpg','gandex.ru-26_7569_mv-agusta-sport-bike-senna.jpg',NULL,'Салон',NULL,NULL,1200,1920,NULL,NULL,1456747576),(2183,'/uploads/all/d0/6a/cc/d06acc2196f850b1b666d37783b50224.jpg','local','d0/6a/cc/d06acc2196f850b1b666d37783b50224.jpg',1,1,1456747626,1456747626,509796,'image','image/jpeg','jpg','gandex.ru-26_1223_suzuki-sport-bike.jpg',NULL,'Салон',NULL,NULL,1200,1920,NULL,NULL,1456747626),(2184,'/uploads/all/d7/ae/0e/d7ae0ea40cfdad531fdfbe710bf8726e.jpg','local','d7/ae/0e/d7ae0ea40cfdad531fdfbe710bf8726e.jpg',1,1,1456747889,1456747889,210118,'image','image/jpeg','jpg','honda-cbr-motorcycle-yap.jpg',NULL,'Мотоцикл 1',NULL,NULL,960,1080,NULL,NULL,1456747889);
/*!40000 ALTER TABLE `cms_storage_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tree`
--

DROP TABLE IF EXISTS `cms_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `image_full_id` int(11) DEFAULT NULL,
  `description_short` longtext,
  `description_full` longtext,
  `files_depricated` longtext,
  `code` varchar(64) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pids` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `dir` text,
  `has_children` smallint(1) DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `published_at` int(11) DEFAULT NULL,
  `redirect` varchar(500) DEFAULT NULL,
  `tree_menu_ids` varchar(500) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `site_code` char(15) NOT NULL,
  `tree_type_id` int(11) DEFAULT NULL,
  `description_short_type` varchar(10) NOT NULL DEFAULT 'text',
  `description_full_type` varchar(10) NOT NULL DEFAULT 'text',
  `redirect_tree_id` int(11) DEFAULT NULL,
  `redirect_code` int(11) NOT NULL DEFAULT '301',
  `name_hidden` varchar(255) DEFAULT NULL,
  `view_file` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid_2` (`pid`,`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `seo_page_name` (`code`),
  KEY `pid` (`pid`),
  KEY `pids` (`pids`),
  KEY `level` (`level`),
  KEY `priority` (`priority`),
  KEY `has_children` (`has_children`),
  KEY `published_at` (`published_at`),
  KEY `redirect` (`redirect`(255)),
  KEY `tree_menu_ids` (`tree_menu_ids`(255)),
  KEY `meta_title` (`meta_title`(255)),
  KEY `site_code` (`site_code`),
  KEY `tree_type_id` (`tree_type_id`),
  KEY `description_short_type` (`description_short_type`),
  KEY `description_full_type` (`description_full_type`),
  KEY `image_id` (`image_id`),
  KEY `image_full_id` (`image_full_id`),
  KEY `redirect_tree_id` (`redirect_tree_id`),
  KEY `redirect_code` (`redirect_code`),
  KEY `name_hidden` (`name_hidden`),
  KEY `view_file` (`view_file`),
  CONSTRAINT `cms_tree_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree_pid_cms_tree` FOREIGN KEY (`pid`) REFERENCES `cms_tree` (`id`),
  CONSTRAINT `cms_tree_site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_tree_type_id` FOREIGN KEY (`tree_type_id`) REFERENCES `cms_tree_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree__image_full_id` FOREIGN KEY (`image_full_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree__redirect_tree_id` FOREIGN KEY (`redirect_tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='Страницы дерево';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree`
--

LOCK TABLES `cms_tree` WRITE;
/*!40000 ALTER TABLE `cms_tree` DISABLE KEYS */;
INSERT INTO `cms_tree` VALUES (1,1,1,1416084922,1456748211,'Главная страница',NULL,NULL,'','<p style=\"text-align: center;\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"//www.youtube.com/embed/u9JRc27WVYY\" width=\"640\"></iframe></p>\r\n\r\n<p>Почему мотоциклы пользуются такой популярностью у людей разных возрастов? Да потому что мотоцикл &ndash; это, прежде всего, свобода! Вам никогда не придётся стоять в пробках, которые в Москве, увы, не редкость</p>\r\n','',NULL,NULL,'',0,NULL,1,0,NULL,'','','Y','Мотосалон в Москве. Магазин мотоциклов','Select-Moto - ведущий мотосалон в Москве и России','мотосалон, мотосалон в москве, мотосалон в россии, мотосалоны, магазин мотоциклов, магазин мотоциклов в москве','s1',1,'text','editor',NULL,301,'',''),(9,1,1,1442576764,1447163123,'Каталог',NULL,NULL,'','','','katalog',1,'1',1,'katalog',1,100,NULL,'','','Y','Каталог мото техники','','','s1',5,'text','text',31,301,'',NULL),(16,1,1,1442577455,1456748230,'О компании',NULL,NULL,'','<p style=\"text-align: center;\">\r\n  <iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"//www.youtube.com/embed/u9JRc27WVYY\" width=\"640\">\r\n  </iframe>\r\n</p>\r\n<p style=\"text-align: center;\">&nbsp;\r\n</p>\r\n<p style=\"text-align: center;\">Наша компания ООО&nbsp;&laquo;СкикС&raquo;&nbsp;(SkeekS), основана в 2010 году. И вот уже более 5 лет, мы активно развиваемся в этой сфере деятельности.\r\n</p>\r\n<p style=\"text-align: center;\">За эти годы, мы реализовали много интересных и полезных проектов, как для наших клиентов, так и своих собственных.\r\n</p>\r\n<p style=\"text-align: center;\">В нашей работе, мы всегда используем последние стабильные разработки в области IT, а это немаловажно при строительстве современных web приложений, сайтов, проектов.\r\n</p>\r\n<p style=\"text-align: center;\">Так же наша компания, успешно развивает собственный продукт: &laquo;<a href=\"http://skeeks.com/~skeeks-redirect?url=aHR0cDovL2Ntcy5za2Vla3MuY29tLw%3D%3D\">SkeekS CMS &mdash; управление сайтом</a>&raquo;\r\n</p>\r\n<p style=\"text-align: center;\">Мы&nbsp;будем рады видеть вас в&nbsp;числе наших клиентов!\r\n</p>\r\n<p>&nbsp;\r\n</p>\r\n<p>&nbsp;\r\n</p>\r\n<h2>&nbsp;\r\n</h2>\r\n','','about',1,'1',1,'about',0,200,NULL,'','','Y','О Компании Select-moto','Информация о компании Select-moto','','s1',2,'text','editor',NULL,301,'',''),(17,1,1,1442577460,1456689350,'Контакты',NULL,NULL,'','','','contacts',1,'1',1,'contacts',1,300,NULL,'','','Y','Контакты мотосалона, Москва, МКАД, ТК \"АНГАР АВТО\" (2 этаж, левое крыло мотосалон SELECT MOTO)','Контактная информация Select-moto: Email: selectmoto@yandex.ru, +7 (499) 390-89-58, Москва, МКАД, ТК \"АНГАР АВТО\" (2 этаж, левое крыло мотосалон SELECT MOTO)','','s1',2,'text','text',NULL,301,'','contacts'),(18,1,1,1442577466,1446903800,'Новости',NULL,NULL,'','','','news',1,'1',1,'news',0,400,NULL,'','','Y','Новости и акции Select-moto','Последние новости и акции компании  Select-moto','','s1',2,'text','editor',NULL,301,'',NULL),(31,1,1,1445097511,1456746934,'Мототехника',NULL,NULL,'','<p>Как ни странно, в наше время, когда купить можно практически все, были бы деньги, покупка мотоцикла для человека никогда раньше этого не делавшего, может оказаться делом весьма не легким. Для начала, хотя бы потому, что покупка мотоцикла - не рядовое приобретение. Например, покупка автомобиля зачастую является просто приобретением транспортного средства для перемещения из точки А в точку Б, то есть иначе говоря для хозяйственных нужд и удобства. Мотоциклы же покупают, как правило, люди,&nbsp;увлеченные данным видом техники. Хоть мотоцикл, конечно же, тоже является транспортным средством, но покупают его для иных целей, так сказать для души и зачастую это приобретение никак не связано с практическими задачами. Мотоциклист прокупает мечту, верного друга, предмет своей любви...</p>\r\n',NULL,'moto',9,'1/9',2,'katalog/moto',0,100,NULL,'','','Y','Купить мотоцикл новый и б/у интернет магазин в Москве. Продажа мототехники. ','Наш интернет магазин предлагает купить мототехнику бу известных марок в Москве. Мотоциклы из Японии по приемлемым ценам. ','купить мотоцикл бу в москве, купить мотоцикл в москве, продажа мототехники, купить мотоцикл, купить мототехнику, мототехника бу, мототехника, мототехника интернет, мототехника интернет магазин, мототехника цена, купить мототехнику бу, продажа мототехники бу, японская мототехника, мототехника из японии\r\n','s1',5,'text','editor',NULL,301,'',''),(33,1,1,1445100490,1456746891,'Кредит',NULL,NULL,'','<p style=\"text-align: justify;\"><img alt=\"\" src=\"/uploads/all/77/a6/f3/77a6f38c5694c5acb6756adbbbd9fde9.jpg\" style=\"width: 450px; height: 327px; margin: 10px; float: left;\" /><span style=\"font-size:14px;\">Ни для кого не секрет, что приобретение любой мототехники &ndash; это достаточно дорогостоящая покупка, которую единоразово оплатить может себе позволить далеко не каждый. Именно поэтому купить мотоцикл в кредит решаются очень многие, если не большинство. </span></p>\r\n\r\n<h2 style=\"text-align: justify;\"><span style=\"font-size:14px;\">КУПИТЬ МОТОЦИКЛ В РАССРОЧКУ &ndash; МЕЧТА СТАНОВИТСЯ РЕАЛЬНОСТЬЮ!</span></h2>\r\n\r\n<p><span style=\"font-size:14px;\">Вы хотите, чтобы наконец-то сбылась Ваша заветная мечта и Вы стали обладателем восхитительного байка от наиболее популярных компаний-производителей, но финансовое положение не позволяет сразу же оплатить покупку? В таком случае рационально купить мотоцикл в рассрочку или в кредит! Наше предложение &ndash; это уже сегодня отправиться в путь по дорогам на байке!&nbsp;Мотосалон &laquo;Select-Moto&raquo; открывает возможность всем мотоциклистам&nbsp;заказать мотоцикл с аукционов Японии&nbsp;или Соединенных Штатов или же купить уже имеющийся в салоне байк&nbsp;в рассрочку &ndash; что на сегодняшний день очень актуально!</span></p>\r\n\r\n<p><span style=\"display: none;\">&nbsp;</span><span style=\"font-size:20px;\"><strong>Программа рассрочки в Select-Moto: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></span><span style=\"font-size:20px;\"><strong>&nbsp;</strong></span><span style=\"display: none;\">&nbsp;</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px;\"><span style=\"color:#B22222;\">Первоначальный взнос от 50% &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-size:14px;\"><span style=\"color:#B22222;\">Срок до 6 мес. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-size:14px;\"><span style=\"color:#B22222;\">Переплата в рамках программы </span></span><strong><span style=\"font-size:20px;\"><span style=\"color:#B22222;\">0% &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span></strong></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:20px;\"><strong>Программы кредитования от Select-Moto: &nbsp; &nbsp; &nbsp; </strong></span></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\" cellspacing=\"1\" class=\"sx-table-no-border sx-table-td-padding-10 sx-table-width-100\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style=\"line-height: 20.8px;\"><strong><span style=\"font-size: 14px;\">Базовый кредит</span><span style=\"font-size: 14px;\">:</span></strong></p>\r\n\r\n			<ul style=\"line-height: 20.8px;\">\r\n				<li><span style=\"color: rgb(178, 34, 34);\"><span style=\"font-size: 14px;\">Сумма кредита до 1&nbsp;500&nbsp;000 рублей</span></span></li>\r\n				<li><span style=\"color: rgb(178, 34, 34);\"><span style=\"font-size: 14px;\">Срок кредита от 6 мес. до 5 лет</span></span></li>\r\n				<li><span style=\"color: rgb(178, 34, 34);\"><span style=\"font-size: 14px;\">Первоначальный взнос 0-99%​</span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<p style=\"line-height: 20.8px;\"><span style=\"font-size: 14px;\"><strong>Программа 10-10-10:</strong></span></p>\r\n\r\n			<ul style=\"line-height: 20.8px;\">\r\n				<li><span style=\"font-size: 14px;\"><span style=\"color: rgb(178, 34, 34);\">Первый взнос 10%</span></span></li>\r\n				<li><span style=\"font-size: 14px;\"><span style=\"color: rgb(178, 34, 34);\">Срок кредита 10 мес.</span></span></li>\r\n				<li><span style=\"font-size: 14px;\"><span style=\"color: rgb(178, 34, 34);\">Переплата 10%</span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<p><strong>Программа 15-15-15:</strong></p>\r\n\r\n			<ul style=\"line-height: 20.8px;\">\r\n				<li><span style=\"color: rgb(178, 34, 34);\"><span style=\"font-size: 14px;\">Первый взнос 15%</span></span></li>\r\n				<li><span style=\"color: rgb(178, 34, 34);\"><span style=\"font-size: 14px;\">Срок кредита 15 мес.</span></span></li>\r\n				<li><span style=\"color: rgb(178, 34, 34);\"><span style=\"font-size: 14px;\">Переплата 15%</span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<p><strong>Программа льготного кредитования:</strong></p>\r\n\r\n			<ul style=\"line-height: 20.8px;\">\r\n				<li><span style=\"font-size: 14px;\"><span style=\"color: rgb(178, 34, 34);\">Сумма кредита до 400&nbsp;000</span></span></li>\r\n				<li><span style=\"font-size: 14px;\"><span style=\"color: rgb(178, 34, 34);\">Первый взнос 20%</span></span></li>\r\n				<li><span style=\"font-size: 14px;\"><span style=\"color: rgb(178, 34, 34);\">Срок 12 мес.</span></span></li>\r\n				<li><span style=\"font-size: 14px;\"><span style=\"color: rgb(178, 34, 34);\">Переплата&nbsp;<strong>8,5%</strong>&nbsp;от стоимости техники</span></span></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"http://select-moto.ru/katalog/moto\" target=\"_blank\">Каталог мотоциклов &gt;&gt;&gt;</a></h3>\r\n',NULL,'kredit',1,'1',1,'kredit',0,600,NULL,'','','N','Мотоцикл в кредит и рассрочку','На нашем сайте вы можете купить мотоцикл в кредит или рассрочку. ','Мотоцикл в кредит, мотоцикл рассрочку, купить мотоцикл в кредит, купить мотоцикл в рассрочку','s1',2,'text','editor',NULL,301,'',''),(34,1,1,1445100499,1456747429,'Услуги',NULL,NULL,'','<div>&nbsp;</div>\r\n\r\n<div>\r\n<p style=\"line-height: 20.8px; text-align: center;\">Наша компания ООО&nbsp;&laquo;СкикС&raquo;&nbsp;(SkeekS), основана в 2010 году. И вот уже более 5 лет, мы активно развиваемся в этой сфере деятельности.</p>\r\n\r\n<p style=\"line-height: 20.8px; text-align: center;\">За эти годы, мы реализовали много интересных и полезных проектов, как для наших клиентов, так и своих собственных.</p>\r\n\r\n<p style=\"line-height: 20.8px; text-align: center;\">В нашей работе, мы всегда используем последние стабильные разработки в области IT, а это немаловажно при строительстве современных web приложений, сайтов, проектов.</p>\r\n\r\n<p style=\"line-height: 20.8px; text-align: center;\">Так же наша компания, успешно развивает собственный продукт: &laquo;<a href=\"http://skeeks.com/~skeeks-redirect?url=aHR0cDovL2Ntcy5za2Vla3MuY29tLw%3D%3D\">SkeekS CMS &mdash; управление сайтом</a>&raquo;</p>\r\n\r\n<p style=\"line-height: 20.8px; text-align: center;\">Мы&nbsp;будем рады видеть вас в&nbsp;числе наших клиентов!</p>\r\n\r\n<p style=\"line-height: 20.8px;\">&nbsp;</p>\r\n\r\n<p style=\"line-height: 20.8px;\">&nbsp;</p>\r\n</div>\r\n\r\n<p style=\"line-height: 20.8px;\">&nbsp;</p>\r\n',NULL,'uslugi',1,'1',1,'uslugi',0,500,NULL,'','','Y','','','','s1',2,'text','editor',NULL,301,'',''),(36,1,1,1445551431,1445598002,'Запчасти и аксессуары',NULL,NULL,NULL,NULL,NULL,'zapchasti-i-aksessuaryi',9,'1/9',2,'katalog/zapchasti-i-aksessuaryi',0,200,NULL,NULL,'','Y',NULL,NULL,NULL,'s1',5,'text','text',NULL,301,NULL,NULL),(67,1,1,1446240401,1446393381,'Доставка и оплата',NULL,NULL,'','',NULL,'dostavka',1,'1',1,'dostavka',0,700,NULL,'','','N','','','','s1',2,'text','text',NULL,301,'',NULL),(68,1,1,1447079556,1447079576,'Марки мотоциклов',NULL,NULL,'','',NULL,'brand',1,'1',1,'brand',0,800,NULL,'','','N','','','','s1',2,'text','text',NULL,301,'',NULL),(69,1,1,1447079593,1447079609,'Типы мотоциклов',NULL,NULL,'','',NULL,'type',1,'1',1,'type',0,900,NULL,'','','N','','','','s1',2,'text','text',NULL,301,'',NULL);
/*!40000 ALTER TABLE `cms_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tree_file`
--

DROP TABLE IF EXISTS `cms_tree_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__tree_id` (`storage_file_id`,`tree_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `tree_id` (`tree_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_tree_file_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_file_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_file__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_file__tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь разделов и файлов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_file`
--

LOCK TABLES `cms_tree_file` WRITE;
/*!40000 ALTER TABLE `cms_tree_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_tree_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tree_image`
--

DROP TABLE IF EXISTS `cms_tree_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__tree_id` (`storage_file_id`,`tree_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `tree_id` (`tree_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_tree_image_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_image_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_image__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_image__tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Связь разделов и файлов изображений';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_image`
--

LOCK TABLES `cms_tree_image` WRITE;
/*!40000 ALTER TABLE `cms_tree_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_tree_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tree_menu`
--

DROP TABLE IF EXISTS `cms_tree_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `cms_tree_menu_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree_menu_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Позиции меню';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_menu`
--

LOCK TABLES `cms_tree_menu` WRITE;
/*!40000 ALTER TABLE `cms_tree_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_tree_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tree_property`
--

DROP TABLE IF EXISTS `cms_tree_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `value` longtext NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  CONSTRAINT `cms_tree_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_tree_type_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Связь свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_property`
--

LOCK TABLES `cms_tree_property` WRITE;
/*!40000 ALTER TABLE `cms_tree_property` DISABLE KEYS */;
INSERT INTO `cms_tree_property` VALUES (1,1,1,1442925965,1444749226,1,9,'2',2,2.0000,NULL),(10,1,1,1445102917,1456746934,1,31,'2',2,2.0000,NULL),(11,1,1,1445555968,1445555968,1,36,'2',2,2.0000,NULL),(12,1,1,1449077334,1456748230,2,16,'1',1,1.0000,NULL),(13,1,1,1449077453,1456746891,2,33,'0.9',0,0.9000,NULL),(14,1,1,1449306850,1456747429,2,34,'0.9',0,0.9000,NULL),(15,1,1,1456689350,1456689350,2,17,'',0,0.0000,NULL);
/*!40000 ALTER TABLE `cms_tree_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tree_type`
--

DROP TABLE IF EXISTS `cms_tree_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `description` text,
  `index_for_search` char(1) NOT NULL DEFAULT 'Y',
  `name_meny` varchar(100) DEFAULT NULL,
  `name_one` varchar(100) DEFAULT NULL,
  `viewFile` varchar(255) DEFAULT NULL,
  `default_children_tree_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `index_for_search` (`index_for_search`),
  KEY `name_meny` (`name_meny`),
  KEY `name_one` (`name_one`),
  KEY `viewFile` (`viewFile`),
  KEY `default_children_tree_type` (`default_children_tree_type`),
  CONSTRAINT `cms_tree_type_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_type_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_type__default_children_tree_type` FOREIGN KEY (`default_children_tree_type`) REFERENCES `cms_tree_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Тип раздела';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_type`
--

LOCK TABLES `cms_tree_type` WRITE;
/*!40000 ALTER TABLE `cms_tree_type` DISABLE KEYS */;
INSERT INTO `cms_tree_type` VALUES (1,1,1,1439037415,1445597589,'Главный раздел','home','Y',100,NULL,'','Разделы','Раздел','',2),(2,1,1,1439037424,1445597893,'Текстовый раздел','text','Y',500,NULL,'','Разделы','Раздел','',NULL),(5,1,1,1442576799,1442576799,'Раздел каталога','catalog','Y',500,NULL,'','Разделы','Раздел',NULL,NULL);
/*!40000 ALTER TABLE `cms_tree_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tree_type_property`
--

DROP TABLE IF EXISTS `cms_tree_type_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_type_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `list_type` char(1) NOT NULL DEFAULT 'L',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `multiple_cnt` int(11) DEFAULT NULL,
  `with_description` char(1) DEFAULT NULL,
  `searchable` char(1) NOT NULL DEFAULT 'N',
  `filtrable` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `component` varchar(255) DEFAULT NULL,
  `component_settings` longtext,
  `hint` varchar(255) DEFAULT NULL,
  `smart_filtrable` char(1) NOT NULL DEFAULT 'N',
  `tree_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_2` (`code`,`tree_type_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `list_type` (`list_type`),
  KEY `multiple` (`multiple`),
  KEY `multiple_cnt` (`multiple_cnt`),
  KEY `with_description` (`with_description`),
  KEY `searchable` (`searchable`),
  KEY `filtrable` (`filtrable`),
  KEY `is_required` (`is_required`),
  KEY `version` (`version`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `smart_filtrable` (`smart_filtrable`),
  KEY `tree_type_id` (`tree_type_id`),
  KEY `code` (`code`) USING BTREE,
  CONSTRAINT `cms_tree_type_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree_type_property_tree_type_id` FOREIGN KEY (`tree_type_id`) REFERENCES `cms_tree_type` (`id`),
  CONSTRAINT `cms_tree_type_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Свойство раздела';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_type_property`
--

LOCK TABLES `cms_tree_type_property` WRITE;
/*!40000 ALTER TABLE `cms_tree_type_property` DISABLE KEYS */;
INSERT INTO `cms_tree_type_property` VALUES (1,1,1,1442925901,1442925901,'Как показывать раздел','viewType','Y',500,'S','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeList','YTowOnt9','','N',5),(2,1,1,1449077319,1449077319,'Прозрачность фона','opacity','Y',500,'S','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',2);
/*!40000 ALTER TABLE `cms_tree_type_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tree_type_property_enum`
--

DROP TABLE IF EXISTS `cms_tree_type_property_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_type_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `cms_tree_type_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree_type_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_tree_type_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_type_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств для разделов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_type_property_enum`
--

LOCK TABLES `cms_tree_type_property_enum` WRITE;
/*!40000 ALTER TABLE `cms_tree_type_property_enum` DISABLE KEYS */;
INSERT INTO `cms_tree_type_property_enum` VALUES (1,1,1,1442925925,1442925925,1,'Показывать подразделы','N','tree',500),(2,1,1,1442925940,1442925940,1,'Показывать товары','N','product',500);
/*!40000 ALTER TABLE `cms_tree_type_property_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user`
--

DROP TABLE IF EXISTS `cms_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `info` text,
  `files` text,
  `status_of_life` varchar(255) DEFAULT NULL,
  `gender` enum('men','women') NOT NULL DEFAULT 'men',
  `active` char(1) NOT NULL DEFAULT 'Y',
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `logged_at` int(11) DEFAULT NULL,
  `last_activity_at` int(11) DEFAULT NULL,
  `last_admin_activity_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `password_hash` (`password_hash`),
  KEY `password_reset_token` (`password_reset_token`),
  KEY `name` (`name`),
  KEY `city` (`city`),
  KEY `address` (`address`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `logged_at` (`logged_at`),
  KEY `last_activity_at` (`last_activity_at`),
  KEY `last_admin_activity_at` (`last_admin_activity_at`),
  KEY `image_id` (`image_id`),
  CONSTRAINT `cms_user_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='Пользователь';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user`
--

LOCK TABLES `cms_user` WRITE;
/*!40000 ALTER TABLE `cms_user` DISABLE KEYS */;
INSERT INTO `cms_user` VALUES (1,'root','otv60YW-nV6-8GRI4La3vYNhu_-dmp_n','$2y$13$wvwADOlwaaixz5XQsdaakOfo/bu9n522xRldTYM2.tkVnWy1xXlG2','xBzwPlxW6XqmJtV_cCtmI_8lmHjISRBn_1443102807',NULL,1456849334,'Семенов Александр',2181,'Зеленоград','Зеленоград, ул. Каменка, 2004-25','','','','men','Y',1,NULL,1456744885,1456849334,1456849334);
/*!40000 ALTER TABLE `cms_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user_authclient`
--

DROP TABLE IF EXISTS `cms_user_authclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_authclient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) DEFAULT NULL,
  `provider_identifier` varchar(100) DEFAULT NULL,
  `provider_data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `provider` (`provider`),
  KEY `provider_identifier` (`provider_identifier`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_authclient`
--

LOCK TABLES `cms_user_authclient` WRITE;
/*!40000 ALTER TABLE `cms_user_authclient` DISABLE KEYS */;
INSERT INTO `cms_user_authclient` VALUES (2,1,'vkontakte','2932956','{\"user_id\":2932956,\"uid\":2932956,\"first_name\":\"Александр\",\"last_name\":\"Семенов\",\"sex\":2,\"nickname\":\"\",\"screen_name\":\"semenovsanek\",\"bdate\":\"10.12.1988\",\"city\":1463,\"country\":1,\"timezone\":3,\"photo\":\"http://cs313624.vk.me/v313624956/cd90/K8W0fHiYa8g.jpg\",\"id\":2932956}',NULL,NULL);
/*!40000 ALTER TABLE `cms_user_authclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user_email`
--

DROP TABLE IF EXISTS `cms_user_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `approved` char(1) NOT NULL DEFAULT 'N',
  `def` varchar(1) NOT NULL DEFAULT 'N',
  `approved_key` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`),
  KEY `approved_key` (`approved_key`),
  KEY `approved` (`approved`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  CONSTRAINT `cms_user_email_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_email`
--

LOCK TABLES `cms_user_email` WRITE;
/*!40000 ALTER TABLE `cms_user_email` DISABLE KEYS */;
INSERT INTO `cms_user_email` VALUES (2,1,'semenov@skeeks.com','Y','Y',NULL,1443087856,1456849303),(19,NULL,'test@skeeks.com','N','N',NULL,1446560849,1446560849),(20,NULL,'selectmoto@yandex.ru','N','N',NULL,1446564752,1446564752);
/*!40000 ALTER TABLE `cms_user_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user_phone`
--

DROP TABLE IF EXISTS `cms_user_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `approved` char(1) NOT NULL DEFAULT 'N',
  `def` varchar(1) NOT NULL DEFAULT 'N',
  `approved_key` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`),
  KEY `approved_key` (`approved_key`),
  KEY `approved` (`approved`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  CONSTRAINT `cms_user_phone_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_phone`
--

LOCK TABLES `cms_user_phone` WRITE;
/*!40000 ALTER TABLE `cms_user_phone` DISABLE KEYS */;
INSERT INTO `cms_user_phone` VALUES (4,1,'+7 906 645-26-12','N','Y',NULL,1443102185,1456849303);
/*!40000 ALTER TABLE `cms_user_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user_property`
--

DROP TABLE IF EXISTS `cms_user_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value` (`value`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  CONSTRAINT `cms_user_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_user_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_user_universal_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_user_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_property`
--

LOCK TABLES `cms_user_property` WRITE;
/*!40000 ALTER TABLE `cms_user_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_user_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user_universal_property`
--

DROP TABLE IF EXISTS `cms_user_universal_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_universal_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `list_type` char(1) NOT NULL DEFAULT 'L',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `multiple_cnt` int(11) DEFAULT NULL,
  `with_description` char(1) DEFAULT NULL,
  `searchable` char(1) NOT NULL DEFAULT 'N',
  `filtrable` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `component` varchar(255) DEFAULT NULL,
  `component_settings` text,
  `hint` varchar(255) DEFAULT NULL,
  `smart_filtrable` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `list_type` (`list_type`),
  KEY `multiple` (`multiple`),
  KEY `multiple_cnt` (`multiple_cnt`),
  KEY `with_description` (`with_description`),
  KEY `searchable` (`searchable`),
  KEY `filtrable` (`filtrable`),
  KEY `is_required` (`is_required`),
  KEY `version` (`version`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `smart_filtrable` (`smart_filtrable`),
  CONSTRAINT `cms_user_universal_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_universal_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Свойства пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_universal_property`
--

LOCK TABLES `cms_user_universal_property` WRITE;
/*!40000 ALTER TABLE `cms_user_universal_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_user_universal_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user_universal_property_enum`
--

DROP TABLE IF EXISTS `cms_user_universal_property_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_universal_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `cms_user_universal_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_universal_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_user_universal_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_user_universal_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств типа список';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_universal_property_enum`
--

LOCK TABLES `cms_user_universal_property_enum` WRITE;
/*!40000 ALTER TABLE `cms_user_universal_property_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_user_universal_property_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form2_form`
--

DROP TABLE IF EXISTS `form2_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `code` varchar(32) DEFAULT NULL,
  `emails` text,
  `phones` text,
  `user_ids` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  CONSTRAINT `form2_form_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Формы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form`
--

LOCK TABLES `form2_form` WRITE;
/*!40000 ALTER TABLE `form2_form` DISABLE KEYS */;
INSERT INTO `form2_form` VALUES (2,1,1,1445106305,1456745656,'Обратная связь','','feedback','','',''),(3,1,1,1446565746,1456745649,'Заявка на кредит','','credit','','',NULL);
/*!40000 ALTER TABLE `form2_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form2_form_property`
--

DROP TABLE IF EXISTS `form2_form_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `list_type` char(1) NOT NULL DEFAULT 'L',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `multiple_cnt` int(11) DEFAULT NULL,
  `with_description` char(1) DEFAULT NULL,
  `searchable` char(1) NOT NULL DEFAULT 'N',
  `filtrable` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `component` varchar(255) DEFAULT NULL,
  `component_settings` text,
  `hint` varchar(255) DEFAULT NULL,
  `smart_filtrable` char(1) NOT NULL DEFAULT 'N',
  `form_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`,`form_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `list_type` (`list_type`),
  KEY `multiple` (`multiple`),
  KEY `multiple_cnt` (`multiple_cnt`),
  KEY `with_description` (`with_description`),
  KEY `searchable` (`searchable`),
  KEY `filtrable` (`filtrable`),
  KEY `is_required` (`is_required`),
  KEY `version` (`version`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `smart_filtrable` (`smart_filtrable`),
  KEY `form_id` (`form_id`),
  CONSTRAINT `form2_form_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_property_form2_form` FOREIGN KEY (`form_id`) REFERENCES `form2_form` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Свойство раздела';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_property`
--

LOCK TABLES `form2_form_property` WRITE;
/*!40000 ALTER TABLE `form2_form_property` DISABLE KEYS */;
INSERT INTO `form2_form_property` VALUES (2,1,1,1445106328,1445555040,'Телефон','property77a7cc55fa8579d0cc5a1e7ed69cb36a','Y',1000,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',2),(3,1,1,1445106345,1445555040,'Email','propertyE8b3f4d817d378f70f0f3960cabb3fb8','Y',2000,'S','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',2),(4,1,1,1445106366,1446240917,'Сообщение','property6f35ee36d83ffd4a838167dd9d9b1d9f','Y',3000,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','a:10:{s:4:\"code\";s:1:\"S\";s:4:\"name\";s:10:\"Текст\";s:12:\"fieldElement\";s:8:\"textarea\";s:4:\"rows\";s:1:\"5\";s:8:\"multiple\";s:1:\"N\";s:5:\"model\";N;s:8:\"property\";N;s:10:\"activeForm\";N;s:17:\"defaultAttributes\";a:0:{}s:9:\"namespace\";N;}','','N',2),(5,1,1,1446565811,1446565811,'ФИО','propertyA6fc211cb604fda275a4e34d32e85825','Y',500,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',3),(6,1,1,1446565947,1446565947,'Первоначальный взнос','property58dd739ee993aec8cb98e325357d63ff','Y',500,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',3),(7,1,1,1446565962,1446565965,'Срок кредитования','propertyBf0577cc546d4ea590f9af64e626bdad','Y',500,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','a:0:{}','','N',3),(8,1,1,1446565984,1446565984,'Телефон','property47cb9cab8ad8bf712e039f8b38d28e07','Y',500,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',3),(9,1,1,1446566000,1446566000,'email','property88e32c189846c306a10ebbc467019cf2','Y',500,'S','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',3);
/*!40000 ALTER TABLE `form2_form_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form2_form_property_enum`
--

DROP TABLE IF EXISTS `form2_form_property_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `form2_form_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `form2_form_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_property_enum`
--

LOCK TABLES `form2_form_property_enum` WRITE;
/*!40000 ALTER TABLE `form2_form_property_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `form2_form_property_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form2_form_send`
--

DROP TABLE IF EXISTS `form2_form_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `processed_by` int(11) DEFAULT NULL,
  `processed_at` int(11) DEFAULT NULL,
  `data_values` text,
  `data_labels` text,
  `emails` text,
  `phones` text,
  `user_ids` text,
  `email_message` text,
  `phone_message` text,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `form_id` int(255) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `page_url` varchar(500) DEFAULT NULL,
  `data_server` text,
  `data_session` text,
  `data_cookie` text,
  `data_request` text,
  `additional_data` text,
  `site_code` char(15) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `form_id` (`form_id`),
  KEY `processed_by` (`processed_by`),
  KEY `processed_at` (`processed_at`),
  KEY `status` (`status`),
  KEY `ip` (`ip`),
  KEY `page_url` (`page_url`(255)),
  KEY `site_code` (`site_code`),
  CONSTRAINT `form2_form_send_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send_form_id` FOREIGN KEY (`form_id`) REFERENCES `form2_form` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_send_processed_by` FOREIGN KEY (`processed_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send_site_code_fk` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='Сообщения с форм';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_send`
--

LOCK TABLES `form2_form_send` WRITE;
/*!40000 ALTER TABLE `form2_form_send` DISABLE KEYS */;
INSERT INTO `form2_form_send` VALUES (2,NULL,NULL,1446132340,1446132340,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:19:\"Ваш вопрос\";}','','','',NULL,NULL,0,2,'46.235.71.235','http://select-moto.ru/contacts','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"414\";s:14:\"HTTP_X_REAL_IP\";s:13:\"46.235.71.235\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"46.235.71.235\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"dUt2SHM1NlMFDUE6C1pFEBsiGwI3A2E6TBwGOhxjZBoZHRU4GXQOGQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:101:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:432:\"_csrf=969e23d27ddaefd76f704fa41ca1898fbebb0195349d5f1f3f2e19e7cac0cadda%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22pF7rxosCnimJD6Wi9WproVRIlVcpjA8J%22%3B%7D; undefined__skeeks-toolbar__container=closed; _identity=2af49b2598aeaa95f692bda383a00e1443ccf2d8127cab4e3a43ea49c37dcfcca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A15%3A%22%5B19%2C%22%22%2C2592000%5D%22%3B%7D; PHPSESSID=6qq2cmkn0814t7phdes3e3j7v2\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"46.235.71.235\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59090\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1446132340.8039999;s:12:\"REQUEST_TIME\";i:1446132340;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:19;}','a:4:{s:5:\"_csrf\";s:130:\"969e23d27ddaefd76f704fa41ca1898fbebb0195349d5f1f3f2e19e7cac0cadda:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"pF7rxosCnimJD6Wi9WproVRIlVcpjA8J\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"closed\";s:9:\"_identity\";s:117:\"2af49b2598aeaa95f692bda383a00e1443ccf2d8127cab4e3a43ea49c37dcfcca:2:{i:0;s:9:\"_identity\";i:1;s:15:\"[19,\"\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"6qq2cmkn0814t7phdes3e3j7v2\";}','a:4:{s:5:\"_csrf\";s:56:\"dUt2SHM1NlMFDUE6C1pFEBsiGwI3A2E6TBwGOhxjZBoZHRU4GXQOGQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89161157460\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:17:\"Маню хочу\";}}','','s1',NULL),(3,1,1,1446331785,1446331785,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','','','',NULL,NULL,0,2,'91.219.165.198','http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"360\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"VDZUMzVkR0wkfzFVUS0xdCNeOl1qVgoqDQMuQm0sMi4QGzZdeSYJGA==\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:59:\"http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_csrf=3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22pIefdIv8whnn_2MfY5zqXHubD-bnLBNT%22%3B%7D; undefined__skeeks-toolbar__container=opened; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=gfrn1nteqk035tt7oo5i7bohc6\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"37758\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446331785.9059999;s:12:\"REQUEST_TIME\";i:1446331785;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:4:{s:5:\"_csrf\";s:130:\"3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"pIefdIv8whnn_2MfY5zqXHubD-bnLBNT\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"gfrn1nteqk035tt7oo5i7bohc6\";}','a:4:{s:5:\"_csrf\";s:56:\"VDZUMzVkR0wkfzFVUS0xdCNeOl1qVgoqDQMuQm0sMi4QGzZdeSYJGA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:3:\"asd\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:3:\"asd\";}}','','s1',NULL),(4,1,1,1446331813,1446331813,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','','','',NULL,NULL,0,2,'91.219.165.198','http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"360\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"VDZUMzVkR0wkfzFVUS0xdCNeOl1qVgoqDQMuQm0sMi4QGzZdeSYJGA==\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:59:\"http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_csrf=3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22pIefdIv8whnn_2MfY5zqXHubD-bnLBNT%22%3B%7D; undefined__skeeks-toolbar__container=opened; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=gfrn1nteqk035tt7oo5i7bohc6\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"38103\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446331813.3169999;s:12:\"REQUEST_TIME\";i:1446331813;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:4:{s:5:\"_csrf\";s:130:\"3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"pIefdIv8whnn_2MfY5zqXHubD-bnLBNT\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"gfrn1nteqk035tt7oo5i7bohc6\";}','a:4:{s:5:\"_csrf\";s:56:\"VDZUMzVkR0wkfzFVUS0xdCNeOl1qVgoqDQMuQm0sMi4QGzZdeSYJGA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:3:\"asd\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:3:\"asd\";}}','','s1',NULL),(5,1,1,1446331978,1446331978,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','','','',NULL,NULL,0,2,'91.219.165.198','http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"363\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WG9UcGFJRFYoJjEWBQAybi8HOh4.ewkwAVouATkBMTQcQjYeLQsKAg==\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:59:\"http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_csrf=3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22pIefdIv8whnn_2MfY5zqXHubD-bnLBNT%22%3B%7D; undefined__skeeks-toolbar__container=opened; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=gfrn1nteqk035tt7oo5i7bohc6\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"39727\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446331978.5710001;s:12:\"REQUEST_TIME\";i:1446331978;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:4:{s:5:\"_csrf\";s:130:\"3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"pIefdIv8whnn_2MfY5zqXHubD-bnLBNT\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"gfrn1nteqk035tt7oo5i7bohc6\";}','a:4:{s:5:\"_csrf\";s:56:\"WG9UcGFJRFYoJjEWBQAybi8HOh4.ewkwAVouATkBMTQcQjYeLQsKAg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:3:\"asd\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:3:\"asd\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:3:\"asd\";}}','','s1',NULL),(6,1,1,1446332115,1446332115,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','','','',NULL,NULL,0,2,'91.219.165.198','http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"359\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"ZlNEbFdBT1MWGiEKMwg5axE7KgIIcwI1P2Y.HQ8JOjEifiYCGwMBBw==\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:59:\"http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_csrf=3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22pIefdIv8whnn_2MfY5zqXHubD-bnLBNT%22%3B%7D; undefined__skeeks-toolbar__container=opened; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=gfrn1nteqk035tt7oo5i7bohc6\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"41240\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446332115.3199999;s:12:\"REQUEST_TIME\";i:1446332115;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:4:{s:5:\"_csrf\";s:130:\"3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"pIefdIv8whnn_2MfY5zqXHubD-bnLBNT\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"gfrn1nteqk035tt7oo5i7bohc6\";}','a:4:{s:5:\"_csrf\";s:56:\"ZlNEbFdBT1MWGiEKMwg5axE7KgIIcwI1P2Y.HQ8JOjEifiYCGwMBBw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:3:\"asd\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:2:\"ad\";}}','','s1',NULL),(7,1,1,1446332239,1446332239,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','','','',NULL,NULL,0,2,'91.219.165.198','http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"368\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WGs5eUxwLVkoIlwfKDlbYS8DVxcTQmA/AV5DCBQ4WDscRlsXADJjDQ==\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:59:\"http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_csrf=3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22pIefdIv8whnn_2MfY5zqXHubD-bnLBNT%22%3B%7D; undefined__skeeks-toolbar__container=opened; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=gfrn1nteqk035tt7oo5i7bohc6\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42597\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446332239.4200001;s:12:\"REQUEST_TIME\";i:1446332239;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:4:{s:5:\"_csrf\";s:130:\"3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"pIefdIv8whnn_2MfY5zqXHubD-bnLBNT\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"gfrn1nteqk035tt7oo5i7bohc6\";}','a:4:{s:5:\"_csrf\";s:56:\"WGs5eUxwLVkoIlwfKDlbYS8DVxcTQmA/AV5DCBQ4WDscRlsXADJjDQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:4:\"asdf\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:4:\"asdf\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:4:\"asdf\";}}','','s1',NULL),(8,1,1,1446332922,1446332922,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','','','',NULL,NULL,0,2,'91.219.165.198','http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"363\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"Ty5HZ1FlbVA/ZyIBNSwbaDhGKQkOVyA2Fhs9FgktGDILAyUJHScjBA==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:59:\"http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_csrf=3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22pIefdIv8whnn_2MfY5zqXHubD-bnLBNT%22%3B%7D; undefined__skeeks-toolbar__container=opened; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=gfrn1nteqk035tt7oo5i7bohc6\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"55181\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446332922.8;s:12:\"REQUEST_TIME\";i:1446332922;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:4:{s:5:\"_csrf\";s:130:\"3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"pIefdIv8whnn_2MfY5zqXHubD-bnLBNT\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"gfrn1nteqk035tt7oo5i7bohc6\";}','a:4:{s:5:\"_csrf\";s:56:\"Ty5HZ1FlbVA/ZyIBNSwbaDhGKQkOVyA2Fhs9FgktGDILAyUJHScjBA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:4:\"dfgd\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:3:\"dfg\";}}','','s1',NULL),(9,1,1,1446332978,1446332978,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','','','',NULL,NULL,0,2,'91.219.165.198','http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"362\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"MGFqR0xROTZAKA8hKBhPDkcJBCkTY3RQaVQQNhQZTFR0TAgpABN3Yg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:59:\"http://select-moto.ru/katalog/moto/166-suzuki-boulevard-m50\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_csrf=3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22pIefdIv8whnn_2MfY5zqXHubD-bnLBNT%22%3B%7D; undefined__skeeks-toolbar__container=opened; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=gfrn1nteqk035tt7oo5i7bohc6\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"56022\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446332978.141;s:12:\"REQUEST_TIME\";i:1446332978;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:4:{s:5:\"_csrf\";s:130:\"3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"pIefdIv8whnn_2MfY5zqXHubD-bnLBNT\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"gfrn1nteqk035tt7oo5i7bohc6\";}','a:4:{s:5:\"_csrf\";s:56:\"MGFqR0xROTZAKA8hKBhPDkcJBCkTY3RQaVQQNhQZTFR0TAgpABN3Yg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:4:\"sdfs\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:4:\"dfsd\";}}','','s1',NULL),(10,1,1,1446333434,1446333434,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','','','',NULL,NULL,0,2,'91.219.165.198','http://select-moto.ru/contacts','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"368\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"NThYLncuZjdFcT1IE2cQD0JQNkAoHCtRbA0iXy9mE1VxFTpAO2woYw==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_csrf=3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22pIefdIv8whnn_2MfY5zqXHubD-bnLBNT%22%3B%7D; undefined__skeeks-toolbar__container=opened; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=gfrn1nteqk035tt7oo5i7bohc6\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34110\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446333434.161;s:12:\"REQUEST_TIME\";i:1446333434;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:4:{s:5:\"_csrf\";s:130:\"3ef435012be873675ce22ef656a540e43ee06332f049fe11a0760d57bc21dd5ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"pIefdIv8whnn_2MfY5zqXHubD-bnLBNT\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"gfrn1nteqk035tt7oo5i7bohc6\";}','a:4:{s:5:\"_csrf\";s:56:\"NThYLncuZjdFcT1IE2cQD0JQNkAoHCtRbA0iXy9mE1VxFTpAO2woYw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:3:\"adw\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"sdfsd\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:6:\"sdfsdf\";}}','','s1',NULL),(11,1,1,1446560633,1446562497,1,1446562489,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','semenov@skeeks.com','','',NULL,NULL,10,2,'80.243.13.242','http://select-moto.ru/katalog/moto/181-honda-crf-250l-180','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"366\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"VF8tcVpsOUwTZngfMzxpPRlyS0E.IFMLITUeFzlBVztiJVpAOAV2Lw==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:57:\"http://select-moto.ru/katalog/moto/181-honda-crf-250l-180\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:492:\"_csrf=1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc%22%3B%7D; undefined__skeeks-toolbar__container=opened; _ym_uid=1446457567975666575; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=hdvrl0lri8dl50olrrg1651604\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"41778\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446560633.6240001;s:12:\"REQUEST_TIME\";i:1446560633;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:7:\"_ym_uid\";s:19:\"1446457567975666575\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"hdvrl0lri8dl50olrrg1651604\";}','a:4:{s:5:\"_csrf\";s:56:\"VF8tcVpsOUwTZngfMzxpPRlyS0E.IFMLITUeFzlBVztiJVpAOAV2Lw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:4:\"test\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:4:\"test\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:4:\"test\";}}','','s1',''),(12,1,1,1446562412,1446562437,1,1446562437,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','test@skeeks.com','',NULL,NULL,NULL,5,2,'80.243.13.242','http://select-moto.ru/contacts','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"366\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"anNBZThrZGYtShQLUTs0FydeJ1VcJw4hHxlyA1tGChFcCTZUWgIrBQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:492:\"_csrf=1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc%22%3B%7D; undefined__skeeks-toolbar__container=opened; _ym_uid=1446457567975666575; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=hdvrl0lri8dl50olrrg1651604\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"47405\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446562412.872;s:12:\"REQUEST_TIME\";i:1446562412;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:7:\"_ym_uid\";s:19:\"1446457567975666575\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"hdvrl0lri8dl50olrrg1651604\";}','a:4:{s:5:\"_csrf\";s:56:\"anNBZThrZGYtShQLUTs0FydeJ1VcJw4hHxlyA1tGChFcCTZUWgIrBQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:3:\"asd\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:4:\"asda\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:5:\"sdasd\";}}','','s1',NULL),(13,1,1,1446563923,1446563923,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','test@skeeks.com','',NULL,NULL,NULL,0,2,'80.243.13.242','http://select-moto.ru/contacts','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"362\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"VG5URHQwOEsTVwEqHWBoOhlDMnQQfFIMIQRnIhcdVjxiFCN1Fll3KA==\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:492:\"_csrf=1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc%22%3B%7D; undefined__skeeks-toolbar__container=opened; _ym_uid=1446457567975666575; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=hdvrl0lri8dl50olrrg1651604\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"46920\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446563923.319;s:12:\"REQUEST_TIME\";i:1446563923;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:7:\"_ym_uid\";s:19:\"1446457567975666575\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"hdvrl0lri8dl50olrrg1651604\";}','a:4:{s:5:\"_csrf\";s:56:\"VG5URHQwOEsTVwEqHWBoOhlDMnQQfFIMIQRnIhcdVjxiFCN1Fll3KA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:4:\"asdf\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:4:\"asdf\";}}','','s1',NULL),(14,1,1,1446564095,1446564095,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','test@skeeks.com','',NULL,NULL,NULL,0,2,'80.243.13.242','http://select-moto.ru/contacts','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"360\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"TGpoMC1FNmwLUz1eRBVmHQFHDgBJCVwrOQBbVk5oWBt6EB8BTyx5Dw==\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:492:\"_csrf=1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc%22%3B%7D; undefined__skeeks-toolbar__container=opened; _ym_uid=1446457567975666575; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=hdvrl0lri8dl50olrrg1651604\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"49319\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446564095.8169999;s:12:\"REQUEST_TIME\";i:1446564095;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:7:\"_ym_uid\";s:19:\"1446457567975666575\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"hdvrl0lri8dl50olrrg1651604\";}','a:4:{s:5:\"_csrf\";s:56:\"TGpoMC1FNmwLUz1eRBVmHQFHDgBJCVwrOQBbVk5oWBt6EB8BTyx5Dw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:3:\"asd\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:3:\"asd\";}}','','s1',NULL),(15,1,1,1446564343,1446564367,1,1446564367,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','test@skeeks.com','',NULL,NULL,NULL,5,2,'80.243.13.242','http://select-moto.ru/contacts','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"361\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"TGpoMC1FNmwLUz1eRBVmHQFHDgBJCVwrOQBbVk5oWBt6EB8BTyx5Dw==\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:492:\"_csrf=1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc%22%3B%7D; undefined__skeeks-toolbar__container=opened; _ym_uid=1446457567975666575; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=hdvrl0lri8dl50olrrg1651604\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"53809\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446564343.368;s:12:\"REQUEST_TIME\";i:1446564343;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:7:\"_ym_uid\";s:19:\"1446457567975666575\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"hdvrl0lri8dl50olrrg1651604\";}','a:4:{s:5:\"_csrf\";s:56:\"TGpoMC1FNmwLUz1eRBVmHQFHDgBJCVwrOQBbVk5oWBt6EB8BTyx5Dw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:3:\"sdf\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:4:\"sfwe\";}}','','s1',NULL),(16,1,1,1446564786,1446564786,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'80.243.13.242','http://select-moto.ru/contacts','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"426\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"OWlfR3ZPeE5.UAopHx8oP3REOXcSAxIJTANsIRViFjkPEyh2FCY3LQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:492:\"_csrf=1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc%22%3B%7D; undefined__skeeks-toolbar__container=opened; _ym_uid=1446457567975666575; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=hdvrl0lri8dl50olrrg1651604\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"33701\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446564786.421;s:12:\"REQUEST_TIME\";i:1446564786;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:7:\"_ym_uid\";s:19:\"1446457567975666575\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"hdvrl0lri8dl50olrrg1651604\";}','a:4:{s:5:\"_csrf\";s:56:\"OWlfR3ZPeE5.UAopHx8oP3REOXcSAxIJTANsIRViFjkPEyh2FCY3LQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:8:\"фыва\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:16:\"фывафыва\";}}','','s1',NULL),(17,1,1,1446566076,1446566076,NULL,NULL,'a:5:{s:40:\"propertyA6fc211cb604fda275a4e34d32e85825\";N;s:40:\"property58dd739ee993aec8cb98e325357d63ff\";N;s:40:\"propertyBf0577cc546d4ea590f9af64e626bdad\";N;s:40:\"property47cb9cab8ad8bf712e039f8b38d28e07\";N;s:40:\"property88e32c189846c306a10ebbc467019cf2\";N;}','a:5:{s:40:\"propertyA6fc211cb604fda275a4e34d32e85825\";s:6:\"ФИО\";s:40:\"property58dd739ee993aec8cb98e325357d63ff\";s:39:\"Первоначальный взнос\";s:40:\"propertyBf0577cc546d4ea590f9af64e626bdad\";s:33:\"Срок кредитования\";s:40:\"property47cb9cab8ad8bf712e039f8b38d28e07\";s:14:\"Телефон\";s:40:\"property88e32c189846c306a10ebbc467019cf2\";s:5:\"email\";}',NULL,NULL,NULL,NULL,NULL,0,3,'80.243.13.242','http://select-moto.ru/katalog/moto/177-honda-crf-250l','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"644\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WWlCQ2Vuc3UeUBctDD4jBBREJHMBIhkyLANxJQZDHQJvEzVyBwc8Fg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:53:\"http://select-moto.ru/katalog/moto/177-honda-crf-250l\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:492:\"_csrf=1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc%22%3B%7D; undefined__skeeks-toolbar__container=opened; _ym_uid=1446457567975666575; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=hdvrl0lri8dl50olrrg1651604\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"57376\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446566076.6070001;s:12:\"REQUEST_TIME\";i:1446566076;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:7:\"_ym_uid\";s:19:\"1446457567975666575\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"hdvrl0lri8dl50olrrg1651604\";}','a:4:{s:5:\"_csrf\";s:56:\"WWlCQ2Vuc3UeUBctDD4jBBREJHMBIhkyLANxJQZDHQJvEzVyBwc8Fg==\";s:14:\"sx-model-value\";s:1:\"3\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:5:{s:40:\"propertyA6fc211cb604fda275a4e34d32e85825\";s:18:\"Александр\";s:40:\"property58dd739ee993aec8cb98e325357d63ff\";s:18:\"70 тыс. руб.\";s:40:\"propertyBf0577cc546d4ea590f9af64e626bdad\";s:8:\"1 год\";s:40:\"property47cb9cab8ad8bf712e039f8b38d28e07\";s:12:\"+79037222873\";s:40:\"property88e32c189846c306a10ebbc467019cf2\";s:18:\"semenov@skeeks.com\";}}','','s1',NULL),(18,1,1,1446566145,1446566145,NULL,NULL,'a:5:{s:40:\"propertyA6fc211cb604fda275a4e34d32e85825\";N;s:40:\"property58dd739ee993aec8cb98e325357d63ff\";N;s:40:\"propertyBf0577cc546d4ea590f9af64e626bdad\";N;s:40:\"property47cb9cab8ad8bf712e039f8b38d28e07\";N;s:40:\"property88e32c189846c306a10ebbc467019cf2\";N;}','a:5:{s:40:\"propertyA6fc211cb604fda275a4e34d32e85825\";s:6:\"ФИО\";s:40:\"property58dd739ee993aec8cb98e325357d63ff\";s:39:\"Первоначальный взнос\";s:40:\"propertyBf0577cc546d4ea590f9af64e626bdad\";s:33:\"Срок кредитования\";s:40:\"property47cb9cab8ad8bf712e039f8b38d28e07\";s:14:\"Телефон\";s:40:\"property88e32c189846c306a10ebbc467019cf2\";s:5:\"email\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,3,'80.243.13.242','http://select-moto.ru/katalog/moto/177-honda-crf-250l','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"644\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WWlCQ2Vuc3UeUBctDD4jBBREJHMBIhkyLANxJQZDHQJvEzVyBwc8Fg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:53:\"http://select-moto.ru/katalog/moto/177-honda-crf-250l\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:492:\"_csrf=1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc%22%3B%7D; undefined__skeeks-toolbar__container=opened; _ym_uid=1446457567975666575; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=hdvrl0lri8dl50olrrg1651604\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"58510\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:7:\"semenov\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1446566145.595;s:12:\"REQUEST_TIME\";i:1446566145;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"1789d0c0ee31a81288ae06590af3c517622428b326a8b680cd161335accad9bda:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"G9UniPPqM-f0dLjGuj3fc-nw6zw1biOc\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";s:7:\"_ym_uid\";s:19:\"1446457567975666575\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"hdvrl0lri8dl50olrrg1651604\";}','a:4:{s:5:\"_csrf\";s:56:\"WWlCQ2Vuc3UeUBctDD4jBBREJHMBIhkyLANxJQZDHQJvEzVyBwc8Fg==\";s:14:\"sx-model-value\";s:1:\"3\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:5:{s:40:\"propertyA6fc211cb604fda275a4e34d32e85825\";s:18:\"Александр\";s:40:\"property58dd739ee993aec8cb98e325357d63ff\";s:18:\"70 тыс. руб.\";s:40:\"propertyBf0577cc546d4ea590f9af64e626bdad\";s:8:\"1 год\";s:40:\"property47cb9cab8ad8bf712e039f8b38d28e07\";s:12:\"+79037222873\";s:40:\"property88e32c189846c306a10ebbc467019cf2\";s:18:\"semenov@skeeks.com\";}}','','s1',NULL),(19,NULL,NULL,1446577276,1446577276,NULL,NULL,'a:5:{s:40:\"propertyA6fc211cb604fda275a4e34d32e85825\";N;s:40:\"property58dd739ee993aec8cb98e325357d63ff\";N;s:40:\"propertyBf0577cc546d4ea590f9af64e626bdad\";N;s:40:\"property47cb9cab8ad8bf712e039f8b38d28e07\";N;s:40:\"property88e32c189846c306a10ebbc467019cf2\";N;}','a:5:{s:40:\"propertyA6fc211cb604fda275a4e34d32e85825\";s:6:\"ФИО\";s:40:\"property58dd739ee993aec8cb98e325357d63ff\";s:39:\"Первоначальный взнос\";s:40:\"propertyBf0577cc546d4ea590f9af64e626bdad\";s:33:\"Срок кредитования\";s:40:\"property47cb9cab8ad8bf712e039f8b38d28e07\";s:14:\"Телефон\";s:40:\"property88e32c189846c306a10ebbc467019cf2\";s:5:\"email\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,3,'46.148.225.192','http://select-moto.ru/katalog/moto/182-suzuki-djebel-250-xc','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"692\";s:14:\"HTTP_X_REAL_IP\";s:14:\"46.148.225.192\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"46.148.225.192\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"RGFxMGhLOVMlJklDDHoOPgNWMwY4CGk/KFIjflodTmEoAANAMA59Yg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:141:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36 OPR/32.0.1948.69 (Edition Yx 01)\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:59:\"http://select-moto.ru/katalog/moto/182-suzuki-djebel-250-xc\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, lzma\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:416:\"_ym_uid=1446491266630227410; _csrf=d5f9beec068d2cb47ffb86747b0010cb8d42253e5d4c0354544a07acaae38e36a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22aG8sd17mG7B6PCPll3RN2Vw2larpXED1%22%3B%7D; _identity=81c14c8240fdeebb048e79ea4580d70210dd4c8d2ce429f858ac063332ffc5f0a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A15%3A%22%5B17%2C%22%22%2C2592000%5D%22%3B%7D; PHPSESSID=dgof1f0fflshcdgmnh2a6rk7j6\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"46.148.225.192\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34811\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1446577276.819;s:12:\"REQUEST_TIME\";i:1446577276;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:17;}','a:4:{s:7:\"_ym_uid\";s:19:\"1446491266630227410\";s:5:\"_csrf\";s:130:\"d5f9beec068d2cb47ffb86747b0010cb8d42253e5d4c0354544a07acaae38e36a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"aG8sd17mG7B6PCPll3RN2Vw2larpXED1\";}\";s:9:\"_identity\";s:117:\"81c14c8240fdeebb048e79ea4580d70210dd4c8d2ce429f858ac063332ffc5f0a:2:{i:0;s:9:\"_identity\";i:1;s:15:\"[17,\"\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"dgof1f0fflshcdgmnh2a6rk7j6\";}','a:4:{s:5:\"_csrf\";s:56:\"RGFxMGhLOVMlJklDDHoOPgNWMwY4CGk/KFIjflodTmEoAANAMA59Yg==\";s:14:\"sx-model-value\";s:1:\"3\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:5:{s:40:\"propertyA6fc211cb604fda275a4e34d32e85825\";s:48:\"Брагин Дмитрий Викторович\";s:40:\"property58dd739ee993aec8cb98e325357d63ff\";s:6:\"100000\";s:40:\"propertyBf0577cc546d4ea590f9af64e626bdad\";s:8:\"1 год\";s:40:\"property47cb9cab8ad8bf712e039f8b38d28e07\";s:11:\"89672863840\";s:40:\"property88e32c189846c306a10ebbc467019cf2\";s:17:\"fiyfiiyii@mail.ru\";}}','','s1',NULL),(20,NULL,NULL,1447942636,1447942675,NULL,1447942675,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,5,2,'94.103.236.3','http://select-moto.ru/katalog/moto/214-suzuki-gsf-1250f','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"493\";s:14:\"HTTP_X_REAL_IP\";s:12:\"94.103.236.3\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"94.103.236.3\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"aDBOcV91alUdeCU6EQACPSIDeDZyHSBmIHZ4CzcsAwoJRCUyKB0TMQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:55:\"http://select-moto.ru/katalog/moto/214-suzuki-gsf-1250f\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:440:\"_ym_uid=1446541099168549240; _csrf=751e39ad251ec77f976697b6f6006914b95c6755c6d5c0125ebc9a61c6bdddf8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22uHkKNuhhJ36G-hJ3HF6zhYi_atkCwhyd%22%3B%7D; PHPSESSID=DA8mZPzH9A5FjOT-ndzK4aBcMe3; _ym_visorc_33404488=w; _identity=81c14c8240fdeebb048e79ea4580d70210dd4c8d2ce429f858ac063332ffc5f0a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A15%3A%22%5B17%2C%22%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"94.103.236.3\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"55344\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1447942636.664;s:12:\"REQUEST_TIME\";i:1447942636;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:17;}','a:5:{s:7:\"_ym_uid\";s:19:\"1446541099168549240\";s:5:\"_csrf\";s:130:\"751e39ad251ec77f976697b6f6006914b95c6755c6d5c0125ebc9a61c6bdddf8a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"uHkKNuhhJ36G-hJ3HF6zhYi_atkCwhyd\";}\";s:9:\"PHPSESSID\";s:27:\"DA8mZPzH9A5FjOT-ndzK4aBcMe3\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";s:9:\"_identity\";s:117:\"81c14c8240fdeebb048e79ea4580d70210dd4c8d2ce429f858ac063332ffc5f0a:2:{i:0;s:9:\"_identity\";i:1;s:15:\"[17,\"\",2592000]\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"aDBOcV91alUdeCU6EQACPSIDeDZyHSBmIHZ4CzcsAwoJRCUyKB0TMQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"79672863840\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:16:\"fedja8@yandex.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:38:\"хочу купить мотоцикл\";}}','','s1',NULL),(21,NULL,NULL,1448622024,1448626103,NULL,1448626103,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,5,2,'62.117.67.79','http://select-moto.ru/katalog/moto/197-suzuki-dr-z-400sm','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"642\";s:14:\"HTTP_X_REAL_IP\";s:12:\"62.117.67.79\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"62.117.67.79\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"ejJ1UUljalUpc00UDhMobDxLHQA.UyAbNwUCOTsxKS8TBTMWHxoIOA==\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:56:\"http://select-moto.ru/katalog/moto/197-suzuki-dr-z-400sm\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:23:\"ru,en-US;q=0.7,en;q=0.3\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:15:\"HTTP_USER_AGENT\";s:127:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586\";s:18:\"HTTP_CACHE_CONTROL\";s:8:\"no-cache\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=WL11Y7in7wyF0xKgK4rGLpam-B1; _csrf=e5ec7eecca89d149b5e60af5a3fce3560186b8197638445f42efaa24e44c063aa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22SA8EGpB9FyhQw0JNM7whrRCzi7FGVybm%22%3B%7D; _ym_uid=1448621013914097341; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"62.117.67.79\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"52871\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1448622024.1919999;s:12:\"REQUEST_TIME\";i:1448622024;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:4039;s:27:\"__captcha/cms/tools/captcha\";s:6:\"vinmqu\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"WL11Y7in7wyF0xKgK4rGLpam-B1\";s:5:\"_csrf\";s:130:\"e5ec7eecca89d149b5e60af5a3fce3560186b8197638445f42efaa24e44c063aa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"SA8EGpB9FyhQw0JNM7whrRCzi7FGVybm\";}\";s:7:\"_ym_uid\";s:19:\"1448621013914097341\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"ejJ1UUljalUpc00UDhMobDxLHQA.UyAbNwUCOTsxKS8TBTMWHxoIOA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89035785536\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:17:\"Rensicg@gmail.com\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:106:\"Скажите пожалуйста номер рамы мотоцикла Suzuki DR-Z 400SM за 260000р\";}}','','s1',NULL),(22,NULL,NULL,1449074607,1449074607,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'90.154.75.151','http://select-moto.ru/katalog/moto/193-yamaha-xvs-650-drag-star-classic','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1709\";s:14:\"HTTP_X_REAL_IP\";s:13:\"90.154.75.151\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"90.154.75.151\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"STNMUTJWQ2IWRyA7WWQWFSB/ITxiGBAqLEUuE0AfKQYkVTUedgQsNA==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:8:\"HTTP_DNT\";s:1:\"1\";s:12:\"HTTP_REFERER\";s:71:\"http://select-moto.ru/katalog/moto/193-yamaha-xvs-650-drag-star-classic\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:213:\"PHPSESSID=UKfUsY8VVi4vsQFez%2CQcap3IYG5; _csrf=d288888ca27a40ce8a7e7f7cd41f48b34ff51a5457cdd75ccd7f125c9c82b654a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22_tljk2UwiLmmPNSHevbBrIjdmfyODRoV%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"90.154.75.151\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59288\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1449074607.573;s:12:\"REQUEST_TIME\";i:1449074607;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:4773;s:27:\"__captcha/cms/tools/captcha\";s:6:\"phloqu\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:2:{s:9:\"PHPSESSID\";s:27:\"UKfUsY8VVi4vsQFez,Qcap3IYG5\";s:5:\"_csrf\";s:130:\"d288888ca27a40ce8a7e7f7cd41f48b34ff51a5457cdd75ccd7f125c9c82b654a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"_tljk2UwiLmmPNSHevbBrIjdmfyODRoV\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"STNMUTJWQ2IWRyA7WWQWFSB/ITxiGBAqLEUuE0AfKQYkVTUedgQsNA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:12:\"+79778334893\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:20:\"bmclassic@icloud.com\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:495:\"Здравствуйте, \r\nПрочитал на вашем сайте что купившему мотоцикл до конца 2015 года - доставка бесплатно. \r\nМеня интересует доставка по Москве мотоцикла Yamaha XVS 650 Drag Star Classic артикул: 193. Действительно ли бесплатно? \r\nПокупать собираюсь вероятно в понедельник-вторник (07-08 декабря) \";}}','','s1',NULL),(23,NULL,NULL,1449610157,1449610157,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'217.66.157.75','http://select-moto.ru/contacts','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1027\";s:14:\"HTTP_X_REAL_IP\";s:13:\"217.66.157.75\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"217.66.157.75\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:2:\"ru\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:15:\"HTTP_USER_AGENT\";s:133:\"Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:8:\"HTTP_DNT\";s:1:\"1\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"YThscHJMSlQtDT46JQUsODFJLyU3AS9tKQsfRgoLAx4QUAcYMQcFDA==\";s:11:\"HTTP_COOKIE\";s:275:\"_ym_isad=0; _ym_uid=1449609845249018475; _ym_visorc_33404488=w; PHPSESSID=PBL2bkIBrYgmohUiUO5U7DQjuC3; _csrf=dc1f064039e856206a37a0b0081a5ade346447968ff8cb1cb74aab1d59816940a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22L5RJWIflPqCUEMe9H3s6xGIJqhkhCKOX%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"217.66.157.75\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"35802\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1449610157.6289999;s:12:\"REQUEST_TIME\";i:1449610157;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:6158;s:27:\"__captcha/cms/tools/captcha\";s:7:\"jpvjbqk\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:8:\"_ym_isad\";s:1:\"0\";s:7:\"_ym_uid\";s:19:\"1449609845249018475\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";s:9:\"PHPSESSID\";s:27:\"PBL2bkIBrYgmohUiUO5U7DQjuC3\";s:5:\"_csrf\";s:130:\"dc1f064039e856206a37a0b0081a5ade346447968ff8cb1cb74aab1d59816940a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"L5RJWIflPqCUEMe9H3s6xGIJqhkhCKOX\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"YThscHJMSlQtDT46JQUsODFJLyU3AS9tKQsfRgoLAx4QUAcYMQcFDA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89119786777\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:18:\"9119786777@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:230:\"Доброго времени суток! Скажите , цены на Моты у вас твёрдые или вы можете сбрасывать цену индивидуально для клиента!? Спасибо!!!\";}}','','s1',NULL),(24,NULL,NULL,1450074904,1450076488,NULL,1450076488,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,5,2,'37.146.61.249','http://select-moto.ru/katalog/moto/263-kawasaki-concours-14-262','a:40:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1845\";s:14:\"HTTP_X_REAL_IP\";s:13:\"37.146.61.249\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"37.146.61.249\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:15:\"HTTP_USER_AGENT\";s:57:\"Opera/9.80 (Windows NT 5.1) Presto/2.12.388 Version/12.17\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:23:\"ru-RU,ru;q=0.9,en;q=0.8\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:12:\"HTTP_REFERER\";s:63:\"http://select-moto.ru/katalog/moto/263-kawasaki-concours-14-262\";s:11:\"HTTP_COOKIE\";s:275:\"_ym_uid=1449345606764713159; PHPSESSID=GIW72gepwJSzaE8e4tcejUVkWqa; _csrf=4be701f4e865f7df2dee02f629ed902a0eb27ccbf4f90f5ef7278966f8931b06a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%226pKZLMXSK_tb4G54u5wJ4nDHbH1lOfuB%22%3B%7D; _ym_isad=0; _ym_visorc_33404488=w\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"ei5TMWhuRXRMXhhrJCMdJzFxJ1NcKXBADxske1wAATwYZmJdJwgwNg==\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"37.146.61.249\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"44095\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1450074904.0929999;s:12:\"REQUEST_TIME\";i:1450074904;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:7298;s:27:\"__captcha/cms/tools/captcha\";s:7:\"iuweaey\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1449345606764713159\";s:9:\"PHPSESSID\";s:27:\"GIW72gepwJSzaE8e4tcejUVkWqa\";s:5:\"_csrf\";s:130:\"4be701f4e865f7df2dee02f629ed902a0eb27ccbf4f90f5ef7278966f8931b06a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"6pKZLMXSK_tb4G54u5wJ4nDHbH1lOfuB\";}\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"ei5TMWhuRXRMXhhrJCMdJzFxJ1NcKXBADxske1wAATwYZmJdJwgwNg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89034470530\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:16:\"zel_maks@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:538:\"Доброго времени суток! Заинтересовал мотоцикл Kawasaki Concours 14 ABS 0213 года. Артикул: 263.\r\nНА сколько я понимаю мотоцикл из Америки. Можно ли получить его аукционный лист на почту? + Хотелось бы увидеть подробные фото всех основных узлов мотоцикла. Какую-либо предпродажную подготовку выполняли для него?\";}}','','s1',NULL),(25,NULL,NULL,1450435470,1450435470,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'217.118.81.208','http://select-moto.ru/katalog/moto/208-honda-cbr-600-rr','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"570\";s:14:\"HTTP_X_REAL_IP\";s:14:\"217.118.81.208\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"217.118.81.208\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"QU04M2lzTmUkDGtlK0ogJBEGdX0GQQsCBzcKaSEKPi42C3tmJxh7Ig==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:125:\"Mozilla/5.0 (Linux; Android 4.4.2; Hit Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:55:\"http://select-moto.ru/katalog/moto/208-honda-cbr-600-rr\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:280:\"_ym_uid=14500127821003548610; PHPSESSID=K6EAF8g%2C%2Crzd6PcbFrkUCVMgOz9; _csrf=4695aa437d15be632657e27c0ab0e884ac95e2869f5339d73b3bf8871286bffca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22eASVB9nAPKMNo2EgFz2ZHypKwFCUNk5G%22%3B%7D; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"217.118.81.208\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"60885\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1450435470.2780001;s:12:\"REQUEST_TIME\";i:1450435470;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:8260;s:27:\"__captcha/cms/tools/captcha\";s:6:\"mibilu\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:7:\"_ym_uid\";s:20:\"14500127821003548610\";s:9:\"PHPSESSID\";s:27:\"K6EAF8g,,rzd6PcbFrkUCVMgOz9\";s:5:\"_csrf\";s:130:\"4695aa437d15be632657e27c0ab0e884ac95e2869f5339d73b3bf8871286bffca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"eASVB9nAPKMNo2EgFz2ZHypKwFCUNk5G\";}\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"QU04M2lzTmUkDGtlK0ogJBEGdX0GQQsCBzcKaSEKPi42C3tmJxh7Ig==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89627678190\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:17:\"Adigamen@inbox.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:66:\"Хочу взять в кредит через Альфа-банк\";}}','','s1',NULL),(26,NULL,NULL,1450488080,1450488080,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'217.118.64.34','http://select-moto.ru/katalog/moto/193-yamaha-xvs-650-drag-star-classic','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"753\";s:14:\"HTTP_X_REAL_IP\";s:13:\"217.118.64.34\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"217.118.64.34\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"N0JqU204QmxxAC4rFVE3LUc2GjEbbW85BCUlI1VVERtdegs3XVE1IA==\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:12:\"HTTP_REFERER\";s:71:\"http://select-moto.ru/katalog/moto/193-yamaha-xvs-650-drag-star-classic\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:5:\"ru-RU\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:15:\"HTTP_USER_AGENT\";s:61:\"Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko\";s:18:\"HTTP_CACHE_CONTROL\";s:8:\"no-cache\";s:11:\"HTTP_COOKIE\";s:277:\"PHPSESSID=QdiwaUj4odAIOAVIoNxKNZ%2CNOTa; _csrf=b6d93e1189ebbc3dc3d7e9dc02ae91e6318d4c59acb4f0a4ad0ef1beeebe2a1da%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22FBDxxiuAptpbvU-U3gOp8mSwj8ad0iwL%22%3B%7D; _ym_uid=1450487400435899532; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"217.118.64.34\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"38984\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1450488080.852;s:12:\"REQUEST_TIME\";i:1450488080;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:8397;s:27:\"__captcha/cms/tools/captcha\";s:7:\"oalasey\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"QdiwaUj4odAIOAVIoNxKNZ,NOTa\";s:5:\"_csrf\";s:130:\"b6d93e1189ebbc3dc3d7e9dc02ae91e6318d4c59acb4f0a4ad0ef1beeebe2a1da:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"FBDxxiuAptpbvU-U3gOp8mSwj8ad0iwL\";}\";s:7:\"_ym_uid\";s:19:\"1450487400435899532\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"N0JqU204QmxxAC4rFVE3LUc2GjEbbW85BCUlI1VVERtdegs3XVE1IA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89147551383\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:20:\"oleg-hevelsk@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:132:\"Это мотоцикл Артикул: 193 бегал по России? И стоит доставка до города Орла?\";}}','','s1',NULL),(27,NULL,NULL,1451424373,1451424373,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'5.129.232.65','http://select-moto.ru/katalog/moto/234-suzuki-gsf-1250f-233','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"816\";s:14:\"HTTP_X_REAL_IP\";s:12:\"5.129.232.65\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"5.129.232.65\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"anlpcG1EZ3IzEwocJiNQGl4QHQY/dgtGHzQgGQZ8KEsgNycyIQwmQg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:125:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36 OPR/34.0.2036.25\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:59:\"http://select-moto.ru/katalog/moto/234-suzuki-gsf-1250f-233\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, lzma\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:277:\"PHPSESSID=Fjqx%2CBWJlNXhbx4vHx1mosDIUG3; _csrf=da673f3733869e984803952078f61590884aef0f802be06827bffc2f59d8d2c2a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22YjclKg7h4itvR2l4uMIik8O9JNNBLHA0%22%3B%7D; _ym_uid=1451422682978622740; _ym_isad=1; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"5.129.232.65\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"39646\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1451424373.7019999;s:12:\"REQUEST_TIME\";i:1451424373;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:10595;s:27:\"__captcha/cms/tools/captcha\";s:6:\"geuidv\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"Fjqx,BWJlNXhbx4vHx1mosDIUG3\";s:5:\"_csrf\";s:130:\"da673f3733869e984803952078f61590884aef0f802be06827bffc2f59d8d2c2a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"YjclKg7h4itvR2l4uMIik8O9JNNBLHA0\";}\";s:7:\"_ym_uid\";s:19:\"1451422682978622740\";s:8:\"_ym_isad\";s:1:\"1\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"anlpcG1EZ3IzEwocJiNQGl4QHQY/dgtGHzQgGQZ8KEsgNycyIQwmQg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89224380537\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:20:\"surgutgerman@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:153:\"Здравствуйте!!! Хотелось бы по подробнее узнать про мот: вин номер и аукционный лист!\";}}','','s1',NULL),(28,NULL,NULL,1451468897,1451468897,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'92.38.165.135','http://select-moto.ru/katalog/moto/179-yamaha-fz1-fazer','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"932\";s:14:\"HTTP_X_REAL_IP\";s:13:\"92.38.165.135\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"92.38.165.135\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:15:\"HTTP_USER_AGENT\";s:65:\"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/20100101 Firefox/12.0\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-ru,ru;q=0.8,en-us;q=0.5,en;q=0.3\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"cjcuYzBsVFU5fkQ5ZS8OMQFWdydHFBs9Rm1aL3haBwIXYG0UZg8fIg==\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:55:\"http://select-moto.ru/katalog/moto/179-yamaha-fz1-fazer\";s:11:\"HTTP_COOKIE\";s:276:\"PHPSESSID=ODw17cBlrue%2CDJJQ6Ewuqx9Pie2; _csrf=13922a33dfb3af0d290abec95ca812c2f23b0f7ebe847299228ea3038f68d599a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KIjZUCZdsaYDwxOh4ZtLH6SWeWCwVcKw%22%3B%7D; _ym_uid=145146867822979655; _ym_visorc_33404488=w; _ym_isad=0\";s:11:\"HTTP_PRAGMA\";s:8:\"no-cache\";s:18:\"HTTP_CACHE_CONTROL\";s:8:\"no-cache\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"92.38.165.135\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"45726\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1451468897.5739999;s:12:\"REQUEST_TIME\";i:1451468897;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:10705;s:27:\"__captcha/cms/tools/captcha\";s:6:\"geyiuu\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"ODw17cBlrue,DJJQ6Ewuqx9Pie2\";s:5:\"_csrf\";s:130:\"13922a33dfb3af0d290abec95ca812c2f23b0f7ebe847299228ea3038f68d599a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"KIjZUCZdsaYDwxOh4ZtLH6SWeWCwVcKw\";}\";s:7:\"_ym_uid\";s:18:\"145146867822979655\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";s:8:\"_ym_isad\";s:1:\"0\";}','a:4:{s:5:\"_csrf\";s:56:\"cjcuYzBsVFU5fkQ5ZS8OMQFWdydHFBs9Rm1aL3haBwIXYG0UZg8fIg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89067913458\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:15:\"lddshka@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:214:\"Интересует ли Вас обмен на Yamaha YZF R-6 2007г.в. с моей доплатой 90т.р.? Состояние хорошее, есть пара мелких царапин. пробег 39т.\";}}','','s1',NULL),(29,NULL,NULL,1452031861,1452031861,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'95.66.160.137','http://select-moto.ru/contacts','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1008\";s:14:\"HTTP_X_REAL_IP\";s:13:\"95.66.160.137\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"95.66.160.137\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"dXJaRmVmV1BMFRgyOi0bNBgfHSQqESUyDTEQKgAHIhcdPTsBBg0vHQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:277:\"PHPSESSID=3ZCpPSxK-FGpCBer7xHoyHbv%2Cve; _csrf=6b5e3f611ef4237a78fde52f3581234b6b680fcd6f6fdc6775efe4d4ccedd953a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%229gBt_KLdmmGbOwrbxCJleauGhOaGckxM%22%3B%7D; _ym_uid=1452003360320653404; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"95.66.160.137\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"45677\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1452031861.5539999;s:12:\"REQUEST_TIME\";i:1452031861;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:12083;s:27:\"__captcha/cms/tools/captcha\";s:6:\"iiccvi\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"3ZCpPSxK-FGpCBer7xHoyHbv,ve\";s:5:\"_csrf\";s:130:\"6b5e3f611ef4237a78fde52f3581234b6b680fcd6f6fdc6775efe4d4ccedd953a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"9gBt_KLdmmGbOwrbxCJleauGhOaGckxM\";}\";s:7:\"_ym_uid\";s:19:\"1452003360320653404\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"dXJaRmVmV1BMFRgyOi0bNBgfHSQqESUyDTEQKgAHIhcdPTsBBg0vHQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89049596418\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:22:\"mityai.honda@yandex.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:233:\"Добрый день! Интересует Honda VTX 1300 серебристый, покупка с условием рассрочки, первоначальный взнос 300 000 руб. С уважением,  Дмитрий.\";}}','','s1',NULL),(30,NULL,NULL,1452693296,1452693296,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'5.35.63.28','http://select-moto.ru/katalog/moto/96-harley-davidson-electra-glide-classic-94','a:44:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"789\";s:14:\"HTTP_X_REAL_IP\";s:11:\"66.102.9.85\";s:20:\"HTTP_X_FORWARDED_FOR\";s:10:\"5.35.63.28\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:44:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,bg;q=0.2\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_COOKIE\";s:274:\"PHPSESSID=D7I6ak1zyuC3TJ201smRQGXz8P8; _csrf=5c703d2ef2491e42d2ff6f0023abbd05642e4809a3002ae00eb060b446befe07a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22ICMO_6AkSazUn0O_wDlQk2A2BuYz0A9C%22%3B%7D; _ym_uid=145269321190771272; _ym_isad=0; _ym_visorc_33404488=w\";s:14:\"HTTP_FORWARDED\";s:14:\"for=5.35.63.28\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:12:\"HTTP_REFERER\";s:78:\"http://select-moto.ru/katalog/moto/96-harley-davidson-electra-glide-classic-94\";s:11:\"HTTP_SCHEME\";s:4:\"http\";s:8:\"HTTP_VIA\";s:28:\"1.1 Chrome-Compression-Proxy\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"RFZHamJxRzINFQolPUcGWRc3PT8MQQhtMxIrOwlDBgAGIx4QUjB.cQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:11:\"66.102.9.85\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"57952\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1452693296.095;s:12:\"REQUEST_TIME\";i:1452693296;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:14306;s:27:\"__captcha/cms/tools/captcha\";s:6:\"iagazq\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"D7I6ak1zyuC3TJ201smRQGXz8P8\";s:5:\"_csrf\";s:130:\"5c703d2ef2491e42d2ff6f0023abbd05642e4809a3002ae00eb060b446befe07a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"ICMO_6AkSazUn0O_wDlQk2A2BuYz0A9C\";}\";s:7:\"_ym_uid\";s:18:\"145269321190771272\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"RFZHamJxRzINFQolPUcGWRc3PT8MQQhtMxIrOwlDBgAGIx4QUjB.cQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89037968869\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:15:\"7968869@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:149:\"Добрый день!\r\n\r\nХочу приобрести данный мотоцикл в кредит, есть 500т и 500 надо в кредит\";}}','','s1',NULL),(31,NULL,NULL,1452795199,1452795199,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'93.123.172.157','http://select-moto.ru/katalog/moto/239-yamaha-xvs-1100-drag-star-classic-238','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"932\";s:14:\"HTTP_X_REAL_IP\";s:14:\"93.123.172.157\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"93.123.172.157\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"R1F5YmgtbVMIKSAWLmhbZjcnDjISYSlrNAEpEC0ANTk1Cx4jEWo9Ag==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:76:\"http://select-moto.ru/katalog/moto/239-yamaha-xvs-1100-drag-star-classic-238\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:276:\"PHPSESSID=ANLS4eMCu%2Cf86rByI1VpPf7hZVa; _csrf=d1e281c1960cee4433c64c1fdf6b0b35ca29da83773a593a97f3c2db9d141fbaa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22OxYtFE65pvwPzLD8sPPrE-XjrZgAyGPQ%22%3B%7D; _ym_uid=145279489716752684; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"93.123.172.157\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"44409\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1452795199.7;s:12:\"REQUEST_TIME\";i:1452795199;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:14735;s:27:\"__captcha/cms/tools/captcha\";s:7:\"cgqzjeb\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"ANLS4eMCu,f86rByI1VpPf7hZVa\";s:5:\"_csrf\";s:130:\"d1e281c1960cee4433c64c1fdf6b0b35ca29da83773a593a97f3c2db9d141fbaa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"OxYtFE65pvwPzLD8sPPrE-XjrZgAyGPQ\";}\";s:7:\"_ym_uid\";s:18:\"145279489716752684\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"R1F5YmgtbVMIKSAWLmhbZjcnDjISYSlrNAEpEC0ANTk1Cx4jEWo9Ag==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89265574312\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:13:\"hau19@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:194:\"Здравствуйте, хотел бы узнать условия кредита на мотоцикл и условия рассрочки на данный мотоцикл. Спасибо\";}}','','s1',NULL),(32,NULL,NULL,1453229116,1453229116,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'93.123.172.157','http://select-moto.ru/katalog/moto/239-yamaha-xvs-1100-drag-star-classic-238','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1279\";s:14:\"HTTP_X_REAL_IP\";s:14:\"93.123.172.157\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"93.123.172.157\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"NWVRTnZDZzcCFhwoOzUBXFNIB3pPKFdaRzELDUcAAF1sPQEKHzAsfg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:76:\"http://select-moto.ru/katalog/moto/239-yamaha-xvs-1100-drag-star-classic-238\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:274:\"_ym_uid=145279489716752684; _ym_isad=0; PHPSESSID=cmgjHjJ2zN23tud9vyyUHTJwO1c; _csrf=64733b79a201decf3048772a70abcbf7235c7924868c88c925bfd4ed3ee42c59a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%227sMfMvfkf-V49k0mrTZC1CgjYXPDisKI%22%3B%7D; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"93.123.172.157\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"55810\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1453229116.573;s:12:\"REQUEST_TIME\";i:1453229116;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:16836;s:27:\"__captcha/cms/tools/captcha\";s:6:\"qoslxd\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145279489716752684\";s:8:\"_ym_isad\";s:1:\"0\";s:9:\"PHPSESSID\";s:27:\"cmgjHjJ2zN23tud9vyyUHTJwO1c\";s:5:\"_csrf\";s:130:\"64733b79a201decf3048772a70abcbf7235c7924868c88c925bfd4ed3ee42c59a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"7sMfMvfkf-V49k0mrTZC1CgjYXPDisKI\";}\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"NWVRTnZDZzcCFhwoOzUBXFNIB3pPKFdaRzELDUcAAF1sPQEKHzAsfg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89265574312\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:13:\"hau19@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:315:\"Здравствуйте, расскажите пожалуйста об этом мотоцикле, что поменяно, в каком состояние резина, и что за прямотоки стоят? и есть ли возможность поставить стоковые глушители?\";}}','','s1',NULL),(33,NULL,NULL,1453464620,1453464620,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'217.15.193.101','http://select-moto.ru/contacts','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1032\";s:14:\"HTTP_X_REAL_IP\";s:14:\"217.15.193.101\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"217.15.193.101\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"TS53dGEzeWR9bS8FV2QKInpHMEM4dQ8KdWBETQ10AD4PTS8uMAAIUg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=NP4wBcxGtqXl1ciaYSToqGRQNt1; _csrf=1324934d6e582129647646c19b62d35f912c1804ba6eea58e3b6261fdbe87fefa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220CXq6WsF7iG7YFvn8N39lGyZBcXZQ3q6%22%3B%7D; _ym_uid=1453464298768217448; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"217.15.193.101\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"40495\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1453464620.7279999;s:12:\"REQUEST_TIME\";i:1453464620;}','a:2:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:17797;}','a:5:{s:9:\"PHPSESSID\";s:27:\"NP4wBcxGtqXl1ciaYSToqGRQNt1\";s:5:\"_csrf\";s:130:\"1324934d6e582129647646c19b62d35f912c1804ba6eea58e3b6261fdbe87fefa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"0CXq6WsF7iG7YFvn8N39lGyZBcXZQ3q6\";}\";s:7:\"_ym_uid\";s:19:\"1453464298768217448\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"TS53dGEzeWR9bS8FV2QKInpHMEM4dQ8KdWBETQ10AD4PTS8uMAAIUg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89807137382\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:239:\"ДОБРЫЙ ДЕНЬ, хочу поинтересоваться по поводу приобретения мотоцыкла хонда сбр 1000 рр в рассрочку. Возможно ли по виду на жительсво!?\";}}','','s1',NULL),(34,NULL,NULL,1453568429,1453631559,NULL,1453631559,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,5,2,'46.146.0.34','http://select-moto.ru/katalog/moto/302-yamaha-tt-r-250-301','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"848\";s:14:\"HTTP_X_REAL_IP\";s:11:\"46.146.0.34\";s:20:\"HTTP_X_FORWARDED_FOR\";s:11:\"46.146.0.34\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"Rm1fRHdoRWJ0GxIKEDAPVyddGykwEBNaBzcOIDg.NFULXHIVDQYwWg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:126:\"Mozilla/5.0 (Linux; Android 4.3; ME302C Build/JSS15Q) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:58:\"http://select-moto.ru/katalog/moto/302-yamaha-tt-r-250-301\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:276:\"PHPSESSID=LH-3PD60jEbjNg2bZ8sIRH4sYF2; _csrf=3c3552622e8233ede42b367c08c834594435eddf0e2061e5c85706573ea6a63da%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%222vMNgXJ5a0DmGxV8AZQdOVq7M1-Qznu8%22%3B%7D; _ym_uid=14535676301061012486; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:11:\"46.146.0.34\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42252\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1453568429.5569999;s:12:\"REQUEST_TIME\";i:1453568429;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:18302;s:27:\"__captcha/cms/tools/captcha\";s:7:\"sucebbg\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"LH-3PD60jEbjNg2bZ8sIRH4sYF2\";s:5:\"_csrf\";s:130:\"3c3552622e8233ede42b367c08c834594435eddf0e2061e5c85706573ea6a63da:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"2vMNgXJ5a0DmGxV8AZQdOVq7M1-Qznu8\";}\";s:7:\"_ym_uid\";s:20:\"14535676301061012486\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"Rm1fRHdoRWJ0GxIKEDAPVyddGykwEBNaBzcOIDg.NFULXHIVDQYwWg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89655500000\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:22:\"Soldatovalex59@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:173:\"Здравствуйте. Просьба скинуть фото по моту Yamaha TT-R 250. Доставка до терминала ТК в Москве платная?\";}}','','s1',NULL),(35,NULL,NULL,1453568540,1453568540,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'217.118.79.27','http://select-moto.ru/katalog/moto/286-kawasaki-zzr400-285','a:40:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"633\";s:14:\"HTTP_X_REAL_IP\";s:13:\"217.118.79.27\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"217.118.79.27\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:15:\"HTTP_USER_AGENT\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WEJtVTJiR1oXcSg0XDIxbwkrJyZzVjBrGnAuY34UAm8HGx1nBgQeLw==\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:58:\"http://select-moto.ru/katalog/moto/286-kawasaki-zzr400-285\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=Udgrc2H-FuG9Z9wM3t3xyKDvkhb; _csrf=2b1dfde8038530a6e87c2b305cb9c0b2fe225c6648002b6b342d4e2d226beaa8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22O3EanPv5QiJsA4w1B2C6LvE5_Yp24fYu%22%3B%7D; _ym_uid=1453578950844049966; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"217.118.79.27\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"46987\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1453568540.2609999;s:12:\"REQUEST_TIME\";i:1453568540;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:18304;s:27:\"__captcha/cms/tools/captcha\";s:6:\"buxena\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"Udgrc2H-FuG9Z9wM3t3xyKDvkhb\";s:5:\"_csrf\";s:130:\"2b1dfde8038530a6e87c2b305cb9c0b2fe225c6648002b6b342d4e2d226beaa8a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"O3EanPv5QiJsA4w1B2C6LvE5_Yp24fYu\";}\";s:7:\"_ym_uid\";s:19:\"1453578950844049966\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"WEJtVTJiR1oXcSg0XDIxbwkrJyZzVjBrGnAuY34UAm8HGx1nBgQeLw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89515999054\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:19:\"zlo-tr10@rambler.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:87:\"в кредит на три года без первоначального взноса\";}}','','s1',NULL),(36,NULL,NULL,1453922440,1453922440,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'94.253.62.81','http://select-moto.ru/katalog/moto/293-polaris-550-indy-lxt','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"585\";s:14:\"HTTP_X_REAL_IP\";s:12:\"94.253.62.81\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"94.253.62.81\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"LkRZVmppSnMbNyplXSs7GncuHgJZCHMAZGltMxkZfwJgCT84Lj8zGQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:140:\"Mozilla/5.0 (Linux; Android 5.1.1; C6903 Build/14.6.A.1.236) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:59:\"http://select-moto.ru/katalog/moto/293-polaris-550-indy-lxt\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"_csrf=ffd9f19ece25a9b4c57533326580e29455179b826c6dd964850a7da6e55f4c9ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%225ss37BqiYjGT3a9sJ-4esp5qNMfnDVyj%22%3B%7D; _ym_uid=1453921805426695199; _ym_isad=0; PHPSESSID=nkiKtkGlmAuQFroli6JjGtDInF6; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"94.253.62.81\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42418\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1453922440.4449999;s:12:\"REQUEST_TIME\";i:1453922440;}','a:4:{s:7:\"__flash\";a:0:{}s:27:\"__captcha/cms/tools/captcha\";s:6:\"fomhbu\";s:32:\"__captcha/cms/tools/captchacount\";i:1;s:4:\"__id\";i:31;}','a:5:{s:5:\"_csrf\";s:130:\"ffd9f19ece25a9b4c57533326580e29455179b826c6dd964850a7da6e55f4c9ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"5ss37BqiYjGT3a9sJ-4esp5qNMfnDVyj\";}\";s:7:\"_ym_uid\";s:19:\"1453921805426695199\";s:8:\"_ym_isad\";s:1:\"0\";s:9:\"PHPSESSID\";s:27:\"nkiKtkGlmAuQFroli6JjGtDInF6\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"LkRZVmppSnMbNyplXSs7GncuHgJZCHMAZGltMxkZfwJgCT84Lj8zGQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89253823700\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:21:\"Kurdiola1986@mail.ru \";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:69:\"Насчет снегохода поларис его в кредит\";}}','','s1',NULL),(37,NULL,NULL,1454152062,1454152062,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'217.118.64.48','http://select-moto.ru/katalog/moto/286-kawasaki-zzr400-285','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"685\";s:14:\"HTTP_X_REAL_IP\";s:13:\"217.118.64.48\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"217.118.64.48\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"ZjBJSnU0d2ZUWX0QG14hIyt2Ags/GTQfNEEdGwFAFjZUWiADPQJAUA==\";s:15:\"HTTP_USER_AGENT\";s:121:\"Jinga/V2 Linux/3.0.13 Android/4.0 Release/02.15.2012 Browser/AppleWebKit534.30 Mobile Safari/534.30 System/Android 4.0.1;\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:18:\"HTTP_X_WAP_PROFILE\";s:55:\"http://218.249.47.94/Xianghe/MTK_Phone_KK_UAprofile.xml\";s:12:\"HTTP_REFERER\";s:58:\"http://select-moto.ru/katalog/moto/286-kawasaki-zzr400-285\";s:20:\"HTTP_ACCEPT_ENCODING\";s:12:\"gzip,deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:17:\"ru-RU,en-US;q=0.8\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=7FBTIhXTf15mR-yNaf7F3FSGKN0; _csrf=205c3748724495a8c7fc331fe63480c55ff582fb2aa2f799e66550ef32fe6b3aa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%222i4ZnjVEMFKAJ-CyRqTQttaP2jiIH676%22%3B%7D; _ym_uid=1454168478241717815; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"217.118.64.48\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"49044\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1454152062.562;s:12:\"REQUEST_TIME\";i:1454152062;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:21061;s:27:\"__captcha/cms/tools/captcha\";s:6:\"bsrfwo\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"7FBTIhXTf15mR-yNaf7F3FSGKN0\";s:5:\"_csrf\";s:130:\"205c3748724495a8c7fc331fe63480c55ff582fb2aa2f799e66550ef32fe6b3aa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"2i4ZnjVEMFKAJ-CyRqTQttaP2jiIH676\";}\";s:7:\"_ym_uid\";s:19:\"1454168478241717815\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"ZjBJSnU0d2ZUWX0QG14hIyt2Ags/GTQfNEEdGwFAFjZUWiADPQJAUA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89098138992\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:21:\"ealekseev05@gmail.com\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:103:\"Здравствуйте хотел бы купить красавца если это возмозно\";}}','','s1',NULL),(38,NULL,NULL,1454162693,1454162693,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'91.246.95.143','http://select-moto.ru/katalog/moto/291-polaris-predator-90','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"444\";s:14:\"HTTP_X_REAL_IP\";s:13:\"91.246.95.143\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"91.246.95.143\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:2:\"ru\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:15:\"HTTP_USER_AGENT\";s:125:\"Mozilla/5.0 (iPad; CPU OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1\";s:12:\"HTTP_REFERER\";s:58:\"http://select-moto.ru/katalog/moto/291-polaris-predator-90\";s:8:\"HTTP_DNT\";s:1:\"1\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"Y203bk9JWEoXJE8LBD4pJQwiARpiPjcMORd5Ox0xCBApOGRDKjppGA==\";s:11:\"HTTP_COOKIE\";s:277:\"_ym_isad=0; _ym_uid=1454162564699192203; _ym_visorc_33404488=w; PHPSESSID=rfhS61UbujaPCZ%2C2Q2XtuF3nHX8; _csrf=08902478b5611f55af07cddf02b56a9852c44dce11831f0bd2795efef191d295a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22tIxeKwqooO6t-woFZzNURxPZJUS-es1R%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"91.246.95.143\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"33494\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1454162693.825;s:12:\"REQUEST_TIME\";i:1454162693;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:21151;s:27:\"__captcha/cms/tools/captcha\";s:7:\"dtnenef\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:8:\"_ym_isad\";s:1:\"0\";s:7:\"_ym_uid\";s:19:\"1454162564699192203\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";s:9:\"PHPSESSID\";s:27:\"rfhS61UbujaPCZ,2Q2XtuF3nHX8\";s:5:\"_csrf\";s:130:\"08902478b5611f55af07cddf02b56a9852c44dce11831f0bd2795efef191d295a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"tIxeKwqooO6t-woFZzNURxPZJUS-es1R\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"Y203bk9JWEoXJE8LBD4pJQwiARpiPjcMORd5Ox0xCBApOGRDKjppGA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:10:\"9204602222\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:36:\"Polaris не может быть BRP\";}}','','s1',NULL),(39,NULL,NULL,1454169297,1454169297,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'83.220.239.200','http://select-moto.ru/katalog/moto/256-suzuki-gsf-1250-255','a:44:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"398\";s:14:\"HTTP_X_REAL_IP\";s:14:\"83.220.239.200\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"83.220.239.200\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"dndGY2xjM2QOKBMrNS9SEh8/FycoDmYyIjIkIA8KRFMXFRwFKQx3Hg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:142:\"Mozilla/5.0 (Linux; Android 5.0.2; 6039Y Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/38.0.0.0 Mobile Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:58:\"http://select-moto.ru/katalog/moto/256-suzuki-gsf-1250-255\";s:20:\"HTTP_ACCEPT_ENCODING\";s:12:\"gzip,deflate\";s:19:\"HTTP_ACCEPT_CHARSET\";s:98:\"ISO-8859-1, ISO-8859-2, US-ASCII, UTF-8, UTF-16, windows-1250, windows-1251, windows-1252, *;q=0.7\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:17:\"ru-RU,en-US;q=0.8\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=PgOFOxQ4bkm9UfqkCoC6eYh7Ac6; _csrf=d7e62f50574a70027cfa66efe3ca46a97b98b8ada5243df7bab2939bb14005c5a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22x_UHYLaviHQDDmUVTEbCciw7abZfEoDz%22%3B%7D; _ym_uid=1454168590216828650; _ym_isad=0; _ym_visorc_33404488=w\";s:8:\"HTTP_DNT\";s:1:\"1\";s:18:\"HTTP_X_WAP_PROFILE\";s:42:\"http://www-ccpp.tcl-ta.com/files/6039Y.xml\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"83.220.239.200\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"43817\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1454169297.3559999;s:12:\"REQUEST_TIME\";i:1454169297;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:21169;s:27:\"__captcha/cms/tools/captcha\";s:7:\"xijewpv\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"PgOFOxQ4bkm9UfqkCoC6eYh7Ac6\";s:5:\"_csrf\";s:130:\"d7e62f50574a70027cfa66efe3ca46a97b98b8ada5243df7bab2939bb14005c5a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"x_UHYLaviHQDDmUVTEbCciw7abZfEoDz\";}\";s:7:\"_ym_uid\";s:19:\"1454168590216828650\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"dndGY2xjM2QOKBMrNS9SEh8/FycoDmYyIjIkIA8KRFMXFRwFKQx3Hg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:10:\"9859740455\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:25:\"mihail.pripisnov@yndex.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:3:\"50%\";}}','','s1',NULL),(40,NULL,NULL,1454241447,1454241447,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'91.202.186.34','http://select-moto.ru/katalog/moto/63-honda-cb-400','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"683\";s:14:\"HTTP_X_REAL_IP\";s:13:\"91.202.186.34\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"91.202.186.34\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"QV9DTDk5bEsSJnB.fF0HPzVvcXp8WDwnMxR6HE1qAxEHLhEmVmY6HQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:165:\"Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-G925F Build/LMY47X) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.2 Chrome/38.0.2125.102 Mobile Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:50:\"http://select-moto.ru/katalog/moto/63-honda-cb-400\";s:20:\"HTTP_ACCEPT_ENCODING\";s:12:\"gzip,deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=Gm7s9HTLsJ99Ze-trevPMCyCgre; _csrf=f8a03825ee81528bc10399963be66c1650311b02a451092cb9db7c96d1063ee6a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Sy32Edktt026EaPlrK9PtSoZFqRjo_VV%22%3B%7D; _ym_uid=1454238297440357469; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"91.202.186.34\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"41064\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1454241447.8280001;s:12:\"REQUEST_TIME\";i:1454241447;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:21377;s:27:\"__captcha/cms/tools/captcha\";s:7:\"gpsicar\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"Gm7s9HTLsJ99Ze-trevPMCyCgre\";s:5:\"_csrf\";s:130:\"f8a03825ee81528bc10399963be66c1650311b02a451092cb9db7c96d1063ee6a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Sy32Edktt026EaPlrK9PtSoZFqRjo_VV\";}\";s:7:\"_ym_uid\";s:19:\"1454238297440357469\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"QV9DTDk5bEsSJnB.fF0HPzVvcXp8WDwnMxR6HE1qAxEHLhEmVmY6HQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:12:\"+79161626030\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:18:\"poiuytr77@mail.ru \";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:103:\"Рассматриваю данный покупку данного мотоцикла в кредит.\";}}','','s1',NULL),(41,NULL,NULL,1454279255,1454279255,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'31.132.178.12','http://select-moto.ru/contacts','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"722\";s:14:\"HTTP_X_REAL_IP\";s:13:\"31.132.178.12\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"31.132.178.12\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"NTdHZFRjeE8BUCUzJCAoGwR.ajATVAF5AH0VCGASNCplbXcrPwQ1Iw==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:142:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 YaBrowser/15.12.1.6475 Yowser/2.5 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:8:\"HTTP_DNT\";s:1:\"1\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:11:\"ru,en;q=0.8\";s:11:\"HTTP_COOKIE\";s:275:\"_ym_uid=1453641965960671435; PHPSESSID=j50yGICCQo23NGliZ50c90iQaY0; _csrf=e2953005ce914881ee94e44088f6e8b385705c5e45dcdec25995c7346053ad2da%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%224gbWpCPT1I-TG7y65JRl4qLePZ0OkgMl%22%3B%7D; _ym_isad=1; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"31.132.178.12\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59071\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1454279255.8110001;s:12:\"REQUEST_TIME\";i:1454279255;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:21569;s:27:\"__captcha/cms/tools/captcha\";s:7:\"euamgoq\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1453641965960671435\";s:9:\"PHPSESSID\";s:27:\"j50yGICCQo23NGliZ50c90iQaY0\";s:5:\"_csrf\";s:130:\"e2953005ce914881ee94e44088f6e8b385705c5e45dcdec25995c7346053ad2da:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"4gbWpCPT1I-TG7y65JRl4qLePZ0OkgMl\";}\";s:8:\"_ym_isad\";s:1:\"1\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"NTdHZFRjeE8BUCUzJCAoGwR.ajATVAF5AH0VCGASNCplbXcrPwQ1Iw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89308285979\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:16:\"salt32@yandex.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:121:\"Здравствуйте, напишите пожалуйста номер рамы артикула 135. Спасибо.\";}}','','s1',NULL),(42,NULL,NULL,1454347680,1454347680,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'95.153.133.6','http://select-moto.ru/katalog/moto/163-kawasaki-zzr-1100','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"641\";s:14:\"HTTP_X_REAL_IP\";s:12:\"95.153.133.6\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"95.153.133.6\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"R2o3ODdzeXd3MnVKREpURCtfDlBSAxg8cD5eFVsEHSIdH2VQcUZPAg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:131:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 YaBrowser/15.12.1.6478 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:56:\"http://select-moto.ru/katalog/moto/163-kawasaki-zzr-1100\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:11:\"ru,en;q=0.8\";s:11:\"HTTP_COOKIE\";s:211:\"PHPSESSID=cLUrePipaPbm6Ctcd35ZXZeEF49; _csrf=82bb23cca4a4a4f15b592c5b8edf65223d9a7b099dcf72944c237dd26d77014ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220XBrs9-3l59hepaK7Ti-lwdUZuRhF56u%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"95.153.133.6\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"52428\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1454347680.187;s:12:\"REQUEST_TIME\";i:1454347680;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:21933;s:27:\"__captcha/cms/tools/captcha\";s:7:\"fbffmil\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:2:{s:9:\"PHPSESSID\";s:27:\"cLUrePipaPbm6Ctcd35ZXZeEF49\";s:5:\"_csrf\";s:130:\"82bb23cca4a4a4f15b592c5b8edf65223d9a7b099dcf72944c237dd26d77014ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"0XBrs9-3l59hepaK7Ti-lwdUZuRhF56u\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"R2o3ODdzeXd3MnVKREpURCtfDlBSAxg8cD5eFVsEHSIdH2VQcUZPAg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:15:\"8-952-561-28-17\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:11:\"alex.skif72\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:91:\"Каким образом можно приобрести мотоцикл в кредит?\";}}','','s1',NULL),(43,NULL,NULL,1454582700,1454582700,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'77.94.113.166','http://select-moto.ru/katalog/moto/129-honda-vfr-800-fi-interceptor-128','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1341\";s:14:\"HTTP_X_REAL_IP\";s:13:\"77.94.113.166\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"77.94.113.166\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"MHN1Z1RSUDd5SjQXBiAxT0UhEhE7PWNzYxAWAmcjZkZEHUZSPhw.Zw==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:71:\"http://select-moto.ru/katalog/moto/129-honda-vfr-800-fi-interceptor-128\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:215:\"PHPSESSID=K3%2CGMeRMgpwWTUJuY2F%2CkghQSOa; _csrf=ff6f10e866c623413337eea10a1c97a1a1b026b340f5213ee0d3f22d17879629a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22I9ApRraxuRgvoo3DScce3q6qtn35jNnP%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"77.94.113.166\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"47812\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1454582700.306;s:12:\"REQUEST_TIME\";i:1454582700;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:23406;s:27:\"__captcha/cms/tools/captcha\";s:6:\"eisico\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:2:{s:9:\"PHPSESSID\";s:27:\"K3,GMeRMgpwWTUJuY2F,kghQSOa\";s:5:\"_csrf\";s:130:\"ff6f10e866c623413337eea10a1c97a1a1b026b340f5213ee0d3f22d17879629a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"I9ApRraxuRgvoo3DScce3q6qtn35jNnP\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"MHN1Z1RSUDd5SjQXBiAxT0UhEhE7PWNzYxAWAmcjZkZEHUZSPhw.Zw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:12:\"89174721780 \";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:21:\"esinpavel1983@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:348:\"Хотелось бы посмотреть видео про мотоцикл Honda VFR800 артикул 129 цена 310000 тыс \r\nи расчитайте доставку до города Салават Республика Башкортостан \r\nесли есть возможность транспортной компанией ПЭК\";}}','','s1',NULL),(44,NULL,NULL,1454679713,1454679713,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'10.128.0.48','http://select-moto.ru/contacts','a:43:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1047\";s:14:\"HTTP_X_REAL_IP\";s:14:\"83.239.115.252\";s:20:\"HTTP_X_FORWARDED_FOR\";s:11:\"10.128.0.48\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"YjVnMzdBZVgveCFbVnAdHDZcPnVWdQEeMgMkBVkeCRYAYyB9fyUBHQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:274:\"PHPSESSID=fV8X7Ys7deUqPS2ZV9ABt5Mhjb4; _csrf=c6d827f4014262078901ec2c2077b9d691428609d663cfe958d4ba232afba698a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22MMFha1xDTiYFa4dFP6C6n_lNbVGNHddE%22%3B%7D; _ym_uid=145467929121575894; _ym_isad=0; _ym_visorc_33404488=w\";s:8:\"HTTP_VIA\";s:29:\"1.1 server.4834 (squid/3.3.5)\";s:18:\"HTTP_CACHE_CONTROL\";s:14:\"max-age=259200\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"83.239.115.252\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"45202\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1454679713.6760001;s:12:\"REQUEST_TIME\";i:1454679713;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:23966;s:27:\"__captcha/cms/tools/captcha\";s:6:\"penojm\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"fV8X7Ys7deUqPS2ZV9ABt5Mhjb4\";s:5:\"_csrf\";s:130:\"c6d827f4014262078901ec2c2077b9d691428609d663cfe958d4ba232afba698a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"MMFha1xDTiYFa4dFP6C6n_lNbVGNHddE\";}\";s:7:\"_ym_uid\";s:18:\"145467929121575894\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"YjVnMzdBZVgveCFbVnAdHDZcPnVWdQEeMgMkBVkeCRYAYyB9fyUBHQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:16:\"+7 905 423 84 77\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:20:\"command77@rambler.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:247:\"Добрый день! Заинтересовал один из ваших байков.Хотелось бы больше фото и видео работающего двигателя.Honda VT 750 DC Shadow Артикул: 66.\r\nСпасибо.\";}}','','s1',NULL),(45,NULL,NULL,1454683985,1454683985,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'188.247.32.138','http://select-moto.ru/katalog/moto/246-kawasaki-vulcan-2000-classic-lt-245','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1609\";s:14:\"HTTP_X_REAL_IP\";s:14:\"188.247.32.138\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"188.247.32.138\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"ejgwc2VvV1k3VgUiIT5lNwNCdwVVCjMhEGt9RgkIEx1ID2QaSCQTNA==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:101:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:74:\"http://select-moto.ru/katalog/moto/246-kawasaki-vulcan-2000-classic-lt-245\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=GAAO0dyL8pSKOGBxOui6Hx6bq61; _csrf=88c5ade9534605668771c99c37a708fc06792ca2dad0b6cbd3b0b699715a4f11a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Mn5QDQ2nyzGv0edxjSM5lgDD27Ti-KDm%22%3B%7D; _ym_uid=1454678938543587415; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"188.247.32.138\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"47150\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1454683985.7290001;s:12:\"REQUEST_TIME\";i:1454683985;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:23984;s:27:\"__captcha/cms/tools/captcha\";s:6:\"coyebo\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"GAAO0dyL8pSKOGBxOui6Hx6bq61\";s:5:\"_csrf\";s:130:\"88c5ade9534605668771c99c37a708fc06792ca2dad0b6cbd3b0b699715a4f11a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Mn5QDQ2nyzGv0edxjSM5lgDD27Ti-KDm\";}\";s:7:\"_ym_uid\";s:19:\"1454678938543587415\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"ejgwc2VvV1k3VgUiIT5lNwNCdwVVCjMhEGt9RgkIEx1ID2QaSCQTNA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89093899200\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:15:\"rht-oil@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:465:\"Добрый вечер,меня зовут Андрей. Хотелось бы приобрести в Вашем мотосалоне  Kawasaki Vulkan 2000 Claccic LT, 2008 г.цена -500 т.р(Артикул: 246) в кредит,с первым взносом 150т.р. Место жительства Волжский,Волгоградская обл.\r\nВозможно ли совершить такую покупку?\r\nС уважением, Андрей\";}}','','s1',NULL),(46,NULL,NULL,1454762010,1454762010,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'95.183.74.87','http://select-moto.ru/katalog/moto/121-yamaha-fzs-1000-fazer-120','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"940\";s:14:\"HTTP_X_REAL_IP\";s:12:\"95.183.74.87\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"95.183.74.87\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"b3g5V2VYd20uAksVMh0FLBpISy8oEQRdVxp/AlErJ18/PGA1PAAUVQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:131:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 YaBrowser/15.12.1.6475 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:64:\"http://select-moto.ru/katalog/moto/121-yamaha-fzs-1000-fazer-120\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:11:\"ru,en;q=0.8\";s:11:\"HTTP_COOKIE\";s:277:\"PHPSESSID=GlV%2C9Ue0LFduGtONc2lFWNEP6k2; _csrf=b5e30283852c4dd0191d9341c34c2c709b48d0d3fcf2d472bb05f377323777cda%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22AzrBWErAu0rxMIs08bFU4sP2PDYbYXc8%22%3B%7D; _ym_uid=1454761139703378520; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"95.183.74.87\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"46907\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1454762010.22;s:12:\"REQUEST_TIME\";i:1454762010;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:24377;s:27:\"__captcha/cms/tools/captcha\";s:7:\"hebbrot\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"GlV,9Ue0LFduGtONc2lFWNEP6k2\";s:5:\"_csrf\";s:130:\"b5e30283852c4dd0191d9341c34c2c709b48d0d3fcf2d472bb05f377323777cda:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"AzrBWErAu0rxMIs08bFU4sP2PDYbYXc8\";}\";s:7:\"_ym_uid\";s:19:\"1454761139703378520\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"b3g5V2VYd20uAksVMh0FLBpISy8oEQRdVxp/AlErJ18/PGA1PAAUVQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:10:\"9859740455\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:26:\"mihail.pripisnov@yandex.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:208:\"Здравствуйте. пришлите пожалуйста фото номера рамы мотоциклов- Артикул: 256 VIN: 1037\r\nа также- Артикул: 121 VIN: 7844. Спасибо\";}}','','s1',NULL),(47,NULL,NULL,1455011134,1455011134,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'62.117.74.22','http://select-moto.ru/katalog/moto/285-kawasaki-zzr-ii-284','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"510\";s:14:\"HTTP_X_REAL_IP\";s:12:\"62.117.74.22\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"62.117.74.22\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"dm9aNnBMNGU7HxUGMggMMg8/CwIzeUwEISAeWTMvTCQkK2NbPiV9Cg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:58:\"http://select-moto.ru/katalog/moto/285-kawasaki-zzr-ii-284\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:211:\"PHPSESSID=txgIozvOpJ4ohPVrkEv8yYgEJq4; _csrf=fb8d219d7e49b1c16eebdc1f584316e7c9ca379d85b3fd9c0a52ceb04a7e8b71a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22MpO0BD8WyPQ4C5xaWODoCcxARD9mNiIo%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"62.117.74.22\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"40946\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455011134.125;s:12:\"REQUEST_TIME\";i:1455011134;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:26542;s:27:\"__captcha/cms/tools/captcha\";s:6:\"kiqoqm\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:2:{s:9:\"PHPSESSID\";s:27:\"txgIozvOpJ4ohPVrkEv8yYgEJq4\";s:5:\"_csrf\";s:130:\"fb8d219d7e49b1c16eebdc1f584316e7c9ca379d85b3fd9c0a52ceb04a7e8b71a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"MpO0BD8WyPQ4C5xaWODoCcxARD9mNiIo\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"dm9aNnBMNGU7HxUGMggMMg8/CwIzeUwEISAeWTMvTCQkK2NbPiV9Cg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89253074577\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:17:\"ustusalex@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:76:\"Kavasaki ZZR-400, 2001 г.в., 175000 р. (Select Moto, Артикул: 285)\";}}','','s1',NULL),(48,NULL,NULL,1455102936,1455102936,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'80.250.209.226','http://select-moto.ru/katalog/moto/147-kawasaki-ninja-300','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1861\";s:14:\"HTTP_X_REAL_IP\";s:14:\"80.250.209.226\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"80.250.209.226\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"dnhQWk1OLktDCwoWDDtBJzg8FQUBNGB.IDsIMCE6eS85HhIwLyUfKQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:57:\"http://select-moto.ru/katalog/moto/147-kawasaki-ninja-300\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"en-US,en;q=0.8\";s:11:\"HTTP_COOKIE\";s:275:\"_ym_uid=1455015726856638837; PHPSESSID=aHQw4PmyleB79J4kZkfa2wawPrb; _csrf=09ca3282467b86b4aefd39ee578736de05c855b97759491e8ec08204003632fba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%225sZLAuolNDE_LzN5VCXjltWdOfBjbk1b%22%3B%7D; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"80.250.209.226\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"57000\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455102936.049;s:12:\"REQUEST_TIME\";i:1455102936;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:27393;s:27:\"__captcha/cms/tools/captcha\";s:6:\"nudope\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1455015726856638837\";s:9:\"PHPSESSID\";s:27:\"aHQw4PmyleB79J4kZkfa2wawPrb\";s:5:\"_csrf\";s:130:\"09ca3282467b86b4aefd39ee578736de05c855b97759491e8ec08204003632fba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"5sZLAuolNDE_LzN5VCXjltWdOfBjbk1b\";}\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"dnhQWk1OLktDCwoWDDtBJzg8FQUBNGB.IDsIMCE6eS85HhIwLyUfKQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89859992934\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:23:\"kubarskiy@aasservice.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:565:\"250 000,00 руб.\r\nАртикул: 147\r\nVIN: 3858\r\nНаличие: В наличии\r\nМарка: Kawasaki\r\nТип: Спорт/CпортТурист\r\nКатегория: Мототехника\r\nГод: 2013\r\nОбъем двигателя: 296 см3\r\nПробег: 6000 км\r\nЦвет: Зеленый\r\n\r\nДобрый День!\r\nинтересует возможность приобретения Kawasaki Ninja 300 (Артикул: 147, VIN: 3858) в кредит/расрочку. если возможно, напишите на e-mail какие условия.\";}}','','s1',NULL),(49,NULL,NULL,1455166921,1455166921,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'89.218.47.38','http://select-moto.ru/katalog/moto/93-bmw-k-1200-lt','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1032\";s:14:\"HTTP_X_REAL_IP\";s:12:\"89.218.47.38\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"89.218.47.38\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"UkVveTVEQkEQCwkLZRsgL2AkHwB.HQwuAC4MS0EgOgYcDF0WY3MuMg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:51:\"http://select-moto.ru/katalog/moto/93-bmw-k-1200-lt\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:256:\"PHPSESSID=WLWvv4UWE9SWhL0rM%2CUM%2CCfPbP6; _csrf=99dee164c13f6fc48576d1cd1e58359785c7962cbcfc465d1299a1abab1e15c6a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BNfrP_bn2apyKYNoRkc2tdxGNI2oV7ls%22%3B%7D; _ym_uid=1455164852752965337; _ym_isad=0\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"89.218.47.38\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"33776\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455166921.339;s:12:\"REQUEST_TIME\";i:1455166921;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:27788;s:27:\"__captcha/cms/tools/captcha\";s:6:\"iesivo\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:4:{s:9:\"PHPSESSID\";s:27:\"WLWvv4UWE9SWhL0rM,UM,CfPbP6\";s:5:\"_csrf\";s:130:\"99dee164c13f6fc48576d1cd1e58359785c7962cbcfc465d1299a1abab1e15c6a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"BNfrP_bn2apyKYNoRkc2tdxGNI2oV7ls\";}\";s:7:\"_ym_uid\";s:19:\"1455164852752965337\";s:8:\"_ym_isad\";s:1:\"0\";}','a:4:{s:5:\"_csrf\";s:56:\"UkVveTVEQkEQCwkLZRsgL2AkHwB.HQwuAC4MS0EgOgYcDF0WY3MuMg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:12:\"+77773788835\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:24:\"goga_gorodok2177@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:234:\"Добрый день! Интересует мотоцикл BMW K1200LT. Если можно доп фото или видео. Какие вложения требуются? Возможно ли доставка В Алмату???\";}}','','s1',NULL),(50,NULL,NULL,1455262708,1455262708,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'178.173.7.144','http://select-moto.ru/katalog/moto/66-honda-vt-750-dc-shadow','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"479\";s:14:\"HTTP_X_REAL_IP\";s:13:\"178.173.7.144\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"178.173.7.144\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"LU5VSnpESmh6ERMjAhEiJUoNODwVED5dfwwREhZ8eQ95Jww8ACFzXg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:139:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.82 Safari/537.36 OPR/35.0.2066.37 (Edition Yx)\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:60:\"http://select-moto.ru/katalog/moto/66-honda-vt-750-dc-shadow\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, lzma\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=3j-y3e3VpNe3l7AUkfn1HXcTCg7; _csrf=31d988d165315228bddc966565fe639f99432daa756b552656ba736db2115974a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22W_FixUhMgCmvoTt5RBDXl83gTiYvze96%22%3B%7D; _ym_uid=1455258295808775937; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"178.173.7.144\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"60511\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455262708.688;s:12:\"REQUEST_TIME\";i:1455262708;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:28353;s:27:\"__captcha/cms/tools/captcha\";s:6:\"jgrjva\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"3j-y3e3VpNe3l7AUkfn1HXcTCg7\";s:5:\"_csrf\";s:130:\"31d988d165315228bddc966565fe639f99432daa756b552656ba736db2115974a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"W_FixUhMgCmvoTt5RBDXl83gTiYvze96\";}\";s:7:\"_ym_uid\";s:19:\"1455258295808775937\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"LU5VSnpESmh6ERMjAhEiJUoNODwVED5dfwwREhZ8eQ95Jww8ACFzXg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89616484857\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:10:\"sotalah.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:36:\"хочу приобрести мот\";}}','','s1',NULL),(51,NULL,NULL,1455394151,1455394151,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'178.219.32.99','http://select-moto.ru/katalog/moto/80-kawasaki-er-6n','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"640\";s:14:\"HTTP_X_REAL_IP\";s:13:\"178.219.32.99\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"178.219.32.99\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:2:\"ru\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:15:\"HTTP_USER_AGENT\";s:116:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.4.4 (KHTML, like Gecko) Version/9.0.3 Safari/601.4.4\";s:12:\"HTTP_REFERER\";s:52:\"http://select-moto.ru/katalog/moto/80-kawasaki-er-6n\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"TEp3V0lsMUUlAQc4IR1kPxQuQHoEFHpwIQI/b34VVjJ9JwFgLAdgAg==\";s:11:\"HTTP_COOKIE\";s:275:\"_ym_isad=0; _ym_uid=1454538098336514297; _ym_visorc_33404488=w; _csrf=e4b51d3d811d99ec6f835ffada34c526acb5ad2c903874da7dc72667202f8260a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22iKpohqUzXd7-MxK5mHH87ygw1mv7ekQG%22%3B%7D; PHPSESSID=crqKPFnWltTPR40Vfitn9Zs-Ta6\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"178.219.32.99\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"49569\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455394151.0899999;s:12:\"REQUEST_TIME\";i:1455394151;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:29345;s:27:\"__captcha/cms/tools/captcha\";s:7:\"samehaf\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:8:\"_ym_isad\";s:1:\"0\";s:7:\"_ym_uid\";s:19:\"1454538098336514297\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";s:5:\"_csrf\";s:130:\"e4b51d3d811d99ec6f835ffada34c526acb5ad2c903874da7dc72667202f8260a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"iKpohqUzXd7-MxK5mHH87ygw1mv7ekQG\";}\";s:9:\"PHPSESSID\";s:27:\"crqKPFnWltTPR40Vfitn9Zs-Ta6\";}','a:4:{s:5:\"_csrf\";s:56:\"TEp3V0lsMUUlAQc4IR1kPxQuQHoEFHpwIQI/b34VVjJ9JwFgLAdgAg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89157352727\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:20:\"denadvokat@yandex.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:107:\"kawasaki er-6n\r\nцена 270.000\r\nпервоначальный взнос 100.000\r\nсрок 24 месяца\";}}','','s1',NULL),(52,NULL,NULL,1455436835,1455436835,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'83.149.46.122','http://select-moto.ru/katalog/moto/260-kawasaki-ninja-zx-10r','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"405\";s:14:\"HTTP_X_REAL_IP\";s:13:\"83.149.46.122\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"83.149.46.122\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"T3lzcHJQVlV/FDRdEWhjJhkwJTc2BDg5Hj8rCUApExM9KzBBRT8sIw==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:172:\"Mozilla/5.0 (Linux; Android 4.4.4; Lenovo S60-a Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 YaBrowser/14.10.2062.12160.00 Mobile Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:60:\"http://select-moto.ru/katalog/moto/260-kawasaki-ninja-zx-10r\";s:20:\"HTTP_ACCEPT_ENCODING\";s:12:\"gzip,deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=X5P6Ym4fPKtT4kpLkZ9l4ON74-d; _csrf=d377d23b41bd184543b3e910821d294009d0e3c73349e8053885d3b518940c6da%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mG-c85sVIVGDTnlQFXy2yEFrRC17ozv%22%3B%7D; _ym_uid=1455436494822832271; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"83.149.46.122\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"43939\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455436835.5650001;s:12:\"REQUEST_TIME\";i:1455436835;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:29564;s:27:\"__captcha/cms/tools/captcha\";s:7:\"curixmk\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"X5P6Ym4fPKtT4kpLkZ9l4ON74-d\";s:5:\"_csrf\";s:130:\"d377d23b41bd184543b3e910821d294009d0e3c73349e8053885d3b518940c6da:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"0mG-c85sVIVGDTnlQFXy2yEFrRC17ozv\";}\";s:7:\"_ym_uid\";s:19:\"1455436494822832271\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"T3lzcHJQVlV/FDRdEWhjJhkwJTc2BDg5Hj8rCUApExM9KzBBRT8sIw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89105916207\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:17:\"pablomann@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:19:\"ZX-10R 2006 380.000\";}}','','s1',NULL),(53,NULL,NULL,1455466330,1455466330,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'79.174.34.119','http://select-moto.ru/katalog/moto/128-honda-vfr-800-fi-interceptor','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"420\";s:14:\"HTTP_X_REAL_IP\";s:13:\"79.174.34.119\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"79.174.34.119\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"bHJjdnVlXzEkHBRAKi1sfSg4CCMyFhcDHDBRGxkrFUkPQjM0BAcuUg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:135:\"Mozilla/5.0 (Linux; Android 5.0; SM-G900F Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:67:\"http://select-moto.ru/katalog/moto/128-honda-vfr-800-fi-interceptor\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"_ym_uid=14547310328739958; PHPSESSID=C6wSyoaLMaZ%2CYfD-RtwerKcgj30; _csrf=6d00531ebb9fae083cf41bead63974521897b3a1e2bccbbf86db18c5f0b514e2a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Hnw6_H3LDJkUGsH2pB2mlNJxc0PBqbqc%22%3B%7D; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"79.174.34.119\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"60205\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455466330.9070001;s:12:\"REQUEST_TIME\";i:1455466330;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:29752;s:27:\"__captcha/cms/tools/captcha\";s:6:\"geytve\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:7:\"_ym_uid\";s:17:\"14547310328739958\";s:9:\"PHPSESSID\";s:27:\"C6wSyoaLMaZ,YfD-RtwerKcgj30\";s:5:\"_csrf\";s:130:\"6d00531ebb9fae083cf41bead63974521897b3a1e2bccbbf86db18c5f0b514e2a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Hnw6_H3LDJkUGsH2pB2mlNJxc0PBqbqc\";}\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"bHJjdnVlXzEkHBRAKi1sfSg4CCMyFhcDHDBRGxkrFUkPQjM0BAcuUg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89257830373\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:16:\"tmc.msk@mail.ru \";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:13:\"Кредит \";}}','','s1',NULL),(54,NULL,NULL,1455694775,1455694775,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'31.130.117.10','http://select-moto.ru/katalog/moto/260-kawasaki-ninja-zx-10r','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"833\";s:14:\"HTTP_X_REAL_IP\";s:13:\"31.130.117.10\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"31.130.117.10\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"bzV2MU5XWUs/fSJrGy03JDddMV0HBygNKmI7cB4IPSYcXUIJdg46Kg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:126:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36 OPR/28.0.1750.51\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:60:\"http://select-moto.ru/katalog/moto/260-kawasaki-ninja-zx-10r\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, lzma\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:277:\"PHPSESSID=Rd5Vn1GbNoV4B%2CYWFDUqtwqHCZ5; _csrf=b7da3be210e785d2c2b25a75985b51c40a6294c3426d41b67fc0b227c85f21c1a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22PHTZUznoXhGlIPqFEWMAP_dmsh488Yca%22%3B%7D; _ym_uid=1455690427184577058; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"31.130.117.10\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"53212\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455694775.575;s:12:\"REQUEST_TIME\";i:1455694775;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:31157;s:27:\"__captcha/cms/tools/captcha\";s:7:\"dekaquj\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"Rd5Vn1GbNoV4B,YWFDUqtwqHCZ5\";s:5:\"_csrf\";s:130:\"b7da3be210e785d2c2b25a75985b51c40a6294c3426d41b67fc0b227c85f21c1a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"PHTZUznoXhGlIPqFEWMAP_dmsh488Yca\";}\";s:7:\"_ym_uid\";s:19:\"1455690427184577058\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"bzV2MU5XWUs/fSJrGy03JDddMV0HBygNKmI7cB4IPSYcXUIJdg46Kg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:12:\"+79184541601\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:25:\"vladimir.nebug@rambler.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:174:\"Интересует Кавасаки ZX 10 r 2011 за 600000 года в рассрочку, первоначальный взнос в 300000 тыс.р. имеется    \";}}','','s1',NULL),(55,NULL,NULL,1455702724,1455702724,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'46.48.116.254','http://select-moto.ru/katalog/moto/267-suzuki-boulevard-m50-266','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1044\";s:14:\"HTTP_X_REAL_IP\";s:13:\"46.48.116.254\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"46.48.116.254\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"VVRNX0F5WmMRPH0ZJDEsECMmfRY0FQMWIwsqDRQIEFNlBzUdFRRqGg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:125:\"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.82 Safari/537.36 OPR/35.0.2066.37\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:63:\"http://select-moto.ru/katalog/moto/267-suzuki-boulevard-m50-266\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, lzma\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"_ym_uid=1455191581895639692; PHPSESSID=fqfYxdNqhfZBjwotcerYopZeHw5; _csrf=d0ced70a8ef45d6e53954b667aba421f397c31f269e8b8530429b0a1a8f3251ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Dh0FeHvsvr0IulYuv_gRUqJ00SxBTm0y%22%3B%7D; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"46.48.116.254\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59076\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455702724.48;s:12:\"REQUEST_TIME\";i:1455702724;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:31247;s:27:\"__captcha/cms/tools/captcha\";s:7:\"wulopis\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1455191581895639692\";s:9:\"PHPSESSID\";s:27:\"fqfYxdNqhfZBjwotcerYopZeHw5\";s:5:\"_csrf\";s:130:\"d0ced70a8ef45d6e53954b667aba421f397c31f269e8b8530429b0a1a8f3251ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Dh0FeHvsvr0IulYuv_gRUqJ00SxBTm0y\";}\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"VVRNX0F5WmMRPH0ZJDEsECMmfRY0FQMWIwsqDRQIEFNlBzUdFRRqGg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:12:\"+79226153222\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:23:\"yuz-aleksandr@yandex.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:237:\"Добрый день. Интересует покупка мота в кредит. Постоянно прописан, живу и работаю в Екатеринбурге. В наличии первоначалка 50-70000р. \r\n\";}}','','s1',NULL),(56,NULL,NULL,1455706838,1455706838,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'62.141.119.10','http://select-moto.ru/katalog/moto/246-kawasaki-vulcan-2000-classic-lt-245','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1128\";s:14:\"HTTP_X_REAL_IP\";s:13:\"62.141.119.10\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"62.141.119.10\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"elNiY2d5bzMualoIDBopRiJjAypUJiMFFSUoFzEeMHUrP1MgMTsAeg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:137:\"Mozilla/5.0 (Linux; Android 4.4.2; GT-I9190 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:74:\"http://select-moto.ru/katalog/moto/246-kawasaki-vulcan-2000-classic-lt-245\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"_ym_uid=1455701329520387969; _ym_isad=0; PHPSESSID=NyZXP9WzdiYlV7unGaCMGU0Z7rf; _csrf=a79006ff91d2926394d3a0ea5966cb05be4dcc0ef72e7924f91b37804e0b2bb8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22T98kkcFuX0aI3_L6ovJtVg_FQl1CVBoI%22%3B%7D; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"62.141.119.10\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"43182\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455706838.3399999;s:12:\"REQUEST_TIME\";i:1455706838;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:31298;s:27:\"__captcha/cms/tools/captcha\";s:6:\"mogzwh\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1455701329520387969\";s:8:\"_ym_isad\";s:1:\"0\";s:9:\"PHPSESSID\";s:27:\"NyZXP9WzdiYlV7unGaCMGU0Z7rf\";s:5:\"_csrf\";s:130:\"a79006ff91d2926394d3a0ea5966cb05be4dcc0ef72e7924f91b37804e0b2bb8a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"T98kkcFuX0aI3_L6ovJtVg_FQl1CVBoI\";}\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"elNiY2d5bzMualoIDBopRiJjAypUJiMFFSUoFzEeMHUrP1MgMTsAeg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:12:\"+79218519950\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:15:\"mel29an@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:261:\"Добрый день. Подскажите пожалуйста, возможно ли кредитование жителей других регионов? Необходимо для этого приезжать к вам? \r\nСпасибо. \r\nАндрей.\";}}','','s1',NULL),(57,NULL,NULL,1455783877,1455783877,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'213.33.227.110','http://select-moto.ru/katalog/moto/147-kawasaki-ninja-300','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"438\";s:14:\"HTTP_X_REAL_IP\";s:14:\"213.33.227.110\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"213.33.227.110\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"enlXSy5nYlMqTzp8aSYHJU8aERJ4JAwdOTE9MXY4EGUJSWYOZCs1BQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:57:\"http://select-moto.ru/katalog/moto/147-kawasaki-ninja-300\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=qxv1MW9qEqw2HwUzd8hcd7kowqb; _csrf=3eb256fdf046f3108e889d2441206c39db8556ce96916ce21385d8b9b5c2eff3a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22P6m7GAev5cFYVCnNCHjzX_r6s01EJLWV%22%3B%7D; _ym_uid=1455783532605564249; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"213.33.227.110\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42124\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455783877.427;s:12:\"REQUEST_TIME\";i:1455783877;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:31772;s:27:\"__captcha/cms/tools/captcha\";s:7:\"kalurah\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"qxv1MW9qEqw2HwUzd8hcd7kowqb\";s:5:\"_csrf\";s:130:\"3eb256fdf046f3108e889d2441206c39db8556ce96916ce21385d8b9b5c2eff3a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"P6m7GAev5cFYVCnNCHjzX_r6s01EJLWV\";}\";s:7:\"_ym_uid\";s:19:\"1455783532605564249\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"enlXSy5nYlMqTzp8aSYHJU8aERJ4JAwdOTE9MXY4EGUJSWYOZCs1BQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:10:\"9636636526\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:17:\"semyka@rambler.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:19:\"По кредиту\";}}','','s1',NULL),(58,NULL,NULL,1455783894,1455783894,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'213.33.227.110','http://select-moto.ru/katalog/moto/211-kawasaki-ninja-400r','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"438\";s:14:\"HTTP_X_REAL_IP\";s:14:\"213.33.227.110\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"213.33.227.110\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"Y3MxaWVlWWQzRVxeIiQ8ElYQdzAzJjcqIDtbEz06K1IQQwAsLykOMg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:58:\"http://select-moto.ru/katalog/moto/211-kawasaki-ninja-400r\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=qxv1MW9qEqw2HwUzd8hcd7kowqb; _csrf=3eb256fdf046f3108e889d2441206c39db8556ce96916ce21385d8b9b5c2eff3a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22P6m7GAev5cFYVCnNCHjzX_r6s01EJLWV%22%3B%7D; _ym_uid=1455783532605564249; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"213.33.227.110\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42862\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455783894.52;s:12:\"REQUEST_TIME\";i:1455783894;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:31772;s:27:\"__captcha/cms/tools/captcha\";s:7:\"kalurah\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"qxv1MW9qEqw2HwUzd8hcd7kowqb\";s:5:\"_csrf\";s:130:\"3eb256fdf046f3108e889d2441206c39db8556ce96916ce21385d8b9b5c2eff3a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"P6m7GAev5cFYVCnNCHjzX_r6s01EJLWV\";}\";s:7:\"_ym_uid\";s:19:\"1455783532605564249\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"Y3MxaWVlWWQzRVxeIiQ8ElYQdzAzJjcqIDtbEz06K1IQQwAsLykOMg==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:10:\"9636636526\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:17:\"semyka@rambler.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:19:\"по кредиту\";}}','','s1',NULL),(59,NULL,NULL,1455873737,1455873737,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'78.31.19.242','http://select-moto.ru/katalog/moto/307-suzuki-djebel-200-306','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1037\";s:14:\"HTTP_X_REAL_IP\";s:12:\"78.31.19.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"78.31.19.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"N010OWJtdWlNFBZuCwgQGQ89QWE6WiwGRxckUCELBigBNBtaLgQlJA==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:60:\"http://select-moto.ru/katalog/moto/307-suzuki-djebel-200-306\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:83:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,bg;q=0.2,de;q=0.2,fr;q=0.2,pt;q=0.2,zh-TW;q=0.2\";s:11:\"HTTP_COOKIE\";s:434:\"_csrf=74273aa6d3653bb5d05ece598f7c62e3686d37bd5db20ea0fc86a5911986f416a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22zYbWieep8p5XX7YopZPiCfsA6yocLiPM%22%3B%7D; _ym_uid=14558696601062288738; _ym_isad=0; PHPSESSID=4GpMUruM7xKiARry14dGgBQ8FV1; a488880024=%5B%223131306f6567387967317a2e7275%22%2C%226d38316a6d716d6e2e7275%22%2C%226375376e697474392e7275%22%2C%226777357778616763766a366a71622e7275%22%5D; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"78.31.19.242\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"50494\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1455873737.434;s:12:\"REQUEST_TIME\";i:1455873737;}','a:4:{s:7:\"__flash\";a:0:{}s:27:\"__captcha/cms/tools/captcha\";s:6:\"rqwohe\";s:32:\"__captcha/cms/tools/captchacount\";i:1;s:4:\"__id\";i:37;}','a:6:{s:5:\"_csrf\";s:130:\"74273aa6d3653bb5d05ece598f7c62e3686d37bd5db20ea0fc86a5911986f416a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"zYbWieep8p5XX7YopZPiCfsA6yocLiPM\";}\";s:7:\"_ym_uid\";s:20:\"14558696601062288738\";s:8:\"_ym_isad\";s:1:\"0\";s:9:\"PHPSESSID\";s:27:\"4GpMUruM7xKiARry14dGgBQ8FV1\";s:10:\"a488880024\";s:119:\"[\"3131306f6567387967317a2e7275\",\"6d38316a6d716d6e2e7275\",\"6375376e697474392e7275\",\"6777357778616763766a366a71622e7275\"]\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"N010OWJtdWlNFBZuCwgQGQ89QWE6WiwGRxckUCELBigBNBtaLgQlJA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89060667609\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:20:\"Glonass358@gmail.com\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:232:\"Добрый день!\r\n\r\nПросьба! Просчитать процентную ставку, ежемесячный платеж, на срок кредита 6-12 месяцев то и то. Банк кредитования?\";}}','','s1',NULL),(60,NULL,NULL,1456031566,1456031566,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'128.70.147.89','http://select-moto.ru/contacts','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1298\";s:14:\"HTTP_X_REAL_IP\";s:13:\"128.70.147.89\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"128.70.147.89\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"bEYxWGtXdVMkNH9rUz8tJyoOZTUHOwURFA50ERM0EAo1P1MsHAENZw==\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:5:\"ru-RU\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:15:\"HTTP_USER_AGENT\";s:68:\"Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko\";s:8:\"HTTP_DNT\";s:1:\"1\";s:18:\"HTTP_CACHE_CONTROL\";s:8:\"no-cache\";s:11:\"HTTP_COOKIE\";s:484:\"PHPSESSID=QLISk-ty2HiivNVOkUUVipnx3b1; _csrf=59afde78643f9fe662df5b8badc01c8eb30657d478475ee67fe2e839ad8d226ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22HrN38hXtFHTmllpBxHEIxceYYybtwVx4%22%3B%7D; _ym_uid=1455859607466265701; _ym_isad=0; _ym_visorc_33404488=w; _identity=e9ec89210995f92265da6a2bf5504ae50dabeeba8f17ce38724f19e2a9fcfff0a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B38%2C%223m8W2MFCRsOvfN_K1om1U5faAJ8xP9o7%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"128.70.147.89\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34021\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1456031566.882;s:12:\"REQUEST_TIME\";i:1456031566;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:38;}','a:6:{s:9:\"PHPSESSID\";s:27:\"QLISk-ty2HiivNVOkUUVipnx3b1\";s:5:\"_csrf\";s:130:\"59afde78643f9fe662df5b8badc01c8eb30657d478475ee67fe2e839ad8d226ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"HrN38hXtFHTmllpBxHEIxceYYybtwVx4\";}\";s:7:\"_ym_uid\";s:19:\"1455859607466265701\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";s:9:\"_identity\";s:149:\"e9ec89210995f92265da6a2bf5504ae50dabeeba8f17ce38724f19e2a9fcfff0a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[38,\"3m8W2MFCRsOvfN_K1om1U5faAJ8xP9o7\",2592000]\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"bEYxWGtXdVMkNH9rUz8tJyoOZTUHOwURFA50ERM0EAo1P1MsHAENZw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:12:\"+79649465886\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:22:\"drug.solntsa@gmail.com\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:354:\"Здравствуйте, хотелось бы подробнее узнать о программе льготного кредитования.. хочу приобрести у вас Kawasaki Vulcan 2000 Classic LT, 2005 г. 400 000р. первоночальный взнос планирую сделать 150 000 , можно расчитать ?\";}}','','s1',NULL),(61,NULL,NULL,1456061828,1456061828,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'178.215.84.134','http://select-moto.ru/katalog/moto/121-yamaha-fzs-1000-fazer-120','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1096\";s:14:\"HTTP_X_REAL_IP\";s:14:\"178.215.84.134\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"178.215.84.134\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"VGNxZUVTdGINABkrBiQ2Oh41JiANEScLGDdBAR8rHC9sV1wCIhVFBQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:64:\"http://select-moto.ru/katalog/moto/121-yamaha-fzs-1000-fazer-120\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=wMuNh5xZJrbqC6ErklFENjhdNY4; _csrf=53a8a7cd36505bc2f8f83c04201ce34bf58ecc8b50eee3638b7cca931437324ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22YchNCwBXJVWEHBSiLT0dZxhM84-ggF1g%22%3B%7D; _ym_uid=1456061236753368225; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"178.215.84.134\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"45559\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1456061828.0769999;s:12:\"REQUEST_TIME\";i:1456061828;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:33150;s:27:\"__captcha/cms/tools/captcha\";s:6:\"xaaisa\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"wMuNh5xZJrbqC6ErklFENjhdNY4\";s:5:\"_csrf\";s:130:\"53a8a7cd36505bc2f8f83c04201ce34bf58ecc8b50eee3638b7cca931437324ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"YchNCwBXJVWEHBSiLT0dZxhM84-ggF1g\";}\";s:7:\"_ym_uid\";s:19:\"1456061236753368225\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"VGNxZUVTdGINABkrBiQ2Oh41JiANEScLGDdBAR8rHC9sV1wCIhVFBQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89267198598\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:14:\"coscon@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:257:\"Добрый день! Хочу купить этот мотоцикл. Готов внести 50% от стоимости. Прошу предоставить рассрочку\r\n на оставшуюся сумму на 6 месяцев. Спасибо.\";}}','','s1',NULL),(62,NULL,NULL,1456127599,1456127599,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'85.140.1.71','http://select-moto.ru/katalog/moto/67-honda-cbr-1000-rr','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"674\";s:14:\"HTTP_X_REAL_IP\";s:11:\"85.140.1.71\";s:20:\"HTTP_X_FORWARDED_FOR\";s:11:\"85.140.1.71\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:15:\"HTTP_USER_AGENT\";s:147:\"Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) YaBrowser/16.2.0.3537.10 Mobile/13D15 Safari/601.1\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"YVVRMXA2YXUYPyZEKgYPTC86IRwUQVU5JD0SaQBwNwYkAjZ6A0wKBA==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:12:\"HTTP_REFERER\";s:55:\"http://select-moto.ru/katalog/moto/67-honda-cbr-1000-rr\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:277:\"PHPSESSID=UZNfv87TVIfwmt7epHV57%2ChftJa; _csrf=c34846ef2281110bb65cab45749dc4cfdf087517aee8c35e8a2b64517cd172b3a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22yjwuZ0n9Nop-dw4LEhCXpFVsEWgKszkq%22%3B%7D; _ym_uid=1456126994664605272; _ym_isad=0; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:11:\"85.140.1.71\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"38233\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1456127599.7449999;s:12:\"REQUEST_TIME\";i:1456127599;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:33814;s:27:\"__captcha/cms/tools/captcha\";s:6:\"wuheeo\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"UZNfv87TVIfwmt7epHV57,hftJa\";s:5:\"_csrf\";s:130:\"c34846ef2281110bb65cab45749dc4cfdf087517aee8c35e8a2b64517cd172b3a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"yjwuZ0n9Nop-dw4LEhCXpFVsEWgKszkq\";}\";s:7:\"_ym_uid\";s:19:\"1456126994664605272\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"YVVRMXA2YXUYPyZEKgYPTC86IRwUQVU5JD0SaQBwNwYkAjZ6A0wKBA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89277091383\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:19:\"Aavonigol@gmail.com\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:112:\"Рассматриваю покупку в рассрочку. Жду вашего звонка. Honda CBR1000RR\";}}','','s1',NULL),(63,NULL,NULL,1456231490,1456231490,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'91.78.126.218','http://select-moto.ru/katalog/moto/67-honda-cbr-1000-rr','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"427\";s:14:\"HTTP_X_REAL_IP\";s:13:\"91.78.126.218\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"91.78.126.218\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:2:\"ru\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:15:\"HTTP_USER_AGENT\";s:116:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/601.4.4 (KHTML, like Gecko) Version/9.0.3 Safari/601.4.4\";s:12:\"HTTP_REFERER\";s:55:\"http://select-moto.ru/katalog/moto/67-honda-cbr-1000-rr\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"YmpHTU5hMVUTAXJ6fSlDDE8wdWB4FUsCFgMJKzQsAgcFGwYHOjJjZA==\";s:11:\"HTTP_COOKIE\";s:274:\"_ym_isad=0; _ym_uid=145623128250097371; _ym_visorc_33404488=w; PHPSESSID=EX-ieYotdvrO7wv-pmJ-LOtT7ua; _csrf=28e2117faca20b684eb1de0952f1c770f57deac0e91ff91a3546552edf7ce045a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22qk573HrY-Z2-6tzWtiNfzM3RgqAJtSR1%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"91.78.126.218\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34893\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1456231490.063;s:12:\"REQUEST_TIME\";i:1456231490;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:34566;s:27:\"__captcha/cms/tools/captcha\";s:6:\"nahyqo\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:8:\"_ym_isad\";s:1:\"0\";s:7:\"_ym_uid\";s:18:\"145623128250097371\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";s:9:\"PHPSESSID\";s:27:\"EX-ieYotdvrO7wv-pmJ-LOtT7ua\";s:5:\"_csrf\";s:130:\"28e2117faca20b684eb1de0952f1c770f57deac0e91ff91a3546552edf7ce045a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"qk573HrY-Z2-6tzWtiNfzM3RgqAJtSR1\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"YmpHTU5hMVUTAXJ6fSlDDE8wdWB4FUsCFgMJKzQsAgcFGwYHOjJjZA==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89253781619\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:24:\"proni4kin.igor@yandex.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:12:\"кредит\";}}','','s1',NULL),(64,NULL,NULL,1456243840,1456243840,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'91.78.126.218','http://select-moto.ru/katalog/moto/67-honda-cbr-1000-rr','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"458\";s:14:\"HTTP_X_REAL_IP\";s:13:\"91.78.126.218\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"91.78.126.218\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:2:\"ru\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:15:\"HTTP_USER_AGENT\";s:116:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/601.4.4 (KHTML, like Gecko) Version/9.0.3 Safari/601.4.4\";s:12:\"HTTP_REFERER\";s:55:\"http://select-moto.ru/katalog/moto/67-honda-cbr-1000-rr\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"dU9oSktsYkdCByQpBkEwCCAqAxonOQMCARAbIzFVEjIBd149ByYPMw==\";s:11:\"HTTP_COOKIE\";s:274:\"_ym_isad=0; _ym_uid=145623128250097371; _ym_visorc_33404488=w; PHPSESSID=hnGLea5lzZ4HqsIZ5xv2ft-FPq2; _csrf=687398bc365a657662267f607a64d79f3bb21c545a64f2bb9be11539231b6091a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%227HLcM-ROUekPlUaEt_siz9put86wLJmt%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"91.78.126.218\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42981\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1456243840.4130001;s:12:\"REQUEST_TIME\";i:1456243840;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:34681;s:27:\"__captcha/cms/tools/captcha\";s:6:\"aizbvo\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:8:\"_ym_isad\";s:1:\"0\";s:7:\"_ym_uid\";s:18:\"145623128250097371\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";s:9:\"PHPSESSID\";s:27:\"hnGLea5lzZ4HqsIZ5xv2ft-FPq2\";s:5:\"_csrf\";s:130:\"687398bc365a657662267f607a64d79f3bb21c545a64f2bb9be11539231b6091a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"7HLcM-ROUekPlUaEt_siz9put86wLJmt\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"dU9oSktsYkdCByQpBkEwCCAqAxonOQMCARAbIzFVEjIBd149ByYPMw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89253781619\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:24:\"proni4kin.igor@yandex.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:23:\"добрый вечер\";}}','','s1',NULL),(65,NULL,NULL,1456399427,1456399427,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'31.173.80.174','http://select-moto.ru/katalog/moto/219-suzuki-gsx-r-1000','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"567\";s:14:\"HTTP_X_REAL_IP\";s:13:\"31.173.80.174\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"31.173.80.174\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:2:\"ru\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:15:\"HTTP_USER_AGENT\";s:134:\"Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1\";s:12:\"HTTP_REFERER\";s:56:\"http://select-moto.ru/katalog/moto/219-suzuki-gsx-r-1000\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"UVZQazlWOG4iARMAfToAAyciGhF7J38/CyMKRkgcXhwnBxxccAVaFw==\";s:11:\"HTTP_COOKIE\";s:277:\"_ym_isad=0; _ym_uid=1456399217604701310; _ym_visorc_33404488=w; PHPSESSID=ZwrEK7ApnvpeWkl%2Cy50AfI9dxM7; _csrf=cdf44d29cb4519c0a0495bc5b138e493f56078c3811f11bba2f9692c6e26ce1fa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22sWCkDl8mvtJzBqGQZuZ-qJfrvQL7ISby%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"31.173.80.174\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"55254\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1456399427.207;s:12:\"REQUEST_TIME\";i:1456399427;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:35492;s:27:\"__captcha/cms/tools/captcha\";s:6:\"eesiql\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:8:\"_ym_isad\";s:1:\"0\";s:7:\"_ym_uid\";s:19:\"1456399217604701310\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";s:9:\"PHPSESSID\";s:27:\"ZwrEK7ApnvpeWkl,y50AfI9dxM7\";s:5:\"_csrf\";s:130:\"cdf44d29cb4519c0a0495bc5b138e493f56078c3811f11bba2f9692c6e26ce1fa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"sWCkDl8mvtJzBqGQZuZ-qJfrvQL7ISby\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"UVZQazlWOG4iARMAfToAAyciGhF7J38/CyMKRkgcXhwnBxxccAVaFw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89261725817\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:10:\"9261725817\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:66:\"Здравствуйте! Интересует рассрочка.\";}}','','s1',NULL),(66,NULL,NULL,1456408809,1456408809,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'82.208.100.143','http://select-moto.ru/katalog/moto/115-honda-cbr-600-f4i-114','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"1044\";s:14:\"HTTP_X_REAL_IP\";s:14:\"82.208.100.143\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"82.208.100.143\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"a3plMFRGM1odNSliHSB.HANJIWIjIVwyUy9cVGRxVAkcHhJIFgpnPw==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:60:\"http://select-moto.ru/katalog/moto/115-honda-cbr-600-f4i-114\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:254:\"PHPSESSID=lt9hGMVsd2R%2CmhR9LUZewJyE4Wf; _csrf=9e97a561fca7419e840913f8e2258c41c43a410bcf3d4dd06db28abb1242ceb3a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22vOLRIfMFh3DRwgoh8U9d07gSwdwxBLTe%22%3B%7D; _ym_uid=1456398017742953379; _ym_isad=0\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"82.208.100.143\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"43479\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1456408809.1800001;s:12:\"REQUEST_TIME\";i:1456408809;}','a:1:{s:7:\"__flash\";a:0:{}}','a:4:{s:9:\"PHPSESSID\";s:27:\"lt9hGMVsd2R,mhR9LUZewJyE4Wf\";s:5:\"_csrf\";s:130:\"9e97a561fca7419e840913f8e2258c41c43a410bcf3d4dd06db28abb1242ceb3a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"vOLRIfMFh3DRwgoh8U9d07gSwdwxBLTe\";}\";s:7:\"_ym_uid\";s:19:\"1456398017742953379\";s:8:\"_ym_isad\";s:1:\"0\";}','a:4:{s:5:\"_csrf\";s:56:\"a3plMFRGM1odNSliHSB.HANJIWIjIVwyUy9cVGRxVAkcHhJIFgpnPw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89506170741\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:0:\"\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:239:\"добрый день, скажите пожалуйста сколько будет стоить доставка  до нижнего новгорода? и уточните., боковой пластик крашеный или нет?\";}}','','s1',NULL),(67,NULL,NULL,1456472586,1456472586,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'176.59.3.139','http://select-moto.ru/katalog/moto/286-kawasaki-zzr400-285','a:46:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"501\";s:14:\"HTTP_X_REAL_IP\";s:11:\"5.45.255.71\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"176.59.3.139\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"NlhkMUJ2YVp8NzRjGDdVFnw7UGkLIShrbgkTbg4xEgoCPA8BFT0qEw==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:160:\"Mozilla/5.0 (Linux; Android 4.4.2; FS451 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 YaBrowser/16.2.0.5397.00 Mobile Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:14:\"HTTP_SAVE_DATA\";s:1:\"1\";s:12:\"HTTP_REFERER\";s:58:\"http://select-moto.ru/katalog/moto/286-kawasaki-zzr400-285\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:15:\"HTTP_X_TURBO_ID\";s:64:\"18ea82c958654223a847f4a8c48bd5098cd633157dd2b6320da5265204a79861\";s:17:\"HTTP_CHROME_PROXY\";s:109:\"ps=1456441443-1773579433-888254112-464528066, sid=ec1b29495b1e7ce88a0f24ef5d3847a1, c=android, b=2526, p=5397\";s:11:\"HTTP_COOKIE\";s:275:\"PHPSESSID=bfU5Te7oHynBHtU-g6IaRqg1Cw1; _csrf=eea14ef392d1aeff7daebea0735f9e3e03e9f41ec8ccce971ab6cf660a47d216a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22JoPRZA4LJc4XIWI1XQw_LGsP4dk0WKKI%22%3B%7D; _ym_uid=1456453768799050781; _ym_isad=0; _ym_visorc_33404488=w\";s:8:\"HTTP_VIA\";s:12:\"Yandex-TAPOC\";s:19:\"HTTP_X_YANDEX_TURBO\";s:1:\"1\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:11:\"5.45.255.71\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"54402\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1456472586.2920001;s:12:\"REQUEST_TIME\";i:1456472586;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:36095;s:27:\"__captcha/cms/tools/captcha\";s:7:\"rirotuk\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:9:\"PHPSESSID\";s:27:\"bfU5Te7oHynBHtU-g6IaRqg1Cw1\";s:5:\"_csrf\";s:130:\"eea14ef392d1aeff7daebea0735f9e3e03e9f41ec8ccce971ab6cf660a47d216a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"JoPRZA4LJc4XIWI1XQw_LGsP4dk0WKKI\";}\";s:7:\"_ym_uid\";s:19:\"1456453768799050781\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"NlhkMUJ2YVp8NzRjGDdVFnw7UGkLIShrbgkTbg4xEgoCPA8BFT0qEw==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:11:\"89042374933\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:21:\"sorov201447@gmail.com\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:41:\" Зарание благодарен.\r\n  \";}}','','s1',NULL),(68,NULL,NULL,1456603776,1456603776,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'109.195.91.216','http://select-moto.ru/katalog/moto/303-kawasaki-er-6n-302','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"784\";s:14:\"HTTP_X_REAL_IP\";s:14:\"109.195.91.216\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"109.195.91.216\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"R3JLLTRMZnV1IBwcDR43PSU.KFtsAAwBCRp7bncICRsDACVpWCRXBQ==\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:12:\"HTTP_REFERER\";s:57:\"http://select-moto.ru/katalog/moto/303-kawasaki-er-6n-302\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:5:\"ru-RU\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:15:\"HTTP_USER_AGENT\";s:61:\"Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko\";s:8:\"HTTP_DNT\";s:1:\"1\";s:18:\"HTTP_CACHE_CONTROL\";s:8:\"no-cache\";s:11:\"HTTP_COOKIE\";s:275:\"_ym_uid=1456602074193983212; _ym_isad=0; _ym_visorc_33404488=w; PHPSESSID=5ih5O1cG29avz8GYsokCBepy8H3; _csrf=789527faed6b6433298edb1f1297c2eb47e330f1eceda715b9b9133c4a0fca1ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%222RW19RQHbLcvXLjtNh0CCDonDrnDlh1p%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"109.195.91.216\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"44989\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1456603776.052;s:12:\"REQUEST_TIME\";i:1456603776;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:37038;s:27:\"__captcha/cms/tools/captcha\";s:6:\"yubisb\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456602074193983212\";s:8:\"_ym_isad\";s:1:\"0\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";s:9:\"PHPSESSID\";s:27:\"5ih5O1cG29avz8GYsokCBepy8H3\";s:5:\"_csrf\";s:130:\"789527faed6b6433298edb1f1297c2eb47e330f1eceda715b9b9133c4a0fca1ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"2RW19RQHbLcvXLjtNh0CCDonDrnDlh1p\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"R3JLLTRMZnV1IBwcDR43PSU.KFtsAAwBCRp7bncICRsDACVpWCRXBQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:15:\"7(905)212-10-83\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:18:\"yuplanov70@mail.ru\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:139:\"Здравствуйте!Хотел бы узнать о преобретении этого мото в рассрочку.Спасибо.\";}}','','s1',NULL),(69,NULL,NULL,1456670347,1456670347,NULL,NULL,'a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";N;s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";N;s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";N;}','a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:14:\"Телефон\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:5:\"Email\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:18:\"Сообщение\";}','selectmoto@yandex.ru','',NULL,NULL,NULL,0,2,'193.0.163.39','http://select-moto.ru/contacts','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:14:\"select-moto.ru\";s:14:\"CONTENT_LENGTH\";s:4:\"3265\";s:14:\"HTTP_X_REAL_IP\";s:12:\"193.0.163.39\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"193.0.163.39\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:21:\"http://select-moto.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WE8uVUp0VzcVP3QsPBlgRDUeZGI9AzR6Dwp6Oh8bOEU6DEEtPSsbTQ==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:30:\"http://select-moto.ru/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:276:\"_ym_uid=14566468701043016712; _ym_isad=0; PHPSESSID=UqbzHispfXXH-FwMu8l5uSwC0df; _csrf=c05173b063cfd921ac53b69227082d997539d12455db7ad2ea20d09438df84f6a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22MpZyvm7smQJ7wwcMWEToUoorbCoxw_Lz%22%3B%7D; _ym_visorc_33404488=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:74:\"<address>Apache/2.4.7 (Ubuntu) Server at select-moto.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:14:\"select-moto.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"193.0.163.39\";s:13:\"DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:43:\"/var/www/sites/select-moto.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:52:\"/var/www/sites/select-moto.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"46701\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1456670347.934;s:12:\"REQUEST_TIME\";i:1456670347;}','a:4:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:37451;s:27:\"__captcha/cms/tools/captcha\";s:7:\"depjjia\";s:32:\"__captcha/cms/tools/captchacount\";i:1;}','a:5:{s:7:\"_ym_uid\";s:20:\"14566468701043016712\";s:8:\"_ym_isad\";s:1:\"0\";s:9:\"PHPSESSID\";s:27:\"UqbzHispfXXH-FwMu8l5uSwC0df\";s:5:\"_csrf\";s:130:\"c05173b063cfd921ac53b69227082d997539d12455db7ad2ea20d09438df84f6a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"MpZyvm7smQJ7wwcMWEToUoorbCoxw_Lz\";}\";s:19:\"_ym_visorc_33404488\";s:1:\"w\";}','a:4:{s:5:\"_csrf\";s:56:\"WE8uVUp0VzcVP3QsPBlgRDUeZGI9AzR6Dwp6Oh8bOEU6DEEtPSsbTQ==\";s:14:\"sx-model-value\";s:1:\"2\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:3:{s:40:\"property77a7cc55fa8579d0cc5a1e7ed69cb36a\";s:12:\"+79147579315\";s:40:\"propertyE8b3f4d817d378f70f0f3960cabb3fb8\";s:19:\"pitsarkov@gmail.com\";s:40:\"property6f35ee36d83ffd4a838167dd9d9b1d9f\";s:1024:\"Добрый день,\r\nМеня интересует модель Kawasaki ER-6n за 350 000 рублей. \r\nВышлите пожалуйста фотографии следующих элементов.\r\n-боковых зеркала\r\n-наконечники руля (грузики)\r\n-ручки руля\r\n-подножки\r\n-рычаги сцепления и тормоза.\r\n-Ограничители руля на раме.\r\n-Тормозные диски\r\n-Фото резины (колеса) и даты производства шин\r\n-Соты радиатора\r\n-ПТС\r\n-Аукционный лист\r\n\r\nТакже есть еще ряд вопросов по мотоциклу:\r\nКакие условия рассрочки?\r\nКакой антифриз залит?\r\nКакое масло залито и когда менялось?\r\nЕсть ли комплект сервисных ключей?\r\nЕсть ли 2 набота ключей зажигания?\r\n\r\nС Уважением, \r\n\r\nПавел\";}}','','s1',NULL);
/*!40000 ALTER TABLE `form2_form_send` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form2_form_send_property`
--

DROP TABLE IF EXISTS `form2_form_send_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_send_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value` (`value`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  CONSTRAINT `form2_form_send_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `form2_form_send` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_send_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `form2_form_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_send_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COMMENT='Связь свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_send_property`
--

LOCK TABLES `form2_form_send_property` WRITE;
/*!40000 ALTER TABLE `form2_form_send_property` DISABLE KEYS */;
INSERT INTO `form2_form_send_property` VALUES (1,NULL,NULL,1446132340,1446132340,2,2,'89161157460',2147483647,89161157460.0000,NULL),(2,NULL,NULL,1446132340,1446132340,4,2,'Маню хочу',0,0.0000,NULL),(3,1,1,1446331785,1446331785,2,3,'asd',0,0.0000,NULL),(4,1,1,1446331785,1446331785,4,3,'asd',0,0.0000,NULL),(5,1,1,1446331813,1446331813,2,4,'asd',0,0.0000,NULL),(6,1,1,1446331813,1446331813,4,4,'asd',0,0.0000,NULL),(7,1,1,1446331978,1446331978,2,5,'asd',0,0.0000,NULL),(8,1,1,1446331978,1446331978,3,5,'asd',0,0.0000,NULL),(9,1,1,1446331978,1446331978,4,5,'asd',0,0.0000,NULL),(10,1,1,1446332115,1446332115,2,6,'asd',0,0.0000,NULL),(11,1,1,1446332115,1446332115,4,6,'ad',0,0.0000,NULL),(12,1,1,1446332239,1446332239,2,7,'asdf',0,0.0000,NULL),(13,1,1,1446332239,1446332239,3,7,'asdf',0,0.0000,NULL),(14,1,1,1446332239,1446332239,4,7,'asdf',0,0.0000,NULL),(15,1,1,1446332922,1446332922,2,8,'dfgd',0,0.0000,NULL),(16,1,1,1446332922,1446332922,4,8,'dfg',0,0.0000,NULL),(17,1,1,1446332978,1446332978,2,9,'sdfs',0,0.0000,NULL),(18,1,1,1446332978,1446332978,4,9,'dfsd',0,0.0000,NULL),(19,1,1,1446333434,1446333434,2,10,'adw',0,0.0000,NULL),(20,1,1,1446333434,1446333434,3,10,'sdfsd',0,0.0000,NULL),(21,1,1,1446333434,1446333434,4,10,'sdfsdf',0,0.0000,NULL),(22,1,1,1446560633,1446560633,2,11,'test',0,0.0000,NULL),(23,1,1,1446560633,1446560633,3,11,'test',0,0.0000,NULL),(24,1,1,1446560633,1446560633,4,11,'test',0,0.0000,NULL),(25,1,1,1446562412,1446562412,2,12,'asd',0,0.0000,NULL),(26,1,1,1446562412,1446562412,3,12,'asda',0,0.0000,NULL),(27,1,1,1446562412,1446562412,4,12,'sdasd',0,0.0000,NULL),(28,1,1,1446563923,1446563923,2,13,'asdf',0,0.0000,NULL),(29,1,1,1446563923,1446563923,4,13,'asdf',0,0.0000,NULL),(30,1,1,1446564095,1446564095,2,14,'asd',0,0.0000,NULL),(31,1,1,1446564095,1446564095,4,14,'asd',0,0.0000,NULL),(32,1,1,1446564343,1446564343,2,15,'sdf',0,0.0000,NULL),(33,1,1,1446564343,1446564343,4,15,'sfwe',0,0.0000,NULL),(34,1,1,1446564786,1446564786,2,16,'фыва',0,0.0000,NULL),(35,1,1,1446564786,1446564786,4,16,'фывафыва',0,0.0000,NULL),(36,1,1,1446566076,1446566076,5,17,'Александр',0,0.0000,NULL),(37,1,1,1446566076,1446566076,6,17,'70 тыс. руб.',70,70.0000,NULL),(38,1,1,1446566076,1446566076,7,17,'1 год',1,1.0000,NULL),(39,1,1,1446566076,1446566076,8,17,'+79037222873',2147483647,79037222873.0000,NULL),(40,1,1,1446566076,1446566076,9,17,'semenov@skeeks.com',0,0.0000,NULL),(41,1,1,1446566145,1446566145,5,18,'Александр',0,0.0000,NULL),(42,1,1,1446566145,1446566145,6,18,'70 тыс. руб.',70,70.0000,NULL),(43,1,1,1446566145,1446566145,7,18,'1 год',1,1.0000,NULL),(44,1,1,1446566145,1446566145,8,18,'+79037222873',2147483647,79037222873.0000,NULL),(45,1,1,1446566145,1446566145,9,18,'semenov@skeeks.com',0,0.0000,NULL),(46,NULL,NULL,1446577276,1446577276,5,19,'Брагин Дмитрий Викторович',0,0.0000,NULL),(47,NULL,NULL,1446577276,1446577276,6,19,'100000',100000,100000.0000,NULL),(48,NULL,NULL,1446577276,1446577276,7,19,'1 год',1,1.0000,NULL),(49,NULL,NULL,1446577277,1446577277,8,19,'89672863840',2147483647,89672863840.0000,NULL),(50,NULL,NULL,1446577277,1446577277,9,19,'fiyfiiyii@mail.ru',0,0.0000,NULL),(51,NULL,NULL,1447942636,1447942636,2,20,'79672863840',2147483647,79672863840.0000,NULL),(52,NULL,NULL,1447942636,1447942636,3,20,'fedja8@yandex.ru',0,0.0000,NULL),(53,NULL,NULL,1447942636,1447942636,4,20,'хочу купить мотоцикл',0,0.0000,NULL),(54,NULL,NULL,1448622024,1448622024,2,21,'89035785536',2147483647,89035785536.0000,NULL),(55,NULL,NULL,1448622024,1448622024,3,21,'Rensicg@gmail.com',0,0.0000,NULL),(56,NULL,NULL,1448622024,1448622024,4,21,'Скажите пожалуйста номер рамы мотоцикла Suzuki DR-Z 400SM за 260000р',0,0.0000,NULL),(57,NULL,NULL,1449074607,1449074607,2,22,'+79778334893',2147483647,79778334893.0000,NULL),(58,NULL,NULL,1449074607,1449074607,3,22,'bmclassic@icloud.com',0,0.0000,NULL),(59,NULL,NULL,1449074607,1449074607,4,22,'Здравствуйте, \r\nПрочитал на вашем сайте что купившему мотоцикл до конца 2015 года - доставка бесплатно. \r\nМеня интересует доставка по Москве мотоцикла Yamaha XVS 650 Drag Star Classic артикул: 193. Действительно ли бесплатно? \r\nПокупать собираюсь вероятно',0,0.0000,NULL),(60,NULL,NULL,1449610157,1449610157,2,23,'89119786777',2147483647,89119786777.0000,NULL),(61,NULL,NULL,1449610157,1449610157,3,23,'9119786777@mail.ru',2147483647,9119786777.0000,NULL),(62,NULL,NULL,1449610157,1449610157,4,23,'Доброго времени суток! Скажите , цены на Моты у вас твёрдые или вы можете сбрасывать цену индивидуально для клиента!? Спасибо!!!',0,0.0000,NULL),(63,NULL,NULL,1450074904,1450074904,2,24,'89034470530',2147483647,89034470530.0000,NULL),(64,NULL,NULL,1450074904,1450074904,3,24,'zel_maks@mail.ru',0,0.0000,NULL),(65,NULL,NULL,1450074904,1450074904,4,24,'Доброго времени суток! Заинтересовал мотоцикл Kawasaki Concours 14 ABS 0213 года. Артикул: 263.\r\nНА сколько я понимаю мотоцикл из Америки. Можно ли получить его аукционный лист на почту? + Хотелось бы увидеть подробные фото всех основных узлов мотоцикла. ',0,0.0000,NULL),(66,NULL,NULL,1450435470,1450435470,2,25,'89627678190',2147483647,89627678190.0000,NULL),(67,NULL,NULL,1450435470,1450435470,3,25,'Adigamen@inbox.ru',0,0.0000,NULL),(68,NULL,NULL,1450435470,1450435470,4,25,'Хочу взять в кредит через Альфа-банк',0,0.0000,NULL),(69,NULL,NULL,1450488080,1450488080,2,26,'89147551383',2147483647,89147551383.0000,NULL),(70,NULL,NULL,1450488080,1450488080,3,26,'oleg-hevelsk@mail.ru',0,0.0000,NULL),(71,NULL,NULL,1450488080,1450488080,4,26,'Это мотоцикл Артикул: 193 бегал по России? И стоит доставка до города Орла?',0,0.0000,NULL),(72,NULL,NULL,1451424373,1451424373,2,27,'89224380537',2147483647,89224380537.0000,NULL),(73,NULL,NULL,1451424373,1451424373,3,27,'surgutgerman@mail.ru',0,0.0000,NULL),(74,NULL,NULL,1451424373,1451424373,4,27,'Здравствуйте!!! Хотелось бы по подробнее узнать про мот: вин номер и аукционный лист!',0,0.0000,NULL),(75,NULL,NULL,1451468897,1451468897,2,28,'89067913458',2147483647,89067913458.0000,NULL),(76,NULL,NULL,1451468897,1451468897,3,28,'lddshka@mail.ru',0,0.0000,NULL),(77,NULL,NULL,1451468897,1451468897,4,28,'Интересует ли Вас обмен на Yamaha YZF R-6 2007г.в. с моей доплатой 90т.р.? Состояние хорошее, есть пара мелких царапин. пробег 39т.',0,0.0000,NULL),(78,NULL,NULL,1452031861,1452031861,2,29,'89049596418',2147483647,89049596418.0000,NULL),(79,NULL,NULL,1452031861,1452031861,3,29,'mityai.honda@yandex.ru',0,0.0000,NULL),(80,NULL,NULL,1452031861,1452031861,4,29,'Добрый день! Интересует Honda VTX 1300 серебристый, покупка с условием рассрочки, первоначальный взнос 300 000 руб. С уважением,  Дмитрий.',0,0.0000,NULL),(81,NULL,NULL,1452693296,1452693296,2,30,'89037968869',2147483647,89037968869.0000,NULL),(82,NULL,NULL,1452693296,1452693296,3,30,'7968869@mail.ru',7968869,7968869.0000,NULL),(83,NULL,NULL,1452693296,1452693296,4,30,'Добрый день!\r\n\r\nХочу приобрести данный мотоцикл в кредит, есть 500т и 500 надо в кредит',0,0.0000,NULL),(84,NULL,NULL,1452795199,1452795199,2,31,'89265574312',2147483647,89265574312.0000,NULL),(85,NULL,NULL,1452795199,1452795199,3,31,'hau19@mail.ru',0,0.0000,NULL),(86,NULL,NULL,1452795199,1452795199,4,31,'Здравствуйте, хотел бы узнать условия кредита на мотоцикл и условия рассрочки на данный мотоцикл. Спасибо',0,0.0000,NULL),(87,NULL,NULL,1453229116,1453229116,2,32,'89265574312',2147483647,89265574312.0000,NULL),(88,NULL,NULL,1453229116,1453229116,3,32,'hau19@mail.ru',0,0.0000,NULL),(89,NULL,NULL,1453229116,1453229116,4,32,'Здравствуйте, расскажите пожалуйста об этом мотоцикле, что поменяно, в каком состояние резина, и что за прямотоки стоят? и есть ли возможность поставить стоковые глушители?',0,0.0000,NULL),(90,NULL,NULL,1453464620,1453464620,2,33,'89807137382',2147483647,89807137382.0000,NULL),(91,NULL,NULL,1453464620,1453464620,4,33,'ДОБРЫЙ ДЕНЬ, хочу поинтересоваться по поводу приобретения мотоцыкла хонда сбр 1000 рр в рассрочку. Возможно ли по виду на жительсво!?',0,0.0000,NULL),(92,NULL,NULL,1453568430,1453568430,2,34,'89655500000',2147483647,89655500000.0000,NULL),(93,NULL,NULL,1453568430,1453568430,3,34,'Soldatovalex59@mail.ru',0,0.0000,NULL),(94,NULL,NULL,1453568430,1453568430,4,34,'Здравствуйте. Просьба скинуть фото по моту Yamaha TT-R 250. Доставка до терминала ТК в Москве платная?',0,0.0000,NULL),(95,NULL,NULL,1453568540,1453568540,2,35,'89515999054',2147483647,89515999054.0000,NULL),(96,NULL,NULL,1453568540,1453568540,3,35,'zlo-tr10@rambler.ru',0,0.0000,NULL),(97,NULL,NULL,1453568540,1453568540,4,35,'в кредит на три года без первоначального взноса',0,0.0000,NULL),(98,NULL,NULL,1453922440,1453922440,2,36,'89253823700',2147483647,89253823700.0000,NULL),(99,NULL,NULL,1453922440,1453922440,3,36,'Kurdiola1986@mail.ru ',0,0.0000,NULL),(100,NULL,NULL,1453922440,1453922440,4,36,'Насчет снегохода поларис его в кредит',0,0.0000,NULL),(101,NULL,NULL,1454152062,1454152062,2,37,'89098138992',2147483647,89098138992.0000,NULL),(102,NULL,NULL,1454152062,1454152062,3,37,'ealekseev05@gmail.com',0,0.0000,NULL),(103,NULL,NULL,1454152062,1454152062,4,37,'Здравствуйте хотел бы купить красавца если это возмозно',0,0.0000,NULL),(104,NULL,NULL,1454162693,1454162693,2,38,'9204602222',2147483647,9204602222.0000,NULL),(105,NULL,NULL,1454162693,1454162693,4,38,'Polaris не может быть BRP',0,0.0000,NULL),(106,NULL,NULL,1454169297,1454169297,2,39,'9859740455',2147483647,9859740455.0000,NULL),(107,NULL,NULL,1454169297,1454169297,3,39,'mihail.pripisnov@yndex.ru',0,0.0000,NULL),(108,NULL,NULL,1454169297,1454169297,4,39,'50%',50,50.0000,NULL),(109,NULL,NULL,1454241447,1454241447,2,40,'+79161626030',2147483647,79161626030.0000,NULL),(110,NULL,NULL,1454241447,1454241447,3,40,'poiuytr77@mail.ru ',0,0.0000,NULL),(111,NULL,NULL,1454241447,1454241447,4,40,'Рассматриваю данный покупку данного мотоцикла в кредит.',0,0.0000,NULL),(112,NULL,NULL,1454279255,1454279255,2,41,'89308285979',2147483647,89308285979.0000,NULL),(113,NULL,NULL,1454279255,1454279255,3,41,'salt32@yandex.ru',0,0.0000,NULL),(114,NULL,NULL,1454279256,1454279256,4,41,'Здравствуйте, напишите пожалуйста номер рамы артикула 135. Спасибо.',0,0.0000,NULL),(115,NULL,NULL,1454347680,1454347680,2,42,'8-952-561-28-17',8,8.0000,NULL),(116,NULL,NULL,1454347680,1454347680,3,42,'alex.skif72',0,0.0000,NULL),(117,NULL,NULL,1454347680,1454347680,4,42,'Каким образом можно приобрести мотоцикл в кредит?',0,0.0000,NULL),(118,NULL,NULL,1454582700,1454582700,2,43,'89174721780 ',2147483647,89174721780.0000,NULL),(119,NULL,NULL,1454582700,1454582700,3,43,'esinpavel1983@mail.ru',0,0.0000,NULL),(120,NULL,NULL,1454582700,1454582700,4,43,'Хотелось бы посмотреть видео про мотоцикл Honda VFR800 артикул 129 цена 310000 тыс \r\nи расчитайте доставку до города Салават Республика Башкортостан \r\nесли есть возможность транспортной компанией ПЭК',0,0.0000,NULL),(121,NULL,NULL,1454679713,1454679713,2,44,'+7 905 423 84 77',7,7.0000,NULL),(122,NULL,NULL,1454679713,1454679713,3,44,'command77@rambler.ru',0,0.0000,NULL),(123,NULL,NULL,1454679713,1454679713,4,44,'Добрый день! Заинтересовал один из ваших байков.Хотелось бы больше фото и видео работающего двигателя.Honda VT 750 DC Shadow Артикул: 66.\r\nСпасибо.',0,0.0000,NULL),(124,NULL,NULL,1454683986,1454683986,2,45,'89093899200',2147483647,89093899200.0000,NULL),(125,NULL,NULL,1454683986,1454683986,3,45,'rht-oil@mail.ru',0,0.0000,NULL),(126,NULL,NULL,1454683986,1454683986,4,45,'Добрый вечер,меня зовут Андрей. Хотелось бы приобрести в Вашем мотосалоне  Kawasaki Vulkan 2000 Claccic LT, 2008 г.цена -500 т.р(Артикул: 246) в кредит,с первым взносом 150т.р. Место жительства Волжский,Волгоградская обл.\r\nВозможно ли совершить такую поку',0,0.0000,NULL),(127,NULL,NULL,1454762010,1454762010,2,46,'9859740455',2147483647,9859740455.0000,NULL),(128,NULL,NULL,1454762010,1454762010,3,46,'mihail.pripisnov@yandex.ru',0,0.0000,NULL),(129,NULL,NULL,1454762010,1454762010,4,46,'Здравствуйте. пришлите пожалуйста фото номера рамы мотоциклов- Артикул: 256 VIN: 1037\r\nа также- Артикул: 121 VIN: 7844. Спасибо',0,0.0000,NULL),(130,NULL,NULL,1455011134,1455011134,2,47,'89253074577',2147483647,89253074577.0000,NULL),(131,NULL,NULL,1455011134,1455011134,3,47,'ustusalex@mail.ru',0,0.0000,NULL),(132,NULL,NULL,1455011134,1455011134,4,47,'Kavasaki ZZR-400, 2001 г.в., 175000 р. (Select Moto, Артикул: 285)',0,0.0000,NULL),(133,NULL,NULL,1455102936,1455102936,2,48,'89859992934',2147483647,89859992934.0000,NULL),(134,NULL,NULL,1455102936,1455102936,3,48,'kubarskiy@aasservice.ru',0,0.0000,NULL),(135,NULL,NULL,1455102936,1455102936,4,48,'250 000,00 руб.\r\nАртикул: 147\r\nVIN: 3858\r\nНаличие: В наличии\r\nМарка: Kawasaki\r\nТип: Спорт/CпортТурист\r\nКатегория: Мототехника\r\nГод: 2013\r\nОбъем двигателя: 296 см3\r\nПробег: 6000 км\r\nЦвет: Зеленый\r\n\r\nДобрый День!\r\nинтересует возможность приобретения Kawasak',250,250.0000,NULL),(136,NULL,NULL,1455166921,1455166921,2,49,'+77773788835',2147483647,77773788835.0000,NULL),(137,NULL,NULL,1455166921,1455166921,3,49,'goga_gorodok2177@mail.ru',0,0.0000,NULL),(138,NULL,NULL,1455166921,1455166921,4,49,'Добрый день! Интересует мотоцикл BMW K1200LT. Если можно доп фото или видео. Какие вложения требуются? Возможно ли доставка В Алмату???',0,0.0000,NULL),(139,NULL,NULL,1455262708,1455262708,2,50,'89616484857',2147483647,89616484857.0000,NULL),(140,NULL,NULL,1455262708,1455262708,3,50,'sotalah.ru',0,0.0000,NULL),(141,NULL,NULL,1455262708,1455262708,4,50,'хочу приобрести мот',0,0.0000,NULL),(142,NULL,NULL,1455394151,1455394151,2,51,'89157352727',2147483647,89157352727.0000,NULL),(143,NULL,NULL,1455394151,1455394151,3,51,'denadvokat@yandex.ru',0,0.0000,NULL),(144,NULL,NULL,1455394151,1455394151,4,51,'kawasaki er-6n\r\nцена 270.000\r\nпервоначальный взнос 100.000\r\nсрок 24 месяца',0,0.0000,NULL),(145,NULL,NULL,1455436835,1455436835,2,52,'89105916207',2147483647,89105916207.0000,NULL),(146,NULL,NULL,1455436835,1455436835,3,52,'pablomann@mail.ru',0,0.0000,NULL),(147,NULL,NULL,1455436835,1455436835,4,52,'ZX-10R 2006 380.000',0,0.0000,NULL),(148,NULL,NULL,1455466330,1455466330,2,53,'89257830373',2147483647,89257830373.0000,NULL),(149,NULL,NULL,1455466331,1455466331,3,53,'tmc.msk@mail.ru ',0,0.0000,NULL),(150,NULL,NULL,1455466331,1455466331,4,53,'Кредит ',0,0.0000,NULL),(151,NULL,NULL,1455694775,1455694775,2,54,'+79184541601',2147483647,79184541601.0000,NULL),(152,NULL,NULL,1455694775,1455694775,3,54,'vladimir.nebug@rambler.ru',0,0.0000,NULL),(153,NULL,NULL,1455694775,1455694775,4,54,'Интересует Кавасаки ZX 10 r 2011 за 600000 года в рассрочку, первоначальный взнос в 300000 тыс.р. имеется    ',0,0.0000,NULL),(154,NULL,NULL,1455702724,1455702724,2,55,'+79226153222',2147483647,79226153222.0000,NULL),(155,NULL,NULL,1455702724,1455702724,3,55,'yuz-aleksandr@yandex.ru',0,0.0000,NULL),(156,NULL,NULL,1455702724,1455702724,4,55,'Добрый день. Интересует покупка мота в кредит. Постоянно прописан, живу и работаю в Екатеринбурге. В наличии первоначалка 50-70000р. \r\n',0,0.0000,NULL),(157,NULL,NULL,1455706838,1455706838,2,56,'+79218519950',2147483647,79218519950.0000,NULL),(158,NULL,NULL,1455706838,1455706838,3,56,'mel29an@mail.ru',0,0.0000,NULL),(159,NULL,NULL,1455706838,1455706838,4,56,'Добрый день. Подскажите пожалуйста, возможно ли кредитование жителей других регионов? Необходимо для этого приезжать к вам? \r\nСпасибо. \r\nАндрей.',0,0.0000,NULL),(160,NULL,NULL,1455783877,1455783877,2,57,'9636636526',2147483647,9636636526.0000,NULL),(161,NULL,NULL,1455783877,1455783877,3,57,'semyka@rambler.ru',0,0.0000,NULL),(162,NULL,NULL,1455783877,1455783877,4,57,'По кредиту',0,0.0000,NULL),(163,NULL,NULL,1455783894,1455783894,2,58,'9636636526',2147483647,9636636526.0000,NULL),(164,NULL,NULL,1455783894,1455783894,3,58,'semyka@rambler.ru',0,0.0000,NULL),(165,NULL,NULL,1455783894,1455783894,4,58,'по кредиту',0,0.0000,NULL),(166,NULL,NULL,1455873737,1455873737,2,59,'89060667609',2147483647,89060667609.0000,NULL),(167,NULL,NULL,1455873737,1455873737,3,59,'Glonass358@gmail.com',0,0.0000,NULL),(168,NULL,NULL,1455873737,1455873737,4,59,'Добрый день!\r\n\r\nПросьба! Просчитать процентную ставку, ежемесячный платеж, на срок кредита 6-12 месяцев то и то. Банк кредитования?',0,0.0000,NULL),(169,NULL,NULL,1456031566,1456031566,2,60,'+79649465886',2147483647,79649465886.0000,NULL),(170,NULL,NULL,1456031567,1456031567,3,60,'drug.solntsa@gmail.com',0,0.0000,NULL),(171,NULL,NULL,1456031567,1456031567,4,60,'Здравствуйте, хотелось бы подробнее узнать о программе льготного кредитования.. хочу приобрести у вас Kawasaki Vulcan 2000 Classic LT, 2005 г. 400 000р. первоночальный взнос планирую сделать 150 000 , можно расчитать ?',0,0.0000,NULL),(172,NULL,NULL,1456061828,1456061828,2,61,'89267198598',2147483647,89267198598.0000,NULL),(173,NULL,NULL,1456061828,1456061828,3,61,'coscon@mail.ru',0,0.0000,NULL),(174,NULL,NULL,1456061828,1456061828,4,61,'Добрый день! Хочу купить этот мотоцикл. Готов внести 50% от стоимости. Прошу предоставить рассрочку\r\n на оставшуюся сумму на 6 месяцев. Спасибо.',0,0.0000,NULL),(175,NULL,NULL,1456127599,1456127599,2,62,'89277091383',2147483647,89277091383.0000,NULL),(176,NULL,NULL,1456127599,1456127599,3,62,'Aavonigol@gmail.com',0,0.0000,NULL),(177,NULL,NULL,1456127599,1456127599,4,62,'Рассматриваю покупку в рассрочку. Жду вашего звонка. Honda CBR1000RR',0,0.0000,NULL),(178,NULL,NULL,1456231490,1456231490,2,63,'89253781619',2147483647,89253781619.0000,NULL),(179,NULL,NULL,1456231490,1456231490,3,63,'proni4kin.igor@yandex.ru',0,0.0000,NULL),(180,NULL,NULL,1456231490,1456231490,4,63,'кредит',0,0.0000,NULL),(181,NULL,NULL,1456243840,1456243840,2,64,'89253781619',2147483647,89253781619.0000,NULL),(182,NULL,NULL,1456243840,1456243840,3,64,'proni4kin.igor@yandex.ru',0,0.0000,NULL),(183,NULL,NULL,1456243840,1456243840,4,64,'добрый вечер',0,0.0000,NULL),(184,NULL,NULL,1456399427,1456399427,2,65,'89261725817',2147483647,89261725817.0000,NULL),(185,NULL,NULL,1456399427,1456399427,3,65,'9261725817',2147483647,9261725817.0000,NULL),(186,NULL,NULL,1456399427,1456399427,4,65,'Здравствуйте! Интересует рассрочка.',0,0.0000,NULL),(187,NULL,NULL,1456408809,1456408809,2,66,'89506170741',2147483647,89506170741.0000,NULL),(188,NULL,NULL,1456408809,1456408809,3,66,'',0,0.0000,NULL),(189,NULL,NULL,1456408809,1456408809,4,66,'добрый день, скажите пожалуйста сколько будет стоить доставка  до нижнего новгорода? и уточните., боковой пластик крашеный или нет?',0,0.0000,NULL),(190,NULL,NULL,1456472586,1456472586,2,67,'89042374933',2147483647,89042374933.0000,NULL),(191,NULL,NULL,1456472586,1456472586,3,67,'sorov201447@gmail.com',0,0.0000,NULL),(192,NULL,NULL,1456472586,1456472586,4,67,' Зарание благодарен.\r\n  ',0,0.0000,NULL),(193,NULL,NULL,1456603776,1456603776,2,68,'7(905)212-10-83',7,7.0000,NULL),(194,NULL,NULL,1456603776,1456603776,3,68,'yuplanov70@mail.ru',0,0.0000,NULL),(195,NULL,NULL,1456603776,1456603776,4,68,'Здравствуйте!Хотел бы узнать о преобретении этого мото в рассрочку.Спасибо.',0,0.0000,NULL),(196,NULL,NULL,1456670348,1456670348,2,69,'+79147579315',2147483647,79147579315.0000,NULL),(197,NULL,NULL,1456670348,1456670348,3,69,'pitsarkov@gmail.com',0,0.0000,NULL),(198,NULL,NULL,1456670348,1456670348,4,69,'Добрый день,\r\nМеня интересует модель Kawasaki ER-6n за 350 000 рублей. \r\nВышлите пожалуйста фотографии следующих элементов.\r\n-боковых зеркала\r\n-наконечники руля (грузики)\r\n-ручки руля\r\n-подножки\r\n-рычаги сцепления и тормоза.\r\n-Ограничители руля на раме.\r\n',0,0.0000,NULL);
/*!40000 ALTER TABLE `form2_form_send_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kladr_location`
--

DROP TABLE IF EXISTS `kladr_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kladr_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `name_short` varchar(255) DEFAULT NULL,
  `name_full` varchar(255) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `okato` varchar(20) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `kladr_api_id` varchar(20) DEFAULT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `parent_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `name_short` (`name_short`),
  KEY `name_full` (`name_full`),
  KEY `zip` (`zip`),
  KEY `okato` (`okato`),
  KEY `type` (`type`),
  KEY `active` (`active`),
  KEY `parent_sort` (`parent_id`,`sort`),
  CONSTRAINT `kladr_location_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `kladr_location_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=1093 DEFAULT CHARSET=utf8 COMMENT='База адресов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kladr_location`
--

LOCK TABLES `kladr_location` WRITE;
/*!40000 ALTER TABLE `kladr_location` DISABLE KEYS */;
INSERT INTO `kladr_location` VALUES (1,NULL,NULL,NULL,NULL,'Россия',NULL,NULL,NULL,NULL,'country',NULL,'Y',NULL,NULL),(2,NULL,NULL,NULL,NULL,'Адыгея','Адыгея Респ','Адыгея Республика','385000',NULL,'region','0100000000000','Y',1,0),(3,NULL,NULL,NULL,NULL,'Алтай','Алтай Респ','Алтай Республика','649000',NULL,'region','0400000000000','Y',1,100),(4,NULL,NULL,NULL,NULL,'Алтайский','Алтайский край','Алтайский Край',NULL,NULL,'region','2200000000000','Y',1,200),(5,NULL,NULL,NULL,NULL,'Амурская','Амурская обл','Амурская Область','675000',NULL,'region','2800000000000','Y',1,300),(6,NULL,NULL,NULL,NULL,'Архангельская','Архангельская обл','Архангельская Область',NULL,NULL,'region','2900000000000','Y',1,400),(7,NULL,NULL,NULL,NULL,'Астраханская','Астраханская обл','Астраханская Область',NULL,NULL,'region','3000000000000','Y',1,500),(8,NULL,NULL,NULL,NULL,'Северная Осетия - Алания','Северная Осетия - Алания Респ','Северная Осетия - Алания Республика',NULL,NULL,'region','1500000000000','Y',1,600),(9,NULL,NULL,NULL,NULL,'Ханты-Мансийский Автономный округ - Югра','Ханты-Мансийский Автономный округ - Югра АО','Ханты-Мансийский Автономный округ - Югра Автономный округ',NULL,NULL,'region','8600000000000','Y',1,700),(10,NULL,NULL,NULL,NULL,'Байконур','Байконур г','Байконур Город','468320',NULL,'region','9900000000000','Y',1,800),(11,NULL,NULL,NULL,NULL,'Башкортостан','Башкортостан Респ','Башкортостан Республика','450000',NULL,'region','0200000000000','Y',1,900),(12,NULL,NULL,NULL,NULL,'Белгородская','Белгородская обл','Белгородская Область',NULL,NULL,'region','3100000000000','Y',1,1000),(13,NULL,NULL,NULL,NULL,'Брянская','Брянская обл','Брянская Область',NULL,NULL,'region','3200000000000','Y',1,1100),(14,NULL,NULL,NULL,NULL,'Бурятия','Бурятия Респ','Бурятия Республика','670000',NULL,'region','0300000000000','Y',1,1200),(15,NULL,NULL,NULL,NULL,'Владимирская','Владимирская обл','Владимирская Область',NULL,NULL,'region','3300000000000','Y',1,1300),(16,NULL,NULL,NULL,NULL,'Волгоградская','Волгоградская обл','Волгоградская Область',NULL,NULL,'region','3400000000000','Y',1,1400),(17,NULL,NULL,NULL,NULL,'Вологодская','Вологодская обл','Вологодская Область',NULL,NULL,'region','3500000000000','Y',1,1500),(18,NULL,NULL,NULL,NULL,'Воронежская','Воронежская обл','Воронежская Область',NULL,NULL,'region','3600000000000','Y',1,1600),(19,NULL,NULL,NULL,NULL,'Дагестан','Дагестан Респ','Дагестан Республика','368000',NULL,'region','0500000000000','Y',1,1700),(20,NULL,NULL,NULL,NULL,'Еврейская','Еврейская Аобл','Еврейская Автономная область',NULL,NULL,'region','7900000000000','Y',1,1800),(21,NULL,NULL,NULL,NULL,'Забайкальский','Забайкальский край','Забайкальский Край',NULL,NULL,'region','7500000000000','Y',1,1900),(22,NULL,NULL,NULL,NULL,'Ивановская','Ивановская обл','Ивановская Область',NULL,NULL,'region','3700000000000','Y',1,2000),(23,NULL,NULL,NULL,NULL,'Ингушетия','Ингушетия Респ','Ингушетия Республика','386000',NULL,'region','0600000000000','Y',1,2100),(24,NULL,NULL,NULL,NULL,'Иркутская','Иркутская обл','Иркутская Область',NULL,NULL,'region','3800000000000','Y',1,2200),(25,NULL,NULL,NULL,NULL,'Кабардино-Балкарская','Кабардино-Балкарская Респ','Кабардино-Балкарская Республика',NULL,NULL,'region','0700000000000','Y',1,2300),(26,NULL,NULL,NULL,NULL,'Калининградская','Калининградская обл','Калининградская Область',NULL,NULL,'region','3900000000000','Y',1,2400),(27,NULL,NULL,NULL,NULL,'Калмыкия','Калмыкия Респ','Калмыкия Республика',NULL,NULL,'region','0800000000000','Y',1,2500),(28,NULL,NULL,NULL,NULL,'Калужская','Калужская обл','Калужская Область',NULL,NULL,'region','4000000000000','Y',1,2600),(29,NULL,NULL,NULL,NULL,'Камчатский','Камчатский край','Камчатский Край',NULL,NULL,'region','4100000000000','Y',1,2700),(30,NULL,NULL,NULL,NULL,'Карачаево-Черкесская','Карачаево-Черкесская Респ','Карачаево-Черкесская Республика',NULL,NULL,'region','0900000000000','Y',1,2800),(31,NULL,NULL,NULL,NULL,'Карелия','Карелия Респ','Карелия Республика',NULL,NULL,'region','1000000000000','Y',1,2900),(32,NULL,NULL,NULL,NULL,'Кемеровская','Кемеровская обл','Кемеровская Область',NULL,NULL,'region','4200000000000','Y',1,3000),(33,NULL,NULL,NULL,NULL,'Кировская','Кировская обл','Кировская Область','610000',NULL,'region','4300000000000','Y',1,3100),(34,NULL,NULL,NULL,NULL,'Коми','Коми Респ','Коми Республика',NULL,NULL,'region','1100000000000','Y',1,3200),(35,NULL,NULL,NULL,NULL,'Костромская','Костромская обл','Костромская Область',NULL,NULL,'region','4400000000000','Y',1,3300),(36,NULL,NULL,NULL,NULL,'Краснодарский','Краснодарский край','Краснодарский Край',NULL,NULL,'region','2300000000000','Y',1,3400),(37,NULL,NULL,NULL,NULL,'Красноярский','Красноярский край','Красноярский Край',NULL,NULL,'region','2400000000000','Y',1,3500),(38,NULL,NULL,NULL,NULL,'Крым','Крым Респ','Крым Республика',NULL,NULL,'region','9100000000000','Y',1,3600),(39,NULL,NULL,NULL,NULL,'Курганская','Курганская обл','Курганская Область','641000',NULL,'region','4500000000000','Y',1,3700),(40,NULL,NULL,NULL,NULL,'Курская','Курская обл','Курская Область',NULL,NULL,'region','4600000000000','Y',1,3800),(41,NULL,NULL,NULL,NULL,'Ленинградская','Ленинградская обл','Ленинградская Область',NULL,NULL,'region','4700000000000','Y',1,3900),(42,NULL,NULL,NULL,NULL,'Липецкая','Липецкая обл','Липецкая Область',NULL,NULL,'region','4800000000000','Y',1,4000),(43,NULL,NULL,NULL,NULL,'Магаданская','Магаданская обл','Магаданская Область',NULL,NULL,'region','4900000000000','Y',1,4100),(44,NULL,NULL,NULL,NULL,'Марий Эл','Марий Эл Респ','Марий Эл Республика',NULL,NULL,'region','1200000000000','Y',1,4200),(45,NULL,NULL,NULL,NULL,'Мордовия','Мордовия Респ','Мордовия Республика',NULL,NULL,'region','1300000000000','Y',1,4300),(46,NULL,NULL,NULL,NULL,'Москва','Москва г','Москва Город',NULL,NULL,'region','7700000000000','Y',1,4400),(47,NULL,NULL,NULL,NULL,'Московская','Московская обл','Московская Область',NULL,NULL,'region','5000000000000','Y',1,4500),(48,NULL,NULL,NULL,NULL,'Мурманская','Мурманская обл','Мурманская Область',NULL,NULL,'region','5100000000000','Y',1,4600),(49,NULL,NULL,NULL,NULL,'Ненецкий','Ненецкий АО','Ненецкий Автономный округ','166000',NULL,'region','8300000000000','Y',1,4700),(50,NULL,NULL,NULL,NULL,'Нижегородская','Нижегородская обл','Нижегородская Область',NULL,NULL,'region','5200000000000','Y',1,4800),(51,NULL,NULL,NULL,NULL,'Новгородская','Новгородская обл','Новгородская Область',NULL,NULL,'region','5300000000000','Y',1,4900),(52,NULL,NULL,NULL,NULL,'Новосибирская','Новосибирская обл','Новосибирская Область',NULL,NULL,'region','5400000000000','Y',1,5000),(53,NULL,NULL,NULL,NULL,'Омская','Омская обл','Омская Область',NULL,NULL,'region','5500000000000','Y',1,5100),(54,NULL,NULL,NULL,NULL,'Оренбургская','Оренбургская обл','Оренбургская Область','460000',NULL,'region','5600000000000','Y',1,5200),(55,NULL,NULL,NULL,NULL,'Орловская','Орловская обл','Орловская Область',NULL,NULL,'region','5700000000000','Y',1,5300),(56,NULL,NULL,NULL,NULL,'Пензенская','Пензенская обл','Пензенская Область',NULL,NULL,'region','5800000000000','Y',1,5400),(57,NULL,NULL,NULL,NULL,'Пермский','Пермский край','Пермский Край',NULL,NULL,'region','5900000000000','Y',1,5500),(58,NULL,NULL,NULL,NULL,'Приморский','Приморский край','Приморский Край',NULL,NULL,'region','2500000000000','Y',1,5600),(59,NULL,NULL,NULL,NULL,'Псковская','Псковская обл','Псковская Область',NULL,NULL,'region','6000000000000','Y',1,5700),(60,NULL,NULL,NULL,NULL,'Ростовская','Ростовская обл','Ростовская Область',NULL,NULL,'region','6100000000000','Y',1,5800),(61,NULL,NULL,NULL,NULL,'Рязанская','Рязанская обл','Рязанская Область','390000',NULL,'region','6200000000000','Y',1,5900),(62,NULL,NULL,NULL,NULL,'Чувашская','Чувашская Респ','Чувашская Республика',NULL,NULL,'region','2100000000000','Y',1,6000),(63,NULL,NULL,NULL,NULL,'Самарская','Самарская обл','Самарская Область',NULL,NULL,'region','6300000000000','Y',1,6100),(64,NULL,NULL,NULL,NULL,'Санкт-Петербург','Санкт-Петербург г','Санкт-Петербург Город','190000',NULL,'region','7800000000000','Y',1,6200),(65,NULL,NULL,NULL,NULL,'Саратовская','Саратовская обл','Саратовская Область','410000',NULL,'region','6400000000000','Y',1,6300),(66,NULL,NULL,NULL,NULL,'Саха /Якутия/','Саха /Якутия/ Респ','Саха /Якутия/ Республика',NULL,NULL,'region','1400000000000','Y',1,6400),(67,NULL,NULL,NULL,NULL,'Сахалинская','Сахалинская обл','Сахалинская Область','693000',NULL,'region','6500000000000','Y',1,6500),(68,NULL,NULL,NULL,NULL,'Свердловская','Свердловская обл','Свердловская Область','620000',NULL,'region','6600000000000','Y',1,6600),(69,NULL,NULL,NULL,NULL,'Севастополь','Севастополь г','Севастополь Город',NULL,NULL,'region','9200000000000','Y',1,6700),(70,NULL,NULL,NULL,NULL,'Смоленская','Смоленская обл','Смоленская Область',NULL,NULL,'region','6700000000000','Y',1,6800),(71,NULL,NULL,NULL,NULL,'Ставропольский','Ставропольский край','Ставропольский Край',NULL,NULL,'region','2600000000000','Y',1,6900),(72,NULL,NULL,NULL,NULL,'Тамбовская','Тамбовская обл','Тамбовская Область','392000',NULL,'region','6800000000000','Y',1,7000),(73,NULL,NULL,NULL,NULL,'Татарстан','Татарстан Респ','Татарстан Республика','420000',NULL,'region','1600000000000','Y',1,7100),(74,NULL,NULL,NULL,NULL,'Тверская','Тверская обл','Тверская Область',NULL,NULL,'region','6900000000000','Y',1,7200),(75,NULL,NULL,NULL,NULL,'Томская','Томская обл','Томская Область',NULL,NULL,'region','7000000000000','Y',1,7300),(76,NULL,NULL,NULL,NULL,'Тульская','Тульская обл','Тульская Область',NULL,NULL,'region','7100000000000','Y',1,7400),(77,NULL,NULL,NULL,NULL,'Тыва','Тыва Респ','Тыва Республика','660000',NULL,'region','1700000000000','Y',1,7500),(78,NULL,NULL,NULL,NULL,'Тюменская','Тюменская обл','Тюменская Область',NULL,NULL,'region','7200000000000','Y',1,7600),(79,NULL,NULL,NULL,NULL,'Удмуртская','Удмуртская Респ','Удмуртская Республика',NULL,NULL,'region','1800000000000','Y',1,7700),(80,NULL,NULL,NULL,NULL,'Ульяновская','Ульяновская обл','Ульяновская Область','433000',NULL,'region','7300000000000','Y',1,7800),(81,NULL,NULL,NULL,NULL,'Хабаровский','Хабаровский край','Хабаровский Край',NULL,NULL,'region','2700000000000','Y',1,7900),(82,NULL,NULL,NULL,NULL,'Хакасия','Хакасия Респ','Хакасия Республика','655000',NULL,'region','1900000000000','Y',1,8000),(83,NULL,NULL,NULL,NULL,'Челябинская','Челябинская обл','Челябинская Область','454000',NULL,'region','7400000000000','Y',1,8100),(84,NULL,NULL,NULL,NULL,'Чеченская','Чеченская Респ','Чеченская Республика',NULL,NULL,'region','2000000000000','Y',1,8200),(85,NULL,NULL,NULL,NULL,'Чукотский','Чукотский АО','Чукотский Автономный округ',NULL,NULL,'region','8700000000000','Y',1,8300),(86,NULL,NULL,NULL,NULL,'Ямало-Ненецкий','Ямало-Ненецкий АО','Ямало-Ненецкий Автономный округ','629000',NULL,'region','8900000000000','Y',1,8400),(87,NULL,NULL,NULL,NULL,'Ярославская','Ярославская обл','Ярославская Область',NULL,NULL,'region','7600000000000','Y',1,8500),(88,NULL,NULL,NULL,NULL,'Алейский','Алейский р-н','Алейский Район',NULL,NULL,'district','2200200000000','Y',4,0),(89,NULL,NULL,NULL,NULL,'Алтайский','Алтайский р-н','Алтайский Район',NULL,NULL,'district','2200300000000','Y',4,100),(90,NULL,NULL,NULL,NULL,'Архаринский','Архаринский р-н','Архаринский Район',NULL,NULL,'district','2800200000000','Y',5,0),(91,NULL,NULL,NULL,NULL,'Ахтубинский','Ахтубинский р-н','Ахтубинский Район',NULL,NULL,'district','3000200000000','Y',7,0),(92,NULL,NULL,NULL,NULL,'Алагирский','Алагирский р-н','Алагирский Район',NULL,NULL,'district','1500200000000','Y',8,0),(93,NULL,NULL,NULL,NULL,'Ардонский','Ардонский р-н','Ардонский Район',NULL,NULL,'district','1500300000000','Y',8,100),(94,NULL,NULL,NULL,NULL,'Абзелиловский','Абзелиловский р-н','Абзелиловский Район','453620',NULL,'district','0205300000000','Y',11,0),(95,NULL,NULL,NULL,NULL,'Альшеевский','Альшеевский р-н','Альшеевский Район','452120',NULL,'district','0200200000000','Y',11,100),(96,NULL,NULL,NULL,NULL,'Архангельский','Архангельский р-н','Архангельский Район','453030',NULL,'district','0200300000000','Y',11,200),(97,NULL,NULL,NULL,NULL,'Аскинский','Аскинский р-н','Аскинский Район','452880',NULL,'district','0200400000000','Y',11,300),(98,NULL,NULL,NULL,NULL,'Аургазинский','Аургазинский р-н','Аургазинский Район','453480',NULL,'district','0200500000000','Y',11,400),(99,NULL,NULL,NULL,NULL,'Алексеевский','Алексеевский р-н','Алексеевский Район',NULL,NULL,'district','3100200000000','Y',12,0),(100,NULL,NULL,NULL,NULL,'Александровский','Александровский р-н','Александровский Район',NULL,NULL,'district','3300200000000','Y',15,0),(101,NULL,NULL,NULL,NULL,'Алексеевский','Алексеевский р-н','Алексеевский Район','403240',NULL,'district','3400200000000','Y',16,0),(102,NULL,NULL,NULL,NULL,'Аннинский','Аннинский р-н','Аннинский Район',NULL,NULL,'district','3600200000000','Y',18,0),(103,NULL,NULL,NULL,NULL,'Агульский','Агульский р-н','Агульский Район','368710',NULL,'district','0500200000000','Y',19,0),(104,NULL,NULL,NULL,NULL,'Акушинский','Акушинский р-н','Акушинский Район','368330',NULL,'district','0500300000000','Y',19,100),(105,NULL,NULL,NULL,NULL,'Ахвахский','Ахвахский р-н','Ахвахский Район','368990',NULL,'district','0500400000000','Y',19,200),(106,NULL,NULL,NULL,NULL,'Ахтынский','Ахтынский р-н','Ахтынский Район','368730',NULL,'district','0500500000000','Y',19,300),(107,NULL,NULL,NULL,NULL,'Агинский','Агинский р-н','Агинский Район',NULL,NULL,'district','7512900000000','Y',21,0),(108,NULL,NULL,NULL,NULL,'Акшинский','Акшинский р-н','Акшинский Район',NULL,NULL,'district','7500200000000','Y',21,100),(109,NULL,NULL,NULL,NULL,'Александрово-Заводский','Александрово-Заводский р-н','Александрово-Заводский Район',NULL,NULL,'district','7500300000000','Y',21,200),(110,NULL,NULL,NULL,NULL,'Аларский','Аларский р-н','Аларский Район',NULL,NULL,'district','3812800000000','Y',24,0),(111,NULL,NULL,NULL,NULL,'Ангарский','Ангарский р-н','Ангарский Район',NULL,NULL,'district','3800200000000','Y',24,100),(112,NULL,NULL,NULL,NULL,'Алеутский','Алеутский р-н','Алеутский Район','684500',NULL,'district','4100200000000','Y',29,0),(113,NULL,NULL,NULL,NULL,'Абазинский','Абазинский р-н','Абазинский Район',NULL,NULL,'district','0901000000000','Y',30,0),(114,NULL,NULL,NULL,NULL,'Адыге-Хабльский','Адыге-Хабльский р-н','Адыге-Хабльский Район',NULL,NULL,'district','0900200000000','Y',30,100),(115,NULL,NULL,NULL,NULL,'Арбажский','Арбажский р-н','Арбажский Район','612180',NULL,'district','4300200000000','Y',33,0),(116,NULL,NULL,NULL,NULL,'Афанасьевский','Афанасьевский р-н','Афанасьевский Район','613060',NULL,'district','4300300000000','Y',33,100),(117,NULL,NULL,NULL,NULL,'Антроповский','Антроповский р-н','Антроповский Район',NULL,NULL,'district','4400200000000','Y',35,0),(118,NULL,NULL,NULL,NULL,'Абинский','Абинский р-н','Абинский Район',NULL,NULL,'district','2300200000000','Y',36,0),(119,NULL,NULL,NULL,NULL,'Анапский','Анапский р-н','Анапский Район',NULL,NULL,'district','2300300000000','Y',36,100),(120,NULL,NULL,NULL,NULL,'Апшеронский','Апшеронский р-н','Апшеронский Район','352690',NULL,'district','2300400000000','Y',36,200),(121,NULL,NULL,NULL,NULL,'Абанский','Абанский р-н','Абанский Район',NULL,NULL,'district','2400200000000','Y',37,0),(122,NULL,NULL,NULL,NULL,'Ачинский','Ачинский р-н','Ачинский Район',NULL,NULL,'district','2400300000000','Y',37,100),(123,NULL,NULL,NULL,NULL,'Альменевский','Альменевский р-н','Альменевский Район',NULL,NULL,'district','4500200000000','Y',39,0),(124,NULL,NULL,NULL,NULL,'Ардатовский','Ардатовский р-н','Ардатовский Район',NULL,NULL,'district','1300200000000','Y',45,0),(125,NULL,NULL,NULL,NULL,'Атюрьевский','Атюрьевский р-н','Атюрьевский Район',NULL,NULL,'district','1300300000000','Y',45,100),(126,NULL,NULL,NULL,NULL,'Атяшевский','Атяшевский р-н','Атяшевский Район',NULL,NULL,'district','1300400000000','Y',45,200),(127,NULL,NULL,NULL,NULL,'Ардатовский','Ардатовский р-н','Ардатовский Район','607130',NULL,'district','5200200000000','Y',50,0),(128,NULL,NULL,NULL,NULL,'Арзамасский','Арзамасский р-н','Арзамасский Район','607227',NULL,'district','5200300000000','Y',50,100),(129,NULL,NULL,NULL,NULL,'Азовский немецкий национальный','Азовский немецкий национальный р-н','Азовский немецкий национальный Район',NULL,NULL,'district','5500200000000','Y',53,0),(130,NULL,NULL,NULL,NULL,'Абдулинский','Абдулинский р-н','Абдулинский Район','461743',NULL,'district','5605500000000','Y',54,0),(131,NULL,NULL,NULL,NULL,'Адамовский','Адамовский р-н','Адамовский Район','462800',NULL,'district','5604300000000','Y',54,100),(132,NULL,NULL,NULL,NULL,'Акбулакский','Акбулакский р-н','Акбулакский Район','461551',NULL,'district','5600200000000','Y',54,200),(133,NULL,NULL,NULL,NULL,'Александровский','Александровский р-н','Александровский Район','461830',NULL,'district','5604200000000','Y',54,300),(134,NULL,NULL,NULL,NULL,'Асекеевский','Асекеевский р-н','Асекеевский Район','461702',NULL,'district','5600900000000','Y',54,400),(135,NULL,NULL,NULL,NULL,'Анучинский','Анучинский р-н','Анучинский Район',NULL,NULL,'district','2500200000000','Y',58,0),(136,NULL,NULL,NULL,NULL,'Азовский','Азовский р-н','Азовский Район',NULL,NULL,'district','6100200000000','Y',60,0),(137,NULL,NULL,NULL,NULL,'Аксайский','Аксайский р-н','Аксайский Район',NULL,NULL,'district','6100300000000','Y',60,100),(138,NULL,NULL,NULL,NULL,'Александро-Невский','Александро-Невский р-н','Александро-Невский Район','391240',NULL,'district','6201000000000','Y',61,0),(139,NULL,NULL,NULL,NULL,'Алатырский','Алатырский р-н','Алатырский Район',NULL,NULL,'district','2100200000000','Y',62,0),(140,NULL,NULL,NULL,NULL,'Аликовский','Аликовский р-н','Аликовский Район',NULL,NULL,'district','2100300000000','Y',62,100),(141,NULL,NULL,NULL,NULL,'Алексеевский','Алексеевский р-н','Алексеевский Район',NULL,NULL,'district','6300200000000','Y',63,0),(142,NULL,NULL,NULL,NULL,'Александрово-Гайский','Александрово-Гайский р-н','Александрово-Гайский Район',NULL,NULL,'district','6400200000000','Y',65,0),(143,NULL,NULL,NULL,NULL,'Аркадакский','Аркадакский р-н','Аркадакский Район',NULL,NULL,'district','6400300000000','Y',65,100),(144,NULL,NULL,NULL,NULL,'Аткарский','Аткарский р-н','Аткарский Район',NULL,NULL,'district','6400400000000','Y',65,200),(145,NULL,NULL,NULL,NULL,'Абыйский','Абыйский у','Абыйский Улус','678890',NULL,'district','1400200000000','Y',66,0),(146,NULL,NULL,NULL,NULL,'Алданский','Алданский у','Алданский Улус',NULL,NULL,'district','1400300000000','Y',66,100),(147,NULL,NULL,NULL,NULL,'Аллаиховский','Аллаиховский у','Аллаиховский Улус','678800',NULL,'district','1400400000000','Y',66,200),(148,NULL,NULL,NULL,NULL,'Амгинский','Амгинский у','Амгинский Улус','678600',NULL,'district','1400500000000','Y',66,300),(149,NULL,NULL,NULL,NULL,'Анабарский','Анабарский у','Анабарский Улус','678440',NULL,'district','1400600000000','Y',66,400),(150,NULL,NULL,NULL,NULL,'Александровск-Сахалинский','Александровск-Сахалинский р-н','Александровск-Сахалинский Район','694420',NULL,'district','6501800000000','Y',67,0),(151,NULL,NULL,NULL,NULL,'Анивский','Анивский р-н','Анивский Район','694030',NULL,'district','6500200000000','Y',67,100),(152,NULL,NULL,NULL,NULL,'Алапаевский','Алапаевский р-н','Алапаевский Район','624600',NULL,'district','6600200000000','Y',68,0),(153,NULL,NULL,NULL,NULL,'Артемовский','Артемовский р-н','Артемовский Район','623780',NULL,'district','6600300000000','Y',68,100),(154,NULL,NULL,NULL,NULL,'Артинский','Артинский р-н','Артинский Район','623340',NULL,'district','6600400000000','Y',68,200),(155,NULL,NULL,NULL,NULL,'Ачитский','Ачитский р-н','Ачитский Район','623230',NULL,'district','6600500000000','Y',68,300),(156,NULL,NULL,NULL,NULL,'Александровский','Александровский р-н','Александровский Район',NULL,NULL,'district','2600200000000','Y',71,0),(157,NULL,NULL,NULL,NULL,'Андроповский','Андроповский р-н','Андроповский Район',NULL,NULL,'district','2600300000000','Y',71,100),(158,NULL,NULL,NULL,NULL,'Апанасенковский','Апанасенковский р-н','Апанасенковский Район',NULL,NULL,'district','2600400000000','Y',71,200),(159,NULL,NULL,NULL,NULL,'Арзгирский','Арзгирский р-н','Арзгирский Район',NULL,NULL,'district','2600500000000','Y',71,300),(160,NULL,NULL,NULL,NULL,'Агрызский','Агрызский р-н','Агрызский Район',NULL,NULL,'district','1600200000000','Y',73,0),(161,NULL,NULL,NULL,NULL,'Азнакаевский','Азнакаевский р-н','Азнакаевский Район',NULL,NULL,'district','1600300000000','Y',73,100),(162,NULL,NULL,NULL,NULL,'Аксубаевский','Аксубаевский р-н','Аксубаевский Район',NULL,NULL,'district','1600400000000','Y',73,200),(163,NULL,NULL,NULL,NULL,'Актанышский','Актанышский р-н','Актанышский Район',NULL,NULL,'district','1600500000000','Y',73,300),(164,NULL,NULL,NULL,NULL,'Алексеевский','Алексеевский р-н','Алексеевский Район',NULL,NULL,'district','1600600000000','Y',73,400),(165,NULL,NULL,NULL,NULL,'Алькеевский','Алькеевский р-н','Алькеевский Район',NULL,NULL,'district','1600700000000','Y',73,500),(166,NULL,NULL,NULL,NULL,'Альметьевский','Альметьевский р-н','Альметьевский Район',NULL,NULL,'district','1600800000000','Y',73,600),(167,NULL,NULL,NULL,NULL,'Апастовский','Апастовский р-н','Апастовский Район',NULL,NULL,'district','1600900000000','Y',73,700),(168,NULL,NULL,NULL,NULL,'Арский','Арский р-н','Арский Район',NULL,NULL,'district','1601000000000','Y',73,800),(169,NULL,NULL,NULL,NULL,'Атнинский','Атнинский р-н','Атнинский Район',NULL,NULL,'district','1601100000000','Y',73,900),(170,NULL,NULL,NULL,NULL,'Андреапольский','Андреапольский р-н','Андреапольский Район',NULL,NULL,'district','6900200000000','Y',74,0),(171,NULL,NULL,NULL,NULL,'Александровский','Александровский р-н','Александровский Район',NULL,NULL,'district','7000200000000','Y',75,0),(172,NULL,NULL,NULL,NULL,'Асиновский','Асиновский р-н','Асиновский Район',NULL,NULL,'district','7000300000000','Y',75,100),(173,NULL,NULL,NULL,NULL,'Алексинский','Алексинский р-н','Алексинский Район',NULL,NULL,'district','7100200000000','Y',76,0),(174,NULL,NULL,NULL,NULL,'Арсеньевский','Арсеньевский р-н','Арсеньевский Район',NULL,NULL,'district','7100300000000','Y',76,100),(175,NULL,NULL,NULL,NULL,'Абатский','Абатский р-н','Абатский Район',NULL,NULL,'district','7200200000000','Y',78,0),(176,NULL,NULL,NULL,NULL,'Армизонский','Армизонский р-н','Армизонский Район',NULL,NULL,'district','7200300000000','Y',78,100),(177,NULL,NULL,NULL,NULL,'Аромашевский','Аромашевский р-н','Аромашевский Район','627350',NULL,'district','7200400000000','Y',78,200),(178,NULL,NULL,NULL,NULL,'Алнашский','Алнашский р-н','Алнашский Район',NULL,NULL,'district','1800200000000','Y',79,0),(179,NULL,NULL,NULL,NULL,'Амурский','Амурский р-н','Амурский Район',NULL,NULL,'district','2700200000000','Y',81,0),(180,NULL,NULL,NULL,NULL,'Аяно-Майский','Аяно-Майский р-н','Аяно-Майский Район',NULL,NULL,'district','2700300000000','Y',81,100),(181,NULL,NULL,NULL,NULL,'Алтайский','Алтайский р-н','Алтайский Район',NULL,NULL,'district','1900200000000','Y',82,0),(182,NULL,NULL,NULL,NULL,'Аскизский','Аскизский р-н','Аскизский Район',NULL,NULL,'district','1900300000000','Y',82,100),(183,NULL,NULL,NULL,NULL,'Агаповский','Агаповский р-н','Агаповский Район','457400',NULL,'district','7402500000000','Y',83,0),(184,NULL,NULL,NULL,NULL,'Аргаяшский','Аргаяшский р-н','Аргаяшский Район','456880',NULL,'district','7402600000000','Y',83,100),(185,NULL,NULL,NULL,NULL,'Ашинский','Ашинский р-н','Ашинский Район','456015',NULL,'district','7400200000000','Y',83,200),(186,NULL,NULL,NULL,NULL,'Ачхой-Мартановский','Ачхой-Мартановский р-н','Ачхой-Мартановский Район','366600',NULL,'district','2000200000000','Y',84,0),(187,NULL,NULL,NULL,NULL,'Анадырский','Анадырский р-н','Анадырский Район',NULL,NULL,'district','8700900000000','Y',85,0),(188,NULL,NULL,NULL,NULL,'Баевский','Баевский р-н','Баевский Район','658510',NULL,'district','2200400000000','Y',4,200),(189,NULL,NULL,NULL,NULL,'Бийский','Бийский р-н','Бийский Район',NULL,NULL,'district','2200500000000','Y',4,300),(190,NULL,NULL,NULL,NULL,'Благовещенский','Благовещенский р-н','Благовещенский Район',NULL,NULL,'district','2200600000000','Y',4,400),(191,NULL,NULL,NULL,NULL,'Бурлинский','Бурлинский р-н','Бурлинский Район',NULL,NULL,'district','2200700000000','Y',4,500),(192,NULL,NULL,NULL,NULL,'Быстроистокский','Быстроистокский р-н','Быстроистокский Район',NULL,NULL,'district','2200800000000','Y',4,600),(193,NULL,NULL,NULL,NULL,'Белогорский','Белогорский р-н','Белогорский Район',NULL,NULL,'district','2800300000000','Y',5,100),(194,NULL,NULL,NULL,NULL,'Благовещенский','Благовещенский р-н','Благовещенский Район',NULL,NULL,'district','2800100000000','Y',5,200),(195,NULL,NULL,NULL,NULL,'Бурейский','Бурейский р-н','Бурейский Район',NULL,NULL,'district','2800400000000','Y',5,300),(196,NULL,NULL,NULL,NULL,'Белоярский','Белоярский р-н','Белоярский Район',NULL,NULL,'district','8600200000000','Y',9,0),(197,NULL,NULL,NULL,NULL,'Березовский','Березовский р-н','Березовский Район',NULL,NULL,'district','8600300000000','Y',9,100),(198,NULL,NULL,NULL,NULL,'Баймакский','Баймакский р-н','Баймакский Район','453630',NULL,'district','0200600000000','Y',11,500),(199,NULL,NULL,NULL,NULL,'Бакалинский','Бакалинский р-н','Бакалинский Район','452651',NULL,'district','0200700000000','Y',11,600),(200,NULL,NULL,NULL,NULL,'Балтачевский','Балтачевский р-н','Балтачевский Район','452980',NULL,'district','0200800000000','Y',11,700),(201,NULL,NULL,NULL,NULL,'Белебеевский','Белебеевский р-н','Белебеевский Район','452000',NULL,'district','0200900000000','Y',11,800),(202,NULL,NULL,NULL,NULL,'Белокатайский','Белокатайский р-н','Белокатайский Район','452580',NULL,'district','0201000000000','Y',11,900),(203,NULL,NULL,NULL,NULL,'Белорецкий','Белорецкий р-н','Белорецкий Район','453500',NULL,'district','0201100000000','Y',11,1000),(204,NULL,NULL,NULL,NULL,'Бижбулякский','Бижбулякский р-н','Бижбулякский Район','452040',NULL,'district','0201200000000','Y',11,1100),(205,NULL,NULL,NULL,NULL,'Бирский','Бирский р-н','Бирский Район','452450',NULL,'district','0201300000000','Y',11,1200),(206,NULL,NULL,NULL,NULL,'Благоварский','Благоварский р-н','Благоварский Район','452740',NULL,'district','0201400000000','Y',11,1300),(207,NULL,NULL,NULL,NULL,'Благовещенский','Благовещенский р-н','Благовещенский Район','453430',NULL,'district','0201500000000','Y',11,1400),(208,NULL,NULL,NULL,NULL,'Буздякский','Буздякский р-н','Буздякский Район','452710',NULL,'district','0201600000000','Y',11,1500),(209,NULL,NULL,NULL,NULL,'Бураевский','Бураевский р-н','Бураевский Район','452960',NULL,'district','0201700000000','Y',11,1600),(210,NULL,NULL,NULL,NULL,'Бурзянский','Бурзянский р-н','Бурзянский Район','453580',NULL,'district','0201800000000','Y',11,1700),(211,NULL,NULL,NULL,NULL,'Белгородский','Белгородский р-н','Белгородский Район',NULL,NULL,'district','3102200000000','Y',12,100),(212,NULL,NULL,NULL,NULL,'Борисовский','Борисовский р-н','Борисовский Район',NULL,NULL,'district','3100300000000','Y',12,200),(213,NULL,NULL,NULL,NULL,'Брасовский','Брасовский р-н','Брасовский Район','242300',NULL,'district','3200200000000','Y',13,0),(214,NULL,NULL,NULL,NULL,'Брянский','Брянский р-н','Брянский Район',NULL,NULL,'district','3200100000000','Y',13,100),(215,NULL,NULL,NULL,NULL,'Баргузинский','Баргузинский р-н','Баргузинский Район','671610',NULL,'district','0302200000000','Y',14,0),(216,NULL,NULL,NULL,NULL,'Баунтовский эвенкийский','Баунтовский эвенкийский р-н','Баунтовский эвенкийский Район',NULL,NULL,'district','0300200000000','Y',14,100),(217,NULL,NULL,NULL,NULL,'Бичурский','Бичурский р-н','Бичурский Район',NULL,NULL,'district','0300300000000','Y',14,200),(218,NULL,NULL,NULL,NULL,'Быковский','Быковский р-н','Быковский Район',NULL,NULL,'district','3400300000000','Y',16,100),(219,NULL,NULL,NULL,NULL,'Бабаевский','Бабаевский р-н','Бабаевский Район',NULL,NULL,'district','3500200000000','Y',17,0),(220,NULL,NULL,NULL,NULL,'Бабушкинский','Бабушкинский р-н','Бабушкинский Район',NULL,NULL,'district','3500300000000','Y',17,100),(221,NULL,NULL,NULL,NULL,'Белозерский','Белозерский р-н','Белозерский Район','161200',NULL,'district','3500400000000','Y',17,200),(222,NULL,NULL,NULL,NULL,'Бобровский','Бобровский р-н','Бобровский Район',NULL,NULL,'district','3600300000000','Y',18,100),(223,NULL,NULL,NULL,NULL,'Богучарский','Богучарский р-н','Богучарский Район',NULL,NULL,'district','3600400000000','Y',18,200),(224,NULL,NULL,NULL,NULL,'Борисоглебский','Борисоглебский р-н','Борисоглебский Район',NULL,NULL,'district','3600500000000','Y',18,300),(225,NULL,NULL,NULL,NULL,'Бутурлиновский','Бутурлиновский р-н','Бутурлиновский Район',NULL,NULL,'district','3600600000000','Y',18,400),(226,NULL,NULL,NULL,NULL,'Бабаюртовский','Бабаюртовский р-н','Бабаюртовский Район','368060',NULL,'district','0500600000000','Y',19,400),(227,NULL,NULL,NULL,NULL,'Ботлихский','Ботлихский р-н','Ботлихский Район','368970',NULL,'district','0500700000000','Y',19,500),(228,NULL,NULL,NULL,NULL,'Буйнакский','Буйнакский р-н','Буйнакский Район','368200',NULL,'district','0500800000000','Y',19,600),(229,NULL,NULL,NULL,NULL,'Биробиджанский','Биробиджанский р-н','Биробиджанский Район','679000',NULL,'district','7900100000000','Y',20,0),(230,NULL,NULL,NULL,NULL,'Балейский','Балейский р-н','Балейский Район',NULL,NULL,'district','7500400000000','Y',21,300),(231,NULL,NULL,NULL,NULL,'Борзинский','Борзинский р-н','Борзинский Район',NULL,NULL,'district','7500500000000','Y',21,400),(232,NULL,NULL,NULL,NULL,'Балаганский','Балаганский р-н','Балаганский Район',NULL,NULL,'district','3800300000000','Y',24,200),(233,NULL,NULL,NULL,NULL,'Баяндаевский','Баяндаевский р-н','Баяндаевский Район',NULL,NULL,'district','3812900000000','Y',24,300),(234,NULL,NULL,NULL,NULL,'Бодайбинский','Бодайбинский р-н','Бодайбинский Район',NULL,NULL,'district','3800400000000','Y',24,400),(235,NULL,NULL,NULL,NULL,'Боханский','Боханский р-н','Боханский Район',NULL,NULL,'district','3813000000000','Y',24,500),(236,NULL,NULL,NULL,NULL,'Братский','Братский р-н','Братский Район',NULL,NULL,'district','3800500000000','Y',24,600),(237,NULL,NULL,NULL,NULL,'Баксанский','Баксанский р-н','Баксанский Район',NULL,NULL,'district','0700200000000','Y',25,0),(238,NULL,NULL,NULL,NULL,'Багратионовский','Багратионовский р-н','Багратионовский Район',NULL,NULL,'district','3900200000000','Y',26,0),(239,NULL,NULL,NULL,NULL,'Балтийский','Балтийский р-н','Балтийский Район',NULL,NULL,'district','3901500000000','Y',26,100),(240,NULL,NULL,NULL,NULL,'Бабынинский','Бабынинский р-н','Бабынинский Район','249210',NULL,'district','4000200000000','Y',28,0),(241,NULL,NULL,NULL,NULL,'Барятинский','Барятинский р-н','Барятинский Район',NULL,NULL,'district','4000300000000','Y',28,100),(242,NULL,NULL,NULL,NULL,'Боровский','Боровский р-н','Боровский Район',NULL,NULL,'district','4000400000000','Y',28,200),(243,NULL,NULL,NULL,NULL,'Быстринский','Быстринский р-н','Быстринский Район',NULL,NULL,'district','4100300000000','Y',29,100),(244,NULL,NULL,NULL,NULL,'Беломорский','Беломорский р-н','Беломорский Район','186500',NULL,'district','1000200000000','Y',31,0),(245,NULL,NULL,NULL,NULL,'Беловский','Беловский р-н','Беловский Район',NULL,NULL,'district','4200200000000','Y',32,0),(246,NULL,NULL,NULL,NULL,'Белохолуницкий','Белохолуницкий р-н','Белохолуницкий Район','613200',NULL,'district','4300400000000','Y',33,200),(247,NULL,NULL,NULL,NULL,'Богородский','Богородский р-н','Богородский Район','612470',NULL,'district','4300500000000','Y',33,300),(248,NULL,NULL,NULL,NULL,'Буйский','Буйский р-н','Буйский Район',NULL,NULL,'district','4400300000000','Y',35,100),(249,NULL,NULL,NULL,NULL,'Белоглинский','Белоглинский р-н','Белоглинский Район',NULL,NULL,'district','2300500000000','Y',36,300),(250,NULL,NULL,NULL,NULL,'Белореченский','Белореченский р-н','Белореченский Район',NULL,NULL,'district','2300600000000','Y',36,400),(251,NULL,NULL,NULL,NULL,'Брюховецкий','Брюховецкий р-н','Брюховецкий Район',NULL,NULL,'district','2300700000000','Y',36,500),(252,NULL,NULL,NULL,NULL,'Балахтинский','Балахтинский р-н','Балахтинский Район',NULL,NULL,'district','2400400000000','Y',37,200),(253,NULL,NULL,NULL,NULL,'Березовский','Березовский р-н','Березовский Район',NULL,NULL,'district','2400500000000','Y',37,300),(254,NULL,NULL,NULL,NULL,'Бирилюсский','Бирилюсский р-н','Бирилюсский Район',NULL,NULL,'district','2400600000000','Y',37,400),(255,NULL,NULL,NULL,NULL,'Боготольский','Боготольский р-н','Боготольский Район',NULL,NULL,'district','2400700000000','Y',37,500),(256,NULL,NULL,NULL,NULL,'Богучанский','Богучанский р-н','Богучанский Район',NULL,NULL,'district','2400800000000','Y',37,600),(257,NULL,NULL,NULL,NULL,'Большемуртинский','Большемуртинский р-н','Большемуртинский Район',NULL,NULL,'district','2400900000000','Y',37,700),(258,NULL,NULL,NULL,NULL,'Большеулуйский','Большеулуйский р-н','Большеулуйский Район',NULL,NULL,'district','2401000000000','Y',37,800),(259,NULL,NULL,NULL,NULL,'Бахчисарайский','Бахчисарайский р-н','Бахчисарайский Район',NULL,NULL,'district','9100100000000','Y',38,0),(260,NULL,NULL,NULL,NULL,'Белогорский','Белогорский р-н','Белогорский Район',NULL,NULL,'district','9100200000000','Y',38,100),(261,NULL,NULL,NULL,NULL,'Белозерский','Белозерский р-н','Белозерский Район',NULL,NULL,'district','4500300000000','Y',39,100),(262,NULL,NULL,NULL,NULL,'Беловский','Беловский р-н','Беловский Район',NULL,NULL,'district','4600200000000','Y',40,0),(263,NULL,NULL,NULL,NULL,'Большесолдатский','Большесолдатский р-н','Большесолдатский Район',NULL,NULL,'district','4600300000000','Y',40,100),(264,NULL,NULL,NULL,NULL,'Бокситогорский','Бокситогорский р-н','Бокситогорский Район',NULL,NULL,'district','4700200000000','Y',41,0),(265,NULL,NULL,NULL,NULL,'Большеберезниковский','Большеберезниковский р-н','Большеберезниковский Район',NULL,NULL,'district','1300500000000','Y',45,300),(266,NULL,NULL,NULL,NULL,'Большеигнатовский','Большеигнатовский р-н','Большеигнатовский Район',NULL,NULL,'district','1300600000000','Y',45,400),(267,NULL,NULL,NULL,NULL,'Балахнинский','Балахнинский р-н','Балахнинский Район','606407',NULL,'district','5200400000000','Y',50,200),(268,NULL,NULL,NULL,NULL,'Богородский','Богородский р-н','Богородский Район','607600',NULL,'district','5200500000000','Y',50,300),(269,NULL,NULL,NULL,NULL,'Большеболдинский','Большеболдинский р-н','Большеболдинский Район','607940',NULL,'district','5200600000000','Y',50,400),(270,NULL,NULL,NULL,NULL,'Большемурашкинский','Большемурашкинский р-н','Большемурашкинский Район','606360',NULL,'district','5200700000000','Y',50,500),(271,NULL,NULL,NULL,NULL,'Бутурлинский','Бутурлинский р-н','Бутурлинский Район','607440',NULL,'district','5200900000000','Y',50,600),(272,NULL,NULL,NULL,NULL,'Батецкий','Батецкий р-н','Батецкий Район',NULL,NULL,'district','5300200000000','Y',51,0),(273,NULL,NULL,NULL,NULL,'Боровичский','Боровичский р-н','Боровичский Район',NULL,NULL,'district','5300300000000','Y',51,100),(274,NULL,NULL,NULL,NULL,'Баганский','Баганский р-н','Баганский Район',NULL,NULL,'district','5400200000000','Y',52,0),(275,NULL,NULL,NULL,NULL,'Барабинский','Барабинский р-н','Барабинский Район',NULL,NULL,'district','5400300000000','Y',52,100),(276,NULL,NULL,NULL,NULL,'Болотнинский','Болотнинский р-н','Болотнинский Район',NULL,NULL,'district','5400400000000','Y',52,200),(277,NULL,NULL,NULL,NULL,'Большереченский','Большереченский р-н','Большереченский Район',NULL,NULL,'district','5500300000000','Y',53,100),(278,NULL,NULL,NULL,NULL,'Большеуковский','Большеуковский р-н','Большеуковский Район',NULL,NULL,'district','5500400000000','Y',53,200),(279,NULL,NULL,NULL,NULL,'Беляевский','Беляевский р-н','Беляевский Район','461330',NULL,'district','5604500000000','Y',54,500),(280,NULL,NULL,NULL,NULL,'Бугурусланский','Бугурусланский р-н','Бугурусланский Район','461633',NULL,'district','5600300000000','Y',54,600),(281,NULL,NULL,NULL,NULL,'Бузулукский','Бузулукский р-н','Бузулукский Район','461045',NULL,'district','5601200000000','Y',54,700),(282,NULL,NULL,NULL,NULL,'Болховский','Болховский р-н','Болховский Район',NULL,NULL,'district','5700200000000','Y',55,0),(283,NULL,NULL,NULL,NULL,'Башмаковский','Башмаковский р-н','Башмаковский Район',NULL,NULL,'district','5800200000000','Y',56,0),(284,NULL,NULL,NULL,NULL,'Бековский','Бековский р-н','Бековский Район',NULL,NULL,'district','5800400000000','Y',56,100),(285,NULL,NULL,NULL,NULL,'Белинский','Белинский р-н','Белинский Район',NULL,NULL,'district','5800500000000','Y',56,200),(286,NULL,NULL,NULL,NULL,'Бессоновский','Бессоновский р-н','Бессоновский Район',NULL,NULL,'district','5800600000000','Y',56,300),(287,NULL,NULL,NULL,NULL,'Бардымский','Бардымский р-н','Бардымский Район',NULL,NULL,'district','5900200000000','Y',57,0),(288,NULL,NULL,NULL,NULL,'Березовский','Березовский р-н','Березовский Район',NULL,NULL,'district','5900300000000','Y',57,100),(289,NULL,NULL,NULL,NULL,'Большесосновский','Большесосновский р-н','Большесосновский Район',NULL,NULL,'district','5900400000000','Y',57,200),(290,NULL,NULL,NULL,NULL,'Бежаницкий','Бежаницкий р-н','Бежаницкий Район','182840',NULL,'district','6000200000000','Y',59,0),(291,NULL,NULL,NULL,NULL,'Багаевский','Багаевский р-н','Багаевский Район',NULL,NULL,'district','6100400000000','Y',60,200),(292,NULL,NULL,NULL,NULL,'Белокалитвинский','Белокалитвинский р-н','Белокалитвинский Район',NULL,NULL,'district','6100500000000','Y',60,300),(293,NULL,NULL,NULL,NULL,'Боковский','Боковский р-н','Боковский Район','346250',NULL,'district','6100600000000','Y',60,400),(294,NULL,NULL,NULL,NULL,'Батыревский','Батыревский р-н','Батыревский Район',NULL,NULL,'district','2100400000000','Y',62,200),(295,NULL,NULL,NULL,NULL,'Безенчукский','Безенчукский р-н','Безенчукский Район',NULL,NULL,'district','6300300000000','Y',63,100),(296,NULL,NULL,NULL,NULL,'Богатовский','Богатовский р-н','Богатовский Район',NULL,NULL,'district','6300400000000','Y',63,200),(297,NULL,NULL,NULL,NULL,'Большеглушицкий','Большеглушицкий р-н','Большеглушицкий Район',NULL,NULL,'district','6300500000000','Y',63,300),(298,NULL,NULL,NULL,NULL,'Большечерниговский','Большечерниговский р-н','Большечерниговский Район',NULL,NULL,'district','6300600000000','Y',63,400),(299,NULL,NULL,NULL,NULL,'Борский','Борский р-н','Борский Район',NULL,NULL,'district','6300700000000','Y',63,500),(300,NULL,NULL,NULL,NULL,'Базарно-Карабулакский','Базарно-Карабулакский р-н','Базарно-Карабулакский Район',NULL,NULL,'district','6400500000000','Y',65,300),(301,NULL,NULL,NULL,NULL,'Балаковский','Балаковский р-н','Балаковский Район',NULL,NULL,'district','6400600000000','Y',65,400),(302,NULL,NULL,NULL,NULL,'Балашовский','Балашовский р-н','Балашовский Район',NULL,NULL,'district','6400700000000','Y',65,500),(303,NULL,NULL,NULL,NULL,'Балтайский','Балтайский р-н','Балтайский Район',NULL,NULL,'district','6400800000000','Y',65,600),(304,NULL,NULL,NULL,NULL,'Булунский','Булунский у','Булунский Улус','678400',NULL,'district','1400700000000','Y',66,500),(305,NULL,NULL,NULL,NULL,'Байкаловский','Байкаловский р-н','Байкаловский Район','623870',NULL,'district','6600600000000','Y',68,400),(306,NULL,NULL,NULL,NULL,'Белоярский','Белоярский р-н','Белоярский Район','624030',NULL,'district','6600700000000','Y',68,500),(307,NULL,NULL,NULL,NULL,'Богдановичский','Богдановичский р-н','Богдановичский Район','623530',NULL,'district','6600800000000','Y',68,600),(308,NULL,NULL,NULL,NULL,'Благодарненский','Благодарненский р-н','Благодарненский Район',NULL,NULL,'district','2600600000000','Y',71,400),(309,NULL,NULL,NULL,NULL,'Буденновский','Буденновский р-н','Буденновский Район',NULL,NULL,'district','2600700000000','Y',71,500),(310,NULL,NULL,NULL,NULL,'Бондарский','Бондарский р-н','Бондарский Район','393230',NULL,'district','6800200000000','Y',72,0),(311,NULL,NULL,NULL,NULL,'Бавлинский','Бавлинский р-н','Бавлинский Район',NULL,NULL,'district','1601200000000','Y',73,1000),(312,NULL,NULL,NULL,NULL,'Балтасинский','Балтасинский р-н','Балтасинский Район',NULL,NULL,'district','1601300000000','Y',73,1100),(313,NULL,NULL,NULL,NULL,'Бугульминский','Бугульминский р-н','Бугульминский Район',NULL,NULL,'district','1601400000000','Y',73,1200),(314,NULL,NULL,NULL,NULL,'Буинский','Буинский р-н','Буинский Район',NULL,NULL,'district','1601500000000','Y',73,1300),(315,NULL,NULL,NULL,NULL,'Бежецкий','Бежецкий р-н','Бежецкий Район',NULL,NULL,'district','6900300000000','Y',74,100),(316,NULL,NULL,NULL,NULL,'Бельский','Бельский р-н','Бельский Район',NULL,NULL,'district','6900400000000','Y',74,200),(317,NULL,NULL,NULL,NULL,'Бологовский','Бологовский р-н','Бологовский Район',NULL,NULL,'district','6900500000000','Y',74,300),(318,NULL,NULL,NULL,NULL,'Бакчарский','Бакчарский р-н','Бакчарский Район',NULL,NULL,'district','7000400000000','Y',75,200),(319,NULL,NULL,NULL,NULL,'Белевский','Белевский р-н','Белевский Район',NULL,NULL,'district','7100400000000','Y',76,200),(320,NULL,NULL,NULL,NULL,'Богородицкий','Богородицкий р-н','Богородицкий Район',NULL,NULL,'district','7100500000000','Y',76,300),(321,NULL,NULL,NULL,NULL,'Бай-Тайгинский','Бай-Тайгинский р-н','Бай-Тайгинский Район',NULL,NULL,'district','1700200000000','Y',77,0),(322,NULL,NULL,NULL,NULL,'Барун-Хемчикский','Барун-Хемчикский р-н','Барун-Хемчикский Район',NULL,NULL,'district','1700300000000','Y',77,100),(323,NULL,NULL,NULL,NULL,'Бердюжский','Бердюжский р-н','Бердюжский Район',NULL,NULL,'district','7200500000000','Y',78,300),(324,NULL,NULL,NULL,NULL,'Балезинский','Балезинский р-н','Балезинский Район',NULL,NULL,'district','1800300000000','Y',79,100),(325,NULL,NULL,NULL,NULL,'Базарносызганский','Базарносызганский р-н','Базарносызганский Район','433701',NULL,'district','7300200000000','Y',80,0),(326,NULL,NULL,NULL,NULL,'Барышский','Барышский р-н','Барышский Район','433750',NULL,'district','7300300000000','Y',80,100),(327,NULL,NULL,NULL,NULL,'Бикинский','Бикинский р-н','Бикинский Район',NULL,NULL,'district','2700400000000','Y',81,200),(328,NULL,NULL,NULL,NULL,'Бейский','Бейский р-н','Бейский Район',NULL,NULL,'district','1900400000000','Y',82,200),(329,NULL,NULL,NULL,NULL,'Боградский','Боградский р-н','Боградский Район',NULL,NULL,'district','1900500000000','Y',82,300),(330,NULL,NULL,NULL,NULL,'Брединский','Брединский р-н','Брединский Район','457310',NULL,'district','7402700000000','Y',83,300),(331,NULL,NULL,NULL,NULL,'Билибинский','Билибинский р-н','Билибинский Район',NULL,NULL,'district','8700300000000','Y',85,100),(332,NULL,NULL,NULL,NULL,'Большесельский','Большесельский р-н','Большесельский Район',NULL,NULL,'district','7600200000000','Y',87,0),(333,NULL,NULL,NULL,NULL,'Борисоглебский','Борисоглебский р-н','Борисоглебский Район',NULL,NULL,'district','7600300000000','Y',87,100),(334,NULL,NULL,NULL,NULL,'Брейтовский','Брейтовский р-н','Брейтовский Район',NULL,NULL,'district','7600400000000','Y',87,200),(335,NULL,NULL,NULL,NULL,'Волчихинский','Волчихинский р-н','Волчихинский Район',NULL,NULL,'district','2200900000000','Y',4,700),(336,NULL,NULL,NULL,NULL,'Вельский','Вельский р-н','Вельский Район',NULL,NULL,'district','2900200000000','Y',6,0),(337,NULL,NULL,NULL,NULL,'Верхнетоемский','Верхнетоемский р-н','Верхнетоемский Район',NULL,NULL,'district','2900300000000','Y',6,100),(338,NULL,NULL,NULL,NULL,'Вилегодский','Вилегодский р-н','Вилегодский Район',NULL,NULL,'district','2900400000000','Y',6,200),(339,NULL,NULL,NULL,NULL,'Виноградовский','Виноградовский р-н','Виноградовский Район',NULL,NULL,'district','2900500000000','Y',6,300),(340,NULL,NULL,NULL,NULL,'Володарский','Володарский р-н','Володарский Район',NULL,NULL,'district','3000300000000','Y',7,100),(341,NULL,NULL,NULL,NULL,'Валуйский','Валуйский р-н','Валуйский Район',NULL,NULL,'district','3100400000000','Y',12,300),(342,NULL,NULL,NULL,NULL,'Вейделевский','Вейделевский р-н','Вейделевский Район',NULL,NULL,'district','3100500000000','Y',12,400),(343,NULL,NULL,NULL,NULL,'Волоконовский','Волоконовский р-н','Волоконовский Район','309650',NULL,'district','3100600000000','Y',12,500),(344,NULL,NULL,NULL,NULL,'Выгоничский','Выгоничский р-н','Выгоничский Район',NULL,NULL,'district','3200300000000','Y',13,200),(345,NULL,NULL,NULL,NULL,'Вязниковский','Вязниковский р-н','Вязниковский Район',NULL,NULL,'district','3300300000000','Y',15,100),(346,NULL,NULL,NULL,NULL,'Вашкинский','Вашкинский р-н','Вашкинский Район',NULL,NULL,'district','3500500000000','Y',17,300),(347,NULL,NULL,NULL,NULL,'Великоустюгский','Великоустюгский р-н','Великоустюгский Район','162390',NULL,'district','3500600000000','Y',17,400),(348,NULL,NULL,NULL,NULL,'Верховажский','Верховажский р-н','Верховажский Район',NULL,NULL,'district','3500700000000','Y',17,500),(349,NULL,NULL,NULL,NULL,'Вожегодский','Вожегодский р-н','Вожегодский Район','162189',NULL,'district','3500800000000','Y',17,600),(350,NULL,NULL,NULL,NULL,'Вологодский','Вологодский р-н','Вологодский Район',NULL,NULL,'district','3500100000000','Y',17,700),(351,NULL,NULL,NULL,NULL,'Вытегорский','Вытегорский р-н','Вытегорский Район',NULL,NULL,'district','3500900000000','Y',17,800),(352,NULL,NULL,NULL,NULL,'Верхнемамонский','Верхнемамонский р-н','Верхнемамонский Район',NULL,NULL,'district','3600700000000','Y',18,500),(353,NULL,NULL,NULL,NULL,'Верхнехавский','Верхнехавский р-н','Верхнехавский Район',NULL,NULL,'district','3600800000000','Y',18,600),(354,NULL,NULL,NULL,NULL,'Воробьевский','Воробьевский р-н','Воробьевский Район',NULL,NULL,'district','3600900000000','Y',18,700),(355,NULL,NULL,NULL,NULL,'Верхнеландеховский','Верхнеландеховский р-н','Верхнеландеховский Район',NULL,NULL,'district','3700200000000','Y',22,0),(356,NULL,NULL,NULL,NULL,'Вичугский','Вичугский р-н','Вичугский Район',NULL,NULL,'district','3700300000000','Y',22,100),(357,NULL,NULL,NULL,NULL,'Верхнекамский','Верхнекамский р-н','Верхнекамский Район','612820',NULL,'district','4300600000000','Y',33,400),(358,NULL,NULL,NULL,NULL,'Верхошижемский','Верхошижемский р-н','Верхошижемский Район','613310',NULL,'district','4300700000000','Y',33,500),(359,NULL,NULL,NULL,NULL,'Вятскополянский','Вятскополянский р-н','Вятскополянский Район','612960',NULL,'district','4300800000000','Y',33,600),(360,NULL,NULL,NULL,NULL,'Вохомский','Вохомский р-н','Вохомский Район','157760',NULL,'district','4400400000000','Y',35,200),(361,NULL,NULL,NULL,NULL,'Выселковский','Выселковский р-н','Выселковский Район',NULL,NULL,'district','2300800000000','Y',36,600),(362,NULL,NULL,NULL,NULL,'Варгашинский','Варгашинский р-н','Варгашинский Район',NULL,NULL,'district','4500400000000','Y',39,200),(363,NULL,NULL,NULL,NULL,'Волосовский','Волосовский р-н','Волосовский Район',NULL,NULL,'district','4700300000000','Y',41,100),(364,NULL,NULL,NULL,NULL,'Волховский','Волховский р-н','Волховский Район',NULL,NULL,'district','4700400000000','Y',41,200),(365,NULL,NULL,NULL,NULL,'Всеволожский','Всеволожский р-н','Всеволожский Район',NULL,NULL,'district','4700500000000','Y',41,300),(366,NULL,NULL,NULL,NULL,'Выборгский','Выборгский р-н','Выборгский Район',NULL,NULL,'district','4700600000000','Y',41,400),(367,NULL,NULL,NULL,NULL,'Воловский','Воловский р-н','Воловский Район',NULL,NULL,'district','4800200000000','Y',42,0),(368,NULL,NULL,NULL,NULL,'Волжский','Волжский р-н','Волжский Район',NULL,NULL,'district','1200200000000','Y',44,0),(369,NULL,NULL,NULL,NULL,'Внуковское','Внуковское п','Внуковское Поселение',NULL,NULL,'district','7700100000000','Y',46,0),(370,NULL,NULL,NULL,NULL,'Вороновское','Вороновское п','Вороновское Поселение',NULL,NULL,'district','7700200000000','Y',46,100),(371,NULL,NULL,NULL,NULL,'Воскресенское','Воскресенское п','Воскресенское Поселение',NULL,NULL,'district','7700300000000','Y',46,200),(372,NULL,NULL,NULL,NULL,'Волоколамский','Волоколамский р-н','Волоколамский Район',NULL,NULL,'district','5000300000000','Y',47,0),(373,NULL,NULL,NULL,NULL,'Воскресенский','Воскресенский р-н','Воскресенский Район',NULL,NULL,'district','5000400000000','Y',47,100),(374,NULL,NULL,NULL,NULL,'Вадский','Вадский р-н','Вадский Район','606380',NULL,'district','5201000000000','Y',50,700),(375,NULL,NULL,NULL,NULL,'Варнавинский','Варнавинский р-н','Варнавинский Район','606760',NULL,'district','5201100000000','Y',50,800),(376,NULL,NULL,NULL,NULL,'Вачский','Вачский р-н','Вачский Район','606150',NULL,'district','5201200000000','Y',50,900),(377,NULL,NULL,NULL,NULL,'Ветлужский','Ветлужский р-н','Ветлужский Район','606860',NULL,'district','5201300000000','Y',50,1000),(378,NULL,NULL,NULL,NULL,'Вознесенский','Вознесенский р-н','Вознесенский Район','607340',NULL,'district','5201400000000','Y',50,1100),(379,NULL,NULL,NULL,NULL,'Володарский','Володарский р-н','Володарский Район','606072',NULL,'district','5201600000000','Y',50,1200),(380,NULL,NULL,NULL,NULL,'Воротынский','Воротынский р-н','Воротынский Район','606260',NULL,'district','5201500000000','Y',50,1300),(381,NULL,NULL,NULL,NULL,'Воскресенский','Воскресенский р-н','Воскресенский Район',NULL,NULL,'district','5201700000000','Y',50,1400),(382,NULL,NULL,NULL,NULL,'Валдайский','Валдайский р-н','Валдайский Район',NULL,NULL,'district','5300400000000','Y',51,200),(383,NULL,NULL,NULL,NULL,'Волотовский','Волотовский р-н','Волотовский Район',NULL,NULL,'district','5300500000000','Y',51,300),(384,NULL,NULL,NULL,NULL,'Венгеровский','Венгеровский р-н','Венгеровский Район',NULL,NULL,'district','5400500000000','Y',52,300),(385,NULL,NULL,NULL,NULL,'Верховский','Верховский р-н','Верховский Район',NULL,NULL,'district','5700300000000','Y',55,100),(386,NULL,NULL,NULL,NULL,'Вадинский','Вадинский р-н','Вадинский Район',NULL,NULL,'district','5800700000000','Y',56,400),(387,NULL,NULL,NULL,NULL,'Верещагинский','Верещагинский р-н','Верещагинский Район',NULL,NULL,'district','5900500000000','Y',57,300),(388,NULL,NULL,NULL,NULL,'Великолукский','Великолукский р-н','Великолукский Район','182100',NULL,'district','6000300000000','Y',59,100),(389,NULL,NULL,NULL,NULL,'Верхнедонской','Верхнедонской р-н','Верхнедонской Район',NULL,NULL,'district','6100700000000','Y',60,500),(390,NULL,NULL,NULL,NULL,'Веселовский','Веселовский р-н','Веселовский Район',NULL,NULL,'district','6100800000000','Y',60,600),(391,NULL,NULL,NULL,NULL,'Волгодонской','Волгодонской р-н','Волгодонской Район',NULL,NULL,'district','6100900000000','Y',60,700),(392,NULL,NULL,NULL,NULL,'Вурнарский','Вурнарский р-н','Вурнарский Район',NULL,NULL,'district','2100500000000','Y',62,300),(393,NULL,NULL,NULL,NULL,'Волжский','Волжский р-н','Волжский Район',NULL,NULL,'district','6302800000000','Y',63,600),(394,NULL,NULL,NULL,NULL,'Вольский','Вольский р-н','Вольский Район',NULL,NULL,'district','6400900000000','Y',65,700),(395,NULL,NULL,NULL,NULL,'Воскресенский','Воскресенский р-н','Воскресенский Район',NULL,NULL,'district','6401000000000','Y',65,800),(396,NULL,NULL,NULL,NULL,'Верхневилюйский','Верхневилюйский у','Верхневилюйский Улус','678230',NULL,'district','1400800000000','Y',66,600),(397,NULL,NULL,NULL,NULL,'Верхнеколымский','Верхнеколымский у','Верхнеколымский Улус','678770',NULL,'district','1400900000000','Y',66,700),(398,NULL,NULL,NULL,NULL,'Верхоянский','Верхоянский у','Верхоянский Улус','678500',NULL,'district','1401000000000','Y',66,800),(399,NULL,NULL,NULL,NULL,'Вилюйский','Вилюйский у','Вилюйский Улус','678200',NULL,'district','1401100000000','Y',66,900),(400,NULL,NULL,NULL,NULL,'Верхнесалдинский','Верхнесалдинский р-н','Верхнесалдинский Район','624760',NULL,'district','6600900000000','Y',68,700),(401,NULL,NULL,NULL,NULL,'Верхотурский','Верхотурский р-н','Верхотурский Район','624380',NULL,'district','6601000000000','Y',68,800),(402,NULL,NULL,NULL,NULL,'Велижский','Велижский р-н','Велижский Район',NULL,NULL,'district','6700200000000','Y',70,0),(403,NULL,NULL,NULL,NULL,'Вяземский','Вяземский р-н','Вяземский Район',NULL,NULL,'district','6700300000000','Y',70,100),(404,NULL,NULL,NULL,NULL,'Верхнеуслонский','Верхнеуслонский р-н','Верхнеуслонский Район',NULL,NULL,'district','1601600000000','Y',73,1400),(405,NULL,NULL,NULL,NULL,'Высокогорский','Высокогорский р-н','Высокогорский Район',NULL,NULL,'district','1601700000000','Y',73,1500),(406,NULL,NULL,NULL,NULL,'Весьегонский','Весьегонский р-н','Весьегонский Район',NULL,NULL,'district','6900600000000','Y',74,400),(407,NULL,NULL,NULL,NULL,'Вышневолоцкий','Вышневолоцкий р-н','Вышневолоцкий Район',NULL,NULL,'district','6900700000000','Y',74,500),(408,NULL,NULL,NULL,NULL,'Верхнекетский','Верхнекетский р-н','Верхнекетский Район',NULL,NULL,'district','7000500000000','Y',75,300),(409,NULL,NULL,NULL,NULL,'Веневский','Веневский р-н','Веневский Район',NULL,NULL,'district','7100600000000','Y',76,400),(410,NULL,NULL,NULL,NULL,'Воловский','Воловский р-н','Воловский Район',NULL,NULL,'district','7100700000000','Y',76,500),(411,NULL,NULL,NULL,NULL,'Вагайский','Вагайский р-н','Вагайский Район',NULL,NULL,'district','7200600000000','Y',78,400),(412,NULL,NULL,NULL,NULL,'Викуловский','Викуловский р-н','Викуловский Район',NULL,NULL,'district','7200700000000','Y',78,500),(413,NULL,NULL,NULL,NULL,'Вавожский','Вавожский р-н','Вавожский Район',NULL,NULL,'district','1800400000000','Y',79,200),(414,NULL,NULL,NULL,NULL,'Воткинский','Воткинский р-н','Воткинский Район',NULL,NULL,'district','1800500000000','Y',79,300),(415,NULL,NULL,NULL,NULL,'Вешкаймский','Вешкаймский р-н','Вешкаймский Район','433100',NULL,'district','7300400000000','Y',80,200),(416,NULL,NULL,NULL,NULL,'Ванинский','Ванинский р-н','Ванинский Район','682800',NULL,'district','2700500000000','Y',81,300),(417,NULL,NULL,NULL,NULL,'Верхнебуреинский','Верхнебуреинский р-н','Верхнебуреинский Район',NULL,NULL,'district','2700600000000','Y',81,400),(418,NULL,NULL,NULL,NULL,'Вяземский','Вяземский р-н','Вяземский Район',NULL,NULL,'district','2700700000000','Y',81,500),(419,NULL,NULL,NULL,NULL,'Варненский','Варненский р-н','Варненский Район','457200',NULL,'district','7402800000000','Y',83,400),(420,NULL,NULL,NULL,NULL,'Верхнеуральский','Верхнеуральский р-н','Верхнеуральский Район','457670',NULL,'district','7402900000000','Y',83,500),(421,NULL,NULL,NULL,NULL,'Веденский','Веденский р-н','Веденский Район','366000',NULL,'district','2000300000000','Y',84,100),(422,NULL,NULL,NULL,NULL,'Гиагинский','Гиагинский р-н','Гиагинский Район','385600',NULL,'district','0100800000000','Y',2,0),(423,NULL,NULL,NULL,NULL,'Гафурийский','Гафурийский р-н','Гафурийский Район','453051',NULL,'district','0201900000000','Y',11,1800),(424,NULL,NULL,NULL,NULL,'Грайворонский','Грайворонский р-н','Грайворонский Район',NULL,NULL,'district','3100700000000','Y',12,600),(425,NULL,NULL,NULL,NULL,'Губкинский','Губкинский р-н','Губкинский Район',NULL,NULL,'district','3100800000000','Y',12,700),(426,NULL,NULL,NULL,NULL,'Гордеевский','Гордеевский р-н','Гордеевский Район',NULL,NULL,'district','3200400000000','Y',13,300),(427,NULL,NULL,NULL,NULL,'Гороховецкий','Гороховецкий р-н','Гороховецкий Район',NULL,NULL,'district','3300400000000','Y',15,200),(428,NULL,NULL,NULL,NULL,'Гусь-Хрустальный','Гусь-Хрустальный р-н','Гусь-Хрустальный Район',NULL,NULL,'district','3300500000000','Y',15,300),(429,NULL,NULL,NULL,NULL,'Городищенский','Городищенский р-н','Городищенский Район',NULL,NULL,'district','3400400000000','Y',16,200),(430,NULL,NULL,NULL,NULL,'Грязовецкий','Грязовецкий р-н','Грязовецкий Район',NULL,NULL,'district','3501000000000','Y',17,900),(431,NULL,NULL,NULL,NULL,'Грибановский','Грибановский р-н','Грибановский Район',NULL,NULL,'district','3601000000000','Y',18,800),(432,NULL,NULL,NULL,NULL,'Гергебильский','Гергебильский р-н','Гергебильский Район','368250',NULL,'district','0500900000000','Y',19,700),(433,NULL,NULL,NULL,NULL,'Гумбетовский','Гумбетовский р-н','Гумбетовский Район','368930',NULL,'district','0501000000000','Y',19,800),(434,NULL,NULL,NULL,NULL,'Гунибский','Гунибский р-н','Гунибский Район','368340',NULL,'district','0501100000000','Y',19,900),(435,NULL,NULL,NULL,NULL,'Газимуро-Заводский','Газимуро-Заводский р-н','Газимуро-Заводский Район',NULL,NULL,'district','7500600000000','Y',21,500),(436,NULL,NULL,NULL,NULL,'Гаврилово-Посадский','Гаврилово-Посадский р-н','Гаврилово-Посадский Район',NULL,NULL,'district','3700400000000','Y',22,200),(437,NULL,NULL,NULL,NULL,'Гвардейский','Гвардейский р-н','Гвардейский Район',NULL,NULL,'district','3900300000000','Y',26,200),(438,NULL,NULL,NULL,NULL,'Гурьевский','Гурьевский р-н','Гурьевский Район',NULL,NULL,'district','3900400000000','Y',26,300),(439,NULL,NULL,NULL,NULL,'Гусевский','Гусевский р-н','Гусевский Район',NULL,NULL,'district','3900500000000','Y',26,400),(440,NULL,NULL,NULL,NULL,'Городовиковский','Городовиковский р-н','Городовиковский Район',NULL,NULL,'district','0800200000000','Y',27,0),(441,NULL,NULL,NULL,NULL,'Гурьевский','Гурьевский р-н','Гурьевский Район',NULL,NULL,'district','4200300000000','Y',32,100),(442,NULL,NULL,NULL,NULL,'Галичский','Галичский р-н','Галичский Район',NULL,NULL,'district','4400500000000','Y',35,300),(443,NULL,NULL,NULL,NULL,'Гулькевичский','Гулькевичский р-н','Гулькевичский Район','352190',NULL,'district','2300900000000','Y',36,700),(444,NULL,NULL,NULL,NULL,'Глушковский','Глушковский р-н','Глушковский Район',NULL,NULL,'district','4600400000000','Y',40,200),(445,NULL,NULL,NULL,NULL,'Горшеченский','Горшеченский р-н','Горшеченский Район',NULL,NULL,'district','4600500000000','Y',40,300),(446,NULL,NULL,NULL,NULL,'Гатчинский','Гатчинский р-н','Гатчинский Район',NULL,NULL,'district','4700700000000','Y',41,500),(447,NULL,NULL,NULL,NULL,'Грязинский','Грязинский р-н','Грязинский Район',NULL,NULL,'district','4800300000000','Y',42,100),(448,NULL,NULL,NULL,NULL,'Горномарийский','Горномарийский р-н','Горномарийский Район',NULL,NULL,'district','1200300000000','Y',44,100),(449,NULL,NULL,NULL,NULL,'Гагинский','Гагинский р-н','Гагинский Район',NULL,NULL,'district','5201900000000','Y',50,1500),(450,NULL,NULL,NULL,NULL,'Городецкий','Городецкий р-н','Городецкий Район',NULL,NULL,'district','5202000000000','Y',50,1600),(451,NULL,NULL,NULL,NULL,'Горьковский','Горьковский р-н','Горьковский Район',NULL,NULL,'district','5500500000000','Y',53,300),(452,NULL,NULL,NULL,NULL,'Гайский','Гайский р-н','Гайский Район','462635',NULL,'district','5600400000000','Y',54,800),(453,NULL,NULL,NULL,NULL,'Грачевский','Грачевский р-н','Грачевский Район','461800',NULL,'district','5602100000000','Y',54,900),(454,NULL,NULL,NULL,NULL,'Глазуновский','Глазуновский р-н','Глазуновский Район',NULL,NULL,'district','5700400000000','Y',55,200),(455,NULL,NULL,NULL,NULL,'Городищенский','Городищенский р-н','Городищенский Район',NULL,NULL,'district','5800800000000','Y',56,500),(456,NULL,NULL,NULL,NULL,'Гайнский','Гайнский р-н','Гайнский Район',NULL,NULL,'district','5902900000000','Y',57,400),(457,NULL,NULL,NULL,NULL,'Горнозаводский','Горнозаводский р-н','Горнозаводский Район',NULL,NULL,'district','5900600000000','Y',57,500),(458,NULL,NULL,NULL,NULL,'Гдовский','Гдовский р-н','Гдовский Район','181600',NULL,'district','6000400000000','Y',59,200),(459,NULL,NULL,NULL,NULL,'Горный','Горный у','Горный Улус','678000',NULL,'district','1401200000000','Y',66,1000),(460,NULL,NULL,NULL,NULL,'Гаринский','Гаринский р-н','Гаринский Район','624910',NULL,'district','6601100000000','Y',68,900),(461,NULL,NULL,NULL,NULL,'Гагаринский','Гагаринский р-н','Гагаринский Район',NULL,NULL,'district','6700400000000','Y',70,200),(462,NULL,NULL,NULL,NULL,'Глинковский','Глинковский р-н','Глинковский Район',NULL,NULL,'district','6700500000000','Y',70,300),(463,NULL,NULL,NULL,NULL,'Георгиевский','Георгиевский р-н','Георгиевский Район',NULL,NULL,'district','2600800000000','Y',71,600),(464,NULL,NULL,NULL,NULL,'Грачевский','Грачевский р-н','Грачевский Район','356250',NULL,'district','2600900000000','Y',71,700),(465,NULL,NULL,NULL,NULL,'Гавриловский','Гавриловский р-н','Гавриловский Район','393160',NULL,'district','6800300000000','Y',72,100),(466,NULL,NULL,NULL,NULL,'Голышмановский','Голышмановский р-н','Голышмановский Район',NULL,NULL,'district','7200800000000','Y',78,600),(467,NULL,NULL,NULL,NULL,'Глазовский','Глазовский р-н','Глазовский Район',NULL,NULL,'district','1800600000000','Y',79,400),(468,NULL,NULL,NULL,NULL,'Граховский','Граховский р-н','Граховский Район',NULL,NULL,'district','1800700000000','Y',79,500),(469,NULL,NULL,NULL,NULL,'Грозненский','Грозненский р-н','Грозненский Район','366000',NULL,'district','2000400000000','Y',84,200),(470,NULL,NULL,NULL,NULL,'Гудермесский','Гудермесский р-н','Гудермесский Район','366900',NULL,'district','2000500000000','Y',84,300),(471,NULL,NULL,NULL,NULL,'Гаврилов-Ямский','Гаврилов-Ямский р-н','Гаврилов-Ямский Район',NULL,NULL,'district','7600500000000','Y',87,300),(472,NULL,NULL,NULL,NULL,'Дигорский','Дигорский р-н','Дигорский Район',NULL,NULL,'district','1500400000000','Y',8,200),(473,NULL,NULL,NULL,NULL,'Давлекановский','Давлекановский р-н','Давлекановский Район','453400',NULL,'district','0205900000000','Y',11,1900),(474,NULL,NULL,NULL,NULL,'Дуванский','Дуванский р-н','Дуванский Район','452530',NULL,'district','0202000000000','Y',11,2000),(475,NULL,NULL,NULL,NULL,'Дюртюлинский','Дюртюлинский р-н','Дюртюлинский Район','452320',NULL,'district','0206000000000','Y',11,2100),(476,NULL,NULL,NULL,NULL,'Дубровский','Дубровский р-н','Дубровский Район',NULL,NULL,'district','3200500000000','Y',13,400),(477,NULL,NULL,NULL,NULL,'Дятьковский','Дятьковский р-н','Дятьковский Район',NULL,NULL,'district','3200600000000','Y',13,500),(478,NULL,NULL,NULL,NULL,'Джидинский','Джидинский р-н','Джидинский Район',NULL,NULL,'district','0300400000000','Y',14,300),(479,NULL,NULL,NULL,NULL,'Даниловский','Даниловский р-н','Даниловский Район',NULL,NULL,'district','3400500000000','Y',16,300),(480,NULL,NULL,NULL,NULL,'Дубовский','Дубовский р-н','Дубовский Район',NULL,NULL,'district','3400600000000','Y',16,400),(481,NULL,NULL,NULL,NULL,'Дахадаевский','Дахадаевский р-н','Дахадаевский Район','368640',NULL,'district','0501200000000','Y',19,1000),(482,NULL,NULL,NULL,NULL,'Дербентский','Дербентский р-н','Дербентский Район','368600',NULL,'district','0501300000000','Y',19,1100),(483,NULL,NULL,NULL,NULL,'Докузпаринский','Докузпаринский р-н','Докузпаринский Район','368732',NULL,'district','0501400000000','Y',19,1200),(484,NULL,NULL,NULL,NULL,'Дульдургинский','Дульдургинский р-н','Дульдургинский Район',NULL,NULL,'district','7513000000000','Y',21,600),(485,NULL,NULL,NULL,NULL,'Джейрахский','Джейрахский р-н','Джейрахский Район',NULL,NULL,'district','0600200000000','Y',23,0),(486,NULL,NULL,NULL,NULL,'Дзержинский','Дзержинский р-н','Дзержинский Район',NULL,NULL,'district','4000600000000','Y',28,300),(487,NULL,NULL,NULL,NULL,'Думиничский','Думиничский р-н','Думиничский Район','249300',NULL,'district','4000700000000','Y',28,400),(488,NULL,NULL,NULL,NULL,'Даровской','Даровской р-н','Даровской Район','612140',NULL,'district','4300900000000','Y',33,700),(489,NULL,NULL,NULL,NULL,'Динской','Динской р-н','Динской Район',NULL,NULL,'district','2301000000000','Y',36,800),(490,NULL,NULL,NULL,NULL,'Дзержинский','Дзержинский р-н','Дзержинский Район',NULL,NULL,'district','2401100000000','Y',37,900),(491,NULL,NULL,NULL,NULL,'Таймырский Долгано-Ненецкий','Таймырский Долгано-Ненецкий р-н','Таймырский Долгано-Ненецкий Район','647000',NULL,'district','2404800000000','Y',37,1000),(492,NULL,NULL,NULL,NULL,'Джанкойский','Джанкойский р-н','Джанкойский Район',NULL,NULL,'district','9100300000000','Y',38,200),(493,NULL,NULL,NULL,NULL,'Далматовский','Далматовский р-н','Далматовский Район',NULL,NULL,'district','4500500000000','Y',39,300),(494,NULL,NULL,NULL,NULL,'Дмитриевский','Дмитриевский р-н','Дмитриевский Район','307500',NULL,'district','4600600000000','Y',40,400),(495,NULL,NULL,NULL,NULL,'Данковский','Данковский р-н','Данковский Район',NULL,NULL,'district','4800400000000','Y',42,200),(496,NULL,NULL,NULL,NULL,'Добринский','Добринский р-н','Добринский Район',NULL,NULL,'district','4800500000000','Y',42,300),(497,NULL,NULL,NULL,NULL,'Добровский','Добровский р-н','Добровский Район',NULL,NULL,'district','4800600000000','Y',42,400),(498,NULL,NULL,NULL,NULL,'Долгоруковский','Долгоруковский р-н','Долгоруковский Район',NULL,NULL,'district','4800700000000','Y',42,500),(499,NULL,NULL,NULL,NULL,'Дубенский','Дубенский р-н','Дубенский Район','431770',NULL,'district','1300700000000','Y',45,500),(500,NULL,NULL,NULL,NULL,'Десеновское','Десеновское п','Десеновское Поселение',NULL,NULL,'district','7700400000000','Y',46,300),(501,NULL,NULL,NULL,NULL,'Дмитровский','Дмитровский р-н','Дмитровский Район',NULL,NULL,'district','5000500000000','Y',47,200),(502,NULL,NULL,NULL,NULL,'Дальнеконстантиновский','Дальнеконстантиновский р-н','Дальнеконстантиновский Район','606310',NULL,'district','5202100000000','Y',50,1700),(503,NULL,NULL,NULL,NULL,'Дивеевский','Дивеевский р-н','Дивеевский Район','607320',NULL,'district','5202200000000','Y',50,1800),(504,NULL,NULL,NULL,NULL,'Демянский','Демянский р-н','Демянский Район','175310',NULL,'district','5300600000000','Y',51,400),(505,NULL,NULL,NULL,NULL,'Доволенский','Доволенский р-н','Доволенский Район',NULL,NULL,'district','5400600000000','Y',52,400),(506,NULL,NULL,NULL,NULL,'Домбаровский','Домбаровский р-н','Домбаровский Район','462734',NULL,'district','5604600000000','Y',54,1000),(507,NULL,NULL,NULL,NULL,'Дмитровский','Дмитровский р-н','Дмитровский Район',NULL,NULL,'district','5700500000000','Y',55,300),(508,NULL,NULL,NULL,NULL,'Должанский','Должанский р-н','Должанский Район',NULL,NULL,'district','5700600000000','Y',55,400),(509,NULL,NULL,NULL,NULL,'Дальнегорский','Дальнегорский р-н','Дальнегорский Район',NULL,NULL,'district','2500300000000','Y',58,100),(510,NULL,NULL,NULL,NULL,'Дальнереченский','Дальнереченский р-н','Дальнереченский Район',NULL,NULL,'district','2500400000000','Y',58,200),(511,NULL,NULL,NULL,NULL,'Дедовичский','Дедовичский р-н','Дедовичский Район','182711',NULL,'district','6000500000000','Y',59,300),(512,NULL,NULL,NULL,NULL,'Дновский','Дновский р-н','Дновский Район','182670',NULL,'district','6000600000000','Y',59,400),(513,NULL,NULL,NULL,NULL,'Дубовский','Дубовский р-н','Дубовский Район',NULL,NULL,'district','6101000000000','Y',60,800),(514,NULL,NULL,NULL,NULL,'Дергачевский','Дергачевский р-н','Дергачевский Район',NULL,NULL,'district','6401100000000','Y',65,900),(515,NULL,NULL,NULL,NULL,'Духовницкий','Духовницкий р-н','Духовницкий Район',NULL,NULL,'district','6401200000000','Y',65,1000),(516,NULL,NULL,NULL,NULL,'Долинский','Долинский р-н','Долинский Район','694050',NULL,'district','6500300000000','Y',67,200),(517,NULL,NULL,NULL,NULL,'Демидовский','Демидовский р-н','Демидовский Район',NULL,NULL,'district','6700600000000','Y',70,400),(518,NULL,NULL,NULL,NULL,'Дорогобужский','Дорогобужский р-н','Дорогобужский Район',NULL,NULL,'district','6700700000000','Y',70,500),(519,NULL,NULL,NULL,NULL,'Духовщинский','Духовщинский р-н','Духовщинский Район','216200',NULL,'district','6700800000000','Y',70,600),(520,NULL,NULL,NULL,NULL,'Дрожжановский','Дрожжановский р-н','Дрожжановский Район',NULL,NULL,'district','1601800000000','Y',73,1600),(521,NULL,NULL,NULL,NULL,'Дубенский','Дубенский р-н','Дубенский Район',NULL,NULL,'district','7100900000000','Y',76,600),(522,NULL,NULL,NULL,NULL,'Дзун-Хемчикский','Дзун-Хемчикский р-н','Дзун-Хемчикский Район',NULL,NULL,'district','1700400000000','Y',77,200),(523,NULL,NULL,NULL,NULL,'Дебесский','Дебесский р-н','Дебесский Район',NULL,NULL,'district','1800800000000','Y',79,600),(524,NULL,NULL,NULL,NULL,'Даниловский','Даниловский р-н','Даниловский Район',NULL,NULL,'district','7600600000000','Y',87,400),(525,NULL,NULL,NULL,NULL,'Егорьевский','Егорьевский р-н','Егорьевский Район',NULL,NULL,'district','2201000000000','Y',4,800),(526,NULL,NULL,NULL,NULL,'Ельцовский','Ельцовский р-н','Ельцовский Район',NULL,NULL,'district','2201100000000','Y',4,900),(527,NULL,NULL,NULL,NULL,'Енотаевский','Енотаевский р-н','Енотаевский Район',NULL,NULL,'district','3000400000000','Y',7,200),(528,NULL,NULL,NULL,NULL,'Ермекеевский','Ермекеевский р-н','Ермекеевский Район','452190',NULL,'district','0202100000000','Y',11,2200),(529,NULL,NULL,NULL,NULL,'Еравнинский','Еравнинский р-н','Еравнинский Район',NULL,NULL,'district','0300500000000','Y',14,400),(530,NULL,NULL,NULL,NULL,'Еланский','Еланский р-н','Еланский Район',NULL,NULL,'district','3400700000000','Y',16,500),(531,NULL,NULL,NULL,NULL,'Елизовский','Елизовский р-н','Елизовский Район',NULL,NULL,'district','4100500000000','Y',29,200),(532,NULL,NULL,NULL,NULL,'Ейский','Ейский р-н','Ейский Район',NULL,NULL,'district','2301100000000','Y',36,900),(533,NULL,NULL,NULL,NULL,'Емельяновский','Емельяновский р-н','Емельяновский Район',NULL,NULL,'district','2401200000000','Y',37,1100),(534,NULL,NULL,NULL,NULL,'Енисейский','Енисейский р-н','Енисейский Район',NULL,NULL,'district','2401300000000','Y',37,1200),(535,NULL,NULL,NULL,NULL,'Ермаковский','Ермаковский р-н','Ермаковский Район',NULL,NULL,'district','2401400000000','Y',37,1300),(536,NULL,NULL,NULL,NULL,'Елецкий','Елецкий р-н','Елецкий Район',NULL,NULL,'district','4800800000000','Y',42,600),(537,NULL,NULL,NULL,NULL,'Ельниковский','Ельниковский р-н','Ельниковский Район',NULL,NULL,'district','1300800000000','Y',45,600),(538,NULL,NULL,NULL,NULL,'Егорьевский','Егорьевский р-н','Егорьевский Район',NULL,NULL,'district','5000700000000','Y',47,300),(539,NULL,NULL,NULL,NULL,'Еловский','Еловский р-н','Еловский Район',NULL,NULL,'district','5900700000000','Y',57,600),(540,NULL,NULL,NULL,NULL,'Егорлыкский','Егорлыкский р-н','Егорлыкский Район','347660',NULL,'district','6101100000000','Y',60,900),(541,NULL,NULL,NULL,NULL,'Ермишинский','Ермишинский р-н','Ермишинский Район',NULL,NULL,'district','6200200000000','Y',61,100),(542,NULL,NULL,NULL,NULL,'Елховский','Елховский р-н','Елховский Район',NULL,NULL,'district','6300800000000','Y',63,700),(543,NULL,NULL,NULL,NULL,'Екатериновский','Екатериновский р-н','Екатериновский Район',NULL,NULL,'district','6401300000000','Y',65,1100),(544,NULL,NULL,NULL,NULL,'Ершовский','Ершовский р-н','Ершовский Район',NULL,NULL,'district','6401400000000','Y',65,1200),(545,NULL,NULL,NULL,NULL,'Ельнинский','Ельнинский р-н','Ельнинский Район',NULL,NULL,'district','6700900000000','Y',70,700),(546,NULL,NULL,NULL,NULL,'Ершичский','Ершичский р-н','Ершичский Район','216580',NULL,'district','6701000000000','Y',70,800),(547,NULL,NULL,NULL,NULL,'Елабужский','Елабужский р-н','Елабужский Район',NULL,NULL,'district','1601900000000','Y',73,1700),(548,NULL,NULL,NULL,NULL,'Ефремовский','Ефремовский р-н','Ефремовский Район',NULL,NULL,'district','7101000000000','Y',76,700),(549,NULL,NULL,NULL,NULL,'Еманжелинский','Еманжелинский р-н','Еманжелинский Район','457375',NULL,'district','7404400000000','Y',83,600),(550,NULL,NULL,NULL,NULL,'Еткульский','Еткульский р-н','Еткульский Район','456560',NULL,'district','7403000000000','Y',83,700),(551,NULL,NULL,NULL,NULL,'Жирятинский','Жирятинский р-н','Жирятинский Район',NULL,NULL,'district','3200700000000','Y',13,600),(552,NULL,NULL,NULL,NULL,'Жуковский','Жуковский р-н','Жуковский Район',NULL,NULL,'district','3200800000000','Y',13,700),(553,NULL,NULL,NULL,NULL,'Жирновский','Жирновский р-н','Жирновский Район',NULL,NULL,'district','3400800000000','Y',16,600),(554,NULL,NULL,NULL,NULL,'Жигаловский','Жигаловский р-н','Жигаловский Район',NULL,NULL,'district','3800600000000','Y',24,700),(555,NULL,NULL,NULL,NULL,'Жиздринский','Жиздринский р-н','Жиздринский Район',NULL,NULL,'district','4000800000000','Y',28,500),(556,NULL,NULL,NULL,NULL,'Жуковский','Жуковский р-н','Жуковский Район',NULL,NULL,'district','4000900000000','Y',28,600),(557,NULL,NULL,NULL,NULL,'Железногорский','Железногорский р-н','Железногорский Район','307170',NULL,'district','4600700000000','Y',40,500),(558,NULL,NULL,NULL,NULL,'Жиганский','Жиганский у','Жиганский Улус','678300',NULL,'district','1401300000000','Y',66,1100),(559,NULL,NULL,NULL,NULL,'Жердевский','Жердевский р-н','Жердевский Район','393670',NULL,'district','6800400000000','Y',72,200),(560,NULL,NULL,NULL,NULL,'Жарковский','Жарковский р-н','Жарковский Район',NULL,NULL,'district','6900800000000','Y',74,600),(561,NULL,NULL,NULL,NULL,'Завьяловский','Завьяловский р-н','Завьяловский Район',NULL,NULL,'district','2201200000000','Y',4,1000),(562,NULL,NULL,NULL,NULL,'Залесовский','Залесовский р-н','Залесовский Район',NULL,NULL,'district','2201300000000','Y',4,1100),(563,NULL,NULL,NULL,NULL,'Заринский','Заринский р-н','Заринский Район',NULL,NULL,'district','2201400000000','Y',4,1200),(564,NULL,NULL,NULL,NULL,'Змеиногорский','Змеиногорский р-н','Змеиногорский Район',NULL,NULL,'district','2201500000000','Y',4,1300),(565,NULL,NULL,NULL,NULL,'Зональный','Зональный р-н','Зональный Район',NULL,NULL,'district','2201600000000','Y',4,1400),(566,NULL,NULL,NULL,NULL,'Завитинский','Завитинский р-н','Завитинский Район',NULL,NULL,'district','2800500000000','Y',5,400),(567,NULL,NULL,NULL,NULL,'Зейский','Зейский р-н','Зейский Район',NULL,NULL,'district','2800600000000','Y',5,500),(568,NULL,NULL,NULL,NULL,'Зианчуринский','Зианчуринский р-н','Зианчуринский Район','453380',NULL,'district','0202200000000','Y',11,2300),(569,NULL,NULL,NULL,NULL,'Зилаирский','Зилаирский р-н','Зилаирский Район','453680',NULL,'district','0202300000000','Y',11,2400),(570,NULL,NULL,NULL,NULL,'Злынковский','Злынковский р-н','Злынковский Район',NULL,NULL,'district','3200900000000','Y',13,800),(571,NULL,NULL,NULL,NULL,'Заиграевский','Заиграевский р-н','Заиграевский Район','671300',NULL,'district','0300600000000','Y',14,500),(572,NULL,NULL,NULL,NULL,'Закаменский','Закаменский р-н','Закаменский Район',NULL,NULL,'district','0300700000000','Y',14,600),(573,NULL,NULL,NULL,NULL,'Забайкальский','Забайкальский р-н','Забайкальский Район',NULL,NULL,'district','7500700000000','Y',21,700),(574,NULL,NULL,NULL,NULL,'Заволжский','Заволжский р-н','Заволжский Район',NULL,NULL,'district','3700500000000','Y',22,300),(575,NULL,NULL,NULL,NULL,'Заларинский','Заларинский р-н','Заларинский Район',NULL,NULL,'district','3800700000000','Y',24,800),(576,NULL,NULL,NULL,NULL,'Зиминский','Зиминский р-н','Зиминский Район',NULL,NULL,'district','3800800000000','Y',24,900),(577,NULL,NULL,NULL,NULL,'Зольский','Зольский р-н','Зольский Район',NULL,NULL,'district','0700300000000','Y',25,100),(578,NULL,NULL,NULL,NULL,'Зеленоградский','Зеленоградский р-н','Зеленоградский Район',NULL,NULL,'district','3900600000000','Y',26,500),(579,NULL,NULL,NULL,NULL,'Зеленчукский','Зеленчукский р-н','Зеленчукский Район',NULL,NULL,'district','0900300000000','Y',30,200),(580,NULL,NULL,NULL,NULL,'Зуевский','Зуевский р-н','Зуевский Район','612410',NULL,'district','4301000000000','Y',33,800),(581,NULL,NULL,NULL,NULL,'Звериноголовский','Звериноголовский р-н','Звериноголовский Район',NULL,NULL,'district','4500600000000','Y',39,400),(582,NULL,NULL,NULL,NULL,'Золотухинский','Золотухинский р-н','Золотухинский Район',NULL,NULL,'district','4600800000000','Y',40,600),(583,NULL,NULL,NULL,NULL,'Задонский','Задонский р-н','Задонский Район',NULL,NULL,'district','4800900000000','Y',42,700),(584,NULL,NULL,NULL,NULL,'Звениговский','Звениговский р-н','Звениговский Район',NULL,NULL,'district','1200400000000','Y',44,200),(585,NULL,NULL,NULL,NULL,'Зубово-Полянский','Зубово-Полянский р-н','Зубово-Полянский Район',NULL,NULL,'district','1300900000000','Y',45,700),(586,NULL,NULL,NULL,NULL,'Зарайский','Зарайский р-н','Зарайский Район',NULL,NULL,'district','5000800000000','Y',47,400),(587,NULL,NULL,NULL,NULL,'Заполярный','Заполярный р-н','Заполярный Район','166000',NULL,'district','8300100000000','Y',49,0),(588,NULL,NULL,NULL,NULL,'Здвинский','Здвинский р-н','Здвинский Район',NULL,NULL,'district','5400700000000','Y',52,500),(589,NULL,NULL,NULL,NULL,'Знаменский','Знаменский р-н','Знаменский Район',NULL,NULL,'district','5500600000000','Y',53,400),(590,NULL,NULL,NULL,NULL,'Залегощенский','Залегощенский р-н','Залегощенский Район',NULL,NULL,'district','5700700000000','Y',55,500),(591,NULL,NULL,NULL,NULL,'Знаменский','Знаменский р-н','Знаменский Район',NULL,NULL,'district','5700800000000','Y',55,600),(592,NULL,NULL,NULL,NULL,'Земетчинский','Земетчинский р-н','Земетчинский Район',NULL,NULL,'district','5800900000000','Y',56,600),(593,NULL,NULL,NULL,NULL,'Заветинский','Заветинский р-н','Заветинский Район',NULL,NULL,'district','6101200000000','Y',60,1000),(594,NULL,NULL,NULL,NULL,'Зерноградский','Зерноградский р-н','Зерноградский Район',NULL,NULL,'district','6101300000000','Y',60,1100),(595,NULL,NULL,NULL,NULL,'Зимовниковский','Зимовниковский р-н','Зимовниковский Район',NULL,NULL,'district','6101400000000','Y',60,1200),(596,NULL,NULL,NULL,NULL,'Захаровский','Захаровский р-н','Захаровский Район',NULL,NULL,'district','6200300000000','Y',61,200),(597,NULL,NULL,NULL,NULL,'Знаменский','Знаменский р-н','Знаменский Район','393190',NULL,'district','6800500000000','Y',72,300),(598,NULL,NULL,NULL,NULL,'Заинский','Заинский р-н','Заинский Район','423520',NULL,'district','1602000000000','Y',73,1800),(599,NULL,NULL,NULL,NULL,'Зеленодольский','Зеленодольский р-н','Зеленодольский Район',NULL,NULL,'district','1602100000000','Y',73,1900),(600,NULL,NULL,NULL,NULL,'Западнодвинский','Западнодвинский р-н','Западнодвинский Район',NULL,NULL,'district','6900900000000','Y',74,700),(601,NULL,NULL,NULL,NULL,'Зубцовский','Зубцовский р-н','Зубцовский Район',NULL,NULL,'district','6901000000000','Y',74,800),(602,NULL,NULL,NULL,NULL,'Зырянский','Зырянский р-н','Зырянский Район',NULL,NULL,'district','7000600000000','Y',75,400),(603,NULL,NULL,NULL,NULL,'Заокский','Заокский р-н','Заокский Район',NULL,NULL,'district','7101100000000','Y',76,800),(604,NULL,NULL,NULL,NULL,'Заводоуковский','Заводоуковский р-н','Заводоуковский Район',NULL,NULL,'district','7200900000000','Y',78,700),(605,NULL,NULL,NULL,NULL,'Завьяловский','Завьяловский р-н','Завьяловский Район',NULL,NULL,'district','1800900000000','Y',79,700),(606,NULL,NULL,NULL,NULL,'Ивановский','Ивановский р-н','Ивановский Район',NULL,NULL,'district','2800700000000','Y',5,600),(607,NULL,NULL,NULL,NULL,'Икрянинский','Икрянинский р-н','Икрянинский Район',NULL,NULL,'district','3000500000000','Y',7,300),(608,NULL,NULL,NULL,NULL,'Ирафский','Ирафский р-н','Ирафский Район',NULL,NULL,'district','1500500000000','Y',8,300),(609,NULL,NULL,NULL,NULL,'Иглинский','Иглинский р-н','Иглинский Район','452411',NULL,'district','0202400000000','Y',11,2500),(610,NULL,NULL,NULL,NULL,'Илишевский','Илишевский р-н','Илишевский Район','452260',NULL,'district','0202500000000','Y',11,2600),(611,NULL,NULL,NULL,NULL,'Ишимбайский','Ишимбайский р-н','Ишимбайский Район','453200',NULL,'district','0202600000000','Y',11,2700),(612,NULL,NULL,NULL,NULL,'Ивнянский','Ивнянский р-н','Ивнянский Район',NULL,NULL,'district','3100900000000','Y',12,800),(613,NULL,NULL,NULL,NULL,'Иволгинский','Иволгинский р-н','Иволгинский Район','671052',NULL,'district','0300800000000','Y',14,700),(614,NULL,NULL,NULL,NULL,'Иловлинский','Иловлинский р-н','Иловлинский Район',NULL,NULL,'district','3400900000000','Y',16,700),(615,NULL,NULL,NULL,NULL,'Ивановский','Ивановский р-н','Ивановский Район',NULL,NULL,'district','3700100000000','Y',22,400),(616,NULL,NULL,NULL,NULL,'Ильинский','Ильинский р-н','Ильинский Район',NULL,NULL,'district','3700600000000','Y',22,500),(617,NULL,NULL,NULL,NULL,'Иркутский','Иркутский р-н','Иркутский Район',NULL,NULL,'district','3800100000000','Y',24,1000),(618,NULL,NULL,NULL,NULL,'Ики-Бурульский','Ики-Бурульский р-н','Ики-Бурульский Район',NULL,NULL,'district','0800300000000','Y',27,100),(619,NULL,NULL,NULL,NULL,'Износковский','Износковский р-н','Износковский Район','249880',NULL,'district','4001000000000','Y',28,700),(620,NULL,NULL,NULL,NULL,'Ижморский','Ижморский р-н','Ижморский Район',NULL,NULL,'district','4200400000000','Y',32,200),(621,NULL,NULL,NULL,NULL,'Ижемский','Ижемский р-н','Ижемский Район',NULL,NULL,'district','1100400000000','Y',34,0),(622,NULL,NULL,NULL,NULL,'Идринский','Идринский р-н','Идринский Район',NULL,NULL,'district','2401500000000','Y',37,1400),(623,NULL,NULL,NULL,NULL,'Иланский','Иланский р-н','Иланский Район',NULL,NULL,'district','2401600000000','Y',37,1500),(624,NULL,NULL,NULL,NULL,'Ирбейский','Ирбейский р-н','Ирбейский Район',NULL,NULL,'district','2401700000000','Y',37,1600),(625,NULL,NULL,NULL,NULL,'Измалковский','Измалковский р-н','Измалковский Район',NULL,NULL,'district','4801000000000','Y',42,800),(626,NULL,NULL,NULL,NULL,'Инсарский','Инсарский р-н','Инсарский Район',NULL,NULL,'district','1301000000000','Y',45,800),(627,NULL,NULL,NULL,NULL,'Ичалковский','Ичалковский р-н','Ичалковский Район',NULL,NULL,'district','1301100000000','Y',45,900),(628,NULL,NULL,NULL,NULL,'Истринский','Истринский р-н','Истринский Район','143500',NULL,'district','5000900000000','Y',47,500),(629,NULL,NULL,NULL,NULL,'Искитимский','Искитимский р-н','Искитимский Район',NULL,NULL,'district','5400800000000','Y',52,600),(630,NULL,NULL,NULL,NULL,'Исилькульский','Исилькульский р-н','Исилькульский Район',NULL,NULL,'district','5500700000000','Y',53,500),(631,NULL,NULL,NULL,NULL,'Илекский','Илекский р-н','Илекский Район','461350',NULL,'district','5604700000000','Y',54,1100),(632,NULL,NULL,NULL,NULL,'Иссинский','Иссинский р-н','Иссинский Район',NULL,NULL,'district','5801000000000','Y',56,700),(633,NULL,NULL,NULL,NULL,'Ильинский','Ильинский р-н','Ильинский Район',NULL,NULL,'district','5900800000000','Y',57,700),(634,NULL,NULL,NULL,NULL,'Ибресинский','Ибресинский р-н','Ибресинский Район',NULL,NULL,'district','2100600000000','Y',62,400),(635,NULL,NULL,NULL,NULL,'Исаклинский','Исаклинский р-н','Исаклинский Район',NULL,NULL,'district','6300900000000','Y',63,800),(636,NULL,NULL,NULL,NULL,'Ивантеевский','Ивантеевский р-н','Ивантеевский Район',NULL,NULL,'district','6401500000000','Y',65,1300),(637,NULL,NULL,NULL,NULL,'Ирбитский','Ирбитский р-н','Ирбитский Район','623850',NULL,'district','6601200000000','Y',68,1000),(638,NULL,NULL,NULL,NULL,'Изобильненский','Изобильненский р-н','Изобильненский Район',NULL,NULL,'district','2601000000000','Y',71,800),(639,NULL,NULL,NULL,NULL,'Ипатовский','Ипатовский р-н','Ипатовский Район',NULL,NULL,'district','2601100000000','Y',71,900),(640,NULL,NULL,NULL,NULL,'Инжавинский','Инжавинский р-н','Инжавинский Район','393310',NULL,'district','6800600000000','Y',72,400),(641,NULL,NULL,NULL,NULL,'Исетский','Исетский р-н','Исетский Район',NULL,NULL,'district','7201000000000','Y',78,800),(642,NULL,NULL,NULL,NULL,'Ишимский','Ишимский р-н','Ишимский Район',NULL,NULL,'district','7201100000000','Y',78,900),(643,NULL,NULL,NULL,NULL,'Игринский','Игринский р-н','Игринский Район',NULL,NULL,'district','1801000000000','Y',79,800),(644,NULL,NULL,NULL,NULL,'Инзенский','Инзенский р-н','Инзенский Район','433000',NULL,'district','7300500000000','Y',80,300),(645,NULL,NULL,NULL,NULL,'Имени Лазо','Имени Лазо р-н','Имени Лазо Район',NULL,NULL,'district','2700800000000','Y',81,600),(646,NULL,NULL,NULL,NULL,'Имени Полины Осипенко','Имени Полины Осипенко р-н','Имени Полины Осипенко Район','682380',NULL,'district','2700900000000','Y',81,700),(647,NULL,NULL,NULL,NULL,'Итум-Калинский','Итум-Калинский р-н','Итум-Калинский Район','366400',NULL,'district','2002800000000','Y',84,400),(648,NULL,NULL,NULL,NULL,'Иультинский','Иультинский р-н','Иультинский Район',NULL,NULL,'district','8700400000000','Y',85,200),(649,NULL,NULL,NULL,NULL,'Кошехабльский','Кошехабльский р-н','Кошехабльский Район','385400',NULL,'district','0100200000000','Y',2,100),(650,NULL,NULL,NULL,NULL,'Красногвардейский','Красногвардейский р-н','Красногвардейский Район','385300',NULL,'district','0100300000000','Y',2,200),(651,NULL,NULL,NULL,NULL,'Кош-Агачский','Кош-Агачский р-н','Кош-Агачский Район',NULL,NULL,'district','0400200000000','Y',3,0),(652,NULL,NULL,NULL,NULL,'Калманский','Калманский р-н','Калманский Район',NULL,NULL,'district','2201700000000','Y',4,1500),(653,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район',NULL,NULL,'district','2201800000000','Y',4,1600),(654,NULL,NULL,NULL,NULL,'Ключевский','Ключевский р-н','Ключевский Район',NULL,NULL,'district','2201900000000','Y',4,1700),(655,NULL,NULL,NULL,NULL,'Косихинский','Косихинский р-н','Косихинский Район',NULL,NULL,'district','2202000000000','Y',4,1800),(656,NULL,NULL,NULL,NULL,'Красногорский','Красногорский р-н','Красногорский Район',NULL,NULL,'district','2202100000000','Y',4,1900),(657,NULL,NULL,NULL,NULL,'Краснощёковский','Краснощёковский р-н','Краснощёковский Район',NULL,NULL,'district','2202200000000','Y',4,2000),(658,NULL,NULL,NULL,NULL,'Крутихинский','Крутихинский р-н','Крутихинский Район',NULL,NULL,'district','2202300000000','Y',4,2100),(659,NULL,NULL,NULL,NULL,'Кулундинский','Кулундинский р-н','Кулундинский Район',NULL,NULL,'district','2202400000000','Y',4,2200),(660,NULL,NULL,NULL,NULL,'Курьинский','Курьинский р-н','Курьинский Район',NULL,NULL,'district','2202500000000','Y',4,2300),(661,NULL,NULL,NULL,NULL,'Кытмановский','Кытмановский р-н','Кытмановский Район',NULL,NULL,'district','2202600000000','Y',4,2400),(662,NULL,NULL,NULL,NULL,'Константиновский','Константиновский р-н','Константиновский Район',NULL,NULL,'district','2800800000000','Y',5,700),(663,NULL,NULL,NULL,NULL,'Каргопольский','Каргопольский р-н','Каргопольский Район',NULL,NULL,'district','2900600000000','Y',6,400),(664,NULL,NULL,NULL,NULL,'Коношский','Коношский р-н','Коношский Район',NULL,NULL,'district','2900700000000','Y',6,500),(665,NULL,NULL,NULL,NULL,'Котласский','Котласский р-н','Котласский Район',NULL,NULL,'district','2900800000000','Y',6,600),(666,NULL,NULL,NULL,NULL,'Красноборский','Красноборский р-н','Красноборский Район',NULL,NULL,'district','2900900000000','Y',6,700),(667,NULL,NULL,NULL,NULL,'Камызякский','Камызякский р-н','Камызякский Район',NULL,NULL,'district','3000600000000','Y',7,400),(668,NULL,NULL,NULL,NULL,'Красноярский','Красноярский р-н','Красноярский Район',NULL,NULL,'district','3000700000000','Y',7,500),(669,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район','363600',NULL,'district','1500600000000','Y',8,400),(670,NULL,NULL,NULL,NULL,'Кондинский','Кондинский р-н','Кондинский Район',NULL,NULL,'district','8600400000000','Y',9,200),(671,NULL,NULL,NULL,NULL,'Калтасинский','Калтасинский р-н','Калтасинский Район','452860',NULL,'district','0202700000000','Y',11,2800),(672,NULL,NULL,NULL,NULL,'Караидельский','Караидельский р-н','Караидельский Район','452360',NULL,'district','0202800000000','Y',11,2900),(673,NULL,NULL,NULL,NULL,'Кармаскалинский','Кармаскалинский р-н','Кармаскалинский Район','453020',NULL,'district','0202900000000','Y',11,3000),(674,NULL,NULL,NULL,NULL,'Кигинский','Кигинский р-н','Кигинский Район','452500',NULL,'district','0203000000000','Y',11,3100),(675,NULL,NULL,NULL,NULL,'Краснокамский','Краснокамский р-н','Краснокамский Район','452930',NULL,'district','0203100000000','Y',11,3200),(676,NULL,NULL,NULL,NULL,'Кугарчинский','Кугарчинский р-н','Кугарчинский Район','453331',NULL,'district','0203200000000','Y',11,3300),(677,NULL,NULL,NULL,NULL,'Кушнаренковский','Кушнаренковский р-н','Кушнаренковский Район','452230',NULL,'district','0203400000000','Y',11,3400),(678,NULL,NULL,NULL,NULL,'Куюргазинский','Куюргазинский р-н','Куюргазинский Район','453300',NULL,'district','0203300000000','Y',11,3500),(679,NULL,NULL,NULL,NULL,'Корочанский','Корочанский р-н','Корочанский Район',NULL,NULL,'district','3101000000000','Y',12,900),(680,NULL,NULL,NULL,NULL,'Красненский','Красненский р-н','Красненский Район',NULL,NULL,'district','3101100000000','Y',12,1000),(681,NULL,NULL,NULL,NULL,'Красногвардейский','Красногвардейский р-н','Красногвардейский Район',NULL,NULL,'district','3101200000000','Y',12,1100),(682,NULL,NULL,NULL,NULL,'Краснояружский','Краснояружский р-н','Краснояружский Район',NULL,NULL,'district','3101300000000','Y',12,1200),(683,NULL,NULL,NULL,NULL,'Карачевский','Карачевский р-н','Карачевский Район','242500',NULL,'district','3201000000000','Y',13,900),(684,NULL,NULL,NULL,NULL,'Клетнянский','Клетнянский р-н','Клетнянский Район','242821',NULL,'district','3201100000000','Y',13,1000),(685,NULL,NULL,NULL,NULL,'Климовский','Климовский р-н','Климовский Район',NULL,NULL,'district','3201200000000','Y',13,1100),(686,NULL,NULL,NULL,NULL,'Клинцовский','Клинцовский р-н','Клинцовский Район','243650',NULL,'district','3201300000000','Y',13,1200),(687,NULL,NULL,NULL,NULL,'Комаричский','Комаричский р-н','Комаричский Район',NULL,NULL,'district','3201400000000','Y',13,1300),(688,NULL,NULL,NULL,NULL,'Красногорский','Красногорский р-н','Красногорский Район',NULL,NULL,'district','3201500000000','Y',13,1400),(689,NULL,NULL,NULL,NULL,'Кабанский','Кабанский р-н','Кабанский Район',NULL,NULL,'district','0300900000000','Y',14,800),(690,NULL,NULL,NULL,NULL,'Кижингинский','Кижингинский р-н','Кижингинский Район',NULL,NULL,'district','0301000000000','Y',14,900),(691,NULL,NULL,NULL,NULL,'Курумканский','Курумканский р-н','Курумканский Район','671640',NULL,'district','0301100000000','Y',14,1000),(692,NULL,NULL,NULL,NULL,'Кяхтинский','Кяхтинский р-н','Кяхтинский Район',NULL,NULL,'district','0301200000000','Y',14,1100),(693,NULL,NULL,NULL,NULL,'Камешковский','Камешковский р-н','Камешковский Район',NULL,NULL,'district','3300600000000','Y',15,400),(694,NULL,NULL,NULL,NULL,'Киржачский','Киржачский р-н','Киржачский Район',NULL,NULL,'district','3300700000000','Y',15,500),(695,NULL,NULL,NULL,NULL,'Ковровский','Ковровский р-н','Ковровский Район',NULL,NULL,'district','3300800000000','Y',15,600),(696,NULL,NULL,NULL,NULL,'Кольчугинский','Кольчугинский р-н','Кольчугинский Район',NULL,NULL,'district','3300900000000','Y',15,700),(697,NULL,NULL,NULL,NULL,'Калачевский','Калачевский р-н','Калачевский Район',NULL,NULL,'district','3401000000000','Y',16,800),(698,NULL,NULL,NULL,NULL,'Камышинский','Камышинский р-н','Камышинский Район',NULL,NULL,'district','3401100000000','Y',16,900),(699,NULL,NULL,NULL,NULL,'Киквидзенский','Киквидзенский р-н','Киквидзенский Район',NULL,NULL,'district','3401200000000','Y',16,1000),(700,NULL,NULL,NULL,NULL,'Клетский','Клетский р-н','Клетский Район',NULL,NULL,'district','3401300000000','Y',16,1100),(701,NULL,NULL,NULL,NULL,'Котельниковский','Котельниковский р-н','Котельниковский Район',NULL,NULL,'district','3401400000000','Y',16,1200),(702,NULL,NULL,NULL,NULL,'Котовский','Котовский р-н','Котовский Район',NULL,NULL,'district','3401500000000','Y',16,1300),(703,NULL,NULL,NULL,NULL,'Кумылженский','Кумылженский р-н','Кумылженский Район','403400',NULL,'district','3401600000000','Y',16,1400),(704,NULL,NULL,NULL,NULL,'Кадуйский','Кадуйский р-н','Кадуйский Район',NULL,NULL,'district','3501100000000','Y',17,1000),(705,NULL,NULL,NULL,NULL,'Кирилловский','Кирилловский р-н','Кирилловский Район',NULL,NULL,'district','3501200000000','Y',17,1100),(706,NULL,NULL,NULL,NULL,'Кичменгско-Городецкий','Кичменгско-Городецкий р-н','Кичменгско-Городецкий Район','161400',NULL,'district','3501300000000','Y',17,1200),(707,NULL,NULL,NULL,NULL,'Калачеевский','Калачеевский р-н','Калачеевский Район',NULL,NULL,'district','3601100000000','Y',18,900),(708,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район',NULL,NULL,'district','3601200000000','Y',18,1000),(709,NULL,NULL,NULL,NULL,'Кантемировский','Кантемировский р-н','Кантемировский Район',NULL,NULL,'district','3601300000000','Y',18,1100),(710,NULL,NULL,NULL,NULL,'Каширский','Каширский р-н','Каширский Район',NULL,NULL,'district','3601400000000','Y',18,1200),(711,NULL,NULL,NULL,NULL,'Казбековский','Казбековский р-н','Казбековский Район','368050',NULL,'district','0501500000000','Y',19,1300),(712,NULL,NULL,NULL,NULL,'Кайтагский','Кайтагский р-н','Кайтагский Район','368630',NULL,'district','0501600000000','Y',19,1400),(713,NULL,NULL,NULL,NULL,'Карабудахкентский','Карабудахкентский р-н','Карабудахкентский Район','368530',NULL,'district','0501700000000','Y',19,1500),(714,NULL,NULL,NULL,NULL,'Каякентский','Каякентский р-н','Каякентский Район','368560',NULL,'district','0501800000000','Y',19,1600),(715,NULL,NULL,NULL,NULL,'Кизилюртовский','Кизилюртовский р-н','Кизилюртовский Район','368100',NULL,'district','0501900000000','Y',19,1700),(716,NULL,NULL,NULL,NULL,'Кизлярский','Кизлярский р-н','Кизлярский Район','368800',NULL,'district','0502000000000','Y',19,1800),(717,NULL,NULL,NULL,NULL,'Кулинский','Кулинский р-н','Кулинский Район','368370',NULL,'district','0502200000000','Y',19,1900),(718,NULL,NULL,NULL,NULL,'Кумторкалинский','Кумторкалинский р-н','Кумторкалинский Район','368220',NULL,'district','0502300000000','Y',19,2000),(719,NULL,NULL,NULL,NULL,'Курахский','Курахский р-н','Курахский Район','368720',NULL,'district','0502400000000','Y',19,2100),(720,NULL,NULL,NULL,NULL,'Каларский','Каларский р-н','Каларский Район',NULL,NULL,'district','7500800000000','Y',21,800),(721,NULL,NULL,NULL,NULL,'Калганский','Калганский р-н','Калганский Район',NULL,NULL,'district','7500900000000','Y',21,900),(722,NULL,NULL,NULL,NULL,'Карымский','Карымский р-н','Карымский Район',NULL,NULL,'district','7501000000000','Y',21,1000),(723,NULL,NULL,NULL,NULL,'Краснокаменский','Краснокаменский р-н','Краснокаменский Район',NULL,NULL,'district','7501100000000','Y',21,1100),(724,NULL,NULL,NULL,NULL,'Красночикойский','Красночикойский р-н','Красночикойский Район',NULL,NULL,'district','7501200000000','Y',21,1200),(725,NULL,NULL,NULL,NULL,'Кыринский','Кыринский р-н','Кыринский Район',NULL,NULL,'district','7501300000000','Y',21,1300),(726,NULL,NULL,NULL,NULL,'Кинешемский','Кинешемский р-н','Кинешемский Район',NULL,NULL,'district','3700700000000','Y',22,600),(727,NULL,NULL,NULL,NULL,'Комсомольский','Комсомольский р-н','Комсомольский Район',NULL,NULL,'district','3700800000000','Y',22,700),(728,NULL,NULL,NULL,NULL,'Казачинско-Ленский','Казачинско-Ленский р-н','Казачинско-Ленский Район',NULL,NULL,'district','3800900000000','Y',24,1100),(729,NULL,NULL,NULL,NULL,'Катангский','Катангский р-н','Катангский Район',NULL,NULL,'district','3801000000000','Y',24,1200),(730,NULL,NULL,NULL,NULL,'Качугский','Качугский р-н','Качугский Район','666202',NULL,'district','3801100000000','Y',24,1300),(731,NULL,NULL,NULL,NULL,'Киренский','Киренский р-н','Киренский Район',NULL,NULL,'district','3801200000000','Y',24,1400),(732,NULL,NULL,NULL,NULL,'Куйтунский','Куйтунский р-н','Куйтунский Район',NULL,NULL,'district','3801300000000','Y',24,1500),(733,NULL,NULL,NULL,NULL,'Краснознаменский','Краснознаменский р-н','Краснознаменский Район',NULL,NULL,'district','3900700000000','Y',26,600),(734,NULL,NULL,NULL,NULL,'Кетченеровский','Кетченеровский р-н','Кетченеровский Район',NULL,NULL,'district','0800500000000','Y',27,200),(735,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район','249440',NULL,'district','4001100000000','Y',28,800),(736,NULL,NULL,NULL,NULL,'Козельский','Козельский р-н','Козельский Район',NULL,NULL,'district','4001200000000','Y',28,900),(737,NULL,NULL,NULL,NULL,'Куйбышевский','Куйбышевский р-н','Куйбышевский Район',NULL,NULL,'district','4001300000000','Y',28,1000),(738,NULL,NULL,NULL,NULL,'Карагинский','Карагинский р-н','Карагинский Район','688700',NULL,'district','4101000000000','Y',29,300),(739,NULL,NULL,NULL,NULL,'Карачаевский','Карачаевский р-н','Карачаевский Район',NULL,NULL,'district','0900400000000','Y',30,300),(740,NULL,NULL,NULL,NULL,'Калевальский','Калевальский р-н','Калевальский Район',NULL,NULL,'district','1000300000000','Y',31,100),(741,NULL,NULL,NULL,NULL,'Кемский','Кемский р-н','Кемский Район','186606',NULL,'district','1000400000000','Y',31,200),(742,NULL,NULL,NULL,NULL,'Кондопожский','Кондопожский р-н','Кондопожский Район',NULL,NULL,'district','1000500000000','Y',31,300),(743,NULL,NULL,NULL,NULL,'Кемеровский','Кемеровский р-н','Кемеровский Район',NULL,NULL,'district','4200100000000','Y',32,300),(744,NULL,NULL,NULL,NULL,'Крапивинский','Крапивинский р-н','Крапивинский Район',NULL,NULL,'district','4200500000000','Y',32,400),(745,NULL,NULL,NULL,NULL,'Кикнурский','Кикнурский р-н','Кикнурский Район','612300',NULL,'district','4301100000000','Y',33,900),(746,NULL,NULL,NULL,NULL,'Кильмезский','Кильмезский р-н','Кильмезский Район','613570',NULL,'district','4301200000000','Y',33,1000),(747,NULL,NULL,NULL,NULL,'Кирово-Чепецкий','Кирово-Чепецкий р-н','Кирово-Чепецкий Район','613040',NULL,'district','4301300000000','Y',33,1100),(748,NULL,NULL,NULL,NULL,'Котельничский','Котельничский р-н','Котельничский Район','612600',NULL,'district','4301400000000','Y',33,1200),(749,NULL,NULL,NULL,NULL,'Куменский','Куменский р-н','Куменский Район','613400',NULL,'district','4301500000000','Y',33,1300),(750,NULL,NULL,NULL,NULL,'Княжпогостский','Княжпогостский р-н','Княжпогостский Район',NULL,NULL,'district','1100600000000','Y',34,100),(751,NULL,NULL,NULL,NULL,'Койгородский','Койгородский р-н','Койгородский Район',NULL,NULL,'district','1100700000000','Y',34,200),(752,NULL,NULL,NULL,NULL,'Корткеросский','Корткеросский р-н','Корткеросский Район',NULL,NULL,'district','1100800000000','Y',34,300),(753,NULL,NULL,NULL,NULL,'Кадыйский','Кадыйский р-н','Кадыйский Район','157980',NULL,'district','4400600000000','Y',35,400),(754,NULL,NULL,NULL,NULL,'Кологривский','Кологривский р-н','Кологривский Район',NULL,NULL,'district','4400700000000','Y',35,500),(755,NULL,NULL,NULL,NULL,'Костромской','Костромской р-н','Костромской Район',NULL,NULL,'district','4400100000000','Y',35,600),(756,NULL,NULL,NULL,NULL,'Красносельский','Красносельский р-н','Красносельский Район','157940',NULL,'district','4400800000000','Y',35,700),(757,NULL,NULL,NULL,NULL,'Кавказский','Кавказский р-н','Кавказский Район',NULL,NULL,'district','2301200000000','Y',36,1000),(758,NULL,NULL,NULL,NULL,'Калининский','Калининский р-н','Калининский Район',NULL,NULL,'district','2301300000000','Y',36,1100),(759,NULL,NULL,NULL,NULL,'Каневской','Каневской р-н','Каневской Район','353730',NULL,'district','2301400000000','Y',36,1200),(760,NULL,NULL,NULL,NULL,'Кореновский','Кореновский р-н','Кореновский Район',NULL,NULL,'district','2301500000000','Y',36,1300),(761,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район',NULL,NULL,'district','2301600000000','Y',36,1400),(762,NULL,NULL,NULL,NULL,'Крыловский','Крыловский р-н','Крыловский Район',NULL,NULL,'district','2301700000000','Y',36,1500),(763,NULL,NULL,NULL,NULL,'Крымский','Крымский р-н','Крымский Район',NULL,NULL,'district','2301800000000','Y',36,1600),(764,NULL,NULL,NULL,NULL,'Курганинский','Курганинский р-н','Курганинский Район',NULL,NULL,'district','2301900000000','Y',36,1700),(765,NULL,NULL,NULL,NULL,'Кущевский','Кущевский р-н','Кущевский Район',NULL,NULL,'district','2302000000000','Y',36,1800),(766,NULL,NULL,NULL,NULL,'Казачинский','Казачинский р-н','Казачинский Район',NULL,NULL,'district','2401800000000','Y',37,1700),(767,NULL,NULL,NULL,NULL,'Канский','Канский р-н','Канский Район',NULL,NULL,'district','2401900000000','Y',37,1800),(768,NULL,NULL,NULL,NULL,'Каратузский','Каратузский р-н','Каратузский Район','662850',NULL,'district','2402000000000','Y',37,1900),(769,NULL,NULL,NULL,NULL,'Кежемский','Кежемский р-н','Кежемский Район',NULL,NULL,'district','2402100000000','Y',37,2000),(770,NULL,NULL,NULL,NULL,'Козульский','Козульский р-н','Козульский Район',NULL,NULL,'district','2402200000000','Y',37,2100),(771,NULL,NULL,NULL,NULL,'Краснотуранский','Краснотуранский р-н','Краснотуранский Район',NULL,NULL,'district','2402300000000','Y',37,2200),(772,NULL,NULL,NULL,NULL,'Курагинский','Курагинский р-н','Курагинский Район',NULL,NULL,'district','2402400000000','Y',37,2300),(773,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район',NULL,NULL,'district','9100400000000','Y',38,300),(774,NULL,NULL,NULL,NULL,'Красногвардейский','Красногвардейский р-н','Красногвардейский Район',NULL,NULL,'district','9100500000000','Y',38,400),(775,NULL,NULL,NULL,NULL,'Красноперекопский','Красноперекопский р-н','Красноперекопский Район',NULL,NULL,'district','9100600000000','Y',38,500),(776,NULL,NULL,NULL,NULL,'Каргапольский','Каргапольский р-н','Каргапольский Район',NULL,NULL,'district','4500700000000','Y',39,500),(777,NULL,NULL,NULL,NULL,'Катайский','Катайский р-н','Катайский Район',NULL,NULL,'district','4500800000000','Y',39,600),(778,NULL,NULL,NULL,NULL,'Кетовский','Кетовский р-н','Кетовский Район',NULL,NULL,'district','4500900000000','Y',39,700),(779,NULL,NULL,NULL,NULL,'Куртамышский','Куртамышский р-н','Куртамышский Район',NULL,NULL,'district','4501000000000','Y',39,800),(780,NULL,NULL,NULL,NULL,'Касторенский','Касторенский р-н','Касторенский Район',NULL,NULL,'district','4600900000000','Y',40,700),(781,NULL,NULL,NULL,NULL,'Конышевский','Конышевский р-н','Конышевский Район','307620',NULL,'district','4601000000000','Y',40,800),(782,NULL,NULL,NULL,NULL,'Кореневский','Кореневский р-н','Кореневский Район',NULL,NULL,'district','4601100000000','Y',40,900),(783,NULL,NULL,NULL,NULL,'Курский','Курский р-н','Курский Район',NULL,NULL,'district','4602900000000','Y',40,1000),(784,NULL,NULL,NULL,NULL,'Курчатовский','Курчатовский р-н','Курчатовский Район','307250',NULL,'district','4601200000000','Y',40,1100),(785,NULL,NULL,NULL,NULL,'Кингисеппский','Кингисеппский р-н','Кингисеппский Район',NULL,NULL,'district','4700800000000','Y',41,600),(786,NULL,NULL,NULL,NULL,'Киришский','Киришский р-н','Киришский Район',NULL,NULL,'district','4700900000000','Y',41,700),(787,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район',NULL,NULL,'district','4701000000000','Y',41,800),(788,NULL,NULL,NULL,NULL,'Краснинский','Краснинский р-н','Краснинский Район',NULL,NULL,'district','4801100000000','Y',42,900),(789,NULL,NULL,NULL,NULL,'Килемарский','Килемарский р-н','Килемарский Район',NULL,NULL,'district','1200500000000','Y',44,300),(790,NULL,NULL,NULL,NULL,'Куженерский','Куженерский р-н','Куженерский Район',NULL,NULL,'district','1200600000000','Y',44,400),(791,NULL,NULL,NULL,NULL,'Кадошкинский','Кадошкинский р-н','Кадошкинский Район',NULL,NULL,'district','1301200000000','Y',45,1000),(792,NULL,NULL,NULL,NULL,'Ковылкинский','Ковылкинский р-н','Ковылкинский Район',NULL,NULL,'district','1301300000000','Y',45,1100),(793,NULL,NULL,NULL,NULL,'Кочкуровский','Кочкуровский р-н','Кочкуровский Район',NULL,NULL,'district','1301400000000','Y',45,1200),(794,NULL,NULL,NULL,NULL,'Краснослободский','Краснослободский р-н','Краснослободский Район',NULL,NULL,'district','1301500000000','Y',45,1300),(795,NULL,NULL,NULL,NULL,'Киевский','Киевский п','Киевский Поселение',NULL,NULL,'district','7700500000000','Y',46,400),(796,NULL,NULL,NULL,NULL,'Кленовское','Кленовское п','Кленовское Поселение',NULL,NULL,'district','7700600000000','Y',46,500),(797,NULL,NULL,NULL,NULL,'Кокошкино','Кокошкино п','Кокошкино Поселение',NULL,NULL,'district','7700700000000','Y',46,600),(798,NULL,NULL,NULL,NULL,'Краснопахорское','Краснопахорское п','Краснопахорское Поселение',NULL,NULL,'district','7700800000000','Y',46,700),(799,NULL,NULL,NULL,NULL,'Каширский','Каширский р-н','Каширский Район',NULL,NULL,'district','5001000000000','Y',47,600),(800,NULL,NULL,NULL,NULL,'Клинский','Клинский р-н','Клинский Район','141601',NULL,'district','5001100000000','Y',47,700),(801,NULL,NULL,NULL,NULL,'Коломенский','Коломенский р-н','Коломенский Район',NULL,NULL,'district','5001200000000','Y',47,800),(802,NULL,NULL,NULL,NULL,'Красногорский','Красногорский р-н','Красногорский Район',NULL,NULL,'district','5001300000000','Y',47,900),(803,NULL,NULL,NULL,NULL,'Кандалакшский','Кандалакшский р-н','Кандалакшский Район','184042',NULL,'district','5100100000000','Y',48,0),(804,NULL,NULL,NULL,NULL,'Ковдорский','Ковдорский р-н','Ковдорский Район','184144',NULL,'district','5100200000000','Y',48,100),(805,NULL,NULL,NULL,NULL,'Кольский','Кольский р-н','Кольский Район','184380',NULL,'district','5100300000000','Y',48,200),(806,NULL,NULL,NULL,NULL,'Княгининский','Княгининский р-н','Княгининский Район','606340',NULL,'district','5202300000000','Y',50,1900),(807,NULL,NULL,NULL,NULL,'Ковернинский','Ковернинский р-н','Ковернинский Район','606570',NULL,'district','5202400000000','Y',50,2000),(808,NULL,NULL,NULL,NULL,'Краснобаковский','Краснобаковский р-н','Краснобаковский Район','606710',NULL,'district','5202500000000','Y',50,2100),(809,NULL,NULL,NULL,NULL,'Краснооктябрьский','Краснооктябрьский р-н','Краснооктябрьский Район','607530',NULL,'district','5202600000000','Y',50,2200),(810,NULL,NULL,NULL,NULL,'Кстовский','Кстовский р-н','Кстовский Район','607650',NULL,'district','5202700000000','Y',50,2300),(811,NULL,NULL,NULL,NULL,'Кулебакский','Кулебакский р-н','Кулебакский Район','607010',NULL,'district','5202800000000','Y',50,2400),(812,NULL,NULL,NULL,NULL,'Крестецкий','Крестецкий р-н','Крестецкий Район',NULL,NULL,'district','5300700000000','Y',51,500),(813,NULL,NULL,NULL,NULL,'Карасукский','Карасукский р-н','Карасукский Район',NULL,NULL,'district','5400900000000','Y',52,700),(814,NULL,NULL,NULL,NULL,'Каргатский','Каргатский р-н','Каргатский Район',NULL,NULL,'district','5401000000000','Y',52,800),(815,NULL,NULL,NULL,NULL,'Колыванский','Колыванский р-н','Колыванский Район',NULL,NULL,'district','5401100000000','Y',52,900),(816,NULL,NULL,NULL,NULL,'Коченевский','Коченевский р-н','Коченевский Район',NULL,NULL,'district','5401200000000','Y',52,1000),(817,NULL,NULL,NULL,NULL,'Кочковский','Кочковский р-н','Кочковский Район',NULL,NULL,'district','5401300000000','Y',52,1100),(818,NULL,NULL,NULL,NULL,'Краснозерский','Краснозерский р-н','Краснозерский Район',NULL,NULL,'district','5401400000000','Y',52,1200),(819,NULL,NULL,NULL,NULL,'Куйбышевский','Куйбышевский р-н','Куйбышевский Район',NULL,NULL,'district','5401500000000','Y',52,1300),(820,NULL,NULL,NULL,NULL,'Купинский','Купинский р-н','Купинский Район',NULL,NULL,'district','5401600000000','Y',52,1400),(821,NULL,NULL,NULL,NULL,'Кыштовский','Кыштовский р-н','Кыштовский Район',NULL,NULL,'district','5401700000000','Y',52,1500),(822,NULL,NULL,NULL,NULL,'Калачинский','Калачинский р-н','Калачинский Район',NULL,NULL,'district','5500800000000','Y',53,600),(823,NULL,NULL,NULL,NULL,'Колосовский','Колосовский р-н','Колосовский Район',NULL,NULL,'district','5500900000000','Y',53,700),(824,NULL,NULL,NULL,NULL,'Кормиловский','Кормиловский р-н','Кормиловский Район',NULL,NULL,'district','5501000000000','Y',53,800),(825,NULL,NULL,NULL,NULL,'Крутинский','Крутинский р-н','Крутинский Район',NULL,NULL,'district','5501100000000','Y',53,900),(826,NULL,NULL,NULL,NULL,'Кваркенский','Кваркенский р-н','Кваркенский Район','462860',NULL,'district','5604800000000','Y',54,1200),(827,NULL,NULL,NULL,NULL,'Красногвардейский','Красногвардейский р-н','Красногвардейский Район','461150',NULL,'district','5604900000000','Y',54,1300),(828,NULL,NULL,NULL,NULL,'Кувандыкский','Кувандыкский р-н','Кувандыкский Район','462202',NULL,'district','5601300000000','Y',54,1400),(829,NULL,NULL,NULL,NULL,'Курманаевский','Курманаевский р-н','Курманаевский Район','461060',NULL,'district','5601600000000','Y',54,1500),(830,NULL,NULL,NULL,NULL,'Колпнянский','Колпнянский р-н','Колпнянский Район',NULL,NULL,'district','5700900000000','Y',55,700),(831,NULL,NULL,NULL,NULL,'Корсаковский','Корсаковский р-н','Корсаковский Район',NULL,NULL,'district','5701000000000','Y',55,800),(832,NULL,NULL,NULL,NULL,'Краснозоренский','Краснозоренский р-н','Краснозоренский Район',NULL,NULL,'district','5701100000000','Y',55,900),(833,NULL,NULL,NULL,NULL,'Кромской','Кромской р-н','Кромской Район',NULL,NULL,'district','5701200000000','Y',55,1000),(834,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район',NULL,NULL,'district','5801100000000','Y',56,800),(835,NULL,NULL,NULL,NULL,'Камешкирский','Камешкирский р-н','Камешкирский Район',NULL,NULL,'district','5801200000000','Y',56,900),(836,NULL,NULL,NULL,NULL,'Колышлейский','Колышлейский р-н','Колышлейский Район',NULL,NULL,'district','5801300000000','Y',56,1000),(837,NULL,NULL,NULL,NULL,'Кузнецкий','Кузнецкий р-н','Кузнецкий Район',NULL,NULL,'district','5801500000000','Y',56,1100),(838,NULL,NULL,NULL,NULL,'Карагайский','Карагайский р-н','Карагайский Район',NULL,NULL,'district','5900900000000','Y',57,800),(839,NULL,NULL,NULL,NULL,'Кишертский','Кишертский р-н','Кишертский Район',NULL,NULL,'district','5901000000000','Y',57,900),(840,NULL,NULL,NULL,NULL,'Косинский','Косинский р-н','Косинский Район',NULL,NULL,'district','5903000000000','Y',57,1000),(841,NULL,NULL,NULL,NULL,'Кочевский','Кочевский р-н','Кочевский Район',NULL,NULL,'district','5903100000000','Y',57,1100),(842,NULL,NULL,NULL,NULL,'Красновишерский','Красновишерский р-н','Красновишерский Район',NULL,NULL,'district','5901300000000','Y',57,1200),(843,NULL,NULL,NULL,NULL,'Краснокамский','Краснокамский р-н','Краснокамский Район',NULL,NULL,'district','5903500000000','Y',57,1300),(844,NULL,NULL,NULL,NULL,'Кудымкарский','Кудымкарский р-н','Кудымкарский Район',NULL,NULL,'district','5903200000000','Y',57,1400),(845,NULL,NULL,NULL,NULL,'Куединский','Куединский р-н','Куединский Район',NULL,NULL,'district','5901100000000','Y',57,1500),(846,NULL,NULL,NULL,NULL,'Кунгурский','Кунгурский р-н','Кунгурский Район',NULL,NULL,'district','5901200000000','Y',57,1600),(847,NULL,NULL,NULL,NULL,'Кавалеровский','Кавалеровский р-н','Кавалеровский Район',NULL,NULL,'district','2500500000000','Y',58,300),(848,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район',NULL,NULL,'district','2500600000000','Y',58,400),(849,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район',NULL,NULL,'district','2500700000000','Y',58,500),(850,NULL,NULL,NULL,NULL,'Красногородский','Красногородский р-н','Красногородский Район','182370',NULL,'district','6000700000000','Y',59,500),(851,NULL,NULL,NULL,NULL,'Куньинский','Куньинский р-н','Куньинский Район','182010',NULL,'district','6000800000000','Y',59,600),(852,NULL,NULL,NULL,NULL,'Кагальницкий','Кагальницкий р-н','Кагальницкий Район',NULL,NULL,'district','6101500000000','Y',60,1300),(853,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район',NULL,NULL,'district','6101600000000','Y',60,1400),(854,NULL,NULL,NULL,NULL,'Кашарский','Кашарский р-н','Кашарский Район',NULL,NULL,'district','6101700000000','Y',60,1500),(855,NULL,NULL,NULL,NULL,'Константиновский','Константиновский р-н','Константиновский Район',NULL,NULL,'district','6101800000000','Y',60,1600),(856,NULL,NULL,NULL,NULL,'Красносулинский','Красносулинский р-н','Красносулинский Район',NULL,NULL,'district','6101900000000','Y',60,1700),(857,NULL,NULL,NULL,NULL,'Куйбышевский','Куйбышевский р-н','Куйбышевский Район',NULL,NULL,'district','6102000000000','Y',60,1800),(858,NULL,NULL,NULL,NULL,'Кадомский','Кадомский р-н','Кадомский Район',NULL,NULL,'district','6200400000000','Y',61,300),(859,NULL,NULL,NULL,NULL,'Касимовский','Касимовский р-н','Касимовский Район',NULL,NULL,'district','6200500000000','Y',61,400),(860,NULL,NULL,NULL,NULL,'Клепиковский','Клепиковский р-н','Клепиковский Район',NULL,NULL,'district','6200600000000','Y',61,500),(861,NULL,NULL,NULL,NULL,'Кораблинский','Кораблинский р-н','Кораблинский Район',NULL,NULL,'district','6200700000000','Y',61,600),(862,NULL,NULL,NULL,NULL,'Канашский','Канашский р-н','Канашский Район',NULL,NULL,'district','2100700000000','Y',62,500),(863,NULL,NULL,NULL,NULL,'Козловский','Козловский р-н','Козловский Район',NULL,NULL,'district','2100800000000','Y',62,600),(864,NULL,NULL,NULL,NULL,'Комсомольский','Комсомольский р-н','Комсомольский Район',NULL,NULL,'district','2100900000000','Y',62,700),(865,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район',NULL,NULL,'district','2101000000000','Y',62,800),(866,NULL,NULL,NULL,NULL,'Красночетайский','Красночетайский р-н','Красночетайский Район',NULL,NULL,'district','2101100000000','Y',62,900),(867,NULL,NULL,NULL,NULL,'Камышлинский','Камышлинский р-н','Камышлинский Район',NULL,NULL,'district','6301000000000','Y',63,900),(868,NULL,NULL,NULL,NULL,'Кинель-Черкасский','Кинель-Черкасский р-н','Кинель-Черкасский Район',NULL,NULL,'district','6301100000000','Y',63,1000),(869,NULL,NULL,NULL,NULL,'Кинельский','Кинельский р-н','Кинельский Район',NULL,NULL,'district','6301200000000','Y',63,1100),(870,NULL,NULL,NULL,NULL,'Клявлинский','Клявлинский р-н','Клявлинский Район',NULL,NULL,'district','6301300000000','Y',63,1200),(871,NULL,NULL,NULL,NULL,'Кошкинский','Кошкинский р-н','Кошкинский Район',NULL,NULL,'district','6301400000000','Y',63,1300),(872,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район',NULL,NULL,'district','6301500000000','Y',63,1400),(873,NULL,NULL,NULL,NULL,'Красноярский','Красноярский р-н','Красноярский Район',NULL,NULL,'district','6301600000000','Y',63,1500),(874,NULL,NULL,NULL,NULL,'Калининский','Калининский р-н','Калининский Район',NULL,NULL,'district','6401600000000','Y',65,1400),(875,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район',NULL,NULL,'district','6401700000000','Y',65,1500),(876,NULL,NULL,NULL,NULL,'Краснокутский','Краснокутский р-н','Краснокутский Район',NULL,NULL,'district','6401800000000','Y',65,1600),(877,NULL,NULL,NULL,NULL,'Краснопартизанский','Краснопартизанский р-н','Краснопартизанский Район',NULL,NULL,'district','6401900000000','Y',65,1700),(878,NULL,NULL,NULL,NULL,'Кобяйский','Кобяйский у','Кобяйский Улус','678300',NULL,'district','1401400000000','Y',66,1200),(879,NULL,NULL,NULL,NULL,'Корсаковский','Корсаковский р-н','Корсаковский Район','694020',NULL,'district','6500400000000','Y',67,300),(880,NULL,NULL,NULL,NULL,'Курильский','Курильский р-н','Курильский Район','694530',NULL,'district','6500500000000','Y',67,400),(881,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район','623400',NULL,'district','6601300000000','Y',68,1100),(882,NULL,NULL,NULL,NULL,'Камышловский','Камышловский р-н','Камышловский Район','624860',NULL,'district','6601400000000','Y',68,1200),(883,NULL,NULL,NULL,NULL,'Красноуфимский','Красноуфимский р-н','Красноуфимский Район','623300',NULL,'district','6601500000000','Y',68,1300),(884,NULL,NULL,NULL,NULL,'Кардымовский','Кардымовский р-н','Кардымовский Район','215850',NULL,'district','6701100000000','Y',70,900),(885,NULL,NULL,NULL,NULL,'Краснинский','Краснинский р-н','Краснинский Район',NULL,NULL,'district','6701200000000','Y',70,1000),(886,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район',NULL,NULL,'district','2601200000000','Y',71,1000),(887,NULL,NULL,NULL,NULL,'Кочубеевский','Кочубеевский р-н','Кочубеевский Район',NULL,NULL,'district','2601300000000','Y',71,1100),(888,NULL,NULL,NULL,NULL,'Красногвардейский','Красногвардейский р-н','Красногвардейский Район',NULL,NULL,'district','2601400000000','Y',71,1200),(889,NULL,NULL,NULL,NULL,'Курский','Курский р-н','Курский Район',NULL,NULL,'district','2601500000000','Y',71,1300),(890,NULL,NULL,NULL,NULL,'Кирсановский','Кирсановский р-н','Кирсановский Район','393360',NULL,'district','6800700000000','Y',72,500),(891,NULL,NULL,NULL,NULL,'Кайбицкий','Кайбицкий р-н','Кайбицкий Район',NULL,NULL,'district','1602200000000','Y',73,2000),(892,NULL,NULL,NULL,NULL,'Камско-Устьинский','Камско-Устьинский р-н','Камско-Устьинский Район',NULL,NULL,'district','1602300000000','Y',73,2100),(893,NULL,NULL,NULL,NULL,'Кукморский','Кукморский р-н','Кукморский Район',NULL,NULL,'district','1602400000000','Y',73,2200),(894,NULL,NULL,NULL,NULL,'Калининский','Калининский р-н','Калининский Район',NULL,NULL,'district','6900100000000','Y',74,900),(895,NULL,NULL,NULL,NULL,'Калязинский','Калязинский р-н','Калязинский Район',NULL,NULL,'district','6901100000000','Y',74,1000),(896,NULL,NULL,NULL,NULL,'Кашинский','Кашинский р-н','Кашинский Район',NULL,NULL,'district','6901200000000','Y',74,1100),(897,NULL,NULL,NULL,NULL,'Кесовогорский','Кесовогорский р-н','Кесовогорский Район',NULL,NULL,'district','6901300000000','Y',74,1200),(898,NULL,NULL,NULL,NULL,'Кимрский','Кимрский р-н','Кимрский Район',NULL,NULL,'district','6901400000000','Y',74,1300),(899,NULL,NULL,NULL,NULL,'Конаковский','Конаковский р-н','Конаковский Район',NULL,NULL,'district','6901500000000','Y',74,1400),(900,NULL,NULL,NULL,NULL,'Краснохолмский','Краснохолмский р-н','Краснохолмский Район',NULL,NULL,'district','6901600000000','Y',74,1500),(901,NULL,NULL,NULL,NULL,'Кувшиновский','Кувшиновский р-н','Кувшиновский Район',NULL,NULL,'district','6901700000000','Y',74,1600),(902,NULL,NULL,NULL,NULL,'Каргасокский','Каргасокский р-н','Каргасокский Район',NULL,NULL,'district','7000700000000','Y',75,500),(903,NULL,NULL,NULL,NULL,'Кожевниковский','Кожевниковский р-н','Кожевниковский Район',NULL,NULL,'district','7000800000000','Y',75,600),(904,NULL,NULL,NULL,NULL,'Колпашевский','Колпашевский р-н','Колпашевский Район',NULL,NULL,'district','7000900000000','Y',75,700),(905,NULL,NULL,NULL,NULL,'Кривошеинский','Кривошеинский р-н','Кривошеинский Район',NULL,NULL,'district','7001000000000','Y',75,800),(906,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район',NULL,NULL,'district','7101200000000','Y',76,900),(907,NULL,NULL,NULL,NULL,'Кимовский','Кимовский р-н','Кимовский Район',NULL,NULL,'district','7101300000000','Y',76,1000),(908,NULL,NULL,NULL,NULL,'Киреевский','Киреевский р-н','Киреевский Район',NULL,NULL,'district','7101400000000','Y',76,1100),(909,NULL,NULL,NULL,NULL,'Куркинский','Куркинский р-н','Куркинский Район',NULL,NULL,'district','7101500000000','Y',76,1200),(910,NULL,NULL,NULL,NULL,'Каа-Хемский','Каа-Хемский р-н','Каа-Хемский Район','668400',NULL,'district','1700500000000','Y',77,300),(911,NULL,NULL,NULL,NULL,'Кызылский','Кызылский р-н','Кызылский Район','667901',NULL,'district','1700600000000','Y',77,400),(912,NULL,NULL,NULL,NULL,'Казанский','Казанский р-н','Казанский Район',NULL,NULL,'district','7201200000000','Y',78,1000),(913,NULL,NULL,NULL,NULL,'Камбарский','Камбарский р-н','Камбарский Район',NULL,NULL,'district','1801100000000','Y',79,900),(914,NULL,NULL,NULL,NULL,'Каракулинский','Каракулинский р-н','Каракулинский Район',NULL,NULL,'district','1801200000000','Y',79,1000),(915,NULL,NULL,NULL,NULL,'Кезский','Кезский р-н','Кезский Район',NULL,NULL,'district','1801300000000','Y',79,1100),(916,NULL,NULL,NULL,NULL,'Кизнерский','Кизнерский р-н','Кизнерский Район',NULL,NULL,'district','1801400000000','Y',79,1200),(917,NULL,NULL,NULL,NULL,'Киясовский','Киясовский р-н','Киясовский Район',NULL,NULL,'district','1801500000000','Y',79,1300),(918,NULL,NULL,NULL,NULL,'Красногорский','Красногорский р-н','Красногорский Район',NULL,NULL,'district','1801600000000','Y',79,1400),(919,NULL,NULL,NULL,NULL,'Карсунский','Карсунский р-н','Карсунский Район','433210',NULL,'district','7300600000000','Y',80,400),(920,NULL,NULL,NULL,NULL,'Кузоватовский','Кузоватовский р-н','Кузоватовский Район','433760',NULL,'district','7300700000000','Y',80,500),(921,NULL,NULL,NULL,NULL,'Комсомольский','Комсомольский р-н','Комсомольский Район','681000',NULL,'district','2701000000000','Y',81,800),(922,NULL,NULL,NULL,NULL,'Карталинский','Карталинский р-н','Карталинский Район','457353',NULL,'district','7400700000000','Y',83,800),(923,NULL,NULL,NULL,NULL,'Каслинский','Каслинский р-н','Каслинский Район','456833',NULL,'district','7400900000000','Y',83,900),(924,NULL,NULL,NULL,NULL,'Катав-Ивановский','Катав-Ивановский р-н','Катав-Ивановский Район','456110',NULL,'district','7401000000000','Y',83,1000),(925,NULL,NULL,NULL,NULL,'Кизильский','Кизильский р-н','Кизильский Район','457610',NULL,'district','7403100000000','Y',83,1100),(926,NULL,NULL,NULL,NULL,'Коркинский','Коркинский р-н','Коркинский Район','456550',NULL,'district','7404500000000','Y',83,1200),(927,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район','456660',NULL,'district','7403200000000','Y',83,1300),(928,NULL,NULL,NULL,NULL,'Кунашакский','Кунашакский р-н','Кунашакский Район','456730',NULL,'district','7403300000000','Y',83,1400),(929,NULL,NULL,NULL,NULL,'Кусинский','Кусинский р-н','Кусинский Район','456940',NULL,'district','7403400000000','Y',83,1500),(930,NULL,NULL,NULL,NULL,'Курчалоевский','Курчалоевский р-н','Курчалоевский Район','366300',NULL,'district','2000600000000','Y',84,500),(931,NULL,NULL,NULL,NULL,'Красноселькупский','Красноселькупский р-н','Красноселькупский Район',NULL,NULL,'district','8900200000000','Y',86,0),(932,NULL,NULL,NULL,NULL,'Локтевский','Локтевский р-н','Локтевский Район',NULL,NULL,'district','2202700000000','Y',4,2500),(933,NULL,NULL,NULL,NULL,'Ленский','Ленский р-н','Ленский Район',NULL,NULL,'district','2901000000000','Y',6,800),(934,NULL,NULL,NULL,NULL,'Лешуконский','Лешуконский р-н','Лешуконский Район',NULL,NULL,'district','2901100000000','Y',6,900),(935,NULL,NULL,NULL,NULL,'Лиманский','Лиманский р-н','Лиманский Район',NULL,NULL,'district','3000800000000','Y',7,600),(936,NULL,NULL,NULL,NULL,'Ленинский','Ленинский р-н','Ленинский Район',NULL,NULL,'district','3401700000000','Y',16,1500),(937,NULL,NULL,NULL,NULL,'Лискинский','Лискинский р-н','Лискинский Район',NULL,NULL,'district','3601500000000','Y',18,1300),(938,NULL,NULL,NULL,NULL,'Лакский','Лакский р-н','Лакский Район','368360',NULL,'district','0502500000000','Y',19,2200),(939,NULL,NULL,NULL,NULL,'Левашинский','Левашинский р-н','Левашинский Район','368320',NULL,'district','0502600000000','Y',19,2300),(940,NULL,NULL,NULL,NULL,'Ленинский','Ленинский р-н','Ленинский Район','679370',NULL,'district','7900200000000','Y',20,100),(941,NULL,NULL,NULL,NULL,'Лежневский','Лежневский р-н','Лежневский Район',NULL,NULL,'district','3700900000000','Y',22,800),(942,NULL,NULL,NULL,NULL,'Лухский','Лухский р-н','Лухский Район','155270',NULL,'district','3701000000000','Y',22,900),(943,NULL,NULL,NULL,NULL,'Лескенский','Лескенский р-н','Лескенский Район',NULL,NULL,'district','0701100000000','Y',25,200),(944,NULL,NULL,NULL,NULL,'Лаганский','Лаганский р-н','Лаганский Район',NULL,NULL,'district','0800600000000','Y',27,300),(945,NULL,NULL,NULL,NULL,'Людиновский','Людиновский р-н','Людиновский Район',NULL,NULL,'district','4001400000000','Y',28,1100),(946,NULL,NULL,NULL,NULL,'Лахденпохский','Лахденпохский р-н','Лахденпохский Район',NULL,NULL,'district','1000600000000','Y',31,400),(947,NULL,NULL,NULL,NULL,'Лоухский','Лоухский р-н','Лоухский Район','186660',NULL,'district','1000700000000','Y',31,500),(948,NULL,NULL,NULL,NULL,'Ленинск-Кузнецкий','Ленинск-Кузнецкий р-н','Ленинск-Кузнецкий Район',NULL,NULL,'district','4200600000000','Y',32,500),(949,NULL,NULL,NULL,NULL,'Лебяжский','Лебяжский р-н','Лебяжский Район','613500',NULL,'district','4301600000000','Y',33,1400),(950,NULL,NULL,NULL,NULL,'Лузский','Лузский р-н','Лузский Район','613900',NULL,'district','4301700000000','Y',33,1500),(951,NULL,NULL,NULL,NULL,'Лабинский','Лабинский р-н','Лабинский Район',NULL,NULL,'district','2302100000000','Y',36,1900),(952,NULL,NULL,NULL,NULL,'Ленинградский','Ленинградский р-н','Ленинградский Район',NULL,NULL,'district','2302200000000','Y',36,2000),(953,NULL,NULL,NULL,NULL,'Ленинский','Ленинский р-н','Ленинский Район',NULL,NULL,'district','9100700000000','Y',38,600),(954,NULL,NULL,NULL,NULL,'Лебяжьевский','Лебяжьевский р-н','Лебяжьевский Район',NULL,NULL,'district','4501100000000','Y',39,900),(955,NULL,NULL,NULL,NULL,'Льговский','Льговский р-н','Льговский Район','307750',NULL,'district','4601300000000','Y',40,1200),(956,NULL,NULL,NULL,NULL,'Лодейнопольский','Лодейнопольский р-н','Лодейнопольский Район',NULL,NULL,'district','4701100000000','Y',41,900),(957,NULL,NULL,NULL,NULL,'Ломоносовский','Ломоносовский р-н','Ломоносовский Район',NULL,NULL,'district','4701200000000','Y',41,1000),(958,NULL,NULL,NULL,NULL,'Лужский','Лужский р-н','Лужский Район',NULL,NULL,'district','4701300000000','Y',41,1100),(959,NULL,NULL,NULL,NULL,'Лебедянский','Лебедянский р-н','Лебедянский Район',NULL,NULL,'district','4801200000000','Y',42,1000),(960,NULL,NULL,NULL,NULL,'Лев-Толстовский','Лев-Толстовский р-н','Лев-Толстовский Район',NULL,NULL,'district','4801300000000','Y',42,1100),(961,NULL,NULL,NULL,NULL,'Липецкий','Липецкий р-н','Липецкий Район',NULL,NULL,'district','4801900000000','Y',42,1200),(962,NULL,NULL,NULL,NULL,'Лямбирский','Лямбирский р-н','Лямбирский Район',NULL,NULL,'district','1301600000000','Y',45,1400),(963,NULL,NULL,NULL,NULL,'Ленинский','Ленинский р-н','Ленинский Район',NULL,NULL,'district','5001400000000','Y',47,1000),(964,NULL,NULL,NULL,NULL,'Лотошинский','Лотошинский р-н','Лотошинский Район',NULL,NULL,'district','5001500000000','Y',47,1100),(965,NULL,NULL,NULL,NULL,'Луховицкий','Луховицкий р-н','Луховицкий Район',NULL,NULL,'district','5001600000000','Y',47,1200),(966,NULL,NULL,NULL,NULL,'Люберецкий','Люберецкий р-н','Люберецкий Район',NULL,NULL,'district','5001700000000','Y',47,1300),(967,NULL,NULL,NULL,NULL,'Ловозерский','Ловозерский р-н','Ловозерский Район','184592',NULL,'district','5100400000000','Y',48,300),(968,NULL,NULL,NULL,NULL,'Лукояновский','Лукояновский р-н','Лукояновский Район','607800',NULL,'district','5202900000000','Y',50,2500),(969,NULL,NULL,NULL,NULL,'Лысковский','Лысковский р-н','Лысковский Район','606212',NULL,'district','5203000000000','Y',50,2600),(970,NULL,NULL,NULL,NULL,'Любытинский','Любытинский р-н','Любытинский Район',NULL,NULL,'district','5300800000000','Y',51,600),(971,NULL,NULL,NULL,NULL,'Любинский','Любинский р-н','Любинский Район',NULL,NULL,'district','5501200000000','Y',53,1000),(972,NULL,NULL,NULL,NULL,'Ливенский','Ливенский р-н','Ливенский Район',NULL,NULL,'district','5701300000000','Y',55,1100),(973,NULL,NULL,NULL,NULL,'Лопатинский','Лопатинский р-н','Лопатинский Район',NULL,NULL,'district','5801600000000','Y',56,1200),(974,NULL,NULL,NULL,NULL,'Лунинский','Лунинский р-н','Лунинский Район',NULL,NULL,'district','5801700000000','Y',56,1300),(975,NULL,NULL,NULL,NULL,'Лазовский','Лазовский р-н','Лазовский Район',NULL,NULL,'district','2500800000000','Y',58,600),(976,NULL,NULL,NULL,NULL,'Локнянский','Локнянский р-н','Локнянский Район','182900',NULL,'district','6000900000000','Y',59,700),(977,NULL,NULL,NULL,NULL,'Лысогорский','Лысогорский р-н','Лысогорский Район',NULL,NULL,'district','6402000000000','Y',65,1800),(978,NULL,NULL,NULL,NULL,'Ленский','Ленский у','Ленский Улус',NULL,NULL,'district','1401500000000','Y',66,1300),(979,NULL,NULL,NULL,NULL,'Левокумский','Левокумский р-н','Левокумский Район',NULL,NULL,'district','2601600000000','Y',71,1400),(980,NULL,NULL,NULL,NULL,'Лаишевский','Лаишевский р-н','Лаишевский Район',NULL,NULL,'district','1602500000000','Y',73,2300),(981,NULL,NULL,NULL,NULL,'Лениногорский','Лениногорский р-н','Лениногорский Район',NULL,NULL,'district','1602600000000','Y',73,2400),(982,NULL,NULL,NULL,NULL,'Лесной','Лесной р-н','Лесной Район',NULL,NULL,'district','6901800000000','Y',74,1700),(983,NULL,NULL,NULL,NULL,'Лихославльский','Лихославльский р-н','Лихославльский Район',NULL,NULL,'district','6901900000000','Y',74,1800),(984,NULL,NULL,NULL,NULL,'Ленинский','Ленинский р-н','Ленинский Район',NULL,NULL,'district','7101600000000','Y',76,1300),(985,NULL,NULL,NULL,NULL,'Любимский','Любимский р-н','Любимский Район',NULL,NULL,'district','7600700000000','Y',87,500),(986,NULL,NULL,NULL,NULL,'Майкопский','Майкопский р-н','Майкопский Район','385730',NULL,'district','0100400000000','Y',2,300),(987,NULL,NULL,NULL,NULL,'Майминский','Майминский р-н','Майминский Район',NULL,NULL,'district','0400300000000','Y',3,100),(988,NULL,NULL,NULL,NULL,'Мамонтовский','Мамонтовский р-н','Мамонтовский Район',NULL,NULL,'district','2202800000000','Y',4,2600),(989,NULL,NULL,NULL,NULL,'Михайловский','Михайловский р-н','Михайловский Район',NULL,NULL,'district','2202900000000','Y',4,2700),(990,NULL,NULL,NULL,NULL,'Магдагачинский','Магдагачинский р-н','Магдагачинский Район',NULL,NULL,'district','2800900000000','Y',5,800),(991,NULL,NULL,NULL,NULL,'Мазановский','Мазановский р-н','Мазановский Район',NULL,NULL,'district','2801000000000','Y',5,900),(992,NULL,NULL,NULL,NULL,'Михайловский','Михайловский р-н','Михайловский Район',NULL,NULL,'district','2801100000000','Y',5,1000),(993,NULL,NULL,NULL,NULL,'Мезенский','Мезенский р-н','Мезенский Район',NULL,NULL,'district','2901200000000','Y',6,1000),(994,NULL,NULL,NULL,NULL,'Моздокский','Моздокский р-н','Моздокский Район',NULL,NULL,'district','1500700000000','Y',8,500),(995,NULL,NULL,NULL,NULL,'Мелеузовский','Мелеузовский р-н','Мелеузовский Район','453853',NULL,'district','0203500000000','Y',11,3600),(996,NULL,NULL,NULL,NULL,'Мечетлинский','Мечетлинский р-н','Мечетлинский Район','452550',NULL,'district','0203600000000','Y',11,3700),(997,NULL,NULL,NULL,NULL,'Мишкинский','Мишкинский р-н','Мишкинский Район','452340',NULL,'district','0203700000000','Y',11,3800),(998,NULL,NULL,NULL,NULL,'Миякинский','Миякинский р-н','Миякинский Район','452080',NULL,'district','0203800000000','Y',11,3900),(999,NULL,NULL,NULL,NULL,'Мглинский','Мглинский р-н','Мглинский Район',NULL,NULL,'district','3201600000000','Y',13,1500),(1000,NULL,NULL,NULL,NULL,'Муйский','Муйский р-н','Муйский Район','671500',NULL,'district','0301300000000','Y',14,1200),(1001,NULL,NULL,NULL,NULL,'Мухоршибирский','Мухоршибирский р-н','Мухоршибирский Район','671353',NULL,'district','0301400000000','Y',14,1300),(1002,NULL,NULL,NULL,NULL,'Меленковский','Меленковский р-н','Меленковский Район',NULL,NULL,'district','3301000000000','Y',15,800),(1003,NULL,NULL,NULL,NULL,'Муромский','Муромский р-н','Муромский Район',NULL,NULL,'district','3301100000000','Y',15,900),(1004,NULL,NULL,NULL,NULL,'Михайловский','Михайловский р-н','Михайловский Район',NULL,NULL,'district','3401800000000','Y',16,1600),(1005,NULL,NULL,NULL,NULL,'Междуреченский','Междуреченский р-н','Междуреченский Район',NULL,NULL,'district','3501400000000','Y',17,1300),(1006,NULL,NULL,NULL,NULL,'Магарамкентский','Магарамкентский р-н','Магарамкентский Район','368780',NULL,'district','0502700000000','Y',19,2400),(1007,NULL,NULL,NULL,NULL,'Могойтуйский','Могойтуйский р-н','Могойтуйский Район',NULL,NULL,'district','7513100000000','Y',21,1400),(1008,NULL,NULL,NULL,NULL,'Могочинский','Могочинский р-н','Могочинский Район',NULL,NULL,'district','7501400000000','Y',21,1500),(1009,NULL,NULL,NULL,NULL,'Малгобекский','Малгобекский р-н','Малгобекский Район',NULL,NULL,'district','0600300000000','Y',23,100),(1010,NULL,NULL,NULL,NULL,'Мамско-Чуйский','Мамско-Чуйский р-н','Мамско-Чуйский Район',NULL,NULL,'district','3801400000000','Y',24,1600),(1011,NULL,NULL,NULL,NULL,'Майский','Майский р-н','Майский Район',NULL,NULL,'district','0700400000000','Y',25,300),(1012,NULL,NULL,NULL,NULL,'Малодербетовский','Малодербетовский р-н','Малодербетовский Район',NULL,NULL,'district','0800700000000','Y',27,400),(1013,NULL,NULL,NULL,NULL,'Малоярославецкий','Малоярославецкий р-н','Малоярославецкий Район',NULL,NULL,'district','4001500000000','Y',28,1200),(1014,NULL,NULL,NULL,NULL,'Медынский','Медынский р-н','Медынский Район',NULL,NULL,'district','4001600000000','Y',28,1300),(1015,NULL,NULL,NULL,NULL,'Мещовский','Мещовский р-н','Мещовский Район',NULL,NULL,'district','4001700000000','Y',28,1400),(1016,NULL,NULL,NULL,NULL,'Мосальский','Мосальский р-н','Мосальский Район',NULL,NULL,'district','4001800000000','Y',28,1500),(1017,NULL,NULL,NULL,NULL,'Мильковский','Мильковский р-н','Мильковский Район',NULL,NULL,'district','4100600000000','Y',29,400),(1018,NULL,NULL,NULL,NULL,'Малокарачаевский','Малокарачаевский р-н','Малокарачаевский Район',NULL,NULL,'district','0900500000000','Y',30,400),(1019,NULL,NULL,NULL,NULL,'Медвежьегорский','Медвежьегорский р-н','Медвежьегорский Район',NULL,NULL,'district','1000800000000','Y',31,600),(1020,NULL,NULL,NULL,NULL,'Муезерский','Муезерский р-н','Муезерский Район','186960',NULL,'district','1000900000000','Y',31,700),(1021,NULL,NULL,NULL,NULL,'Мариинский','Мариинский р-н','Мариинский Район',NULL,NULL,'district','4200700000000','Y',32,600),(1022,NULL,NULL,NULL,NULL,'Малмыжский','Малмыжский р-н','Малмыжский Район','612920',NULL,'district','4301800000000','Y',33,1600),(1023,NULL,NULL,NULL,NULL,'Мурашинский','Мурашинский р-н','Мурашинский Район','613710',NULL,'district','4301900000000','Y',33,1700),(1024,NULL,NULL,NULL,NULL,'Макарьевский','Макарьевский р-н','Макарьевский Район',NULL,NULL,'district','4400900000000','Y',35,800),(1025,NULL,NULL,NULL,NULL,'Мантуровский','Мантуровский р-н','Мантуровский Район',NULL,NULL,'district','4401000000000','Y',35,900),(1026,NULL,NULL,NULL,NULL,'Межевской','Межевской р-н','Межевской Район',NULL,NULL,'district','4401100000000','Y',35,1000),(1027,NULL,NULL,NULL,NULL,'Мостовский','Мостовский р-н','Мостовский Район',NULL,NULL,'district','2302300000000','Y',36,2100),(1028,NULL,NULL,NULL,NULL,'Манский','Манский р-н','Манский Район',NULL,NULL,'district','2402500000000','Y',37,2400),(1029,NULL,NULL,NULL,NULL,'Минусинский','Минусинский р-н','Минусинский Район',NULL,NULL,'district','2402600000000','Y',37,2500),(1030,NULL,NULL,NULL,NULL,'Мотыгинский','Мотыгинский р-н','Мотыгинский Район',NULL,NULL,'district','2402700000000','Y',37,2600),(1031,NULL,NULL,NULL,NULL,'Макушинский','Макушинский р-н','Макушинский Район',NULL,NULL,'district','4501200000000','Y',39,1000),(1032,NULL,NULL,NULL,NULL,'Мишкинский','Мишкинский р-н','Мишкинский Район',NULL,NULL,'district','4501300000000','Y',39,1100),(1033,NULL,NULL,NULL,NULL,'Мокроусовский','Мокроусовский р-н','Мокроусовский Район',NULL,NULL,'district','4501400000000','Y',39,1200),(1034,NULL,NULL,NULL,NULL,'Мантуровский','Мантуровский р-н','Мантуровский Район',NULL,NULL,'district','4601400000000','Y',40,1300),(1035,NULL,NULL,NULL,NULL,'Медвенский','Медвенский р-н','Медвенский Район',NULL,NULL,'district','4601500000000','Y',40,1400),(1036,NULL,NULL,NULL,NULL,'Мари-Турекский','Мари-Турекский р-н','Мари-Турекский Район',NULL,NULL,'district','1200700000000','Y',44,500),(1037,NULL,NULL,NULL,NULL,'Медведевский','Медведевский р-н','Медведевский Район',NULL,NULL,'district','1200800000000','Y',44,600),(1038,NULL,NULL,NULL,NULL,'Моркинский','Моркинский р-н','Моркинский Район',NULL,NULL,'district','1200900000000','Y',44,700),(1039,NULL,NULL,NULL,NULL,'Марушкинское','Марушкинское п','Марушкинское Поселение',NULL,NULL,'district','7700900000000','Y',46,800),(1040,NULL,NULL,NULL,NULL,'Михайлово-Ярцевское','Михайлово-Ярцевское п','Михайлово-Ярцевское Поселение',NULL,NULL,'district','7701000000000','Y',46,900),(1041,NULL,NULL,NULL,NULL,'Московский','Московский п','Московский Поселение',NULL,NULL,'district','7701100000000','Y',46,1000),(1042,NULL,NULL,NULL,NULL,'Мосрентген','Мосрентген п','Мосрентген Поселение',NULL,NULL,'district','7701200000000','Y',46,1100),(1043,NULL,NULL,NULL,NULL,'Можайский','Можайский р-н','Можайский Район',NULL,NULL,'district','5001800000000','Y',47,1400),(1044,NULL,NULL,NULL,NULL,'Мытищинский','Мытищинский р-н','Мытищинский Район',NULL,NULL,'district','5001900000000','Y',47,1500),(1045,NULL,NULL,NULL,NULL,'Маловишерский','Маловишерский р-н','Маловишерский Район','174260',NULL,'district','5300900000000','Y',51,700),(1046,NULL,NULL,NULL,NULL,'Марёвский','Марёвский р-н','Марёвский Район',NULL,NULL,'district','5301000000000','Y',51,800),(1047,NULL,NULL,NULL,NULL,'Мошенской','Мошенской р-н','Мошенской Район',NULL,NULL,'district','5301100000000','Y',51,900),(1048,NULL,NULL,NULL,NULL,'Маслянинский','Маслянинский р-н','Маслянинский Район',NULL,NULL,'district','5401800000000','Y',52,1600),(1049,NULL,NULL,NULL,NULL,'Мошковский','Мошковский р-н','Мошковский Район',NULL,NULL,'district','5401900000000','Y',52,1700),(1050,NULL,NULL,NULL,NULL,'Марьяновский','Марьяновский р-н','Марьяновский Район',NULL,NULL,'district','5501300000000','Y',53,1100),(1051,NULL,NULL,NULL,NULL,'Москаленский','Москаленский р-н','Москаленский Район',NULL,NULL,'district','5501400000000','Y',53,1200),(1052,NULL,NULL,NULL,NULL,'Муромцевский','Муромцевский р-н','Муромцевский Район',NULL,NULL,'district','5501500000000','Y',53,1300),(1053,NULL,NULL,NULL,NULL,'Матвеевский','Матвеевский р-н','Матвеевский Район','461880',NULL,'district','5603400000000','Y',54,1600),(1054,NULL,NULL,NULL,NULL,'Малоархангельский','Малоархангельский р-н','Малоархангельский Район',NULL,NULL,'district','5701400000000','Y',55,1200),(1055,NULL,NULL,NULL,NULL,'Мценский','Мценский р-н','Мценский Район',NULL,NULL,'district','5701500000000','Y',55,1300),(1056,NULL,NULL,NULL,NULL,'Малосердобинский','Малосердобинский р-н','Малосердобинский Район',NULL,NULL,'district','5801800000000','Y',56,1400),(1057,NULL,NULL,NULL,NULL,'Мокшанский','Мокшанский р-н','Мокшанский Район',NULL,NULL,'district','5801900000000','Y',56,1500),(1058,NULL,NULL,NULL,NULL,'Михайловский','Михайловский р-н','Михайловский Район',NULL,NULL,'district','2501000000000','Y',58,700),(1059,NULL,NULL,NULL,NULL,'Мартыновский','Мартыновский р-н','Мартыновский Район',NULL,NULL,'district','6102100000000','Y',60,1900),(1060,NULL,NULL,NULL,NULL,'Матвеево-Курганский','Матвеево-Курганский р-н','Матвеево-Курганский Район',NULL,NULL,'district','6102200000000','Y',60,2000),(1061,NULL,NULL,NULL,NULL,'Миллеровский','Миллеровский р-н','Миллеровский Район',NULL,NULL,'district','6102300000000','Y',60,2100),(1062,NULL,NULL,NULL,NULL,'Милютинский','Милютинский р-н','Милютинский Район',NULL,NULL,'district','6102400000000','Y',60,2200),(1063,NULL,NULL,NULL,NULL,'Морозовский','Морозовский р-н','Морозовский Район',NULL,NULL,'district','6102500000000','Y',60,2300),(1064,NULL,NULL,NULL,NULL,'Мясниковский','Мясниковский р-н','Мясниковский Район',NULL,NULL,'district','6102600000000','Y',60,2400),(1065,NULL,NULL,NULL,NULL,'Милославский','Милославский р-н','Милославский Район',NULL,NULL,'district','6200800000000','Y',61,700),(1066,NULL,NULL,NULL,NULL,'Михайловский','Михайловский р-н','Михайловский Район',NULL,NULL,'district','6200900000000','Y',61,800),(1067,NULL,NULL,NULL,NULL,'Мариинско-Посадский','Мариинско-Посадский р-н','Мариинско-Посадский Район',NULL,NULL,'district','2101200000000','Y',62,1000),(1068,NULL,NULL,NULL,NULL,'Моргаушский','Моргаушский р-н','Моргаушский Район',NULL,NULL,'district','2101300000000','Y',62,1100),(1069,NULL,NULL,NULL,NULL,'Марксовский','Марксовский р-н','Марксовский Район',NULL,NULL,'district','6402100000000','Y',65,1900),(1070,NULL,NULL,NULL,NULL,'Мегино-Кангаласский','Мегино-Кангаласский у','Мегино-Кангаласский Улус','678080',NULL,'district','1401600000000','Y',66,1400),(1071,NULL,NULL,NULL,NULL,'Мирнинский','Мирнинский у','Мирнинский Улус','678170',NULL,'district','1401700000000','Y',66,1500),(1072,NULL,NULL,NULL,NULL,'Момский','Момский у','Момский Улус','678860',NULL,'district','1401800000000','Y',66,1600),(1073,NULL,NULL,NULL,NULL,'Макаровский','Макаровский р-н','Макаровский Район','694140',NULL,'district','6500600000000','Y',67,500),(1074,NULL,NULL,NULL,NULL,'Монастырщинский','Монастырщинский р-н','Монастырщинский Район','216130',NULL,'district','6701300000000','Y',70,1100),(1075,NULL,NULL,NULL,NULL,'Минераловодский','Минераловодский р-н','Минераловодский Район',NULL,NULL,'district','2601700000000','Y',71,1500),(1076,NULL,NULL,NULL,NULL,'Мичуринский','Мичуринский р-н','Мичуринский Район','393760',NULL,'district','6800800000000','Y',72,600),(1077,NULL,NULL,NULL,NULL,'Мордовский','Мордовский р-н','Мордовский Район','393600',NULL,'district','6800900000000','Y',72,700),(1078,NULL,NULL,NULL,NULL,'Моршанский','Моршанский р-н','Моршанский Район','393950',NULL,'district','6801000000000','Y',72,800),(1079,NULL,NULL,NULL,NULL,'Мучкапский','Мучкапский р-н','Мучкапский Район','393000',NULL,'district','6801200000000','Y',72,900),(1080,NULL,NULL,NULL,NULL,'Мамадышский','Мамадышский р-н','Мамадышский Район',NULL,NULL,'district','1602700000000','Y',73,2500),(1081,NULL,NULL,NULL,NULL,'Менделеевский','Менделеевский р-н','Менделеевский Район','423650',NULL,'district','1602800000000','Y',73,2600),(1082,NULL,NULL,NULL,NULL,'Мензелинский','Мензелинский р-н','Мензелинский Район',NULL,NULL,'district','1602900000000','Y',73,2700),(1083,NULL,NULL,NULL,NULL,'Муслюмовский','Муслюмовский р-н','Муслюмовский Район','423970',NULL,'district','1603000000000','Y',73,2800),(1084,NULL,NULL,NULL,NULL,'Максатихинский','Максатихинский р-н','Максатихинский Район',NULL,NULL,'district','6902000000000','Y',74,1900),(1085,NULL,NULL,NULL,NULL,'Молоковский','Молоковский р-н','Молоковский Район',NULL,NULL,'district','6902100000000','Y',74,2000),(1086,NULL,NULL,NULL,NULL,'Молчановский','Молчановский р-н','Молчановский Район',NULL,NULL,'district','7001100000000','Y',75,900),(1087,NULL,NULL,NULL,NULL,'Монгун-Тайгинский','Монгун-Тайгинский р-н','Монгун-Тайгинский Район',NULL,NULL,'district','1700700000000','Y',77,500),(1088,NULL,NULL,NULL,NULL,'Малопургинский','Малопургинский р-н','Малопургинский Район',NULL,NULL,'district','1801700000000','Y',79,1500),(1089,NULL,NULL,NULL,NULL,'Можгинский','Можгинский р-н','Можгинский Район',NULL,NULL,'district','1801800000000','Y',79,1600),(1090,NULL,NULL,NULL,NULL,'Майнский','Майнский р-н','Майнский Район','433130',NULL,'district','7300800000000','Y',80,600),(1091,NULL,NULL,NULL,NULL,'Мелекесский','Мелекесский р-н','Мелекесский Район','433501',NULL,'district','7300900000000','Y',80,700),(1092,NULL,NULL,NULL,NULL,'Мышкинский','Мышкинский р-н','Мышкинский Район',NULL,NULL,'district','7600800000000','Y',87,600);
/*!40000 ALTER TABLE `kladr_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_db_target`
--

DROP TABLE IF EXISTS `log_db_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_db_target` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `log_time` int(11) DEFAULT NULL,
  `prefix` text,
  `message` text,
  PRIMARY KEY (`id`),
  KEY `idx_log_level` (`level`),
  KEY `idx_log_category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_db_target`
--

LOCK TABLES `log_db_target` WRITE;
/*!40000 ALTER TABLE `log_db_target` DISABLE KEYS */;
INSERT INTO `log_db_target` VALUES (1,2,'yii\\log\\Dispatcher::dispatch',1456746585,'[80.243.13.242][1][IBN4np8N4Y0aH-4q8aVSYH6cXic]','Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) \'yii\\base\\InvalidConfigException\' with message \'Unable to append to log file: /var/www/sites/shop.ru/frontend/runtime/logs/app.log\' \n\nin /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),(2,2,'yii\\log\\Dispatcher::dispatch',1456746595,'[80.243.13.242][1][IBN4np8N4Y0aH-4q8aVSYH6cXic]','Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) \'yii\\base\\InvalidConfigException\' with message \'Unable to append to log file: /var/www/sites/shop.ru/frontend/runtime/logs/app.log\' \n\nin /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),(3,1,'ErrorException:1',1456747398,'[80.243.13.242][1][IBN4np8N4Y0aH-4q8aVSYH6cXic]','ErrorException: This is not a filter thumbnail: uploads/all/1c/63/6b/1c636b586ceb1034cb9fa8d783e3f0c6.jpg in /var/www/sites/shop.ru/vendor/skeeks/cms/controllers/ImagingController.php:67\nStack trace:\n#0 [internal function]: skeeks\\cms\\controllers\\ImagingController->actionProcess()\n#1 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#2 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#3 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Module.php(454): yii\\base\\Controller->runAction(\'process\', Array)\n#4 /var/www/sites/shop.ru/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'cms/imaging/pro...\', Array)\n#5 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#6 /var/www/sites/shop.ru/vendor/skeeks/cms/app-web.php(15): yii\\base\\Application->run()\n#7 /var/www/sites/shop.ru/frontend/web/index.php(45): include(\'/var/www/sites/...\')\n#8 {main}'),(4,1,'ErrorException:1',1456747422,'[80.243.13.242][1][IBN4np8N4Y0aH-4q8aVSYH6cXic]','ErrorException: This is not a filter thumbnail: uploads/all/1c/63/6b/1c636b586ceb1034cb9fa8d783e3f0c6.jpg in /var/www/sites/shop.ru/vendor/skeeks/cms/controllers/ImagingController.php:67\nStack trace:\n#0 [internal function]: skeeks\\cms\\controllers\\ImagingController->actionProcess()\n#1 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#2 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#3 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Module.php(454): yii\\base\\Controller->runAction(\'process\', Array)\n#4 /var/www/sites/shop.ru/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'cms/imaging/pro...\', Array)\n#5 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#6 /var/www/sites/shop.ru/vendor/skeeks/cms/app-web.php(15): yii\\base\\Application->run()\n#7 /var/www/sites/shop.ru/frontend/web/index.php(45): include(\'/var/www/sites/...\')\n#8 {main}'),(5,1,'ErrorException:1',1456747425,'[80.243.13.242][1][IBN4np8N4Y0aH-4q8aVSYH6cXic]','ErrorException: This is not a filter thumbnail: uploads/all/1c/63/6b/1c636b586ceb1034cb9fa8d783e3f0c6.jpg in /var/www/sites/shop.ru/vendor/skeeks/cms/controllers/ImagingController.php:67\nStack trace:\n#0 [internal function]: skeeks\\cms\\controllers\\ImagingController->actionProcess()\n#1 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#2 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#3 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Module.php(454): yii\\base\\Controller->runAction(\'process\', Array)\n#4 /var/www/sites/shop.ru/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'cms/imaging/pro...\', Array)\n#5 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#6 /var/www/sites/shop.ru/vendor/skeeks/cms/app-web.php(15): yii\\base\\Application->run()\n#7 /var/www/sites/shop.ru/frontend/web/index.php(45): include(\'/var/www/sites/...\')\n#8 {main}'),(6,2,'yii\\log\\Dispatcher::dispatch',1456748687,'[80.243.13.242][1][IBN4np8N4Y0aH-4q8aVSYH6cXic]','Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) \'yii\\base\\InvalidConfigException\' with message \'Unable to append to log file: /var/www/sites/shop.ru/frontend/runtime/logs/app.log\' \n\nin /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),(7,2,'yii\\log\\Dispatcher::dispatch',1456748690,'[80.243.13.242][1][IBN4np8N4Y0aH-4q8aVSYH6cXic]','Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) \'yii\\base\\InvalidConfigException\' with message \'Unable to append to log file: /var/www/sites/shop.ru/frontend/runtime/logs/app.log\' \n\nin /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),(8,1,'yii\\i18n\\PhpMessageSource::loadMessages',1456849095,'[-][-][-]','The message file for category \'app\' does not exist: /var/www/sites/shop.ru/console/messages/ru/app.php'),(9,1,'yii\\i18n\\PhpMessageSource::loadMessages',1456849120,'[-][-][-]','The message file for category \'app\' does not exist: /var/www/sites/shop.ru/console/messages/ru/app.php'),(10,1,'yii\\i18n\\PhpMessageSource::loadMessages',1456849124,'[-][-][-]','The message file for category \'app\' does not exist: /var/www/sites/shop.ru/console/messages/ru/app.php'),(11,1,'yii\\i18n\\PhpMessageSource::loadMessages',1456849151,'[-][-][-]','The message file for category \'app\' does not exist: /var/www/sites/shop.ru/console/messages/ru/app.php'),(12,1,'yii\\i18n\\PhpMessageSource::loadMessages',1456849291,'[-][-][-]','The message file for category \'app\' does not exist: /var/www/sites/shop.ru/console/messages/ru/app.php'),(13,2,'yii\\log\\Dispatcher::dispatch',1456849317,'[80.243.13.242][1][SrjZzrOLkU2fV6eKRzU4lOCTfCe]','Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) \'yii\\base\\InvalidConfigException\' with message \'Unable to append to log file: /var/www/sites/shop.ru/frontend/runtime/logs/app.log\' \n\nin /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/sites/shop.ru/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),(14,1,'yii\\web\\HttpException:404',1456849331,'[80.243.13.242][1][SrjZzrOLkU2fV6eKRzU4lOCTfCe]','yii\\base\\InvalidRouteException: Unable to resolve the request \"cms/elfinder-full/sounds/rm.wav\". in /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Module.php:460\nStack trace:\n#0 /var/www/sites/shop.ru/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'cms/elfinder-fu...\', Array)\n#1 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/shop.ru/vendor/skeeks/cms/app-web.php(15): yii\\base\\Application->run()\n#3 /var/www/sites/shop.ru/frontend/web/index.php(45): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/shop.ru/vendor/yiisoft/yii2/web/Application.php:96\nStack trace:\n#0 /var/www/sites/shop.ru/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/shop.ru/vendor/skeeks/cms/app-web.php(15): yii\\base\\Application->run()\n#2 /var/www/sites/shop.ru/frontend/web/index.php(45): include(\'/var/www/sites/...\')\n#3 {main}');
/*!40000 ALTER TABLE `log_db_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure`
--

DROP TABLE IF EXISTS `measure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `code` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `symbol_rus` varchar(20) DEFAULT NULL,
  `symbol_intl` varchar(20) DEFAULT NULL,
  `symbol_letter_intl` varchar(20) DEFAULT NULL,
  `def` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`(255)),
  KEY `symbol_rus` (`symbol_rus`),
  KEY `symbol_intl` (`symbol_intl`),
  KEY `symbol_letter_intl` (`symbol_letter_intl`),
  KEY `def` (`def`),
  CONSTRAINT `measure_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `measure_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Единицы измерения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure`
--

LOCK TABLES `measure` WRITE;
/*!40000 ALTER TABLE `measure` DISABLE KEYS */;
INSERT INTO `measure` VALUES (1,NULL,NULL,NULL,NULL,6,NULL,NULL,'m','MTR','N'),(2,NULL,NULL,NULL,NULL,112,NULL,NULL,'l','LTR','N'),(3,NULL,NULL,NULL,NULL,163,NULL,NULL,'g','GRM','N'),(4,NULL,NULL,NULL,NULL,166,NULL,NULL,'kg','KGM','N'),(5,NULL,NULL,NULL,NULL,796,NULL,NULL,'pc. 1','PCE. NMB','Y'),(6,NULL,NULL,NULL,NULL,3,NULL,NULL,'mm','MMT','N');
/*!40000 ALTER TABLE `measure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(255) NOT NULL DEFAULT '',
  `translation` text,
  PRIMARY KEY (`id`,`language`),
  CONSTRAINT `fk_source_message_message` FOREIGN KEY (`id`) REFERENCES `source_message` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (62,'en',NULL),(62,'ru',NULL),(63,'en',NULL),(63,'ru',NULL),(64,'en',NULL),(64,'ru',NULL),(65,'en',NULL),(65,'ru',NULL),(66,'en',NULL),(66,'ru',NULL),(67,'en',NULL),(67,'ru',NULL),(68,'en',NULL),(68,'ru',NULL),(69,'en',NULL),(69,'ru',NULL),(70,'en',NULL),(70,'ru',NULL),(127,'en',NULL),(127,'ru',NULL),(128,'en',NULL),(128,'ru',NULL),(129,'en',NULL),(129,'ru',NULL),(130,'en',NULL),(130,'ru',NULL),(131,'en',NULL),(131,'ru',NULL),(132,'en',NULL),(132,'ru',NULL),(133,'en',NULL),(133,'ru',NULL),(135,'en',NULL),(135,'ru',NULL),(136,'en',NULL),(136,'ru',NULL),(155,'en',NULL),(155,'ru',NULL),(174,'en',NULL),(174,'ru',NULL),(175,'en',NULL),(175,'ru',NULL),(176,'en',NULL),(176,'ru',NULL),(177,'en',NULL),(177,'ru',NULL),(178,'en',NULL),(178,'ru',NULL),(179,'en',NULL),(179,'ru',NULL),(180,'en',NULL),(180,'ru',NULL),(181,'en',NULL),(181,'ru',NULL),(182,'en',NULL),(182,'ru',NULL),(183,'en',NULL),(183,'ru',NULL),(184,'en',NULL),(184,'ru',NULL),(185,'en',NULL),(185,'ru',NULL),(186,'en',NULL),(186,'ru',NULL),(187,'en',NULL),(187,'ru',NULL),(188,'en',NULL),(188,'ru',NULL),(189,'en',NULL),(189,'ru',NULL),(190,'en',NULL),(190,'ru',NULL),(191,'en',NULL),(191,'ru',NULL),(192,'en',NULL),(192,'ru',NULL),(193,'en',NULL),(193,'ru',NULL),(194,'en',NULL),(194,'ru',NULL),(195,'en',NULL),(195,'ru',NULL),(196,'en',NULL),(196,'ru',NULL),(198,'en',NULL),(198,'ru',NULL),(203,'en',NULL),(203,'ru',NULL),(204,'en',NULL),(204,'ru',NULL),(208,'en',NULL),(208,'ru',NULL),(209,'en',NULL),(209,'ru',NULL),(210,'en',NULL),(210,'ru',NULL),(211,'en',NULL),(211,'ru',NULL),(212,'en',NULL),(212,'ru',NULL),(213,'en',NULL),(213,'ru',NULL),(214,'en',NULL),(214,'ru',NULL),(215,'en',NULL),(215,'ru',NULL),(216,'en',NULL),(216,'ru',NULL),(217,'en',NULL),(217,'ru',NULL),(218,'en',NULL),(218,'ru',NULL),(219,'en',NULL),(219,'ru',NULL),(220,'en',NULL),(220,'ru',NULL),(221,'en',NULL),(221,'ru',NULL),(222,'en',NULL),(222,'ru',NULL),(223,'en',NULL),(223,'ru',NULL),(309,'en',NULL),(309,'ru',NULL),(310,'en',NULL),(310,'ru',NULL),(311,'en',NULL),(311,'ru',NULL),(312,'en',NULL),(312,'ru',NULL),(313,'en',NULL),(313,'ru',NULL),(315,'en',NULL),(315,'ru',NULL),(316,'en',NULL),(316,'ru',NULL),(317,'en',NULL),(317,'ru',NULL),(318,'en',NULL),(318,'ru',NULL),(319,'en',NULL),(319,'ru',NULL),(334,'en',NULL),(334,'ru',NULL),(335,'en',NULL),(335,'ru',NULL),(336,'en',NULL),(336,'ru',NULL);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1439036753),('m140506_102106_rbac_init',1439036754),('m140801_201442_create_user_table',1439036756),('m140814_223103_create_user_authclient_table',1439036758),('m140902_110812_create_storage_file_table',1439036764),('m141019_100557_create_publication_table',1439036767),('m141019_162718_create_comment_table',1439036771),('m141019_162721_subscribe_create_table',1439036773),('m141019_162726_create_vote_table',1439036776),('m141104_100557_create_cms_tree_table',1439036784),('m141106_100557_create_user_group_table',1439036788),('m141109_100557_create_cms_infoblock_table',1439036791),('m141111_100557_alter_tables_tree_and_publication',1439036794),('m141116_100557_create_teable_static_block',1439036796),('m141117_100557_create_teable_site',1439036798),('m141205_100557_alter_table_published_behavior',1439036802),('m141231_100557_create_teable_cms_tree_menu',1439036805),('m141231_100559_alter_table_tree',1439036808),('m150116_100559_alter_table_publications',1439036811),('m150120_100558_create_table__money_currency',1442576175),('m150121_193200_create_table__cms_user_email',1439036814),('m150121_273200_create_table__cms_user_phone',1439036815),('m150121_273203_alter_table__cms_user',1439036819),('m150121_273205_alter_table__cms_user__add_emails',1439036823),('m150122_273205_alter_table__cms_user__emails_adn_phones',1439036823),('m150316_273205_alter_table__cms_user__emails_adn_phones_1',1439036828),('m150324_273205_alter_table__cms_infoblock',1439036830),('m150324_273210_alter_table__cms_infoblock_2',1439036830),('m150327_273210_create_table__cms_settings',1439036832),('m150403_100558_alter_table__money_currency',1442576175),('m150403_110558_alter_table__money_currency',1442576175),('m150512_103210_create_table__cms_content_type',1439036834),('m150512_103220_create_table__cms_content',1439036839),('m150512_103230_create_table__cms_content_element',1439036846),('m150512_113230_create_table__cms_content_property',1439036851),('m150512_123230_create_table__cms_content_property_enum',1439036854),('m150512_153230_create_table__cms_content_element_property',1439036859),('m150516_103230_create_table__cms_content_element_tree',1439036862),('m150519_103210_drop_tables_social',1439036862),('m150519_113210_cms_alter_clear_social_data',1439036878),('m150519_123210_cms_alter_drop_publications_and_page_options',1439036880),('m150520_103210_cms_alter_user_data',1439036886),('m150520_133210_cms_alter_storage_files',1439036897),('m150520_143210_cms_alter_cms_tree',1439036903),('m150520_153210_cms_alter_meta_data',1439036909),('m150520_153305_cms_alter_table__cms_lang',1439036912),('m150520_153310_cms_alter_table__cms_site',1439036916),('m150520_163310_insert_cms_site_and_lang',1439036916),('m150520_173310_create_table__cms_site_domain',1439036919),('m150520_183310_alter_table__cms_tree',1439036922),('m150521_183310_alter_table__cms_tree',1439036924),('m150521_183315_alter_table__cms_tree',1439036926),('m150521_193315_alter_table__cms_settings',1439036926),('m150522_193315_drop_table__cms_infoblock',1439036926),('m150523_103220_create_table__cms_tree_type',1439036929),('m150523_103520_create_table__cms_tree_type_property',1439036935),('m150523_103525_create_table__cms_tree_type_property_enum',1439036940),('m150523_104025_create_table__cms_tree_property',1439036944),('m150523_114025_alter_table__cms_tree',1439036948),('m150528_114025_alter_table__cms_component_settings',1439036953),('m150528_114030_alter_table__cms_component_settings',1439036953),('m150601_110558_alter_table__money_currency',1442576176),('m150604_114030_alter_table__cms_user',1439036957),('m150607_114030_alter_table__cms_tree_and_cms_content_element',1439036961),('m150608_114030_alter_table__cms_site_code_length',1439036965),('m150608_154030_alter_table__cms_user_emails_and_phones',1439036966),('m150615_162718_create_table__form2_form',1439036985),('m150615_162740_create_table__form2_form_send',1439036992),('m150615_172718_create_table__form2_form_property',1439036998),('m150615_182718_create_table__form2_form_property_enum',1439037001),('m150615_192740_create_table__form2_form_send_property',1439037006),('m150622_114030_alter_table__cms_user',1439036967),('m150702_114030_alter_table__cms_user',1439036969),('m150703_162718_create_table__reviews2_message',1439037016),('m150707_114030_alter_table__big_text',1439036981),('m150715_103220_create_table__cms_agent',1439036982),('m150715_162718_create_table__log_db_target',1445336147),('m150730_103220_create_table__cms_session',1439036983),('m150730_213220_create_table__cms_event',1439036984),('m150806_213220_alter_table__cms_tree_type_property',1439297629),('m150807_213220_alter_table__cms_content_property',1439297631),('m150825_213220_delete_table__cms_user_group',1442571274),('m150826_113220_create_table__cms_user_universal_property',1442571278),('m150826_123220_create_table__cms_user_universal_property_enum',1442571280),('m150826_133220_create_table__cms_user_property',1442571283),('m150827_133220_create_table__cms_search_phrase',1442571286),('m150828_100558_create_table__shop_fuser',1443619241),('m150828_110559_create_table__shop_order_status',1443619243),('m150828_120559_create_table__shop_typ_price',1443619246),('m150828_130601_create_table__shop_person_type',1443619248),('m150831_130601_create_table__shop_person_type_site',1443619248),('m150831_140601_create_table__shop_pay_system',1443619250),('m150831_150601_create_table__shop_pay_system_person_type',1443619251),('m150901_150601_create_table__shop_vat',1443619254),('m150901_160601_create_table__shop_tax',1443619256),('m150901_170601_create_table__shop_tax_rate',1443619261),('m150901_180601_create_table__shop_extra',1443619262),('m150902_110558_alter_table__money_currency',1442576199),('m150910_170601_create_table__kladr_location',1442576201),('m150911_170601_create_table__measure',1442576204),('m150914_180601_create_table__shop_product',1443619275),('m150914_190601_create_table__shop_product_price',1443619279),('m150915_100601_create_table__shop_content',1443619281),('m150915_110601_create_table__shop_user_account',1443619285),('m150915_110701_create_table__shop_affiliate_plan',1443619290),('m150915_110801_create_table__shop_affiliate',1443619298),('m150915_110901_create_table__shop_affiliate_tier',1443619302),('m150915_111201_create_table__shop_store',1443619308),('m150922_213220_alter_table__cms_user',1442994277),('m150922_223220_update_data__cms_user',1442994277),('m150922_233220_alter_table__cms_tree',1442994281),('m150922_234220_update_data__cms_tree',1442994281),('m150922_235220_alter_table__cms_content_element',1442994285),('m150922_235320_update_data__cms_content_element',1442994285),('m150922_235520_alter_table__drop_files_column',1442994286),('m150923_133220_create_table__cms_tree_image',1443000986),('m150923_143220_create_table__cms_tree_file',1443000991),('m150923_153220_create_table__cms_content_element_image',1443005746),('m150923_163220_create_table__cms_content_element_file',1443005749),('m150923_173220_update_data__images_and_files',1443007161),('m150923_183220_alter_table__tree__content_element',1443026371),('m150924_183220_alter_table__cms_user',1443098410),('m150924_193220_alter_table__cms_user_email',1443099057),('m150925_113220_create_table__shop_person_type_property',1443619316),('m150925_133220_create_table__shop_person_type_property_enum',1443619319),('m150925_180601_create_table__shop_buyer',1443619322),('m150925_190601_create_table__shop_buyer_property',1443619327),('m150926_120601_create_table__shop_order',1443619342),('m150926_131201_create_table__shop_basket',1443619352),('m150927_100558_alter_table__shop_fuser',1443619357),('m150927_141201_create_table__shop_delivery',1443619368),('m150927_151201_create_table__shop_delivery2pay_system',1443619371),('m150928_161201_create_table__shop_viewed_product',1443803811),('m151001_100558_alter_table__shop_order',1444291284),('m151001_161201_create_table__shop_order_change',1444314006),('m151001_181201_create_table__shop_user_transact',1444314011),('m151001_191201_create_table__shop_discount',1444462575),('m151001_201201_create_table__shop_discount2type_price',1444505384),('m151012_100558_alter_table__shop_pay_system',1444653608),('m151023_113220_alter_table__cms_site',1445503740),('m151023_153220_alter_table__cms_content',1445537291),('m151023_163220_alter_table__cms_content',1445596717),('m151023_173220_alter_table__cms_tree_type',1445596720),('m151028_100558_alter_table__shop_delivery',1446146921),('m151028_110558_alter_table__shop_fuser',1446146923),('m151030_173220_alter_table__cms_tree',1446220164),('m151030_183220_alter_table__cms_tree',1446220165),('m151030_193220_alter_table__cms_tree',1446220167),('m151106_110601_create_table__shop_product_price_change',1446819710),('m151110_193220_alter_table__cms_content',1447172174),('m151113_113220_alter_table__cms_site_and_lang',1449054327),('m151215_193220_alter_table__cms_content',1454242403),('m151221_093837_addI18nTables',1454242404),('m160209_161201_create_table__shop_basket_props',1455223343),('m160215_093837__create_table__cms_dashboard',1455901155),('m160216_093837__create_table__cms_dashboard_widget',1455901159),('m160221_193220__alter_table__cms_tree',1456309593),('m160222_193220__alter_table__cms_content',1456309599),('m160222_203220__alter_table__cms_content',1456309604);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_currency`
--

DROP TABLE IF EXISTS `money_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_full` varchar(255) DEFAULT NULL,
  `course` decimal(10,6) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `active` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `course` (`course`),
  KEY `name_full` (`name_full`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COMMENT='Валюты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_currency`
--

LOCK TABLES `money_currency` WRITE;
/*!40000 ALTER TABLE `money_currency` DISABLE KEYS */;
INSERT INTO `money_currency` VALUES (1,'AED','UAE Dirham','UAE Dirham',NULL,0,'N'),(2,'AFN','Afghani','Afghani',NULL,0,'N'),(3,'ALL','Lek','Lek',NULL,0,'N'),(4,'AMD','Armenian Dram','Armenian Dram',0.136030,0,'N'),(5,'ANG','Netherlands Antillean Guilder','Netherlands Antillean Guilder',NULL,0,'N'),(6,'AOA','Kwanza','Kwanza',NULL,0,'N'),(7,'ARS','Argentine Peso','Argentine Peso',NULL,0,'N'),(8,'AUD','Australian Dollar','Australian Dollar',46.825600,0,'N'),(9,'AWG','Aruban Florin','Aruban Florin',NULL,0,'N'),(10,'AZN','Azerbaijanian Manat','Azerbaijanian Manat',62.386500,0,'N'),(11,'BAM','Convertible Mark','Convertible Mark',NULL,0,'N'),(12,'BBD','Barbados Dollar','Barbados Dollar',NULL,0,'N'),(13,'BDT','Taka','Taka',NULL,0,'N'),(14,'BGN','Bulgarian Lev','Bulgarian Lev',37.862700,0,'N'),(15,'BHD','Bahraini Dinar','Bahraini Dinar',NULL,0,'N'),(16,'BIF','Burundi Franc','Burundi Franc',NULL,0,'N'),(17,'BMD','Bermudian Dollar','Bermudian Dollar',NULL,0,'N'),(18,'BND','Brunei Dollar','Brunei Dollar',NULL,0,'N'),(19,'BOB','Boliviano','Boliviano',NULL,0,'N'),(20,'BOV','Mvdol','Mvdol',NULL,0,'N'),(21,'BRL','Brazilian Real','Brazilian Real',17.070300,0,'N'),(22,'BSD','Bahamian Dollar','Bahamian Dollar',NULL,0,'N'),(23,'BTN','Ngultrum','Ngultrum',NULL,0,'N'),(24,'BWP','Pula','Pula',NULL,0,'N'),(25,'BYR','Belarussian Ruble','Belarussian Ruble',0.003702,0,'N'),(26,'BZD','Belize Dollar','Belize Dollar',NULL,0,'N'),(27,'CAD','Canadian Dollar','Canadian Dollar',49.535700,0,'N'),(28,'CDF','Congolese Franc','Congolese Franc',NULL,0,'N'),(29,'CHE','WIR Euro','WIR Euro',NULL,0,'N'),(30,'CHF','Swiss Franc','Swiss Franc',67.557900,0,'N'),(31,'CHW','WIR Franc','WIR Franc',NULL,0,'N'),(32,'CLF','Unidades de fomento','Unidades de fomento',NULL,0,'N'),(33,'CLP','Chilean Peso','Chilean Peso',NULL,0,'N'),(34,'CNY','Yuan Renminbi','Yuan Renminbi',10.267700,0,'N'),(35,'COP','Colombian Peso','Colombian Peso',NULL,0,'N'),(36,'COU','Unidad de Valor Real','Unidad de Valor Real',NULL,0,'N'),(37,'CRC','Costa Rican Colon','Costa Rican Colon',NULL,0,'N'),(38,'CUC','Peso Convertible','Peso Convertible',NULL,0,'N'),(39,'CUP','Cuban Peso','Cuban Peso',NULL,0,'N'),(40,'CVE','Cape Verde Escudo','Cape Verde Escudo',NULL,0,'N'),(41,'CZK','Czech Koruna','Czech Koruna',2.735050,0,'N'),(42,'DJF','Djibouti Franc','Djibouti Franc',NULL,0,'N'),(43,'DKK','Danish Krone','Danish Krone',9.927750,0,'N'),(44,'DOP','Dominican Peso','Dominican Peso',NULL,0,'N'),(45,'DZD','Algerian Dinar','Algerian Dinar',NULL,0,'N'),(46,'EGP','Egyptian Pound','Egyptian Pound',NULL,0,'N'),(47,'ERN','Nakfa','Nakfa',NULL,0,'N'),(48,'ETB','Ethiopian Birr','Ethiopian Birr',NULL,0,'N'),(49,'EUR','Euro','Euro',73.937800,0,'N'),(50,'FJD','Fiji Dollar','Fiji Dollar',NULL,0,'N'),(51,'FKP','Falkland Islands Pound','Falkland Islands Pound',NULL,0,'N'),(52,'GBP','Pound Sterling','Pound Sterling',101.416100,0,'Y'),(53,'GEL','Lari','Lari',NULL,0,'N'),(54,'GHS','Ghana Cedi','Ghana Cedi',NULL,0,'N'),(55,'GIP','Gibraltar Pound','Gibraltar Pound',NULL,0,'N'),(56,'GMD','Dalasi','Dalasi',NULL,0,'N'),(57,'GNF','Guinea Franc','Guinea Franc',NULL,0,'N'),(58,'GTQ','Quetzal','Quetzal',NULL,0,'N'),(59,'GYD','Guyana Dollar','Guyana Dollar',NULL,0,'N'),(60,'HKD','Hong Kong Dollar','Hong Kong Dollar',NULL,0,'N'),(61,'HNL','Lempira','Lempira',NULL,0,'N'),(62,'HRK','Croatian Kuna','Croatian Kuna',NULL,0,'N'),(63,'HTG','Gourde','Gourde',NULL,0,'N'),(64,'HUF','Forint','Forint',0.237134,0,'N'),(65,'IDR','Rupiah','Rupiah',NULL,0,'N'),(66,'ILS','New Israeli Sheqel','New Israeli Sheqel',NULL,0,'N'),(67,'INR','Indian Rupee','Indian Rupee',0.985857,0,'N'),(68,'IQD','Iraqi Dinar','Iraqi Dinar',NULL,0,'N'),(69,'IRR','Iranian Rial','Iranian Rial',NULL,0,'N'),(70,'ISK','Iceland Krona','Iceland Krona',NULL,0,'N'),(71,'JMD','Jamaican Dollar','Jamaican Dollar',NULL,0,'N'),(72,'JOD','Jordanian Dinar','Jordanian Dinar',NULL,0,'N'),(73,'JPY','Yen','Yen',0.540698,0,'N'),(74,'KES','Kenyan Shilling','Kenyan Shilling',NULL,0,'N'),(75,'KGS','Som','Som',0.981858,0,'N'),(76,'KHR','Riel','Riel',NULL,0,'N'),(77,'KMF','Comoro Franc','Comoro Franc',NULL,0,'N'),(78,'KPW','North Korean Won','North Korean Won',NULL,0,'N'),(79,'KRW','Won','Won',0.055994,0,'N'),(80,'KWD','Kuwaiti Dinar','Kuwaiti Dinar',NULL,0,'N'),(81,'KYD','Cayman Islands Dollar','Cayman Islands Dollar',NULL,0,'N'),(82,'KZT','Tenge','Tenge',0.241993,0,'N'),(83,'LAK','Kip','Kip',NULL,0,'N'),(84,'LBP','Lebanese Pound','Lebanese Pound',NULL,0,'N'),(85,'LKR','Sri Lanka Rupee','Sri Lanka Rupee',NULL,0,'N'),(86,'LRD','Liberian Dollar','Liberian Dollar',NULL,0,'N'),(87,'LSL','Loti','Loti',NULL,0,'N'),(88,'LTL','Lithuanian Litas','Lithuanian Litas',NULL,0,'N'),(89,'LVL','Latvian Lats','Latvian Lats',NULL,0,'N'),(90,'LYD','Libyan Dinar','Libyan Dinar',NULL,0,'N'),(91,'MAD','Moroccan Dirham','Moroccan Dirham',NULL,0,'N'),(92,'MDL','Moldovan Leu','Moldovan Leu',3.309480,0,'N'),(93,'MGA','Malagasy Ariary','Malagasy Ariary',NULL,0,'N'),(94,'MKD','Denar','Denar',NULL,0,'N'),(95,'MMK','Kyat','Kyat',NULL,0,'N'),(96,'MNT','Tugrik','Tugrik',NULL,0,'N'),(97,'MOP','Pataca','Pataca',NULL,0,'N'),(98,'MRO','Ouguiya','Ouguiya',NULL,0,'N'),(99,'MUR','Mauritius Rupee','Mauritius Rupee',NULL,0,'N'),(100,'MVR','Rufiyaa','Rufiyaa',NULL,0,'N'),(101,'MWK','Kwacha','Kwacha',NULL,0,'N'),(102,'MXN','Mexican Peso','Mexican Peso',NULL,0,'N'),(103,'MXV','Mexican Unidad de Inversion (UDI)','Mexican Unidad de Inversion (UDI)',NULL,0,'N'),(104,'MYR','Malaysian Ringgit','Malaysian Ringgit',NULL,0,'N'),(105,'MZN','Mozambique Metical','Mozambique Metical',NULL,0,'N'),(106,'NAD','Namibia Dollar','Namibia Dollar',NULL,0,'N'),(107,'NGN','Naira','Naira',NULL,0,'N'),(108,'NIO','Cordoba Oro','Cordoba Oro',NULL,0,'N'),(109,'NOK','Norwegian Krone','Norwegian Krone',8.056390,0,'N'),(110,'NPR','Nepalese Rupee','Nepalese Rupee',NULL,0,'N'),(111,'NZD','New Zealand Dollar','New Zealand Dollar',NULL,0,'N'),(112,'OMR','Rial Omani','Rial Omani',NULL,0,'N'),(113,'PAB','Balboa','Balboa',NULL,0,'N'),(114,'PEN','Nuevo Sol','Nuevo Sol',NULL,0,'N'),(115,'PGK','Kina','Kina',NULL,0,'N'),(116,'PHP','Philippine Peso','Philippine Peso',NULL,0,'N'),(117,'PKR','Pakistan Rupee','Pakistan Rupee',NULL,0,'N'),(118,'PLN','Zloty','Zloty',17.617400,0,'N'),(119,'PYG','Guarani','Guarani',NULL,0,'N'),(120,'QAR','Qatari Rial','Qatari Rial',NULL,0,'N'),(121,'RON','New Romanian Leu','New Romanian Leu',16.749700,0,'N'),(122,'RSD','Serbian Dinar','Serbian Dinar',NULL,0,'N'),(123,'RUB','Russian Ruble','Russian Ruble',1.000000,0,'Y'),(124,'RWF','Rwanda Franc','Rwanda Franc',NULL,0,'N'),(125,'SAR','Saudi Riyal','Saudi Riyal',NULL,0,'N'),(126,'SBD','Solomon Islands Dollar','Solomon Islands Dollar',NULL,0,'N'),(127,'SCR','Seychelles Rupee','Seychelles Rupee',NULL,0,'N'),(128,'SDG','Sudanese Pound','Sudanese Pound',NULL,0,'N'),(129,'SEK','Swedish Krona','Swedish Krona',7.925590,0,'N'),(130,'SGD','Singapore Dollar','Singapore Dollar',46.720700,0,'N'),(131,'SHP','Saint Helena Pound','Saint Helena Pound',NULL,0,'N'),(132,'SLL','Leone','Leone',NULL,0,'N'),(133,'SOS','Somali Shilling','Somali Shilling',NULL,0,'N'),(134,'SRD','Surinam Dollar','Surinam Dollar',NULL,0,'N'),(135,'SSP','South Sudanese Pound','South Sudanese Pound',NULL,0,'N'),(136,'STD','Dobra','Dobra',NULL,0,'N'),(137,'SVC','El Salvador Colon','El Salvador Colon',NULL,0,'N'),(138,'SYP','Syrian Pound','Syrian Pound',NULL,0,'N'),(139,'SZL','Lilangeni','Lilangeni',NULL,0,'N'),(140,'THB','Baht','Baht',NULL,0,'N'),(141,'TJS','Somoni','Somoni',10.282700,0,'N'),(142,'TMT','Turkmenistan New Manat','Turkmenistan New Manat',18.674900,0,'N'),(143,'TND','Tunisian Dinar','Tunisian Dinar',NULL,0,'N'),(144,'TOP','Pa’anga','Pa’anga',NULL,0,'N'),(145,'TRY','Turkish Lira','Turkish Lira',21.675400,0,'N'),(146,'TTD','Trinidad and Tobago Dollar','Trinidad and Tobago Dollar',NULL,0,'N'),(147,'TWD','New Taiwan Dollar','New Taiwan Dollar',NULL,0,'N'),(148,'TZS','Tanzanian Shilling','Tanzanian Shilling',NULL,0,'N'),(149,'UAH','Hryvnia','Hryvnia',3.012090,0,'N'),(150,'UGX','Uganda Shilling','Uganda Shilling',NULL,0,'N'),(151,'USD','US Dollar','US Dollar',65.362300,0,'N'),(152,'USN','US Dollar (Next day)','US Dollar (Next day)',NULL,0,'N'),(153,'USS','US Dollar (Same day)','US Dollar (Same day)',NULL,0,'N'),(154,'UYI','Uruguay Peso en Unidades Indexadas (URUIURUI)','Uruguay Peso en Unidades Indexadas (URUIURUI)',NULL,0,'N'),(155,'UYU','Peso Uruguayo','Peso Uruguayo',NULL,0,'N'),(156,'UZS','Uzbekistan Sum','Uzbekistan Sum',0.025043,0,'N'),(157,'VEF','Bolivar','Bolivar',NULL,0,'N'),(158,'VND','Dong','Dong',NULL,0,'N'),(159,'VUV','Vatu','Vatu',NULL,0,'N'),(160,'WST','Tala','Tala',NULL,0,'N'),(161,'XAF','CFA Franc BEAC','CFA Franc BEAC',NULL,0,'N'),(162,'XAG','Silver','Silver',NULL,0,'N'),(163,'XAU','Gold','Gold',NULL,0,'N'),(164,'XBA','Bond Markets Unit European Composite Unit (EURCO)','Bond Markets Unit European Composite Unit (EURCO)',NULL,0,'N'),(165,'XBB','Bond Markets Unit European Monetary Unit (E.M.U.-6)','Bond Markets Unit European Monetary Unit (E.M.U.-6)',NULL,0,'N'),(166,'XBC','Bond Markets Unit European Unit of Account 9 (E.U.A.-9)','Bond Markets Unit European Unit of Account 9 (E.U.A.-9)',NULL,0,'N'),(167,'XBD','Bond Markets Unit European Unit of Account 17 (E.U.A.-17)','Bond Markets Unit European Unit of Account 17 (E.U.A.-17)',NULL,0,'N'),(168,'XCD','East Caribbean Dollar','East Caribbean Dollar',NULL,0,'N'),(169,'XDR','SDR (Special Drawing Right)','SDR (Special Drawing Right)',91.924200,0,'N'),(170,'XFU','UIC-Franc','UIC-Franc',NULL,0,'N'),(171,'XOF','CFA Franc BCEAO','CFA Franc BCEAO',NULL,0,'N'),(172,'XPD','Palladium','Palladium',NULL,0,'N'),(173,'XPF','CFP Franc','CFP Franc',NULL,0,'N'),(174,'XPT','Platinum','Platinum',NULL,0,'N'),(175,'XSU','Sucre','Sucre',NULL,0,'N'),(176,'XTS','Codes specifically reserved for testing purposes','Codes specifically reserved for testing purposes',NULL,0,'N'),(177,'XUA','ADB Unit of Account','ADB Unit of Account',NULL,0,'N'),(178,'XXX','The codes assigned for transactions where no currency is involved','The codes assigned for transactions where no currency is involved',NULL,0,'N'),(179,'YER','Yemeni Rial','Yemeni Rial',NULL,0,'N'),(180,'ZAR','Rand','Rand',4.897890,0,'N'),(181,'ZMW','Zambian Kwacha','Zambian Kwacha',NULL,0,'N'),(182,'ZWL','Zimbabwe Dollar','Zimbabwe Dollar',NULL,0,'N');
/*!40000 ALTER TABLE `money_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews2_message`
--

DROP TABLE IF EXISTS `reviews2_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews2_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `processed_by` int(11) DEFAULT NULL,
  `processed_at` int(11) DEFAULT NULL,
  `element_id` int(11) NOT NULL,
  `content_id` int(11) DEFAULT NULL,
  `dignity` text,
  `disadvantages` text,
  `comments` text,
  `rating` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `ip` varchar(32) DEFAULT NULL,
  `page_url` text,
  `data_server` text,
  `data_session` text,
  `data_cookie` text,
  `data_request` text,
  `site_code` char(15) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `published_at` (`published_at`),
  KEY `processed_at` (`processed_at`),
  KEY `processed_by` (`processed_by`),
  KEY `status` (`status`),
  KEY `rating` (`rating`),
  KEY `element_id` (`element_id`),
  KEY `content_id` (`content_id`),
  KEY `ip` (`ip`),
  KEY `site_code` (`site_code`),
  KEY `user_name` (`user_name`),
  KEY `user_phone` (`user_phone`),
  KEY `user_email` (`user_email`),
  KEY `user_city` (`user_city`),
  CONSTRAINT `reviews2_message_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews2_message_processed_by` FOREIGN KEY (`processed_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_site_code_fk` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Отзывы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews2_message`
--

LOCK TABLES `reviews2_message` WRITE;
/*!40000 ALTER TABLE `reviews2_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews2_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_affiliate`
--

DROP TABLE IF EXISTS `shop_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_affiliate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `site_code` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `plan_id` int(11) NOT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `paid_sum` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `approved_sum` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `pending_sum` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `items_number` int(11) NOT NULL DEFAULT '0',
  `items_sum` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `last_calculate_at` int(11) DEFAULT NULL,
  `aff_site` varchar(255) DEFAULT NULL,
  `aff_description` text,
  `fix_plan` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id__site_code` (`user_id`,`site_code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `affiliate_id` (`affiliate_id`),
  KEY `site_code` (`site_code`),
  KEY `active` (`active`),
  KEY `paid_sum` (`paid_sum`),
  KEY `approved_sum` (`approved_sum`),
  KEY `items_number` (`items_number`),
  KEY `items_sum` (`items_sum`),
  KEY `last_calculate_at` (`last_calculate_at`),
  KEY `aff_site` (`aff_site`),
  KEY `fix_plan` (`fix_plan`),
  KEY `user_id` (`user_id`),
  KEY `plan_id` (`plan_id`),
  CONSTRAINT `shop_affiliate_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate__affiliate_id` FOREIGN KEY (`affiliate_id`) REFERENCES `shop_affiliate` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate__plan_id` FOREIGN KEY (`plan_id`) REFERENCES `shop_affiliate_plan` (`id`),
  CONSTRAINT `shop_affiliate__site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON UPDATE CASCADE,
  CONSTRAINT `shop_affiliate__user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Аффилиаты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_affiliate`
--

LOCK TABLES `shop_affiliate` WRITE;
/*!40000 ALTER TABLE `shop_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_affiliate_plan`
--

DROP TABLE IF EXISTS `shop_affiliate_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_affiliate_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `site_code` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `base_rate` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `base_rate_type` varchar(1) NOT NULL DEFAULT 'P',
  `base_rate_currency_code` varchar(3) DEFAULT NULL,
  `min_pay` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `min_plan_value` decimal(18,4) DEFAULT NULL,
  `value_currency_code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `base_rate` (`base_rate`),
  KEY `base_rate_type` (`base_rate_type`),
  KEY `min_pay` (`min_pay`),
  KEY `min_plan_value` (`min_plan_value`),
  KEY `site_code` (`site_code`),
  KEY `base_rate_currency_code` (`base_rate_currency_code`),
  KEY `value_currency_code` (`value_currency_code`),
  CONSTRAINT `shop_affiliate_plan_base_rate_currency_code` FOREIGN KEY (`base_rate_currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_affiliate_plan_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate_plan_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate_plan_value_currency_code` FOREIGN KEY (`value_currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_affiliate_plan__site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Планы для аффилиатов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_affiliate_plan`
--

LOCK TABLES `shop_affiliate_plan` WRITE;
/*!40000 ALTER TABLE `shop_affiliate_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_affiliate_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_affiliate_tier`
--

DROP TABLE IF EXISTS `shop_affiliate_tier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_affiliate_tier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `site_code` varchar(15) NOT NULL,
  `rate1` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `rate2` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `rate3` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `rate4` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `rate5` decimal(18,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_code` (`site_code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `rate1` (`rate1`),
  KEY `rate2` (`rate2`),
  KEY `rate3` (`rate3`),
  KEY `rate4` (`rate4`),
  KEY `rate5` (`rate5`),
  CONSTRAINT `shop_affiliate_tier_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate_tier_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate_tier__site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Пирамиды аффилиатов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_affiliate_tier`
--

LOCK TABLES `shop_affiliate_tier` WRITE;
/*!40000 ALTER TABLE `shop_affiliate_tier` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_affiliate_tier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_basket`
--

DROP TABLE IF EXISTS `shop_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `fuser_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_price_id` int(11) DEFAULT NULL,
  `price` decimal(18,2) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `weight` decimal(18,2) DEFAULT NULL,
  `quantity` decimal(18,2) NOT NULL DEFAULT '0.00',
  `site_id` int(11) DEFAULT NULL,
  `delay` varchar(1) NOT NULL DEFAULT 'N',
  `name` varchar(255) NOT NULL,
  `can_buy` varchar(1) NOT NULL DEFAULT 'Y',
  `callback_func` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `order_callback_func` varchar(255) DEFAULT NULL,
  `detail_page_url` varchar(255) DEFAULT NULL,
  `discount_price` decimal(18,2) NOT NULL DEFAULT '0.00',
  `cancel_callback_func` varchar(255) DEFAULT NULL,
  `pay_callback_func` varchar(255) DEFAULT NULL,
  `catalog_xml_id` varchar(100) DEFAULT NULL,
  `product_xml_id` varchar(100) DEFAULT NULL,
  `discount_name` varchar(255) DEFAULT NULL,
  `discount_value` varchar(32) DEFAULT NULL,
  `discount_coupon` varchar(32) DEFAULT NULL,
  `vat_rate` decimal(18,2) NOT NULL DEFAULT '0.00',
  `subscribe` varchar(1) NOT NULL DEFAULT 'N',
  `barcode_multi` varchar(1) NOT NULL DEFAULT 'N',
  `reserved` varchar(1) NOT NULL DEFAULT 'N',
  `reserve_quantity` double DEFAULT NULL,
  `deducted` varchar(1) NOT NULL DEFAULT 'N',
  `custom_price` varchar(1) NOT NULL DEFAULT 'N',
  `dimensions` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `set_parent_id` int(11) DEFAULT NULL,
  `measure_name` varchar(50) DEFAULT NULL,
  `measure_code` int(11) DEFAULT NULL,
  `recommendation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `site_id` (`site_id`),
  KEY `fuser_id` (`fuser_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `product_price_id` (`product_price_id`),
  KEY `currency_code` (`currency_code`),
  KEY `price` (`price`),
  KEY `delay` (`delay`),
  KEY `name` (`name`),
  KEY `measure_name` (`measure_name`),
  KEY `set_parent_id` (`set_parent_id`),
  KEY `measure_code` (`measure_code`),
  KEY `catalog_product_xml_id` (`catalog_xml_id`,`product_xml_id`),
  CONSTRAINT `shop_basket_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_basket_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_basket__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_basket__fuser_id` FOREIGN KEY (`fuser_id`) REFERENCES `shop_fuser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_basket__order_id` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_basket__product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_basket__product_price_id` FOREIGN KEY (`product_price_id`) REFERENCES `shop_product_price` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_basket__site_id` FOREIGN KEY (`site_id`) REFERENCES `cms_site` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=utf8 COMMENT='Позиции в корзине';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_basket`
--

LOCK TABLES `shop_basket` WRITE;
/*!40000 ALTER TABLE `shop_basket` DISABLE KEYS */;
INSERT INTO `shop_basket` VALUES (609,NULL,NULL,1456798849,1456798849,37812,NULL,310,376,800000.00,'RUB',0.00,1.00,1,'N','Мотоцикл 1','Y',NULL,'Основная цена',NULL,'/katalog/moto/310-mototsikl-1',0.00,NULL,NULL,NULL,NULL,'','',NULL,0.00,'N','N','N',NULL,'N','N','{\"height\":0,\"width\":0,\"length\":0}',NULL,NULL,'шт',796,NULL);
/*!40000 ALTER TABLE `shop_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_basket_props`
--

DROP TABLE IF EXISTS `shop_basket_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_basket_props` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_basket_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_basket_id` (`shop_basket_id`),
  KEY `name` (`name`),
  KEY `value` (`value`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  CONSTRAINT `shop_basket_props__shop_basket_id` FOREIGN KEY (`shop_basket_id`) REFERENCES `shop_basket` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_basket_props_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_basket_props_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Своуйства заказов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_basket_props`
--

LOCK TABLES `shop_basket_props` WRITE;
/*!40000 ALTER TABLE `shop_basket_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_basket_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_buyer`
--

DROP TABLE IF EXISTS `shop_buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_buyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `cms_user_id` int(11) NOT NULL,
  `shop_person_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `cms_user_id` (`cms_user_id`),
  KEY `shop_person_type_id` (`shop_person_type_id`),
  KEY `name` (`name`),
  CONSTRAINT `shop_buyer_cms__shop_person_type_id` FOREIGN KEY (`shop_person_type_id`) REFERENCES `shop_person_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_buyer_cms__user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_buyer_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_buyer_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Покупатели';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_buyer`
--

LOCK TABLES `shop_buyer` WRITE;
/*!40000 ALTER TABLE `shop_buyer` DISABLE KEYS */;
INSERT INTO `shop_buyer` VALUES (1,1,1,1443622975,1450263555,'Александр',1,1);
/*!40000 ALTER TABLE `shop_buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_buyer_property`
--

DROP TABLE IF EXISTS `shop_buyer_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_buyer_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value` (`value`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  CONSTRAINT `shop_buyer_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `shop_buyer_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `shop_buyer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_buyer_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `shop_person_type_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_buyer_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='Связь свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_buyer_property`
--

LOCK TABLES `shop_buyer_property` WRITE;
/*!40000 ALTER TABLE `shop_buyer_property` DISABLE KEYS */;
INSERT INTO `shop_buyer_property` VALUES (1,1,1,1443622975,1450263555,2,1,'Александр',0,0.0000,NULL),(2,1,1,1443622975,1450263555,1,1,'semenov@skeeks.com',0,0.0000,NULL),(3,1,1,1443622975,1450263555,3,1,'Калуга',0,0.0000,NULL),(16,1,1,1445556994,1450263555,4,1,'+79035251424',2147483647,79035251424.0000,NULL);
/*!40000 ALTER TABLE `shop_buyer_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_content`
--

DROP TABLE IF EXISTS `shop_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `content_id` int(11) NOT NULL,
  `yandex_export` varchar(1) NOT NULL DEFAULT 'N',
  `subscription` varchar(1) NOT NULL DEFAULT 'N',
  `vat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_id` (`content_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `yandex_export` (`yandex_export`),
  KEY `subscription` (`subscription`),
  KEY `shop_content_shop_vat` (`vat_id`),
  CONSTRAINT `shop_content_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_content_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_content_shop_vat` FOREIGN KEY (`vat_id`) REFERENCES `shop_vat` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_content_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Связь контента с магазином';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_content`
--

LOCK TABLES `shop_content` WRITE;
/*!40000 ALTER TABLE `shop_content` DISABLE KEYS */;
INSERT INTO `shop_content` VALUES (1,1,1,1443619464,1443619464,2,'Y','N',NULL),(2,1,1,1445101265,1445101265,8,'Y','N',NULL);
/*!40000 ALTER TABLE `shop_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_delivery`
--

DROP TABLE IF EXISTS `shop_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `period_from` int(11) DEFAULT NULL,
  `period_to` int(11) DEFAULT NULL,
  `period_type` varchar(1) DEFAULT NULL,
  `weight_from` int(11) DEFAULT NULL,
  `weight_to` int(11) DEFAULT NULL,
  `order_price_from` decimal(18,2) DEFAULT NULL,
  `order_price_to` decimal(18,2) DEFAULT NULL,
  `order_currency_code` varchar(3) DEFAULT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `price` decimal(18,2) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `description` text,
  `logo_id` int(11) DEFAULT NULL,
  `store` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `site_id` (`site_id`),
  KEY `period_from` (`period_from`),
  KEY `period_to` (`period_to`),
  KEY `period_type` (`period_type`),
  KEY `weight_from` (`weight_from`),
  KEY `weight_to` (`weight_to`),
  KEY `order_price_from` (`order_price_from`),
  KEY `order_price_to` (`order_price_to`),
  KEY `order_currency_code` (`order_currency_code`),
  KEY `active` (`active`),
  KEY `price` (`price`),
  KEY `currency_code` (`currency_code`),
  KEY `priority` (`priority`),
  KEY `logo_id` (`logo_id`),
  CONSTRAINT `shop_delivery_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_delivery__logo_id` FOREIGN KEY (`logo_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery__order_currency_code` FOREIGN KEY (`order_currency_code`) REFERENCES `money_currency` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery__site_id` FOREIGN KEY (`site_id`) REFERENCES `cms_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Службы доставки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_delivery`
--

LOCK TABLES `shop_delivery` WRITE;
/*!40000 ALTER TABLE `shop_delivery` DISABLE KEYS */;
INSERT INTO `shop_delivery` VALUES (4,NULL,NULL,1445005255,1445009620,'Самовывоз',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0.00,'RUB',1,'',NULL,'');
/*!40000 ALTER TABLE `shop_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_delivery2pay_system`
--

DROP TABLE IF EXISTS `shop_delivery2pay_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_delivery2pay_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `pay_system_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_delivery2pay_system` (`pay_system_id`,`delivery_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_delivery2pay_system__shop_delivery` (`delivery_id`),
  CONSTRAINT `shop_delivery2pay_system_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery2pay_system_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery2pay_system__shop_delivery` FOREIGN KEY (`delivery_id`) REFERENCES `shop_delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_delivery2pay_system__shop_pay_system` FOREIGN KEY (`pay_system_id`) REFERENCES `shop_pay_system` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Службы доставки с платежными системами';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_delivery2pay_system`
--

LOCK TABLES `shop_delivery2pay_system` WRITE;
/*!40000 ALTER TABLE `shop_delivery2pay_system` DISABLE KEYS */;
INSERT INTO `shop_delivery2pay_system` VALUES (4,NULL,NULL,NULL,NULL,1,4);
/*!40000 ALTER TABLE `shop_delivery2pay_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_discount`
--

DROP TABLE IF EXISTS `shop_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `active_from` int(11) DEFAULT NULL,
  `active_to` int(11) DEFAULT NULL,
  `renewal` varchar(1) NOT NULL DEFAULT 'N',
  `name` varchar(255) DEFAULT NULL,
  `max_uses` int(11) NOT NULL DEFAULT '0',
  `count_uses` int(11) NOT NULL DEFAULT '0',
  `coupon` varchar(20) DEFAULT NULL,
  `max_discount` decimal(18,4) DEFAULT NULL,
  `value_type` varchar(1) NOT NULL DEFAULT 'P',
  `value` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `currency_code` varchar(3) NOT NULL,
  `min_order_sum` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `notes` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `xml_id` varchar(255) DEFAULT NULL,
  `count_period` varchar(1) NOT NULL DEFAULT 'U',
  `count_size` int(11) NOT NULL DEFAULT '0',
  `count_type` varchar(1) NOT NULL DEFAULT 'Y',
  `count_from` int(11) DEFAULT NULL,
  `count_to` int(11) DEFAULT NULL,
  `action_size` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '1',
  `last_discount` varchar(1) NOT NULL DEFAULT 'Y',
  `conditions` text,
  `unpack` text,
  `version` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `site_id` (`site_id`),
  KEY `active` (`active`),
  KEY `active_from` (`active_from`),
  KEY `active_to` (`active_to`),
  KEY `renewal` (`renewal`),
  KEY `name` (`name`),
  KEY `max_uses` (`max_uses`),
  KEY `count_uses` (`count_uses`),
  KEY `coupon` (`coupon`),
  KEY `priority` (`priority`),
  KEY `max_discount` (`max_discount`),
  KEY `value_type` (`value_type`),
  KEY `value` (`value`),
  KEY `currency_code` (`currency_code`),
  KEY `min_order_sum` (`min_order_sum`),
  KEY `type` (`type`),
  KEY `count_period` (`count_period`),
  KEY `count_size` (`count_size`),
  KEY `count_type` (`count_type`),
  KEY `count_from` (`count_from`),
  KEY `count_to` (`count_to`),
  KEY `action_size` (`action_size`),
  KEY `action_type` (`action_type`),
  KEY `last_discount` (`last_discount`),
  KEY `version` (`version`),
  CONSTRAINT `shop_discount_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_discount_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_discount__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Скидки на товары';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_discount`
--

LOCK TABLES `shop_discount` WRITE;
/*!40000 ALTER TABLE `shop_discount` DISABLE KEYS */;
INSERT INTO `shop_discount` VALUES (1,1,1,1444472755,1444474212,NULL,'Y',NULL,NULL,'N','Суперадминистратор',0,0,NULL,NULL,'P',10.0000,'RUB',0.0000,'',0,NULL,'U',0,'Y',NULL,NULL,0,'Y',10,'Y',NULL,NULL,1);
/*!40000 ALTER TABLE `shop_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_discount2type_price`
--

DROP TABLE IF EXISTS `shop_discount2type_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_discount2type_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `discount_id` int(11) NOT NULL,
  `type_price_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `discount_id__type_price_id` (`discount_id`,`type_price_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_discount2type_price__type_price_id` (`type_price_id`),
  CONSTRAINT `shop_discount2type_price_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_discount2type_price_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_discount2type_price__discount_id` FOREIGN KEY (`discount_id`) REFERENCES `shop_discount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_discount2type_price__type_price_id` FOREIGN KEY (`type_price_id`) REFERENCES `shop_type_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь скидок с типами цен';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_discount2type_price`
--

LOCK TABLES `shop_discount2type_price` WRITE;
/*!40000 ALTER TABLE `shop_discount2type_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_discount2type_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_extra`
--

DROP TABLE IF EXISTS `shop_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_extra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `value` decimal(18,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `value` (`value`),
  CONSTRAINT `shop_extra_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_extra_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Наценки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_extra`
--

LOCK TABLES `shop_extra` WRITE;
/*!40000 ALTER TABLE `shop_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_fuser`
--

DROP TABLE IF EXISTS `shop_fuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_fuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `additional` text,
  `person_type_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `pay_system_id` int(11) DEFAULT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_fuser__pay_system_id` (`pay_system_id`),
  KEY `shop_fuser__person_type_id` (`person_type_id`),
  KEY `shop_fuser__site_id` (`site_id`),
  KEY `shop_fuser__shop_buyer` (`buyer_id`),
  KEY `shop_fuser__delivery_id` (`delivery_id`),
  CONSTRAINT `shop_fuser_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_fuser_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_fuser_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_fuser__delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `shop_delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_fuser__pay_system_id` FOREIGN KEY (`pay_system_id`) REFERENCES `shop_pay_system` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_fuser__person_type_id` FOREIGN KEY (`person_type_id`) REFERENCES `shop_person_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_fuser__shop_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `shop_buyer` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_fuser__site_id` FOREIGN KEY (`site_id`) REFERENCES `cms_site` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=37814 DEFAULT CHARSET=utf8 COMMENT='Пользователи для корзины';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_fuser`
--

LOCK TABLES `shop_fuser` WRITE;
/*!40000 ALTER TABLE `shop_fuser` DISABLE KEYS */;
INSERT INTO `shop_fuser` VALUES (37808,1,1,1456746484,1456746484,1,NULL,NULL,NULL,NULL,NULL,NULL),(37809,NULL,NULL,1456761035,1456761035,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37810,NULL,NULL,1456769280,1456769280,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37811,NULL,NULL,1456773922,1456773922,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37812,NULL,NULL,1456798821,1456798890,NULL,NULL,1,1,NULL,NULL,NULL),(37813,NULL,NULL,1456837987,1456837987,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `shop_fuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order`
--

DROP TABLE IF EXISTS `shop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `person_type_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `payed` varchar(1) NOT NULL DEFAULT 'N',
  `payed_at` int(11) DEFAULT NULL,
  `emp_payed_id` int(11) DEFAULT NULL,
  `canceled` varchar(1) NOT NULL DEFAULT 'N',
  `canceled_at` int(11) DEFAULT NULL,
  `emp_canceled_id` int(11) DEFAULT NULL,
  `reason_canceled` varchar(255) DEFAULT NULL,
  `status_code` varchar(1) NOT NULL DEFAULT 'N',
  `status_at` int(11) NOT NULL,
  `emp_status_id` int(11) DEFAULT NULL,
  `price_delivery` decimal(18,2) NOT NULL DEFAULT '0.00',
  `allow_delivery` varchar(1) NOT NULL DEFAULT 'N',
  `allow_delivery_at` int(11) DEFAULT NULL,
  `emp_allow_delivery_id` int(11) DEFAULT NULL,
  `price` decimal(18,2) NOT NULL DEFAULT '0.00',
  `currency_code` varchar(3) NOT NULL,
  `discount_value` decimal(18,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) NOT NULL,
  `pay_system_id` int(11) DEFAULT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `user_description` varchar(255) DEFAULT NULL,
  `additional_info` varchar(255) DEFAULT NULL,
  `ps_status` varchar(1) DEFAULT NULL,
  `ps_status_code` varchar(5) DEFAULT NULL,
  `ps_status_description` varchar(255) DEFAULT NULL,
  `ps_status_message` varchar(255) DEFAULT NULL,
  `ps_sum` decimal(18,2) DEFAULT NULL,
  `ps_currency_code` varchar(3) DEFAULT NULL,
  `ps_response_at` int(11) DEFAULT NULL,
  `comments` text,
  `tax_value` decimal(18,2) NOT NULL DEFAULT '0.00',
  `stat_gid` varchar(255) DEFAULT NULL,
  `sum_paid` decimal(18,2) NOT NULL DEFAULT '0.00',
  `recuring_id` int(11) DEFAULT NULL,
  `pay_voucher_num` varchar(20) DEFAULT NULL,
  `pay_voucher_at` int(11) DEFAULT NULL,
  `locked_by` int(11) DEFAULT NULL,
  `locked_at` int(11) DEFAULT NULL,
  `recount_flag` varchar(1) NOT NULL DEFAULT 'Y',
  `affiliate_id` int(11) DEFAULT NULL,
  `delivery_doc_num` varchar(20) DEFAULT NULL,
  `delivery_doc_at` int(11) DEFAULT NULL,
  `update_1c` varchar(1) NOT NULL DEFAULT 'N',
  `deducted` varchar(1) NOT NULL DEFAULT 'N',
  `deducted_at` int(11) DEFAULT NULL,
  `emp_deducted_id` int(11) DEFAULT NULL,
  `reason_undo_deducted` varchar(255) DEFAULT NULL,
  `marked` varchar(1) NOT NULL DEFAULT 'N',
  `marked_at` int(11) DEFAULT NULL,
  `emp_marked_id` int(11) DEFAULT NULL,
  `reason_marked` varchar(255) DEFAULT NULL,
  `reserved` varchar(1) NOT NULL DEFAULT 'N',
  `store_id` int(11) DEFAULT NULL,
  `order_topic` varchar(255) DEFAULT NULL,
  `responsible_id` int(11) DEFAULT NULL,
  `pay_before_at` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `bill_at` int(11) DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `xml_id` varchar(255) DEFAULT NULL,
  `id_1c` varchar(15) DEFAULT NULL,
  `version_1c` varchar(15) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `external_order` varchar(1) NOT NULL DEFAULT 'N',
  `allow_payment` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `site_id` (`site_id`),
  KEY `person_type_id` (`person_type_id`),
  KEY `status_code` (`status_code`),
  KEY `currency_code` (`currency_code`),
  KEY `user_id` (`user_id`),
  KEY `pay_system_id` (`pay_system_id`),
  KEY `locked_by` (`locked_by`),
  KEY `affiliate_id` (`affiliate_id`),
  KEY `store_id` (`store_id`),
  KEY `delivery_id` (`delivery_id`),
  KEY `payed` (`payed`),
  KEY `payed_at` (`payed_at`),
  KEY `shop_order__buyer_id` (`buyer_id`),
  CONSTRAINT `shop_order_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order__affiliate_id` FOREIGN KEY (`affiliate_id`) REFERENCES `shop_affiliate` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order__buyer_id` FOREIGN KEY (`buyer_id`) REFERENCES `shop_buyer` (`id`),
  CONSTRAINT `shop_order__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_order__delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `shop_delivery` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order__locked_by` FOREIGN KEY (`locked_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `shop_order__pay_system_id` FOREIGN KEY (`pay_system_id`) REFERENCES `shop_pay_system` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order__person_type_id` FOREIGN KEY (`person_type_id`) REFERENCES `shop_person_type` (`id`),
  CONSTRAINT `shop_order__site_id` FOREIGN KEY (`site_id`) REFERENCES `cms_site` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order__status_code` FOREIGN KEY (`status_code`) REFERENCES `shop_order_status` (`code`) ON UPDATE CASCADE,
  CONSTRAINT `shop_order__store_id` FOREIGN KEY (`store_id`) REFERENCES `shop_store` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order__user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order`
--

LOCK TABLES `shop_order` WRITE;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_change`
--

DROP TABLE IF EXISTS `shop_order_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_order_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_order_id` (`shop_order_id`),
  KEY `type` (`type`),
  CONSTRAINT `shop_order_change_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order_change_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order_change__shop_order_id` FOREIGN KEY (`shop_order_id`) REFERENCES `shop_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='История по заказу';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_change`
--

LOCK TABLES `shop_order_change` WRITE;
/*!40000 ALTER TABLE `shop_order_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_status`
--

DROP TABLE IF EXISTS `shop_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `code` varchar(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `priority` int(11) NOT NULL DEFAULT '100',
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `priority` (`priority`),
  KEY `color` (`color`),
  CONSTRAINT `shop_order_status_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order_status_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Статусы заказов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_status`
--

LOCK TABLES `shop_order_status` WRITE;
/*!40000 ALTER TABLE `shop_order_status` DISABLE KEYS */;
INSERT INTO `shop_order_status` VALUES (1,NULL,NULL,NULL,NULL,'F','Выполнен','Заказ доставлен и оплачен',100,'green'),(2,NULL,1,NULL,1454613353,'N','Принят, ожидается оплата','Заказ принят, но пока не обрабатывается (например, заказ только что создан или ожидается оплата заказа)',200,'orange');
/*!40000 ALTER TABLE `shop_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_pay_system`
--

DROP TABLE IF EXISTS `shop_pay_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_pay_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `description` text,
  `component` varchar(255) DEFAULT NULL,
  `component_settings` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `active` (`active`),
  CONSTRAINT `shop_pay_system_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_pay_system_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Платежные системы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_pay_system`
--

LOCK TABLES `shop_pay_system` WRITE;
/*!40000 ALTER TABLE `shop_pay_system` DISABLE KEYS */;
INSERT INTO `shop_pay_system` VALUES (1,NULL,1,NULL,1444657348,'Наличный расчет',50,'Y','','','a:10:{s:4:\"code\";s:1:\"S\";s:4:\"name\";s:10:\"Текст\";s:12:\"fieldElement\";s:8:\"textarea\";s:4:\"rows\";s:2:\"50\";s:8:\"multiple\";s:1:\"N\";s:5:\"model\";N;s:8:\"property\";N;s:10:\"activeForm\";N;s:17:\"defaultAttributes\";a:0:{}s:9:\"namespace\";N;}'),(2,NULL,NULL,NULL,NULL,'Кредитная карта',60,'N',NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,'Оплата в платежной системе Web Money',70,'N',NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,'Оплата в платежной системе Яндекс.Деньги',80,'N',NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,'Сбербанк',90,'N',NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,'Счет',100,'N',NULL,NULL,NULL),(7,1,1,1444133170,1445116135,'Робокасса',100,'N','','skeeks\\cms\\shop\\paySystems\\RobocassaPaySystem','a:6:{s:7:\"baseUrl\";s:35:\"http://test.robokassa.ru/Index.aspx\";s:14:\"sMerchantLogin\";s:10:\"DigestShop\";s:14:\"sMerchantPass1\";s:11:\"Asdasdfsds4\";s:14:\"sMerchantPass2\";s:16:\"Asdasdfsds445asd\";s:17:\"defaultAttributes\";a:6:{s:7:\"baseUrl\";s:35:\"http://test.robokassa.ru/Index.aspx\";s:14:\"sMerchantLogin\";s:0:\"\";s:14:\"sMerchantPass1\";s:0:\"\";s:14:\"sMerchantPass2\";s:0:\"\";s:17:\"defaultAttributes\";a:0:{}s:9:\"namespace\";N;}s:9:\"namespace\";N;}'),(8,1,1,1446565412,1446565426,'Расчет  банковской картой',55,'Y','',NULL,''),(9,1,1,1446565437,1446565443,'безналичный расчет (по счету)',59,'Y','',NULL,'');
/*!40000 ALTER TABLE `shop_pay_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_pay_system_person_type`
--

DROP TABLE IF EXISTS `shop_pay_system_person_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_pay_system_person_type` (
  `pay_system_id` int(11) NOT NULL,
  `person_type_id` int(11) NOT NULL,
  UNIQUE KEY `pay_system_id__person_type_id` (`pay_system_id`,`person_type_id`),
  KEY `shop_pay_system_person_type_person_type_id` (`person_type_id`),
  CONSTRAINT `shop_pay_system_person_type_person_type_id` FOREIGN KEY (`person_type_id`) REFERENCES `shop_person_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_pay_system_person_type_shop_pay_system` FOREIGN KEY (`pay_system_id`) REFERENCES `shop_pay_system` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь платежных систем с плательщиками';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_pay_system_person_type`
--

LOCK TABLES `shop_pay_system_person_type` WRITE;
/*!40000 ALTER TABLE `shop_pay_system_person_type` DISABLE KEYS */;
INSERT INTO `shop_pay_system_person_type` VALUES (1,1),(7,1),(8,1),(9,1),(8,2),(9,2);
/*!40000 ALTER TABLE `shop_pay_system_person_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_person_type`
--

DROP TABLE IF EXISTS `shop_person_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_person_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `active` (`active`),
  CONSTRAINT `shop_person_type_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_person_type_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Типы плательщиков';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_person_type`
--

LOCK TABLES `shop_person_type` WRITE;
/*!40000 ALTER TABLE `shop_person_type` DISABLE KEYS */;
INSERT INTO `shop_person_type` VALUES (1,NULL,NULL,NULL,NULL,'Физическое лицо',100,'Y'),(2,NULL,1,NULL,1445548250,'Юридическое лицо',200,'N');
/*!40000 ALTER TABLE `shop_person_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_person_type_property`
--

DROP TABLE IF EXISTS `shop_person_type_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_person_type_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `list_type` char(1) NOT NULL DEFAULT 'L',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `multiple_cnt` int(11) DEFAULT NULL,
  `with_description` char(1) DEFAULT NULL,
  `searchable` char(1) NOT NULL DEFAULT 'N',
  `filtrable` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `component` varchar(255) DEFAULT NULL,
  `component_settings` text,
  `hint` varchar(255) DEFAULT NULL,
  `smart_filtrable` char(1) NOT NULL DEFAULT 'N',
  `shop_person_type_id` int(11) NOT NULL,
  `is_order_location_delivery` varchar(255) NOT NULL DEFAULT 'N',
  `is_order_location_tax` varchar(255) NOT NULL DEFAULT 'N',
  `is_order_postcode` varchar(255) NOT NULL DEFAULT 'N',
  `is_user_email` varchar(255) NOT NULL DEFAULT 'N',
  `is_user_phone` varchar(255) NOT NULL DEFAULT 'N',
  `is_user_username` varchar(255) NOT NULL DEFAULT 'N',
  `is_user_name` varchar(255) NOT NULL DEFAULT 'N',
  `is_buyer_name` varchar(255) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_person_type_id_2` (`shop_person_type_id`,`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `list_type` (`list_type`),
  KEY `multiple` (`multiple`),
  KEY `multiple_cnt` (`multiple_cnt`),
  KEY `with_description` (`with_description`),
  KEY `searchable` (`searchable`),
  KEY `filtrable` (`filtrable`),
  KEY `is_required` (`is_required`),
  KEY `version` (`version`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `smart_filtrable` (`smart_filtrable`),
  KEY `shop_person_type_id` (`shop_person_type_id`),
  KEY `is_order_location_delivery` (`is_order_location_delivery`),
  KEY `is_order_location_tax` (`is_order_location_tax`),
  KEY `is_order_postcode` (`is_order_postcode`),
  KEY `is_user_email` (`is_user_email`),
  KEY `is_user_phone` (`is_user_phone`),
  KEY `is_user_username` (`is_user_username`),
  KEY `is_user_name` (`is_user_name`),
  KEY `is_buyer_name` (`is_buyer_name`),
  CONSTRAINT `shop_person_type_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_person_type_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_person_type_property__shop_person_type_id` FOREIGN KEY (`shop_person_type_id`) REFERENCES `shop_person_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Свойства типов пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_person_type_property`
--

LOCK TABLES `shop_person_type_property` WRITE;
/*!40000 ALTER TABLE `shop_person_type_property` DISABLE KEYS */;
INSERT INTO `shop_person_type_property` VALUES (1,1,1,1443621164,1445556982,'Email','email','Y',3000,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',1,'N','N','N','Y','N','N','N','N'),(2,1,1,1443621752,1445556982,'Имя','name','Y',1000,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',1,'N','N','N','N','N','N','Y','Y'),(3,1,1,1443621812,1445556982,'Адрес','address','Y',4000,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',1,'N','N','N','N','N','N','N','N'),(4,1,1,1445556965,1445556982,'Телефон','phone','Y',2000,'S','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',1,'N','N','N','N','Y','N','N','N');
/*!40000 ALTER TABLE `shop_person_type_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_person_type_property_enum`
--

DROP TABLE IF EXISTS `shop_person_type_property_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_person_type_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `shop_person_type_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_person_type_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `shop_person_type_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_person_type_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств типа список';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_person_type_property_enum`
--

LOCK TABLES `shop_person_type_property_enum` WRITE;
/*!40000 ALTER TABLE `shop_person_type_property_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_person_type_property_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_person_type_site`
--

DROP TABLE IF EXISTS `shop_person_type_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_person_type_site` (
  `person_type_id` int(11) NOT NULL,
  `site_code` char(15) NOT NULL,
  UNIQUE KEY `site_code__person_type_id` (`person_type_id`,`site_code`),
  KEY `shop_person_type_site_site_code` (`site_code`),
  CONSTRAINT `shop_person_type_site_person_type_id` FOREIGN KEY (`person_type_id`) REFERENCES `shop_person_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_person_type_site_site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь плательщиков с сайтами';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_person_type_site`
--

LOCK TABLES `shop_person_type_site` WRITE;
/*!40000 ALTER TABLE `shop_person_type_site` DISABLE KEYS */;
INSERT INTO `shop_person_type_site` VALUES (1,'s1'),(2,'s1');
/*!40000 ALTER TABLE `shop_person_type_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `quantity_trace` varchar(1) NOT NULL DEFAULT 'N',
  `weight` double NOT NULL DEFAULT '0',
  `price_type` varchar(1) NOT NULL DEFAULT 'S',
  `recur_scheme_length` int(11) DEFAULT NULL,
  `recur_scheme_type` varchar(1) NOT NULL DEFAULT 'D',
  `trial_price_id` int(11) DEFAULT NULL,
  `without_order` varchar(1) NOT NULL DEFAULT 'N',
  `select_best_price` varchar(1) NOT NULL DEFAULT 'Y',
  `vat_id` int(11) DEFAULT NULL,
  `vat_included` varchar(1) NOT NULL DEFAULT 'Y',
  `tmp_id` varchar(40) DEFAULT NULL,
  `can_buy_zero` varchar(1) NOT NULL DEFAULT 'Y',
  `negative_amount_trace` varchar(1) NOT NULL DEFAULT 'D',
  `barcode_multi` varchar(1) NOT NULL DEFAULT 'N',
  `purchasing_price` decimal(18,2) DEFAULT NULL,
  `purchasing_currency` varchar(3) DEFAULT NULL,
  `quantity_reserved` double DEFAULT '0',
  `measure_id` int(11) DEFAULT NULL,
  `measure_ratio` double NOT NULL DEFAULT '1',
  `width` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `subscribe` varchar(1) NOT NULL DEFAULT 'D',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `quantity` (`quantity`),
  KEY `quantity_trace` (`quantity_trace`),
  KEY `weight` (`weight`),
  KEY `price_type` (`price_type`),
  KEY `recur_scheme_length` (`recur_scheme_length`),
  KEY `recur_scheme_type` (`recur_scheme_type`),
  KEY `select_best_price` (`select_best_price`),
  KEY `vat_included` (`vat_included`),
  KEY `tmp_id` (`tmp_id`),
  KEY `can_buy_zero` (`can_buy_zero`),
  KEY `negative_amount_trace` (`negative_amount_trace`),
  KEY `barcode_multi` (`barcode_multi`),
  KEY `purchasing_price` (`purchasing_price`),
  KEY `purchasing_currency` (`purchasing_currency`),
  KEY `quantity_reserved` (`quantity_reserved`),
  KEY `measure_id` (`measure_id`),
  KEY `width` (`width`),
  KEY `length` (`length`),
  KEY `height` (`height`),
  KEY `subscribe` (`subscribe`),
  KEY `measure_ratio` (`measure_ratio`),
  KEY `shop_product_shop_type_price` (`trial_price_id`),
  KEY `shop_product_shop_vat` (`vat_id`),
  CONSTRAINT `shop_product_cms_content_element` FOREIGN KEY (`id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_product_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_measure` FOREIGN KEY (`measure_id`) REFERENCES `measure` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_money_currency` FOREIGN KEY (`purchasing_currency`) REFERENCES `money_currency` (`code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `shop_product_shop_type_price` FOREIGN KEY (`trial_price_id`) REFERENCES `shop_type_price` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_shop_vat` FOREIGN KEY (`vat_id`) REFERENCES `shop_vat` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8 COMMENT='Товары';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` VALUES (30,NULL,NULL,1445345264,1445345264,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',0,5,1,0,0,0,'Y'),(31,NULL,NULL,1445696120,1445696120,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',0,5,1,0,0,0,'Y'),(32,NULL,NULL,1445696120,1445696120,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',0,5,1,0,0,0,'Y'),(33,NULL,NULL,1445696120,1445696120,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',0,5,1,0,0,0,'Y'),(34,NULL,NULL,1445696120,1445696120,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',0,5,1,0,0,0,'Y'),(35,NULL,NULL,1445696120,1445696120,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',0,5,1,0,0,0,'Y'),(36,NULL,NULL,1445696120,1445696120,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',0,5,1,0,0,0,'Y'),(37,NULL,NULL,1445696120,1445696120,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',0,5,1,0,0,0,'Y'),(38,NULL,NULL,1445696120,1445696120,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',0,5,1,0,0,0,'Y'),(49,NULL,NULL,1445696120,1445696120,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',0,5,1,0,0,0,'Y'),(50,NULL,NULL,1445696120,1445696120,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',0,5,1,0,0,0,'Y'),(310,1,1,1456747839,1456747861,NULL,'N',0,'S',NULL,'D',NULL,'N','Y',NULL,'Y',NULL,'N','N','N',0.00,'RUB',NULL,5,1,0,0,0,'Y');
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_price`
--

DROP TABLE IF EXISTS `shop_product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `type_price_id` int(11) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `quantity_from` int(11) DEFAULT NULL,
  `quantity_to` int(11) DEFAULT NULL,
  `tmp_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `price` (`price`),
  KEY `currency_code` (`currency_code`),
  KEY `quantity_from` (`quantity_from`),
  KEY `quantity_to` (`quantity_to`),
  KEY `tmp_id` (`tmp_id`),
  KEY `shop_product_price_product_id` (`product_id`),
  KEY `shop_product_price_shop_type_price` (`type_price_id`),
  CONSTRAINT `shop_product_currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_product_price_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_price_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_product_price_shop_type_price` FOREIGN KEY (`type_price_id`) REFERENCES `shop_type_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_product_price_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8 COMMENT='Цены товаров';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_price`
--

LOCK TABLES `shop_product_price` WRITE;
/*!40000 ALTER TABLE `shop_product_price` DISABLE KEYS */;
INSERT INTO `shop_product_price` VALUES (95,NULL,NULL,1445696120,1445696120,50,4,0.00,'RUB',NULL,NULL,NULL),(96,NULL,NULL,1445696120,1445696120,49,4,0.00,'RUB',NULL,NULL,NULL),(97,NULL,NULL,1445696120,1445696120,38,4,0.00,'RUB',NULL,NULL,NULL),(98,NULL,NULL,1445696120,1445696120,37,4,0.00,'RUB',NULL,NULL,NULL),(99,NULL,NULL,1445696120,1445696120,36,4,0.00,'RUB',NULL,NULL,NULL),(100,NULL,NULL,1445696120,1445696120,35,4,0.00,'RUB',NULL,NULL,NULL),(101,NULL,NULL,1445696120,1445696120,34,4,0.00,'RUB',NULL,NULL,NULL),(102,NULL,NULL,1445696120,1445696120,33,4,0.00,'RUB',NULL,NULL,NULL),(103,NULL,NULL,1445696120,1445696120,32,4,0.00,'RUB',NULL,NULL,NULL),(104,NULL,NULL,1445696120,1445696120,31,4,0.00,'RUB',NULL,NULL,NULL),(376,1,1,1456747839,1456747861,310,4,800000.00,'RUB',NULL,NULL,NULL),(377,1,1,1456747846,1456747860,310,5,0.00,'RUB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `shop_product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_price_change`
--

DROP TABLE IF EXISTS `shop_product_price_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_price_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_product_price_id` int(11) DEFAULT NULL,
  `price` decimal(18,2) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `quantity_from` int(11) DEFAULT NULL,
  `quantity_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `price` (`price`),
  KEY `currency_code` (`currency_code`),
  KEY `quantity_from` (`quantity_from`),
  KEY `quantity_to` (`quantity_to`),
  KEY `shop_product_price_id` (`shop_product_price_id`),
  CONSTRAINT `shop_product_price_change_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_price_change_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_price_change__shop_product_price_id` FOREIGN KEY (`shop_product_price_id`) REFERENCES `shop_product_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_product__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8 COMMENT='Изменение цены товара';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_price_change`
--

LOCK TABLES `shop_product_price_change` WRITE;
/*!40000 ALTER TABLE `shop_product_price_change` DISABLE KEYS */;
INSERT INTO `shop_product_price_change` VALUES (387,1,1,1456747839,1456747839,376,0.00,'RUB',NULL,NULL),(388,1,1,1456747846,1456747846,377,0.00,'RUB',NULL,NULL),(389,1,1,1456747860,1456747860,377,0.00,'RUB',NULL,NULL),(390,1,1,1456747861,1456747861,376,800000.00,'RUB',NULL,NULL);
/*!40000 ALTER TABLE `shop_product_price_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_store`
--

DROP TABLE IF EXISTS `shop_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `address` varchar(255) NOT NULL,
  `description` text,
  `gps_n` varchar(15) NOT NULL DEFAULT '0',
  `gps_s` varchar(15) NOT NULL DEFAULT '0',
  `image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `schedule` varchar(255) DEFAULT NULL,
  `xml_id` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `email` varchar(255) DEFAULT NULL,
  `issuing_center` varchar(1) NOT NULL DEFAULT 'Y',
  `shipping_center` varchar(1) NOT NULL DEFAULT 'Y',
  `site_code` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `address` (`address`),
  KEY `gps_n` (`gps_n`),
  KEY `gps_s` (`gps_s`),
  KEY `image_id` (`image_id`),
  KEY `location_id` (`location_id`),
  KEY `phone` (`phone`),
  KEY `schedule` (`schedule`),
  KEY `xml_id` (`xml_id`),
  KEY `priority` (`priority`),
  KEY `email` (`email`),
  KEY `issuing_center` (`issuing_center`),
  KEY `shipping_center` (`shipping_center`),
  KEY `site_code` (`site_code`),
  CONSTRAINT `shop_store_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_store_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_store__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_store__location_id` FOREIGN KEY (`location_id`) REFERENCES `kladr_location` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_store__site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Склады';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_store`
--

LOCK TABLES `shop_store` WRITE;
/*!40000 ALTER TABLE `shop_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_tax`
--

DROP TABLE IF EXISTS `shop_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `code` varchar(50) NOT NULL,
  `site_code` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `site_code` (`site_code`),
  CONSTRAINT `shop_tax_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_tax_site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_tax_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Налоги';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_tax`
--

LOCK TABLES `shop_tax` WRITE;
/*!40000 ALTER TABLE `shop_tax` DISABLE KEYS */;
INSERT INTO `shop_tax` VALUES (1,NULL,NULL,NULL,NULL,'НДС',NULL,'NDS','s1');
/*!40000 ALTER TABLE `shop_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_tax_rate`
--

DROP TABLE IF EXISTS `shop_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `tax_id` int(11) NOT NULL,
  `person_type_id` int(11) NOT NULL,
  `value` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `currency` varchar(3) DEFAULT NULL,
  `is_percent` varchar(1) NOT NULL DEFAULT 'Y',
  `is_in_price` varchar(1) NOT NULL DEFAULT 'N',
  `priority` int(1) NOT NULL DEFAULT '100',
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `tax_id` (`tax_id`),
  KEY `person_type_id` (`person_type_id`),
  KEY `value` (`value`),
  KEY `currency` (`currency`),
  KEY `is_percent` (`is_percent`),
  KEY `is_in_price` (`is_in_price`),
  KEY `priority` (`priority`),
  KEY `active` (`active`),
  CONSTRAINT `shop_tax_rate_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_tax_rate_person_type_id` FOREIGN KEY (`person_type_id`) REFERENCES `shop_person_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_tax_rate_tax_id` FOREIGN KEY (`tax_id`) REFERENCES `shop_tax` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_tax_rate_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ставки налогов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_tax_rate`
--

LOCK TABLES `shop_tax_rate` WRITE;
/*!40000 ALTER TABLE `shop_tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_type_price`
--

DROP TABLE IF EXISTS `shop_type_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_type_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `code` varchar(32) NOT NULL,
  `xml_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `priority` int(11) NOT NULL DEFAULT '100',
  `def` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `priority` (`priority`),
  KEY `def` (`def`),
  KEY `xml_id` (`xml_id`),
  CONSTRAINT `shop_type_price_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_type_price_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Типы цен';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_type_price`
--

LOCK TABLES `shop_type_price` WRITE;
/*!40000 ALTER TABLE `shop_type_price` DISABLE KEYS */;
INSERT INTO `shop_type_price` VALUES (4,1,1,1445345660,1445345660,'BASE',NULL,'Основная цена','',100,'Y'),(5,1,1,1449327626,1449327626,'DISCOUNT',NULL,'Цена со скидкой','',100,'N');
/*!40000 ALTER TABLE `shop_type_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_user_account`
--

DROP TABLE IF EXISTS `shop_user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_user_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `current_budget` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `currency_code` varchar(3) NOT NULL,
  `locked` varchar(1) NOT NULL DEFAULT 'N',
  `locked_at` int(11) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_user` (`currency_code`,`user_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `current_budget` (`current_budget`),
  KEY `locked` (`locked`),
  KEY `locked_at` (`locked_at`),
  KEY `shop_user_account_user_id` (`user_id`),
  CONSTRAINT `shop_user_account_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_user_account_currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_user_account_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_user_account_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Счета покупателей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_user_account`
--

LOCK TABLES `shop_user_account` WRITE;
/*!40000 ALTER TABLE `shop_user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_user_transact`
--

DROP TABLE IF EXISTS `shop_user_transact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_user_transact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_user_id` int(11) NOT NULL,
  `shop_order_id` int(11) DEFAULT NULL,
  `amount` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `currency_code` varchar(3) NOT NULL,
  `debit` varchar(1) NOT NULL DEFAULT 'N',
  `description` varchar(255) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_order_id` (`shop_order_id`),
  KEY `cms_user_id` (`cms_user_id`),
  KEY `amount` (`amount`),
  KEY `currency_code` (`currency_code`),
  KEY `debit` (`debit`),
  KEY `description` (`description`),
  CONSTRAINT `shop_user_transact_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_user_transact_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_user_transact__cms_user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_user_transact__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_user_transact__shop_order_id` FOREIGN KEY (`shop_order_id`) REFERENCES `shop_order` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Транзакции пользователя';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_user_transact`
--

LOCK TABLES `shop_user_transact` WRITE;
/*!40000 ALTER TABLE `shop_user_transact` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_user_transact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_vat`
--

DROP TABLE IF EXISTS `shop_vat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_vat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `rate` decimal(18,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `active` (`active`),
  KEY `name` (`name`),
  KEY `rate` (`rate`),
  CONSTRAINT `shop_vat_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_vat_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Ставки НДС';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_vat`
--

LOCK TABLES `shop_vat` WRITE;
/*!40000 ALTER TABLE `shop_vat` DISABLE KEYS */;
INSERT INTO `shop_vat` VALUES (1,NULL,NULL,NULL,NULL,'Без НДС',100,'Y',0.00),(2,NULL,NULL,NULL,NULL,'НДС 18%',200,'Y',18.00);
/*!40000 ALTER TABLE `shop_vat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_viewed_product`
--

DROP TABLE IF EXISTS `shop_viewed_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_viewed_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_fuser_id` int(11) NOT NULL,
  `shop_product_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_fuser_id` (`shop_fuser_id`),
  KEY `shop_product_id` (`shop_product_id`),
  KEY `site_id` (`site_id`),
  CONSTRAINT `shop_viewed_product_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_viewed_product_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_viewed_product__shop_fuser_id` FOREIGN KEY (`shop_fuser_id`) REFERENCES `shop_fuser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_viewed_product__shop_product_id` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_viewed_product__shop_product_id_c` FOREIGN KEY (`shop_product_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_viewed_product__site_id` FOREIGN KEY (`site_id`) REFERENCES `cms_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25468 DEFAULT CHARSET=utf8 COMMENT='Ранее просмотренные товары';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_viewed_product`
--

LOCK TABLES `shop_viewed_product` WRITE;
/*!40000 ALTER TABLE `shop_viewed_product` DISABLE KEYS */;
INSERT INTO `shop_viewed_product` VALUES (25451,1,1,1456747865,1456747865,37808,310,1,'Мотоцикл 1',NULL),(25452,1,1,1456747896,1456747896,37808,310,1,'Мотоцикл 1',NULL),(25453,1,1,1456748239,1456748239,37808,310,1,'Мотоцикл 1',NULL),(25454,1,1,1456748577,1456748577,37808,310,1,'Мотоцикл 1',NULL),(25455,1,1,1456748584,1456748584,37808,310,1,'Мотоцикл 1',NULL),(25456,1,1,1456748610,1456748610,37808,310,1,'Мотоцикл 1',NULL),(25457,1,1,1456751702,1456751702,37808,310,1,'Мотоцикл 1',NULL),(25458,1,1,1456752332,1456752332,37808,310,1,'Мотоцикл 1',NULL),(25459,1,1,1456752439,1456752439,37808,310,1,'Мотоцикл 1',NULL),(25460,1,1,1456761938,1456761938,37808,310,1,'Мотоцикл 1',NULL),(25461,1,1,1456762141,1456762141,37808,310,1,'Мотоцикл 1',NULL),(25462,1,1,1456762171,1456762171,37808,310,1,'Мотоцикл 1',NULL),(25463,NULL,NULL,1456769301,1456769301,37810,310,1,'Мотоцикл 1',NULL),(25464,NULL,NULL,1456773927,1456773927,37811,310,1,'Мотоцикл 1',NULL),(25465,NULL,NULL,1456798829,1456798829,37812,310,1,'Мотоцикл 1',NULL),(25466,NULL,NULL,1456798850,1456798850,37812,310,1,'Мотоцикл 1',NULL),(25467,1,1,1456831569,1456831569,37808,310,1,'Мотоцикл 1',NULL);
/*!40000 ALTER TABLE `shop_viewed_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_message`
--

DROP TABLE IF EXISTS `source_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_message`
--

LOCK TABLES `source_message` WRITE;
/*!40000 ALTER TABLE `source_message` DISABLE KEYS */;
INSERT INTO `source_message` VALUES (1,'app','Superuser'),(2,'app','Unauthorized user'),(3,'app','Admin'),(4,'app','Manager (access to the administration)'),(5,'app','Editor (access to the administration)'),(6,'app','Registered user'),(7,'app','Confirmed user'),(8,'app','Access to system administration'),(9,'app','Access to the site control panel'),(10,'app','The ability to create records'),(11,'app','The ability to edit view files'),(12,'app','Updating data records'),(13,'app','Updating data own records'),(14,'app','Updating additional data records'),(15,'app','Updating additional data own records'),(16,'app','Deleting records'),(17,'app','Deleting own records'),(18,'app','Access to personal files'),(19,'app','Access to the public files'),(20,'app','Access to all files'),(21,'app','Content'),(22,'app','Sections'),(23,'app','File manager'),(24,'app','File storage'),(25,'app','Settings'),(26,'app','Product settings'),(27,'app','Sites'),(28,'app','Languages'),(29,'app','Database of translations'),(30,'app','Section markers'),(31,'app','Server file storage'),(32,'app','Settings sections'),(33,'app','Content settings'),(34,'app','Module settings'),(35,'app','Agents'),(36,'app','Users and Access'),(37,'app','User management'),(38,'app','User properties'),(39,'app','The base of {email} addresses'),(40,'app','Base phones'),(41,'app','Social profiles'),(42,'app','Roles'),(43,'app','Privileges'),(44,'app','Searching'),(45,'app','Statistic'),(46,'app','Jump list'),(47,'app','Phrase list'),(48,'app','Instruments'),(49,'app','Checking system'),(50,'app','Information'),(51,'app','Sending {email}'),(52,'app','Clearing temporary data'),(53,'app','Work to database'),(54,'app','{ssh} console'),(55,'app','Code generator'),(56,'app','Marketplace'),(57,'app','Catalog'),(58,'app','Installed'),(59,'app','Install{s}Delete'),(60,'app','Updated platforms'),(61,'app','Additionally'),(62,'app','Checking permission'),(63,'app','Checking role'),(64,'skeeks/shop/app','Account_customer'),(65,'skeeks/shop/app','VAT_rates'),(66,'app','Управление привилегиями'),(67,'app','Job to database'),(68,'app','Выберите опцию'),(69,'app','Выберите несколько опций'),(70,'app','Результатов не найдено'),(71,'app','Информация'),(72,'skeeks/shop/app','Person Type ID'),(73,'skeeks/shop/app','Оплачен'),(74,'skeeks/shop/app','Payed At'),(75,'skeeks/shop/app','Emp Payed ID'),(76,'skeeks/shop/app','Canceled At'),(77,'skeeks/shop/app','Emp Canceled ID'),(78,'skeeks/shop/app','Status At'),(79,'skeeks/shop/app','Emp Status ID'),(80,'skeeks/shop/app','Price Delivery'),(81,'skeeks/shop/app','Allow Delivery At'),(82,'skeeks/shop/app','Emp Allow Delivery ID'),(83,'skeeks/shop/app','Discount Value'),(84,'skeeks/shop/app','Pay System ID'),(85,'skeeks/shop/app','Delivery'),(86,'skeeks/shop/app','User Description'),(87,'skeeks/shop/app','Additional Info'),(88,'skeeks/shop/app','Ps Status'),(89,'skeeks/shop/app','Ps Status Code'),(90,'skeeks/shop/app','Ps Status Description'),(91,'skeeks/shop/app','Ps Status Message'),(92,'skeeks/shop/app','Ps Sum'),(93,'skeeks/shop/app','Ps Currency Code'),(94,'skeeks/shop/app','Ps Response At'),(95,'skeeks/shop/app','Tax Value'),(96,'skeeks/shop/app','Stat Gid'),(97,'skeeks/shop/app','Sum Paid'),(98,'skeeks/shop/app','Recuring ID'),(99,'skeeks/shop/app','Locked By'),(100,'skeeks/shop/app','Locked At'),(101,'skeeks/shop/app','Recount Flag'),(102,'skeeks/shop/app','Affiliate ID'),(103,'skeeks/shop/app','Delivery Doc Num'),(104,'skeeks/shop/app','Delivery Doc At'),(105,'skeeks/shop/app','Update 1c'),(106,'skeeks/shop/app','Deducted'),(107,'skeeks/shop/app','Deducted At'),(108,'skeeks/shop/app','Emp Deducted ID'),(109,'skeeks/shop/app','Reason Undo Deducted'),(110,'skeeks/shop/app','Marked'),(111,'skeeks/shop/app','Marked At'),(112,'skeeks/shop/app','Emp Marked ID'),(113,'skeeks/shop/app','Reason Marked'),(114,'skeeks/shop/app','Reserved'),(115,'skeeks/shop/app','Store ID'),(116,'skeeks/shop/app','Order Topic'),(117,'skeeks/shop/app','Responsible ID'),(118,'skeeks/shop/app','Pay Before At'),(119,'skeeks/shop/app','Account ID'),(120,'skeeks/shop/app','Bill At'),(121,'skeeks/shop/app','Tracking Number'),(122,'skeeks/shop/app','Xml ID'),(123,'skeeks/shop/app','Id 1c'),(124,'skeeks/shop/app','Version 1c'),(125,'skeeks/shop/app','Version'),(126,'skeeks/shop/app','External Order'),(127,'app','да'),(128,'app','нет'),(129,'app','ID'),(130,'app','Show Counter'),(131,'app','Show Counter Start'),(132,'app','Description Short Type'),(133,'app','Description Full Type'),(134,'app','Home'),(135,'app','Checkbox List'),(136,'app','Email'),(137,'skeeks/shop/app','Fuser ID'),(138,'skeeks/shop/app','Order ID'),(139,'skeeks/shop/app','Product Price ID'),(140,'skeeks/shop/app','Weight'),(141,'skeeks/shop/app','Delay'),(142,'skeeks/shop/app','Can Buy'),(143,'skeeks/shop/app','Callback Func'),(144,'skeeks/shop/app','Order Callback Func'),(145,'skeeks/shop/app','Detail Page Url'),(146,'skeeks/shop/app','Discount Price'),(147,'skeeks/shop/app','Cancel Callback Func'),(148,'skeeks/shop/app','Pay Callback Func'),(149,'skeeks/shop/app','Catalog Xml ID'),(150,'skeeks/shop/app','Product Xml ID'),(151,'skeeks/shop/app','Discount Name'),(152,'skeeks/shop/app','Discount Coupon'),(153,'skeeks/shop/app','Vat Rate'),(154,'skeeks/shop/app','Subscribe'),(155,'skeeks/shop/app','Barcode Multi'),(156,'skeeks/shop/app','Reserve Quantity'),(157,'skeeks/shop/app','Custom Price'),(158,'skeeks/shop/app','Dimensions'),(159,'skeeks/shop/app','Type'),(160,'skeeks/shop/app','Set Parent ID'),(161,'skeeks/shop/app','Measure Code'),(162,'skeeks/shop/app','Recommendation'),(163,'skeeks/shop/app','Транзакции по заказу'),(164,'skeeks/shop/app','Сумма'),(165,'app','Shop Order ID'),(166,'app','Статус изменен на: \"{status}\"'),(167,'app','Заказ отменен. Причина: \"{reason_canceled}\"'),(168,'app','Заказ  создан'),(169,'skeeks/shop/app','Cms User ID'),(170,'skeeks/shop/app','Shop Order ID'),(171,'skeeks/shop/app','Debit'),(172,'skeeks/shop/app','Оплата заказа'),(173,'skeeks/shop/app','Внесение денег'),(174,'app','Скрытое поле'),(175,'app','Отправить'),(176,'app','Время публикации'),(177,'app','Элемент'),(178,'app','Тип контента'),(179,'app','Достоинства'),(180,'app','Недостатки'),(181,'app','Комментарий'),(182,'app','Ip'),(183,'app','Page Url'),(184,'app','Data Server'),(185,'app','Data Session'),(186,'app','Data Cookie'),(187,'app','Data Request'),(188,'app','Сайт'),(189,'app','Имя'),(190,'app','Когда обратали'),(191,'app','Кто обработал'),(192,'app','Добавить отзыв'),(193,'app','Auth Key'),(194,'app','Password Hash'),(195,'app','Password Reset Token'),(196,'app','Группы'),(197,'app','Выберите профиль покупателя'),(198,'app','The current version {cms} '),(199,'app','Способ оплаты'),(200,'skeeks/shop/app','Additional'),(201,'skeeks/shop/app','Site ID'),(202,'skeeks/shop/app','Buyer ID'),(203,'app','Toggle Dropdow'),(204,'app','SEO'),(205,'skeeks/shop/app','Shop Fuser ID'),(206,'skeeks/shop/app','Shop Product ID'),(207,'skeeks/shop/app','Url'),(208,'skeeks/shop/app','Price Type'),(209,'skeeks/shop/app','Recur Scheme Length'),(210,'skeeks/shop/app','Recur Scheme Type'),(211,'skeeks/shop/app','Trial Price ID'),(212,'skeeks/shop/app','Without Order'),(213,'skeeks/shop/app','Select Best Price'),(214,'skeeks/shop/app','Tmp ID'),(215,'skeeks/shop/app','Allow subscription without explanation'),(216,'app','Shop Product Price ID'),(217,'app','Price'),(218,'app','Currency Code'),(219,'app','Quantity From'),(220,'app','Quantity To'),(221,'app','Provider'),(222,'app','Provider Identifier'),(223,'app','Provider Data'),(224,'app','Property ID'),(225,'app','Element ID'),(226,'app','Value Enum'),(227,'app','Value Num'),(228,'app','Добавить заказ'),(229,'skeeks/shop/app','Пользователь сайта'),(230,'skeeks/shop/app','Тип покупателя'),(231,'skeeks/shop/app','Служба доставки'),(232,'skeeks/shop/app','Профиль покупателя'),(233,'skeeks/shop/app','Платежная система'),(234,'app','Desktop'),(235,'app','Main page'),(236,'app','The site managment system'),(237,'app','Welcome! You are in the site management system.'),(238,'app','Free place'),(239,'app','Number of users'),(240,'app','Read more'),(241,'app','Total at server'),(242,'app','Used'),(243,'app','Free'),(244,'app','At percent ratio'),(245,'app','Basic module {cms}, without it nothing will work and the whole world will collapse.'),(246,'app','To main page of admin area'),(247,'app','To main page of site'),(248,'app','Interface language'),(249,'app','Your profile'),(250,'app','Profile'),(251,'app','To block'),(252,'app','Exit'),(253,'app','Close menu'),(254,'app','Open menu'),(255,'skeeks/shop/app','Shop'),(256,'skeeks/shop/app','Orders'),(257,'skeeks/shop/app','Goods'),(258,'skeeks/shop/app','Buyers'),(259,'skeeks/shop/app','Accounts'),(260,'skeeks/shop/app','Baskets'),(261,'skeeks/shop/app','Viewed products'),(262,'skeeks/shop/app','Marketing management'),(263,'skeeks/shop/app','Discount goods'),(264,'skeeks/shop/app','Cumulative discounts'),(265,'skeeks/shop/app','Inventory control'),(266,'skeeks/shop/app','Stocks'),(267,'skeeks/shop/app','Reports'),(268,'skeeks/shop/app','Reports on orders'),(269,'skeeks/shop/app','Reports on products'),(270,'skeeks/shop/app','Settings'),(271,'skeeks/shop/app','Main settings'),(272,'skeeks/shop/app','Content settings'),(273,'skeeks/shop/app','Updates'),(274,'skeeks/shop/app','Types of prices'),(275,'skeeks/shop/app','Types of payers'),(276,'skeeks/shop/app','Payment systems'),(277,'skeeks/shop/app','Delivery services'),(278,'skeeks/shop/app','Taxes'),(279,'skeeks/shop/app','List of taxes'),(280,'skeeks/shop/app','Tax rates'),(281,'skeeks/shop/app','VAT rates'),(282,'skeeks/shop/app','Surcharges'),(283,'skeeks/shop/app','Currency'),(284,'skeeks/shop/app','Base of locations'),(285,'skeeks/shop/app','Units of measurement'),(286,'skeeks/shop/app','Affiliates'),(287,'skeeks/shop/app','Plans of Commission'),(288,'skeeks/shop/app','Pyramid'),(289,'app','Setting the admin panel'),(290,'app','Authorization through social networks'),(291,'skeeks/shop/app','Elements'),(292,'skeeks/shop/app','Order statuses'),(293,'skeeks/shop/app','Plans affiliate commissions'),(294,'app','Managing Roles'),(295,'app','Information about the system'),(296,'app','Testing send email messages from site'),(297,'app','Deleting temporary files'),(298,'app','Go to site {cms}'),(299,'app','Go to site of the developer'),(300,'app','You are not allowed to perform this action.'),(301,'skeeks/shop/app','Address'),(302,'skeeks/shop/app','Location ID'),(303,'skeeks/shop/app','Phone'),(304,'skeeks/shop/app','Email'),(305,'skeeks/shop/app','Online'),(306,'app','Access to edit dashboards'),(307,'app','Dashboards'),(308,'app','Рабочий стол 1'),(309,'app','Cms User ID'),(310,'app','Columns Settings'),(311,'app','Cms Dashboard ID'),(312,'app','cms_dashboard_column'),(313,'app','Are you sure you want to delete this desktop?'),(314,'app','Watch to {site} (opens in new window)'),(315,'app','Src'),(316,'app','Cluster File'),(317,'app','Original FileName'),(318,'app','Linked To Value'),(319,'app','The combination of Cluster ID and Cluster Src has already been taken.'),(320,'app','Content Type'),(321,'app','Name One Element'),(322,'app','Шаблон META TITLE'),(323,'app','Шаблон META KEYWORDS'),(324,'app','Шаблон META DESCRIPTION'),(325,'app','Включить управление доступом к элементам'),(326,'app','Property Type'),(327,'app','List Type'),(328,'app','Multiple Cnt'),(329,'app','Seo'),(330,'skeeks/shop/app','Base Rate Type'),(331,'skeeks/shop/app','Base Rate Currency Code'),(332,'skeeks/shop/app','Min Pay'),(333,'skeeks/shop/app','Value Currency Code'),(334,'app','The combination of Code and Pid has already been taken.'),(335,'app','Этот параметр влияет на адрес страницы, будте внимательно при его редактировании.'),(336,'app','Showing all elements of type \'{name}\' associated with this section. Taken into account only the main binding.'),(337,'app','Name Meny'),(338,'app','Name One'),(339,'app','Level'),(340,'app','Log Time'),(341,'app','Prefix'),(342,'app','Email адреса'),(343,'app','Телефоны'),(344,'app','User Ids'),(345,'app','Связь с формой');
/*!40000 ALTER TABLE `source_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-01 19:22:14
