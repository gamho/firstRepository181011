-- java? ??? ????????? sql

-- kr.co.mlec.board.vo.BoardVO ???? ????
create table tbl_board(
    no  number(5)   primary key
    , title varchar2(200) not null
    , writer varchar2(100) not null
    , view_cnt number(5) default 0
    , reg_date  date default sysdate
);

--?????? ?? ???? ??(sequence ??)
create sequence seq_my_car_no;

insert into tbl_board(no, title, writer)
  values(tbl_board_no.nextval, 'aaa', 'bbb');

delete car_board;
drop table car_board4;

create table car_board4 (
    no number(5)
    , name varchar2(200)
    , price number(10)
    , displ number(5)
    , year number(4)
    , type varchar2(20)
    , spec number(5)
    , grade varchar2(20)
    , property varchar2(10)
                        );
                        
select * from my_car;
select * from my_budget;

desc car_board;
desc my_car;

alter table car_board
    add (col_09 char(1));
alter table car_board
    rename column col_09 to property;

drop table my_car;
create sequence seq_my_car_no;
create table my_car (
    no number(5)
    , name varchar2(200)
    , price number(10)
    , displ number(5)
    , year number(4)
    , type varchar2(20)
    , spec number(5)
    , grade varchar2(20)
    , property varchar2(10)
);
                        
delete car_board;
delete car_board2;
delete car_board3;
delete car_board4;


select * from car_board;
select * from car_board2;
select * from car_board3;
select * from car_board4;

select * from my_car;

delete my_car;
delete my_budget;
drop sequence seq_my_car_no;
create sequence seq_my_car_no;
                        
alter table my_car
    modify property varchar2(10);
                        
    insert into my_budget(money) values(100000);
                        
    insert into my_car(no, name, price, displ, year, type, spec, grade, property)
        values(seq_my_car_no.nextval, '??', 1000, 1, 2001, '?', 100, '?', 'y');
        
    select no, name, price, displ, year, type, spec, grade, property
        from my_car 
        where no = 1;
  
 select * from car_board4;
    create sequence seq_my_car_no;     -- ?? ?? ??? ??? ????? ??? ??!

insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(1, '�� �� ���', 1000, 1000, 2017, '4��', 160, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(2, '����ũ', 900, 1000, 2017, '4��', 160, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(3, '����Ʈ', 1100, 1200, 2015, '4��', 160, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(4, 'EF�ҳ�Ÿ', 800, 1700, 2004, '4��', 160, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(5, '�ƹݶ�', 1100, 1600, 2011, '4��', 160, '������', 'n');

insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(6, '����', 1000, 1000, 2018, '����', 100, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(7, 'K3', 1400, 1600, 2017, '����', 140, '������', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(8, '����3', 1500, 2400, 2017, '�ķ�', 150, '����', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(9, '�����', 1600, 1400, 2017, '����', 160, '����', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(10, '���', 1700, 1600, 2017, '����', 170, '����', 'n');
   
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(11, 'ī����', 1900, 2000, 2017, '����', 190, '������', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(12, 'K3 ����', 2200, 1600, 2017, '����', 200, '������', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(1, 'K7', 2600, 3000, 2017, '����', 220, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(2, '���þ�', 3500, 2000, 2018, '4��', 250, '����', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(3, '���Ϻ�', 4000, 3000, 2018, '�ķ�', 300, '����', 'n');

insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(13, 'SM3', 1400, 1600, 2018, '����', 150, '������', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(14, 'SM5', 1800, 2000, 2018, '����', 180, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(15, 'QM3', 2200, 1500, 2018, '����', 190, '����', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(4, 'SM7', 2400, 2000, 2018, '����', 250, '����', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(5, 'QM6', 2700, 2000, 2016, '����', 240, '����', 'n');

insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(6, 'G4 ������', 3300, 2100, 2017, '�ķ�', 280, '����', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(7, '��������', 2800, 2100, 2018, '�ķ�', 260, '����', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(16, '�ڶ���C', 2200, 2100, 2017, '����', 200, '������', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(17, 'Ƽ���� ����', 1800, 1600, 2016, '4��', 180, '������', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(18, '����', 1600, 2000, 2005, '�ķ�', 140, '����', 'n');
    
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(8, '��Ÿ��', 2700, 2000, 2018, '4��', 250, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(19, '�ڳ�', 1800, 1600, 2017, '����', 170, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(20, 'i30', 1850, 1350, 2017, '����', 180, '������', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(9, '���Ƽ', 5500, 2500, 2016, '�ķ�', 300, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(10, '����', 14000, 5000, 2015, '4��', 400, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(21, '���ν���', 1800, 1600, 2015, '����', 150, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(22, '�׶�ĭ', 2200, 2900, 2006, '�ķ�', 200, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(11, '�ƽ���', 3800, 3000, 2018, '����', 300, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(23, '����2', 1000, 2500, 2007, '�ķ�', 180, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(12, '����ũ����', 3800, 3000, 2013, '����', 300, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(24, 'i40 ���', 2400, 2000, 2017, '����', 200, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(25, '����Ʈ', 1100, 1400, 2017, '����', 100, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(13, '�ƽ�ũ����', 3300, 3300, 2017, '����', 300, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(14, '���Ƽ', 5600, 2500, 2016, '4��', 330, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(15, 'i40', 2600, 2000, 2015, '����', 240, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(26, '����Ʈ��', 1700, 1600, 2011, '����', 150, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(27, 'Ŭ��', 900, 1400, 2010, '����', 90, '����', 'n');

insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(28, '������', 1500, 1600, 2009, '����', 130, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(29, '������', 2500, 3300, 2008, '����', 190, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(16, 'Ʈ���', 15000, 12700, 2014, '�ķ�', 400, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(30, '����ũ', 1000, 1000, 2018, '����', 100, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(31, 'ĸƼ��', 2800, 2000, 2017, '����', 200, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(17, '���ȶ�', 3600, 2500, 2017, '����', 300, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(32, '�ö���', 2000, 2000, 2016, '����', 200, '������', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(33, 'Ʈ����', 1900, 1300, 2016, '����', 160, '����', 'n');

    

insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(18, 'ī����', 3500, 4200, 2015, '�ķ�', 300, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(34, '������', 2400, 2000, 2016, '����', 200, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(35, '�ƺ��� ����', 1400, 1300, 2016, '����', 150, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(19, 'ī����', 4800, 3500, 2016, '�ķ�', 400, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(20, '�����콺', 3000, 1600, 2018, '����', 300, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(36, '��Ʈ EV', 4500, 0, 2018, '����', 190, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(21, '������HV', 3200, 1800, 2017, '����', 300, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(22, 'ī���� SS', 5100, 6000, 2016, '�ķ�', 400, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(23, 'ü���W', 5600, 3200, 2016, '�ķ�', 400, '����', 'n');

    
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(24, 'G70', 3700, 2000, 2017, '4��', 300, '����', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(25, 'G80', 4800, 3300, 2018, '4��', 400, '����', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(1, 'EQ900', 7300, 3800, 2017, '4��', 430, '����', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(2, 'EQ900 L', 15000, 5000, 2017, '4��', 450, '����', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(26, 'G80 ������', 6700, 3300, 2017, '4��', 400, '����', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(37, '���׽ý�Q', 2300, 2000, 2008, '�ķ�', 200, '����', 'n');


insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(3, '��� 458', 42000, 4500, 2012, '�ķ�', 530, '������ī', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(4, '��� 488', 38300, 3900, 2016, '�ķ�', 500, '������ī', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(5, '��� 599', 52000, 6000, 2011, '�ķ�', 550, '������ī', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(6, '��� ����', 43200, 4500, 2014, '�ķ�', 500, '������ī', 'n');


insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(7, '��� F12', 50000, 6200, 2013, '�ķ�', 520, '������ī', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(8, '���ĭ', 37000, 5200, 2018, '4��', 500, '������ī', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(9, '�ƺ�Ÿ����', 57500, 6500, 2012, '4��', 550, '������ī', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(10, '���߸���', 32400, 5200, 2013, '4��', 530, '������ī', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(11, '�����ÿ����', 49000, 6500, 2007, '4��', 520, '������ī', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(12, '���׳�', 44000, 5200, 2013, '4��', 510, '������ī', 'n');

insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(13, 'ī����', 13700, 3000, 2018, '�ķ�', 460, '������ī', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(14, 'ī�긮�÷�', 24700, 3800, 2018, '4��', 500, '������ī', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(15, 'GT3 RS', 24000, 5200, 2016, '�ķ�', 490, '������ī', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(16, 'Ÿ���� GTS', 20000, 3000, 2018, '4��', 470, '������ī', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(17, '�ͺ�', 23000, 3800, 2018, '4��', 480, '������ī', 'n');
    
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(18, '720S', 36900, 4000, 2018, '�ķ�', 500, '������ī', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(19, '570S', 27900, 3800, 2018, '�ķ�', 480, '������ī', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(20, '650Ss', 35900, 3800, 2015, '�ķ�', 500, '������ī', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(21, '650S', 32900, 3800, 2015, '�ķ�', 490, '������ī', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(22, '�ֽ��ϸ�ƾ', 39900, 6000, 2015, '�ķ�', 510, '������ī', 'n');

 
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(27, '���� E', 6100, 2000, 2018, '�ķ�', 400, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(28, '���� GLE', 8500, 2100, 2016, '4��', 300, '����', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(38, '���� CLA', 4400, 2100, 2015, '����', 200, '������', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(29, '���� S', 13000, 3000, 2014, '�ķ�', 400, '����', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(30, '���� GLK', 5500, 2100, 2015, '4��', 300, '����', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(31, '���� SLK', 7000, 1800, 2015, '�ķ�', 350, '����', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(32, '���� CLS', 12600, 3000, 2016, '4��', 380, '����', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(33, '���� CLA', 4800, 2000, 2015, '�ķ�', 250, '����', 'n');   
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(34, '���� M', 9100, 3000, 2015, '4��', 280, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(39, '���� B', 4300, 2100, 2017, '����', 200, '������', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(35, '���� C', 4700, 1800, 2012, '�ķ�', 300, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(36, '���� G', 14800, 3000, 2015, '4��', 400, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(37, '���� A', 3700, 2100, 2015, '����', 250, '������', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(38, '���� SP', 13200, 3000, 2013, '�ķ�', 390, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(39, '���� SLC', 6300, 2000, 2016, '�ķ�', 400, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(40, 'BMW 5', 6300, 2000, 2018, '�ķ�', 400, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(41, 'BMW 3', 4700, 2000, 2018, '�ķ�', 380, '����', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(23, 'BMW X3', 6500, 2000, 2018, '4��', 420, '����', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(24, 'BMW X6', 10400, 3000, 2018, '4��', 480, '����', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(25, 'BMW 7', 13600, 3000, 2017, '4��', 480, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(42, 'BMW X4', 7200, 2000, 2017, '4��', 400, '����', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(40, 'BMW 1', 3600, 2000, 2018, '�ķ�', 200, '������', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(26, 'BMW M5', 14500, 4400, 2018, '4��', 490, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(43, 'BMW 4', 5800, 2000, 2018, '�ķ�', 380, '����', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(44, 'BMW M3', 11600, 3000, 2017, '�ķ�', 400, '������', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(45, 'BMW X1', 5300, 2000, 2016, '4��', 380, '������', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(46, 'BMW M2', 7500, 3000, 2018, '�ķ�', 300, '������', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(27, 'BMW i8', 19500, 1500, 2015, '4��', 490, '����', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(28, 'BMW Gr', 7500, 2000, 2017, '�ķ�', 460, '����', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(29, 'BMW X5', 15500, 4400, 2015, '4��', 480, '����', 'n');

create table my_budget (
    money number(10)
);

select * from car_board3;

select * from car_board2;

delete from car_board where spec between 210 and 550;

select * from car_board order by grade;
select * from car_board;

commit;











insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(1, '�� �� ���', 1000, 1000, 2017, '4��', 160, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(2, '����ũ', 900, 1000, 2017, '4��', 160, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(3, '����Ʈ', 1100, 1200, 2015, '4��', 160, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(4, 'EF�ҳ�Ÿ', 800, 1700, 2004, '4��', 160, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(5, '�ƹݶ�', 1100, 1600, 2011, '4��', 160, '������', 'n');

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(6, '����', 1000, 1000, 2018, '����', 100, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(7, 'K3', 1400, 1600, 2017, '����', 140, '������', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(8, '����3', 1500, 2400, 2017, '�ķ�', 150, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(9, '�����', 1600, 1400, 2017, '����', 160, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(10, '���', 1700, 1600, 2017, '����', 170, '����', 'n');
   
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(11, 'ī����', 1900, 2000, 2017, '����', 190, '������', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(12, 'K3 ����', 2200, 1600, 2017, '����', 200, '������', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(13, 'K7', 2600, 3000, 2017, '����', 220, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(14, '���þ�', 3500, 2000, 2018, '4��', 250, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(15, '���Ϻ�', 4000, 3000, 2018, '�ķ�', 300, '����', 'n');

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(16, 'SM3', 1400, 1600, 2018, '����', 150, '������', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(17, 'SM5', 1800, 2000, 2018, '����', 180, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(18, 'QM3', 2200, 1500, 2018, '����', 190, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(19, 'SM7', 2400, 2000, 2018, '����', 250, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(20, 'QM6', 2700, 2000, 2016, '����', 240, '����', 'n');

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(21, 'G4 ������', 3300, 2100, 2017, '�ķ�', 280, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(22, '��������', 2800, 2100, 2018, '�ķ�', 260, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(23, '�ڶ���C', 2200, 2100, 2017, '����', 200, '������', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(24, 'Ƽ���� ����', 1800, 1600, 2016, '4��', 180, '������', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(25, '����', 1600, 2000, 2005, '�ķ�', 140, '����', 'n');
    
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(26, '��Ÿ��', 2700, 2000, 2018, '4��', 250, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(27, '�ڳ�', 1800, 1600, 2017, '����', 170, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(28, 'i30', 1850, 1350, 2017, '����', 180, '������', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(29, '���Ƽ', 5500, 2500, 2016, '�ķ�', 300, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(30, '����', 14000, 5000, 2015, '4��', 400, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(31, '���ν���', 1800, 1600, 2015, '����', 150, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(32, '�׶�ĭ', 2200, 2900, 2006, '�ķ�', 200, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(33, '�ƽ���', 3800, 3000, 2018, '����', 300, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(34, '����2', 1000, 2500, 2007, '�ķ�', 180, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(35, '����ũ����', 3800, 3000, 2013, '����', 300, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(36, 'i40 ���', 2400, 2000, 2017, '����', 200, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(37, '����Ʈ', 1100, 1400, 2017, '����', 100, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(38, '�ƽ�ũ����', 3300, 3300, 2017, '����', 300, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(39, '���Ƽ', 5600, 2500, 2016, '4��', 330, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(40, 'i40', 2600, 2000, 2015, '����', 240, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(41, '����Ʈ��', 1700, 1600, 2011, '����', 150, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(42, 'Ŭ��', 900, 1400, 2010, '����', 90, '����', 'n');

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(43, '������', 1500, 1600, 2009, '����', 130, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(44, '������', 2500, 3300, 2008, '����', 190, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(45, 'Ʈ���', 15000, 12700, 2014, '�ķ�', 400, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(46, '����ũ', 1000, 1000, 2018, '����', 100, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(47, 'ĸƼ��', 2800, 2000, 2017, '����', 200, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(48, '���ȶ�', 3600, 2500, 2017, '����', 300, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(49, '�ö���', 2000, 2000, 2016, '����', 200, '������', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(50, 'Ʈ����', 1900, 1300, 2016, '����', 160, '����', 'n');

    

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(51, 'ī����', 3500, 4200, 2015, '�ķ�', 300, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(52, '������', 2400, 2000, 2016, '����', 200, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(53, '�ƺ��� ����', 1400, 1300, 2016, '����', 150, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(54, 'ī����', 4800, 3500, 2016, '�ķ�', 400, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(55, '�����콺', 3000, 1600, 2018, '����', 300, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(56, '��Ʈ EV', 4500, 0, 2018, '����', 190, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(57, '������HV', 3200, 1800, 2017, '����', 300, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(58, 'ī���� SS', 5100, 6000, 2016, '�ķ�', 400, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(59, 'ü���W', 5600, 3200, 2016, '�ķ�', 400, '����', 'n');


    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(60, 'G70', 3700, 2000, 2017, '4��', 300, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(61, 'G80', 4800, 3300, 2018, '4��', 400, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(62, 'EQ900', 7300, 3800, 2017, '4��', 430, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(63, 'EQ900 L', 15000, 5000, 2017, '4��', 450, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(64, 'G80 ������', 6700, 3300, 2017, '4��', 400, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(65, '���׽ý�C', 2300, 2000, 2008, '�ķ�', 200, '����', 'n');


insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(66, '��� 458', 42000, 4500, 2012, '�ķ�', 530, '������ī', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(67, '��� 488', 38300, 3900, 2016, '�ķ�', 500, '������ī', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(68, '��� 599', 52000, 6000, 2011, '�ķ�', 550, '������ī', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(69, '��� S', 43200, 4500, 2014, '�ķ�', 500, '������ī', 'n');


insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(70, '��� F12', 50000, 6200, 2013, '�ķ�', 520, '������ī', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(71, '���ĭ', 37000, 5200, 2018, '4��', 500, '������ī', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(72, '�ƺ�Ÿ����', 57500, 6500, 2012, '4��', 550, '������ī', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(73, '���߸���', 32400, 5200, 2013, '4��', 530, '������ī', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(74, '�����ÿ�', 49000, 6500, 2007, '4��', 520, '������ī', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(75, '���׳�', 44000, 5200, 2013, '4��', 510, '������ī', 'n');

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(76, 'ī����', 13700, 3000, 2018, '�ķ�', 460, '������ī', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(77, 'ī�긮�÷�', 24700, 3800, 2018, '4��', 500, '������ī', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(78, 'GT3 RS', 24000, 5200, 2016, '�ķ�', 490, '������ī', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(79, 'GTS', 20000, 3000, 2018, '4��', 470, '������ī', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(80, '�ͺ�', 23000, 3800, 2018, '4��', 480, '������ī', 'n');
    
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(81, '720S', 36900, 4000, 2018, '�ķ�', 500, '������ī', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(82, '570S ', 27900, 3800, 2018, '�ķ�', 480, '������ī', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(83, '650S ', 35900, 3800, 2015, '�ķ�', 500, '������ī', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(84, '650S', 32900, 3800, 2015, '�ķ�', 490, '������ī', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(85, '�ֽ��ϸ�ƾ', 39900, 6000, 2015, '�ķ�', 510, '������ī', 'n');

 
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(86, '���� E', 6100, 2000, 2018, '�ķ�', 400, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(87, '���� GLE', 8500, 2100, 2016, '4��', 300, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(88, '���� CLA', 4400, 2100, 2015, '����', 200, '������', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(89, '���� S', 13000, 3000, 2014, '�ķ�', 400, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(90, '���� GLK', 5500, 2100, 2015, '4��', 300, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(91, '���� SLK', 7000, 1800, 2015, '�ķ�', 350, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(92, '���� CLS', 12600, 3000, 2016, '4��', 380, '����', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(93, '���� CLA', 4800, 2000, 2015, '�ķ�', 250, '����', 'n');   
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(94, '���� M', 9100, 3000, 2015, '4��', 280, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(95, '���� B', 4300, 2100, 2017, '����', 200, '������', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(96, '���� C', 4700, 1800, 2012, '�ķ�', 300, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(97, '���� G', 14800, 3000, 2015, '4��', 400, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(98, '���� A', 3700, 2100, 2015, '����', 250, '������', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(99, '���� Sp', 13200, 3000, 2013, '�ķ�', 390, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(100, '���� SLC', 6300, 2000, 2016, '�ķ�', 400, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(101, 'BMW 5', 6300, 2000, 2018, '�ķ�', 400, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(102, 'BMW 3', 4700, 2000, 2018, '�ķ�', 380, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(103, 'BMW X3', 6500, 2000, 2018, '4��', 420, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(104, 'BMW X6', 10400, 3000, 2018, '4��', 480, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(105, 'BMW 7', 13600, 3000, 2017, '4��', 480, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(106, 'BMW X4', 7200, 2000, 2017, '4��', 400, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(107, 'BMW 1', 3600, 2000, 2018, '�ķ�', 200, '������', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(108, 'BMW M5', 14500, 4400, 2018, '4��', 490, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(109, 'BMW 4', 5800, 2000, 2018, '�ķ�', 380, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(110, 'BMW M3', 11600, 3000, 2017, '�ķ�', 400, '������', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(111, 'BMW X1', 5300, 2000, 2016, '4��', 380, '������', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(112, 'BMW M2', 7500, 3000, 2018, '�ķ�', 300, '������', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(113, 'BMW i8', 19500, 1500, 2015, '4��', 490, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(114, 'BMW Gr', 7500, 2000, 2017, '�ķ�', 460, '����', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(115, 'BMW X5', 15500, 4400, 2015, '4��', 480, '����', 'n');
    
    select * from my_car;
    
