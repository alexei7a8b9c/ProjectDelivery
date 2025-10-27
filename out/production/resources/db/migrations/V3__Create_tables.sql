CREATE TABLE public."RESTAURANT" (
                            id BIGSERIAL PRIMARY KEY,
                            name VARCHAR(255) NOT NULL,
                            cuisine VARCHAR(255),
                            address VARCHAR(512)
);

CREATE TABLE public."DISH" (
                      id BIGSERIAL PRIMARY KEY,
                      name VARCHAR(255) NOT NULL,
                      description TEXT,
                      price DECIMAL(10,2),
                      imageUrl VARCHAR(512),
                      restaurantId BIGINT,
                      CONSTRAINT fk_restaurant FOREIGN KEY (restaurantId) REFERENCES "RESTAURANT"(id)
);