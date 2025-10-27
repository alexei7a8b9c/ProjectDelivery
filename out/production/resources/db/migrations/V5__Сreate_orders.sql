-- Создание таблицы order
CREATE TABLE IF NOT EXISTS public."ORDER" (
                                      id BIGINT PRIMARY KEY,
                                      status VARCHAR(50) NOT NULL,
                                      order_date TIMESTAMP WITHOUT TIME ZONE NOT NULL,
                                      user_id BIGINT,
                                      restaurant_id BIGINT,
                                      total_price NUMERIC(12,2)
);

-- Создание таблицы order_item
CREATE TABLE IF NOT EXISTS public."ORDER_ITEMS" (
                                           id BIGINT PRIMARY KEY,
                                           order_id BIGINT NOT NULL,
                                           dish_id BIGINT,
                                           quantity INT NOT NULL,
                                           price NUMERIC(12,2),
                                           CONSTRAINT fk_order
                                               FOREIGN KEY(order_id) REFERENCES "ORDER"(id) ON DELETE CASCADE
);

-- Создание таблицы payment
CREATE TABLE IF NOT EXISTS public."PAYMENT" (
                                        id BIGINT PRIMARY KEY,
                                        order_id BIGINT NOT NULL,
                                        method VARCHAR(50),
                                        amount NUMERIC(12,2),
                                        status VARCHAR(50),
                                        CONSTRAINT fk_payment_order
                                            FOREIGN KEY(order_id) REFERENCES "ORDER"(id) ON DELETE CASCADE
);

-- Индексы (опционально)
CREATE INDEX IF NOT EXISTS idx_orders_user ON "ORDER"(user_id);
CREATE INDEX IF NOT EXISTS idx_order_items_order ON "ORDER_ITEMS"(order_id);
CREATE INDEX IF NOT EXISTS idx_payments_order ON "PAYMENT"(order_id);