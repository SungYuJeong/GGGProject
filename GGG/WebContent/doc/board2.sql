create table board(
  num int(20) AUTO_INCREMENT primary key,-- ��ȣ
  id varchar(20),-- ���̵� 
  subject varchar(200), -- ����
  content varchar(200), -- ����
  email varchar(200), -- �����ּ�
  boarddate date, -- �ۼ�����
  score int(20), -- ��ȸ ��
  img varchar(200), -- �̹��� ���
  sellOpt varchar(20), -- �Ǵ� �Ǵ� �뿩
  borrowDay int(20), -- �뿩 �Ⱓ
  price int(20), -- ����
  lat varchar(50), -- ����
  lng varchar(50), -- �浵
  typ varchar(50) -- ���� ī�װ�
  );