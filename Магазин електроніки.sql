-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 26 2023 г., 22:03
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lab2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `number` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `password`, `number`, `email`) VALUES
(1, 'Петрук Володимир Антонович', '20081990', '+380974550012', 'petruk@gmail.com'),
(2, 'Золотов Кирило Миколайович', '31071978', '+380689775404', 'Zolotov1978@gmail.com'),
(3, 'Задорожній Анатолій Анатолійович', '26012005', '+380962773078', 'zadtolik05@gmail.com'),
(4, 'Кравчук Кракс Магнатович', 'm3rt512', '+38068165050', 'kruxwar@gmail.com'),
(5, 'Вараниця Сергій Миколайович', 'serg1890', '+380971337865', 's0e1r1g23i4y@gmail.com'),
(6, 'Остапенко Олександр Максимович', 'sanya93', '+380961257458', 'sanyshkaostap@gmail.com'),
(8, 'Перепечай Андрій Сергійович', 'Krux0518', '+380987384678', 'andreyperepechay@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `goods_id` bigint(20) UNSIGNED NOT NULL,
  `goods_name` varchar(100) NOT NULL,
  `supplier_id` bigint(100) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`goods_id`, `goods_name`, `supplier_id`, `description`, `price`) VALUES
(0, 'Xiaomi Mi TV 4S 43', 1, 'Тип LED телевізор Рік випуску 2018 Smart TV так Операційна система Android Процесор Cortex A53 (4-ох ядерний) Оперативна пам\'ять 1.5 Гб', 21180),
(2, 'Ноутбук Lenovo G580', 2, 'Processor Intel Chief River/Intel Huron River/AMD DeccanCore Chipset	Intel HM76 (HM75 ready)Bus architecture	G480/G485/G580/G585: DDR3 1600/1333 MHz (IvyBridge), 1333 MHz (Sandy Bridge)PCI Express busDMIGraphic Chipset	Nvidia N13P-GL (G480/G580)Display	15.6 HD LED Panel, Flat type, 1366x768 pixels, 200 nit(G580/G585))', 49999),
(4, 'Газова плита Electa', 4, 'Кількість конфорок	4; Корисний об\'єм духовки, л 54,7; Напруга електричної мережі, B 220; маса, кг 41,4;', 6500),
(6, 'Компрессор повітряний', 6, 'Напруга живлення: 220 В; Продуктивність: 265 л/хв; Потужність двигуна: 2.2 кВт; Рівень шуму: 69 дБ; Вага: 28 кг', 7999);

-- --------------------------------------------------------

--
-- Структура таблицы `mainlist`
--

CREATE TABLE `mainlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` text NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `mainlist`
--

INSERT INTO `mainlist` (`id`, `reason`, `client_id`) VALUES
(1, 'Не відповідає на дзвінок', 1),
(2, 'Не відповідає на дзвінок', 2),
(3, 'Абонент позазоною', 3),
(4, 'Постійно лінія занята', 4),
(5, 'Абонент тимчасово недоступний', 5),
(6, 'Не існує такого номера', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `managers`
--

CREATE TABLE `managers` (
  `manager_id` bigint(20) UNSIGNED NOT NULL,
  `manager_name` varchar(100) NOT NULL,
  `region` text NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `stock_id` bigint(100) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `managers`
--

INSERT INTO `managers` (`manager_id`, `manager_name`, `region`, `phone_number`, `stock_id`) VALUES
(2, 'Кривошей Андрій Максимович', 'м. Вінниця', '+380687717418', 2),
(4, 'Криленко Анатолій Іванович', 'м. Чернігів', '+380989056676', 4),
(6, 'Сурвоног Григорій Олегович', 'м. Львів', '+380963328090', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `operators`
--

CREATE TABLE `operators` (
  `operator_id` bigint(20) UNSIGNED NOT NULL,
  `operator_name` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `operators`
--

INSERT INTO `operators` (`operator_id`, `operator_name`, `phone_number`) VALUES
(1, 'Голорук Юрій Михайлович', '+380978812045'),
(2, 'Хайлук Ігор Миколайович', '+380971224543'),
(3, 'Бобрик Іван Анатолійович', '+380678895464'),
(4, 'Одарченко Василь Ігнатович', '+380680712078'),
(5, 'Крилов Андрій Сергійович', '+380678800012'),
(6, 'Мирожок Петро Максимович', '+380994356670');

-- --------------------------------------------------------

--
-- Структура таблицы `orderlist`
--

CREATE TABLE `orderlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(50) UNSIGNED NOT NULL,
  `goods_id` bigint(50) UNSIGNED NOT NULL,
  `count` int(11) NOT NULL,
  `stock_id` bigint(50) UNSIGNED NOT NULL,
  `operator_id` bigint(50) UNSIGNED NOT NULL,
  `seller_id` bigint(50) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `orderlist`
--

INSERT INTO `orderlist` (`id`, `client_id`, `goods_id`, `count`, `stock_id`, `operator_id`, `seller_id`) VALUES
(2, 2, 2, 3, 2, 2, 2),
(4, 4, 4, 1, 4, 4, 4),
(6, 6, 6, 1, 6, 6, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `repairer`
--

CREATE TABLE `repairer` (
  `repairer_id` bigint(20) UNSIGNED NOT NULL,
  `goods_id` bigint(100) UNSIGNED NOT NULL,
  `repairer_name` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `repairer`
--

INSERT INTO `repairer` (`repairer_id`, `goods_id`, `repairer_name`, `phone_number`, `location`) VALUES
(2, 2, 'Марниченко Володимир Віталійович', '+380981200440', 'м. Миколаїв вул. Миру 10'),
(4, 4, 'Котляренко Макар Васильович', '+380674580801', 'м. Одеса вул. Лесі Українки 3'),
(6, 6, 'Чубач Олександр Олегович', '+380993467780', 'м. Житомир вул. Петра Забіли 12');

-- --------------------------------------------------------

--
-- Структура таблицы `seller`
--

CREATE TABLE `seller` (
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `seller_name` varchar(100) NOT NULL,
  `location` text NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `seller`
--

INSERT INTO `seller` (`seller_id`, `seller_name`, `location`, `phone_number`) VALUES
(1, 'Перелук Юрій Михайлович', 'м. Київ відділ №1', '+380989067845'),
(2, 'Кропивницький Петро Васильович', 'м. Київ відділ №1', '+380684512004'),
(3, 'Хрижняк Олег Олегович', 'м. Львів відділ №1', '+380970097672'),
(4, 'Макаренко Григорій Андрійович', 'м. Львів відділ №1', '+380991284563'),
(5, 'Довгаль Станіслав Тарасович', 'м. Чернігів відділ №1', '+380979566712'),
(6, 'Семенець Павло Григорович', 'м. Чернігів відділ №1', '+380968845044');

-- --------------------------------------------------------

--
-- Структура таблицы `stock`
--

CREATE TABLE `stock` (
  `stock_id` bigint(20) UNSIGNED NOT NULL,
  `goods_id` bigint(100) UNSIGNED NOT NULL,
  `stock_name` varchar(225) NOT NULL,
  `count` int(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `stock`
--

INSERT INTO `stock` (`stock_id`, `goods_id`, `stock_name`, `count`, `phone_number`) VALUES
(2, 2, 'Львівський склад №1', 3, '+380991202046'),
(4, 4, 'Київський склад №1', 1, '+380987311278'),
(6, 6, 'Київський склад №2', 1, '+380661282932');

-- --------------------------------------------------------

--
-- Структура таблицы `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `company` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `phone_number`, `company`) VALUES
(1, 'Юрчак Дмитро Олександрович', '+380961567708', 'Magic Technology'),
(2, 'Шаповалов Олег Анатолійович', '+380734891012', 'Super Duper Technology'),
(3, 'Федоренко Микола Андрійович', '+380991273200', 'Technic'),
(4, 'Павлюк Владислав Анатолійович', '+380987312123', 'High Technology'),
(5, 'Уланов Дмитро Данилович', '+380967644120', 'Smart Technician'),
(6, 'Гонщик Феодосій Апанасович', '+380678890880', 'High-quality technologies');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `id` (`client_id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`goods_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Индексы таблицы `mainlist`
--
ALTER TABLE `mainlist`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Индексы таблицы `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`manager_id`),
  ADD KEY `stock_id` (`stock_id`);

--
-- Индексы таблицы `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`operator_id`);

--
-- Индексы таблицы `orderlist`
--
ALTER TABLE `orderlist`
  ADD KEY `client_id` (`client_id`),
  ADD KEY `operator_id` (`operator_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `goods_id` (`goods_id`),
  ADD KEY `stock_id` (`stock_id`);

--
-- Индексы таблицы `repairer`
--
ALTER TABLE `repairer`
  ADD PRIMARY KEY (`repairer_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Индексы таблицы `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`);

--
-- Индексы таблицы `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Индексы таблицы `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `mainlist`
--
ALTER TABLE `mainlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `mainlist`
--
ALTER TABLE `mainlist`
  ADD CONSTRAINT `mainlist_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `managers_ibfk_1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orderlist`
--
ALTER TABLE `orderlist`
  ADD CONSTRAINT `orderlist_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderlist_ibfk_2` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`operator_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderlist_ibfk_3` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderlist_ibfk_4` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderlist_ibfk_5` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `repairer`
--
ALTER TABLE `repairer`
  ADD CONSTRAINT `repairer_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
