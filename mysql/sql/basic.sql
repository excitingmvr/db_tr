-- coffee database를 사용하겠다.
USE coffee;

-- 중요 별 백개 ****************************
-- 테이블 수정 전에 항상 꼭 반드시 진짜로 ER 부터 수정
-- 중요 별 백개 ****************************

-- 전체 컴럼 조회
SELECT * fROM member;

-- 컬럼 추가
ALTER TABLE member ADD COLUMN nickname varchar(45);

ALTER TABLE member ADD COLUMN nameEng varchar(45) AFTER name;

-- 컬럼 변경
ALTER TABLE member MODIFY COLUMN nickname int;

-- 컬럼 이름 변경
ALTER TABLE member CHANGE COLUMN nickname nick varchar(45);

-- 컬럼 삭제
ALTER TABLE member drop COLUMN nick;

-- row 삭제
DELETE FROM member WHERE seq = 2;


-- commit / rollback

select * from member;

-- 데이터 수정
UPDATE member SET 
	name = "Tony" 
	, nameEng="Great"
where seq =1;





