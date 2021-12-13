CREATE TABLE `products` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `description` varchar(255),
  `category_id` int,
  `quantity` int,
  `status` int,
  `price` int,
  `photo` varchar(255)
);

CREATE TABLE `categories` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `description` varchar(255)
);

CREATE TABLE `users` (
  `id` int PRIMARY KEY,
  `email` varchar(255),
  `password` varchar(255),
  `name` varchar(255),
  `surname` varchar(255),
  `phone_number` varchar(255),
  `address` varchar(255)
);

CREATE TABLE `orders` (
  `id` int PRIMARY KEY,
  `user_id` int,
  `status` varchar(255),
  `created_at` varchar(255)
);

CREATE TABLE `order_items` (
  `order_id` int,
  `product_id` int,
  `quantity` int
);

ALTER TABLE `products` ADD FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `order_items` ADD FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `order_items` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

CREATE UNIQUE INDEX `products_index_0` ON `products` (`id`);
