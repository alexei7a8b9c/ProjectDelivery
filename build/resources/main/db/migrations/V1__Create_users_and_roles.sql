CREATE TABLE public."USER" (
                               id BIGSERIAL PRIMARY KEY,
                               email VARCHAR(255) NOT NULL UNIQUE,
                               password_hash VARCHAR(255) NOT NULL,
                               full_name VARCHAR(255) NOT NULL,
                               created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
                               updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);

CREATE TABLE public."ROLE" (
                             id BIGSERIAL PRIMARY KEY,
                             name VARCHAR(100) NOT NULL
);

CREATE TABLE public."USER_ROLE" (
                                  user_id BIGINT NOT NULL,
                                  role_id BIGINT NOT NULL,
                                  PRIMARY KEY (user_id, role_id),
                                  CONSTRAINT fk_ur_user FOREIGN KEY (user_id) REFERENCES public."USER"(id) ON DELETE CASCADE,
                                  CONSTRAINT fk_ur_role FOREIGN KEY (role_id) REFERENCES public."ROLE"(id) ON DELETE CASCADE
);
