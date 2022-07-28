-- coffee database를 사용하겠다.
USE coffee;

-- 전체 컴럼 조회
SELECT * fROM member;

-- 컬럼 추가
ALTER TABLE member ADD COLUMN nickname varchar(45);

ALTER TABLE member ADD COLUMN nameEng varchar(45) AFTER name;

-- 컴럼 변경
ALTER TABLE member MODIFY COLUMN nickname int;

-- 컬럼 이름 변경
ALTER TABLE member CHANGE COLUMN nickname nick varchar(45);


