
-- Установить временную зону
SET TIMEZONE="Europe/Moscow";

-- создать таблицу номеров
CREATE TABLE numbers (
                     id UUID DEFAULT uuid_generate_v4 () PRIMARY KEY,
                     phone_number VARCHAR (255) NOT NULL,
                     tg_id UUID NOT NULL REFERENCES users (id) ON CASCADE,
                     FIO VARCHAR (255) NOT NULL,
                     number_status INT NOT NULL
);

-- Создать индекс
CREATE INDEX active_numbers ON books (title) WHERE book_status = 1;
