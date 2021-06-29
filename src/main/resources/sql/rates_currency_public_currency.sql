create table currency
(
    id         bigserial not null
        constraint currency_pk
            primary key,
    name       varchar,
    short_name varchar
);

alter table currency
    owner to postgres;

create unique index currency_id_uindex
    on currency (id);

INSERT INTO public.currency (id, name, short_name) VALUES (1, 'Австралийский доллар', 'AUD');
INSERT INTO public.currency (id, name, short_name) VALUES (2, 'Азербайджанский манат', 'AZN');
INSERT INTO public.currency (id, name, short_name) VALUES (3, 'Фунт стерлингов Соединенного королевства', 'GBP');
INSERT INTO public.currency (id, name, short_name) VALUES (4, 'Армянских драмов', 'AMD');
INSERT INTO public.currency (id, name, short_name) VALUES (5, 'Белорусский рубль', 'BYN');
INSERT INTO public.currency (id, name, short_name) VALUES (6, 'Болгарский лев', 'BGN');
INSERT INTO public.currency (id, name, short_name) VALUES (7, 'Бразильский реал', 'BRL');
INSERT INTO public.currency (id, name, short_name) VALUES (8, 'Венгерских форинтов', 'HUF');
INSERT INTO public.currency (id, name, short_name) VALUES (9, 'Гонконгских долларов', 'HKD');
INSERT INTO public.currency (id, name, short_name) VALUES (10, 'Датская крона', 'DKK');
INSERT INTO public.currency (id, name, short_name) VALUES (11, 'Доллар США', 'USD');
INSERT INTO public.currency (id, name, short_name) VALUES (12, 'Евро', 'EUR');
INSERT INTO public.currency (id, name, short_name) VALUES (13, 'Индийских рупий', 'INR');
INSERT INTO public.currency (id, name, short_name) VALUES (14, 'Казахстанских тенге', 'KZT');
INSERT INTO public.currency (id, name, short_name) VALUES (15, 'Канадский доллар', 'CAD');
INSERT INTO public.currency (id, name, short_name) VALUES (16, 'Киргизских сомов', 'KGS');
INSERT INTO public.currency (id, name, short_name) VALUES (17, 'Китайский юань', 'CNY');
INSERT INTO public.currency (id, name, short_name) VALUES (18, 'Молдавских леев', 'MDL');
INSERT INTO public.currency (id, name, short_name) VALUES (19, 'Норвежских крон', 'NOK');
INSERT INTO public.currency (id, name, short_name) VALUES (20, 'Польский злотый', 'PLN');
INSERT INTO public.currency (id, name, short_name) VALUES (21, 'Румынский лей', 'RON');
INSERT INTO public.currency (id, name, short_name) VALUES (22, 'СДР (специальные права заимствования)', 'XDR');
INSERT INTO public.currency (id, name, short_name) VALUES (23, 'Сингапурский доллар', 'SGD');
INSERT INTO public.currency (id, name, short_name) VALUES (24, 'Таджикских сомони', 'TJS');
INSERT INTO public.currency (id, name, short_name) VALUES (25, 'Турецких лир', 'TRY');
INSERT INTO public.currency (id, name, short_name) VALUES (26, 'Новый туркменский манат', 'TMT');
INSERT INTO public.currency (id, name, short_name) VALUES (27, 'Узбекских сумов', 'UZS');
INSERT INTO public.currency (id, name, short_name) VALUES (28, 'Украинских гривен', 'UAH');
INSERT INTO public.currency (id, name, short_name) VALUES (29, 'Чешских крон', 'CZK');
INSERT INTO public.currency (id, name, short_name) VALUES (30, 'Шведских крон', 'SEK');
INSERT INTO public.currency (id, name, short_name) VALUES (31, 'Швейцарский франк', 'CHF');
INSERT INTO public.currency (id, name, short_name) VALUES (32, 'Южноафриканских рэндов', 'ZAR');
INSERT INTO public.currency (id, name, short_name) VALUES (33, 'Вон Республики Корея', 'KRW');
INSERT INTO public.currency (id, name, short_name) VALUES (34, 'Японских иен', 'JPY');
INSERT INTO public.currency (id, name, short_name) VALUES (35, 'Российских рублей', 'RUB');