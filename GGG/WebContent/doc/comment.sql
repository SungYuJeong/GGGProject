create table comment(
  num int(20) AUTO_INCREMENT primary key,-- 번호
  id varchar(20),-- 아이디 
  comment varchar(200), -- 댓글
  email varchar(200), -- 메일주소
  boarddate date, -- 작성일자
  );