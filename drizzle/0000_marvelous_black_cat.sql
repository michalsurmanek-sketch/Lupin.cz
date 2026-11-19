CREATE TABLE `orders` (
	`id` text PRIMARY KEY NOT NULL,
	`created` text NOT NULL,
	`customer` text NOT NULL,
	`items` text NOT NULL,
	`total` integer NOT NULL,
	`status` text NOT NULL,
	`test` integer NOT NULL,
	`request_key` text NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `orders_request_key_unique` ON `orders` (`request_key`);--> statement-breakpoint
CREATE TABLE `products` (
	`id` text PRIMARY KEY NOT NULL,
	`name` text NOT NULL,
	`category` text NOT NULL,
	`description` text NOT NULL,
	`ingredients` text NOT NULL,
	`weight` text NOT NULL,
	`price` integer NOT NULL,
	`stock` integer NOT NULL,
	`active` integer DEFAULT 1 NOT NULL,
	`image` text NOT NULL
);
--> statement-breakpoint
CREATE TABLE `settings` (
	`id` text PRIMARY KEY NOT NULL,
	`value` text NOT NULL
);
--> statement-breakpoint
CREATE TRIGGER products_stock_nonnegative BEFORE UPDATE OF stock ON products WHEN NEW.stock < 0 BEGIN SELECT RAISE(ABORT, 'Insufficient stock'); END;
