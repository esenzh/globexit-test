-- для создания датабазы
CREATE DATABASE test;

-- для создания table
CREATE TABLE col(
    id BIGSERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    subdivision_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL
);

CREATE TABLE learning(
    id BIGSERIAL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    score BIGINT NOT NULL,
    col_id BIGINT REFERENCES col(id)
);

-- Заполнение таблиц
INSERT INTO col (full_name, subdivision_name, birth_date) VALUES('Эсен Жеенчороев', 'Бугалтерия', '1995-02-28');
INSERT INTO col (full_name, subdivision_name, birth_date) VALUES('Бека Зарылбеков', 'Юридический отдел', '1994-10-05');
INSERT INTO col (full_name, subdivision_name, birth_date) VALUES('Kany West', 'Канцелярия', '1985-02-02');
INSERT INTO col (full_name, subdivision_name, birth_date) VALUES('Barack Obama', 'Канцелярия', '1977-06-14');
INSERT INTO col (full_name, subdivision_name, birth_date) VALUES('Beckett Kim', 'Бугалтерия', '1993-04-30');
INSERT INTO col (full_name, subdivision_name, birth_date) VALUES('Jonah Shea', 'Бугалтерия', '1992-12-12');
INSERT INTO col (full_name, subdivision_name, birth_date) VALUES('Felicity Melendez', 'Бугалтерия', '1998-07-18');
INSERT INTO col (full_name, subdivision_name, birth_date) VALUES('Nick Dixon', 'Бугалтерия', '1999-08-28');
INSERT INTO col (full_name, subdivision_name, birth_date) VALUES('Heaven Bauer', 'Бугалтерия', '1996-04-24');
INSERT INTO col (full_name, subdivision_name, birth_date) VALUES('Charles Ashley', 'Бугалтерия', '1989-03-25');

INSERT INTO learning (course_name, score) VALUES('SkillUp', '100');
INSERT INTO learning (course_name, score) VALUES('Disruptor Training', '70');
INSERT INTO learning (course_name, score) VALUES('Mentee to Mentor', '90');
INSERT INTO learning (course_name, score) VALUES('Active Achievement', '65');
INSERT INTO learning (course_name, score) VALUES('Strive Training', '77');
INSERT INTO learning (course_name, score) VALUES('Productivity Today', '79');
INSERT INTO learning (course_name, score) VALUES('Limitless Horizons', '99');
INSERT INTO learning (course_name, score) VALUES('Unbound Opportunities', '85');
INSERT INTO learning (course_name, score) VALUES('Road-to-Success Workshop', '81');

--Updating Foreign keys
UPDATE learning SET col_id = 1 WHERE id = 1;
UPDATE learning SET col_id = 5 WHERE id = 2;
UPDATE learning SET col_id = 6 WHERE id = 3;
UPDATE learning SET col_id = 7 WHERE id = 4;
UPDATE learning SET col_id = 10 WHERE id = 5;
UPDATE learning SET col_id = 2 WHERE id = 6;
UPDATE learning SET col_id = 9 WHERE id = 7;
UPDATE learning SET col_id = 8 WHERE id = 8;
UPDATE learning SET col_id = 4 WHERE id = 9;

-- SELECT 
SELECT col.full_name, col.birth_date, learning.score 
FROM col
JOIN learning ON learning.col_id = col.id
WHERE subdivision_name = 'Бугалтерия' AND course_name = 'excel' AND score > '80';

-- QUERY RESULT
--     full_name    | birth_date | score
-- -----------------+------------+-------
--  Эсен Жеенчороев | 1995-02-28 |   100
--  Heaven Bauer    | 1996-04-24 |    99
-- (2 rows)




