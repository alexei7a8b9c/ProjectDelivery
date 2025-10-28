CREATE TABLE public."ADDRESS" (
                                id BIGSERIAL PRIMARY KEY,
                                street VARCHAR(255),
                                city VARCHAR(100),
                                zip VARCHAR(20),
                                state VARCHAR(100),
                                country VARCHAR(100),
                                user_id BIGINT NOT NULL,
                                CONSTRAINT fk_address_user FOREIGN KEY (user_id) REFERENCES public."USER"(id) ON DELETE CASCADE
);
ALTER TABLE public."ADDRESS"
    ADD COLUMN created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    ADD COLUMN updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW();