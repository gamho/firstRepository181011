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
    values(1, '¿Ã ´º ¸ð´×', 1000, 1000, 2017, '4·û', 160, '°æÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(2, '½ºÆÄÅ©', 900, 1000, 2017, '4·û', 160, '°æÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(3, '¿¢¼¾Æ®', 1100, 1200, 2015, '4·û', 160, '¼ÒÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(4, 'EF¼Ò³ªÅ¸', 800, 1700, 2004, '4·û', 160, 'ÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(5, '¾Æ¹Ý¶¼', 1100, 1600, 2011, '4·û', 160, 'ÁØÁßÇü', 'n');

insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(6, '·¹ÀÌ', 1000, 1000, 2018, 'Àü·û', 100, '°æÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(7, 'K3', 1400, 1600, 2017, 'Àü·û', 140, 'ÁØÁßÇü', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(8, 'ºÀ°í3', 1500, 2400, 2017, 'ÈÄ·û', 150, '¼ÒÇü', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(9, '½ºÅä´Ð', 1600, 1400, 2017, 'Àü·û', 160, '¼ÒÇü', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(10, '½î¿ï', 1700, 1600, 2017, 'Àü·û', 170, '¼ÒÇü', 'n');
   
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(11, 'Ä«·»½º', 1900, 2000, 2017, 'Àü·û', 190, 'ÁØÁßÇü', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(12, 'K3 À¯·Î', 2200, 1600, 2017, 'Àü·û', 200, 'ÁØÁßÇü', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(1, 'K7', 2600, 3000, 2017, 'Àü·û', 220, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(2, '½ºÆÃ¾î', 3500, 2000, 2018, '4·û', 250, 'ÁßÇü', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(3, '¸ðÇÏºñ', 4000, 3000, 2018, 'ÈÄ·û', 300, '´ëÇü', 'n');

insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(13, 'SM3', 1400, 1600, 2018, 'Àü·û', 150, 'ÁØÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(14, 'SM5', 1800, 2000, 2018, 'Àü·û', 180, 'ÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(15, 'QM3', 2200, 1500, 2018, 'Àü·û', 190, '¼ÒÇü', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(4, 'SM7', 2400, 2000, 2018, 'Àü·û', 250, '´ëÇü', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(5, 'QM6', 2700, 2000, 2016, 'Àü·û', 240, 'ÁßÇü', 'n');

insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(6, 'G4 ·º½ºÅÏ', 3300, 2100, 2017, 'ÈÄ·û', 280, 'ÁßÇü', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(7, 'Åõ¸®½º¸ð', 2800, 2100, 2018, 'ÈÄ·û', 260, '´ëÇü', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(16, 'ÄÚ¶õµµC', 2200, 2100, 2017, 'Àü·û', 200, 'ÁØÁßÇü', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(17, 'Æ¼º¼¸® ¿¡¾î', 1800, 1600, 2016, '4·û', 180, 'ÁØÁßÇü', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(18, '¹«½î', 1600, 2000, 2005, 'ÈÄ·û', 140, 'ÁßÇü', 'n');
    
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(8, '½ÑÅ¸Æä', 2700, 2000, 2018, '4·û', 250, 'ÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(19, 'ÄÚ³ª', 1800, 1600, 2017, 'Àü·û', 170, '¼ÒÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(20, 'i30', 1850, 1350, 2017, 'Àü·û', 180, 'ÁØÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(9, '½ò¶óÆ¼', 5500, 2500, 2016, 'ÈÄ·û', 300, '´ëÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(10, '¿¡Äí½º', 14000, 5000, 2015, '4·û', 400, '´ëÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(21, 'º§·Î½ºÅÍ', 1800, 1600, 2015, 'Àü·û', 150, '¼ÒÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(22, 'Å×¶óÄ­', 2200, 2900, 2006, 'ÈÄ·û', 200, '´ëÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(11, '¾Æ½½¶õ', 3800, 3000, 2018, 'Àü·û', 300, '´ëÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(23, 'Æ÷ÅÍ2', 1000, 2500, 2007, 'ÈÄ·û', 180, '´ëÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(12, 'º£¶óÅ©·çÁî', 3800, 3000, 2013, 'Àü·û', 300, '´ëÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(24, 'i40 »ì·é', 2400, 2000, 2017, 'Àü·û', 200, 'ÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(25, '¿¢¼¾Æ®', 1100, 1400, 2017, 'Àü·û', 100, '¼ÒÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(13, '¸Æ½ºÅ©·çÁî', 3300, 3300, 2017, 'Àü·û', 300, '´ëÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(14, '½ò¶óÆ¼', 5600, 2500, 2016, '4·û', 330, '´ëÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(15, 'i40', 2600, 2000, 2015, 'Àü·û', 240, 'ÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(26, '¿¤¶õÆ®¶ó', 1700, 1600, 2011, 'Àü·û', 150, '¼ÒÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(27, 'Å¬¸¯', 900, 1400, 2010, 'Àü·û', 90, '¼ÒÇü', 'n');

insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(28, 'º£¸£³ª', 1500, 1600, 2009, 'Àü·û', 130, '¼ÒÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(29, '¾ÆÁ¦¶ó', 2500, 3300, 2008, 'Àü·û', 190, '´ëÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(16, 'Æ®¶ó°í', 15000, 12700, 2014, 'ÈÄ·û', 400, '´ëÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(30, '½ºÆÄÅ©', 1000, 1000, 2018, 'Àü·û', 100, '°æÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(31, 'Ä¸Æ¼¹Ù', 2800, 2000, 2017, 'Àü·û', 200, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(17, 'ÀÓÆÈ¶ó', 3600, 2500, 2017, 'Àü·û', 300, 'ÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(32, '¿Ã¶õµµ', 2000, 2000, 2016, 'Àü·û', 200, 'ÁØÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(33, 'Æ®·¢½º', 1900, 1300, 2016, 'Àü·û', 160, '¼ÒÇü', 'n');

    

insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(18, 'Ä«¸¶·Î', 3500, 4200, 2015, 'ÈÄ·û', 300, '´ëÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(34, '¸»¸®ºÎ', 2400, 2000, 2016, 'Àü·û', 200, 'ÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(35, '¾Æº£¿À ¼¼´Ü', 1400, 1300, 2016, 'Àü·û', 150, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(19, 'Ä«¸¶·Î', 4800, 3500, 2016, 'ÈÄ·û', 400, '´ëÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(20, 'ÀÌÄõ³ì½º', 3000, 1600, 2018, 'Àü·û', 300, 'ÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(36, 'º¼Æ® EV', 4500, 0, 2018, 'Àü·û', 190, '¼ÒÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(21, '¸»¸®ºÎHV', 3200, 1800, 2017, 'Àü·û', 300, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(22, 'Ä«¸¶·Î SS', 5100, 6000, 2016, 'ÈÄ·û', 400, '´ëÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(23, 'Ã¼¾î¸ÇW', 5600, 3200, 2016, 'ÈÄ·û', 400, '´ëÇü', 'n');

    
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(24, 'G70', 3700, 2000, 2017, '4·û', 300, '´ëÇü', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(25, 'G80', 4800, 3300, 2018, '4·û', 400, '´ëÇü', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(1, 'EQ900', 7300, 3800, 2017, '4·û', 430, '´ëÇü', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(2, 'EQ900 L', 15000, 5000, 2017, '4·û', 450, '´ëÇü', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(26, 'G80 ½ºÆ÷Ã÷', 6700, 3300, 2017, '4·û', 400, '´ëÇü', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(37, 'Á¦³×½Ã½ºQ', 2300, 2000, 2008, 'ÈÄ·û', 200, 'ÁßÇü', 'n');


insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(3, 'Æä¶ó¸® 458', 42000, 4500, 2012, 'ÈÄ·û', 530, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(4, 'Æä¶ó¸® 488', 38300, 3900, 2016, 'ÈÄ·û', 500, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(5, 'Æä¶ó¸® 599', 52000, 6000, 2011, 'ÈÄ·û', 550, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(6, 'Æä¶ó¸® ½ºÆê', 43200, 4500, 2014, 'ÈÄ·û', 500, '½ºÆ÷Ã÷Ä«', 'n');


insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(7, 'Æä¶ó¸® F12', 50000, 6200, 2013, 'ÈÄ·û', 520, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(8, '¿ì¶óÄ­', 37000, 5200, 2018, '4·û', 500, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(9, '¾Æº¥Å¸µµ¸£', 57500, 6500, 2012, '4·û', 550, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(10, '°¡¾ß¸£µµ', 32400, 5200, 2013, '4·û', 530, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(11, '¹«¸£½Ã¿¤¶ó°í', 49000, 6500, 2007, '4·û', 520, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(12, 'º£³×³ë', 44000, 5200, 2013, '4·û', 510, '½ºÆ÷Ã÷Ä«', 'n');

insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(13, 'Ä«·¹¶ó', 13700, 3000, 2018, 'ÈÄ·û', 460, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(14, 'Ä«ºê¸®¿Ã·¹', 24700, 3800, 2018, '4·û', 500, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(15, 'GT3 RS', 24000, 5200, 2016, 'ÈÄ·û', 490, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(16, 'Å¸¸£°¡ GTS', 20000, 3000, 2018, '4·û', 470, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(17, 'ÅÍº¸', 23000, 3800, 2018, '4·û', 480, '½ºÆ÷Ã÷Ä«', 'n');
    
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(18, '720S', 36900, 4000, 2018, 'ÈÄ·û', 500, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(19, '570S', 27900, 3800, 2018, 'ÈÄ·û', 480, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(20, '650Ss', 35900, 3800, 2015, 'ÈÄ·û', 500, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(21, '650S', 32900, 3800, 2015, 'ÈÄ·û', 490, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(22, '¾Ö½ºÅÏ¸¶Æ¾', 39900, 6000, 2015, 'ÈÄ·û', 510, '½ºÆ÷Ã÷Ä«', 'n');

 
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(27, 'º¥Ã÷ E', 6100, 2000, 2018, 'ÈÄ·û', 400, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(28, 'º¥Ã÷ GLE', 8500, 2100, 2016, '4·û', 300, 'ÁßÇü', 'n');
    insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(38, 'º¥Ã÷ CLA', 4400, 2100, 2015, 'Àü·û', 200, 'ÁØÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(29, 'º¥Ã÷ S', 13000, 3000, 2014, 'ÈÄ·û', 400, '´ëÇü', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(30, 'º¥Ã÷ GLK', 5500, 2100, 2015, '4·û', 300, 'ÁßÇü', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(31, 'º¥Ã÷ SLK', 7000, 1800, 2015, 'ÈÄ·û', 350, 'ÁßÇü', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(32, 'º¥Ã÷ CLS', 12600, 3000, 2016, '4·û', 380, 'ÁßÇü', 'n');
    insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(33, 'º¥Ã÷ CLA', 4800, 2000, 2015, 'ÈÄ·û', 250, 'ÁßÇü', 'n');   
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(34, 'º¥Ã÷ M', 9100, 3000, 2015, '4·û', 280, 'ÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(39, 'º¥Ã÷ B', 4300, 2100, 2017, 'Àü·û', 200, 'ÁØÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(35, 'º¥Ã÷ C', 4700, 1800, 2012, 'ÈÄ·û', 300, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(36, 'º¥Ã÷ G', 14800, 3000, 2015, '4·û', 400, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(37, 'º¥Ã÷ A', 3700, 2100, 2015, 'Àü·û', 250, 'ÁØÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(38, 'º¥Ã÷ SP', 13200, 3000, 2013, 'ÈÄ·û', 390, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(39, 'º¥Ã÷ SLC', 6300, 2000, 2016, 'ÈÄ·û', 400, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(40, 'BMW 5', 6300, 2000, 2018, 'ÈÄ·û', 400, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(41, 'BMW 3', 4700, 2000, 2018, 'ÈÄ·û', 380, 'ÁßÇü', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(23, 'BMW X3', 6500, 2000, 2018, '4·û', 420, 'ÁßÇü', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(24, 'BMW X6', 10400, 3000, 2018, '4·û', 480, 'ÁßÇü', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(25, 'BMW 7', 13600, 3000, 2017, '4·û', 480, '´ëÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(42, 'BMW X4', 7200, 2000, 2017, '4·û', 400, 'ÁßÇü', 'n');
insert into car_board(no, name, price, displ, year, type, spec, grade, property)
    values(40, 'BMW 1', 3600, 2000, 2018, 'ÈÄ·û', 200, 'ÁØÁßÇü', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(26, 'BMW M5', 14500, 4400, 2018, '4·û', 490, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(43, 'BMW 4', 5800, 2000, 2018, 'ÈÄ·û', 380, 'ÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(44, 'BMW M3', 11600, 3000, 2017, 'ÈÄ·û', 400, 'ÁØÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(45, 'BMW X1', 5300, 2000, 2016, '4·û', 380, 'ÁØÁßÇü', 'n');
insert into car_board2(no, name, price, displ, year, type, spec, grade, property)
    values(46, 'BMW M2', 7500, 3000, 2018, 'ÈÄ·û', 300, 'ÁØÁßÇü', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(27, 'BMW i8', 19500, 1500, 2015, '4·û', 490, 'ÁßÇü', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(28, 'BMW Gr', 7500, 2000, 2017, 'ÈÄ·û', 460, 'ÁßÇü', 'n');
insert into car_board3(no, name, price, displ, year, type, spec, grade, property)
    values(29, 'BMW X5', 15500, 4400, 2015, '4·û', 480, 'ÁßÇü', 'n');

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
    values(1, '¿Ã ´º ¸ð´×', 1000, 1000, 2017, '4·û', 160, '°æÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(2, '½ºÆÄÅ©', 900, 1000, 2017, '4·û', 160, '°æÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(3, '¿¢¼¾Æ®', 1100, 1200, 2015, '4·û', 160, '¼ÒÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(4, 'EF¼Ò³ªÅ¸', 800, 1700, 2004, '4·û', 160, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(5, '¾Æ¹Ý¶¼', 1100, 1600, 2011, '4·û', 160, 'ÁØÁßÇü', 'n');

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(6, '·¹ÀÌ', 1000, 1000, 2018, 'Àü·û', 100, '°æÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(7, 'K3', 1400, 1600, 2017, 'Àü·û', 140, 'ÁØÁßÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(8, 'ºÀ°í3', 1500, 2400, 2017, 'ÈÄ·û', 150, '¼ÒÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(9, '½ºÅä´Ð', 1600, 1400, 2017, 'Àü·û', 160, '¼ÒÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(10, '½î¿ï', 1700, 1600, 2017, 'Àü·û', 170, '¼ÒÇü', 'n');
   
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(11, 'Ä«·»½º', 1900, 2000, 2017, 'Àü·û', 190, 'ÁØÁßÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(12, 'K3 À¯·Î', 2200, 1600, 2017, 'Àü·û', 200, 'ÁØÁßÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(13, 'K7', 2600, 3000, 2017, 'Àü·û', 220, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(14, '½ºÆÃ¾î', 3500, 2000, 2018, '4·û', 250, 'ÁßÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(15, '¸ðÇÏºñ', 4000, 3000, 2018, 'ÈÄ·û', 300, '´ëÇü', 'n');

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(16, 'SM3', 1400, 1600, 2018, 'Àü·û', 150, 'ÁØÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(17, 'SM5', 1800, 2000, 2018, 'Àü·û', 180, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(18, 'QM3', 2200, 1500, 2018, 'Àü·û', 190, '¼ÒÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(19, 'SM7', 2400, 2000, 2018, 'Àü·û', 250, '´ëÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(20, 'QM6', 2700, 2000, 2016, 'Àü·û', 240, 'ÁßÇü', 'n');

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(21, 'G4 ·º½ºÅÏ', 3300, 2100, 2017, 'ÈÄ·û', 280, 'ÁßÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(22, 'Åõ¸®½º¸ð', 2800, 2100, 2018, 'ÈÄ·û', 260, '´ëÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(23, 'ÄÚ¶õµµC', 2200, 2100, 2017, 'Àü·û', 200, 'ÁØÁßÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(24, 'Æ¼º¼¸® ¿¡¾î', 1800, 1600, 2016, '4·û', 180, 'ÁØÁßÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(25, '¹«½î', 1600, 2000, 2005, 'ÈÄ·û', 140, 'ÁßÇü', 'n');
    
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(26, '½ÑÅ¸Æä', 2700, 2000, 2018, '4·û', 250, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(27, 'ÄÚ³ª', 1800, 1600, 2017, 'Àü·û', 170, '¼ÒÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(28, 'i30', 1850, 1350, 2017, 'Àü·û', 180, 'ÁØÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(29, '½ò¶óÆ¼', 5500, 2500, 2016, 'ÈÄ·û', 300, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(30, '¿¡Äí½º', 14000, 5000, 2015, '4·û', 400, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(31, 'º§·Î½ºÅÍ', 1800, 1600, 2015, 'Àü·û', 150, '¼ÒÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(32, 'Å×¶óÄ­', 2200, 2900, 2006, 'ÈÄ·û', 200, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(33, '¾Æ½½¶õ', 3800, 3000, 2018, 'Àü·û', 300, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(34, 'Æ÷ÅÍ2', 1000, 2500, 2007, 'ÈÄ·û', 180, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(35, 'º£¶óÅ©·çÁî', 3800, 3000, 2013, 'Àü·û', 300, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(36, 'i40 »ì·é', 2400, 2000, 2017, 'Àü·û', 200, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(37, '¿¢¼¾Æ®', 1100, 1400, 2017, 'Àü·û', 100, '¼ÒÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(38, '¸Æ½ºÅ©·çÁî', 3300, 3300, 2017, 'Àü·û', 300, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(39, '½ò¶óÆ¼', 5600, 2500, 2016, '4·û', 330, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(40, 'i40', 2600, 2000, 2015, 'Àü·û', 240, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(41, '¿¤¶õÆ®¶ó', 1700, 1600, 2011, 'Àü·û', 150, '¼ÒÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(42, 'Å¬¸¯', 900, 1400, 2010, 'Àü·û', 90, '¼ÒÇü', 'n');

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(43, 'º£¸£³ª', 1500, 1600, 2009, 'Àü·û', 130, '¼ÒÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(44, '¾ÆÁ¦¶ó', 2500, 3300, 2008, 'Àü·û', 190, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(45, 'Æ®¶ó°í', 15000, 12700, 2014, 'ÈÄ·û', 400, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(46, '½ºÆÄÅ©', 1000, 1000, 2018, 'Àü·û', 100, '°æÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(47, 'Ä¸Æ¼¹Ù', 2800, 2000, 2017, 'Àü·û', 200, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(48, 'ÀÓÆÈ¶ó', 3600, 2500, 2017, 'Àü·û', 300, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(49, '¿Ã¶õµµ', 2000, 2000, 2016, 'Àü·û', 200, 'ÁØÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(50, 'Æ®·¢½º', 1900, 1300, 2016, 'Àü·û', 160, '¼ÒÇü', 'n');

    

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(51, 'Ä«¸¶·Î', 3500, 4200, 2015, 'ÈÄ·û', 300, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(52, '¸»¸®ºÎ', 2400, 2000, 2016, 'Àü·û', 200, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(53, '¾Æº£¿À ¼¼´Ü', 1400, 1300, 2016, 'Àü·û', 150, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(54, 'Ä«¸¶·Î', 4800, 3500, 2016, 'ÈÄ·û', 400, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(55, 'ÀÌÄõ³ì½º', 3000, 1600, 2018, 'Àü·û', 300, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(56, 'º¼Æ® EV', 4500, 0, 2018, 'Àü·û', 190, '¼ÒÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(57, '¸»¸®ºÎHV', 3200, 1800, 2017, 'Àü·û', 300, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(58, 'Ä«¸¶·Î SS', 5100, 6000, 2016, 'ÈÄ·û', 400, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(59, 'Ã¼¾î¸ÇW', 5600, 3200, 2016, 'ÈÄ·û', 400, '´ëÇü', 'n');


    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(60, 'G70', 3700, 2000, 2017, '4·û', 300, '´ëÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(61, 'G80', 4800, 3300, 2018, '4·û', 400, '´ëÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(62, 'EQ900', 7300, 3800, 2017, '4·û', 430, '´ëÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(63, 'EQ900 L', 15000, 5000, 2017, '4·û', 450, '´ëÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(64, 'G80 ½ºÆ÷Ã÷', 6700, 3300, 2017, '4·û', 400, '´ëÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(65, 'Á¦³×½Ã½ºC', 2300, 2000, 2008, 'ÈÄ·û', 200, 'ÁßÇü', 'n');


insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(66, 'Æä¶ó¸® 458', 42000, 4500, 2012, 'ÈÄ·û', 530, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(67, 'Æä¶ó¸® 488', 38300, 3900, 2016, 'ÈÄ·û', 500, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(68, 'Æä¶ó¸® 599', 52000, 6000, 2011, 'ÈÄ·û', 550, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(69, 'Æä¶ó¸® S', 43200, 4500, 2014, 'ÈÄ·û', 500, '½ºÆ÷Ã÷Ä«', 'n');


insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(70, 'Æä¶ó¸® F12', 50000, 6200, 2013, 'ÈÄ·û', 520, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(71, '¿ì¶óÄ­', 37000, 5200, 2018, '4·û', 500, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(72, '¾Æº¥Å¸µµ¸£', 57500, 6500, 2012, '4·û', 550, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(73, '°¡¾ß¸£µµ', 32400, 5200, 2013, '4·û', 530, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(74, '¹«¸£½Ã¿¤', 49000, 6500, 2007, '4·û', 520, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(75, 'º£³×³ë', 44000, 5200, 2013, '4·û', 510, '½ºÆ÷Ã÷Ä«', 'n');

insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(76, 'Ä«·¹¶ó', 13700, 3000, 2018, 'ÈÄ·û', 460, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(77, 'Ä«ºê¸®¿Ã·¹', 24700, 3800, 2018, '4·û', 500, '½ºÆ÷Ã÷Ä«', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(78, 'GT3 RS', 24000, 5200, 2016, 'ÈÄ·û', 490, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(79, 'GTS', 20000, 3000, 2018, '4·û', 470, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(80, 'ÅÍº¸', 23000, 3800, 2018, '4·û', 480, '½ºÆ÷Ã÷Ä«', 'n');
    
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(81, '720S', 36900, 4000, 2018, 'ÈÄ·û', 500, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(82, '570S ', 27900, 3800, 2018, 'ÈÄ·û', 480, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(83, '650S ', 35900, 3800, 2015, 'ÈÄ·û', 500, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(84, '650S', 32900, 3800, 2015, 'ÈÄ·û', 490, '½ºÆ÷Ã÷Ä«', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(85, '¾Ö½ºÅÏ¸¶Æ¾', 39900, 6000, 2015, 'ÈÄ·û', 510, '½ºÆ÷Ã÷Ä«', 'n');

 
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(86, 'º¥Ã÷ E', 6100, 2000, 2018, 'ÈÄ·û', 400, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(87, 'º¥Ã÷ GLE', 8500, 2100, 2016, '4·û', 300, 'ÁßÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(88, 'º¥Ã÷ CLA', 4400, 2100, 2015, 'Àü·û', 200, 'ÁØÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(89, 'º¥Ã÷ S', 13000, 3000, 2014, 'ÈÄ·û', 400, '´ëÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(90, 'º¥Ã÷ GLK', 5500, 2100, 2015, '4·û', 300, 'ÁßÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(91, 'º¥Ã÷ SLK', 7000, 1800, 2015, 'ÈÄ·û', 350, 'ÁßÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(92, 'º¥Ã÷ CLS', 12600, 3000, 2016, '4·û', 380, 'ÁßÇü', 'n');
    insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(93, 'º¥Ã÷ CLA', 4800, 2000, 2015, 'ÈÄ·û', 250, 'ÁßÇü', 'n');   
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(94, 'º¥Ã÷ M', 9100, 3000, 2015, '4·û', 280, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(95, 'º¥Ã÷ B', 4300, 2100, 2017, 'Àü·û', 200, 'ÁØÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(96, 'º¥Ã÷ C', 4700, 1800, 2012, 'ÈÄ·û', 300, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(97, 'º¥Ã÷ G', 14800, 3000, 2015, '4·û', 400, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(98, 'º¥Ã÷ A', 3700, 2100, 2015, 'Àü·û', 250, 'ÁØÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(99, 'º¥Ã÷ Sp', 13200, 3000, 2013, 'ÈÄ·û', 390, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(100, 'º¥Ã÷ SLC', 6300, 2000, 2016, 'ÈÄ·û', 400, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(101, 'BMW 5', 6300, 2000, 2018, 'ÈÄ·û', 400, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(102, 'BMW 3', 4700, 2000, 2018, 'ÈÄ·û', 380, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(103, 'BMW X3', 6500, 2000, 2018, '4·û', 420, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(104, 'BMW X6', 10400, 3000, 2018, '4·û', 480, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(105, 'BMW 7', 13600, 3000, 2017, '4·û', 480, '´ëÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(106, 'BMW X4', 7200, 2000, 2017, '4·û', 400, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(107, 'BMW 1', 3600, 2000, 2018, 'ÈÄ·û', 200, 'ÁØÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(108, 'BMW M5', 14500, 4400, 2018, '4·û', 490, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(109, 'BMW 4', 5800, 2000, 2018, 'ÈÄ·û', 380, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(110, 'BMW M3', 11600, 3000, 2017, 'ÈÄ·û', 400, 'ÁØÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(111, 'BMW X1', 5300, 2000, 2016, '4·û', 380, 'ÁØÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(112, 'BMW M2', 7500, 3000, 2018, 'ÈÄ·û', 300, 'ÁØÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(113, 'BMW i8', 19500, 1500, 2015, '4·û', 490, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(114, 'BMW Gr', 7500, 2000, 2017, 'ÈÄ·û', 460, 'ÁßÇü', 'n');
insert into car_board4(no, name, price, displ, year, type, spec, grade, property)
    values(115, 'BMW X5', 15500, 4400, 2015, '4·û', 480, 'ÁßÇü', 'n');
    
    select * from my_car;
    
