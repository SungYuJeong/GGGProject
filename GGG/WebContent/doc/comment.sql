create table board(
  num int(20) AUTO_INCREMENT primary key,-- 번호
  id varchar(20),-- 아이디 
  subject varchar(200), -- 제목
  content varchar(200), -- 내용
  email varchar(200), -- 메일주소
  boarddate date, -- 작성일자
  score int(20), -- 조회 수
  img varchar(200), -- 이미지 경로
  sellOpt varchar(20), -- 판대 또는 대여
  borrowDay int(20), -- 대여 기간
  price int(20), -- 가격
  lat varchar(50), -- 위도
  lng varchar(50), -- 경도
  typ varchar(50) -- 가구 카테고리
  );