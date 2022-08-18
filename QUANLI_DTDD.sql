CREATE TABLE THELOAI
(
MATHELOAI CHAR(5) NOT NULL,
TENLOAI NVARCHAR2(50),
CONSTRAINT PK_THELOAI PRIMARY KEY (MATHELOAI)
)

CREATE TABLE DIENTHOAI
(
MADIENTHOAI CHAR(5) NOT NULL,
TENDIENTHOAI NVARCHAR2(100),
MATHELOAI CHAR(5),
GIA VARCHAR(50),
MOTA NVARCHAR2(2000),
CONSTRAINT PK_DIENTHOAI PRIMARY KEY (MADIENTHOAI),
CONSTRAINT FK_DIENTHOAI FOREIGN KEY (MATHELOAI) REFERENCES THELOAI(MATHELOAI)
)

CREATE TABLE KHACHHANG
(
MAKH CHAR(5) NOT NULL,
TENKHACHHANG NVARCHAR2(100),
NGAYSINH DATE,
GIOITINH NVARCHAR2(5),
DIACHI NVARCHAR2(500),
CONSTRAINT PK_KHACHHANG PRIMARY KEY (MAKH)
)

CREATE TABLE HOADON
(
MAHD CHAR(5) NOT NULL,
NGAYBAN DATE,
MAKH CHAR(5),
THANHTIEN INT,
CONSTRAINT PK_HOADON PRIMARY KEY (MAHD),
CONSTRAINT FK_HOADON FOREIGN KEY (MAKH) REFERENCES KHACHHANG (MAKH)
)

CREATE TABLE CTHD
(
MAHD CHAR(5) NOT NULL,
MADIENTHOAI CHAR(5) NOT NULL,
SL INT,
CONSTRAINT PK_CTHD PRIMARY KEY (MAHD,MADIENTHOAI),
CONSTRAINT FK_CTHD_DIENTHOAI FOREIGN KEY (MADIENTHOAI) REFERENCES DIENTHOAI(MADIENTHOAI),
CONSTRAINT FK_CTHD_HOADON FOREIGN KEY (MAHD) REFERENCES HOADON (MAHD)
)

CREATE TABLE LOGIN
(
USERNAME VARCHAR2(50),
PASSWORD VARCHAR2(50),
CONSTRAINT PK_LOGIN PRIMARY KEY (USERNAME)
)

-----------------------------------------------
INSERT INTO THELOAI VALUES('1',N'Iphone');
INSERT INTO THELOAI VALUES('2',N'Samsung');
INSERT INTO THELOAI VALUES('3',N'OPPO');
INSERT INTO THELOAI VALUES('4',N'Vivo');
INSERT INTO THELOAI VALUES('5',N'Nokia');
INSERT INTO THELOAI VALUES('6',N'Vsmark');
INSERT INTO THELOAI VALUES('7',N'Realme');
INSERT INTO THELOAI VALUES('8',N'Xiaomi');


INSERT INTO DIENTHOAI VALUES('1',N'Iphone 12','1','20.490.000',NULL);
INSERT INTO DIENTHOAI VALUES('2',N'Iphone 12 Pro Max','1','30.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('3',N'Iphone 11','1','14.490.000',NULL);
INSERT INTO DIENTHOAI VALUES('4',N'Iphone XR','1','12.490.000',NULL);
INSERT INTO DIENTHOAI VALUES('5',N'Iphone SE','1','11.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('6',N'Samsung Galaxy Z Fold 3 5G','2','41.490.000',NULL);
INSERT INTO DIENTHOAI VALUES('7',N'Samsung Galaxy A52 5G','2','9.790.000',NULL);
INSERT INTO DIENTHOAI VALUES('8',N'Samsung Galaxy Z Fold 2 5G','2','50.000.000',NULL);
INSERT INTO DIENTHOAI VALUES('9',N'Samsung Galaxy S21 Ultra 5G','2','25.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('10',N'Samsung Galaxy A72','2','10.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('11',N'OPPO Reno6 Z 5G','3','9.490.000',NULL);
INSERT INTO DIENTHOAI VALUES('12',N'OPPO Reno6 5G','3','12.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('13',N'OPPO A74','3','6.690.000',NULL);
INSERT INTO DIENTHOAI VALUES('14',N'OPPO Find X3 Pro 5G','3','26.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('15',N'OPPO Reno5 5G','3','11.390.000',NULL);
INSERT INTO DIENTHOAI VALUES('16',N'Vivo Y12s','4','3.790.000',NULL);
INSERT INTO DIENTHOAI VALUES('17',N'Vivo Y53s','4','6.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('18',N'Vivo V20','4','7.790.000',NULL);
INSERT INTO DIENTHOAI VALUES('19',N'Vivo V21 5G','4','9.490.000',NULL);
INSERT INTO DIENTHOAI VALUES('20',N'Vivo Y53s','4','6.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('21',N'Nokia C30','5','2.490.000',NULL);
INSERT INTO DIENTHOAI VALUES('22',N'Nokia 3.4','5','2.790.000',NULL);
INSERT INTO DIENTHOAI VALUES('23',N'Nokia 2.4','5','2.290.000',NULL);
INSERT INTO DIENTHOAI VALUES('24',N'Nokia C20','5','1.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('25',N'Nokia 8000 4G','5','1.490.000',NULL);
INSERT INTO DIENTHOAI VALUES('26',N'Vsmark Star 5','6','2.490.000',NULL);
INSERT INTO DIENTHOAI VALUES('27',N'Vsmark Aris Pro','6','5.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('28',N'Vsmark Aris','6','5.190.000',NULL);
INSERT INTO DIENTHOAI VALUES('29',N'Vsmark Live 4 6GB','6','3.590.000',NULL);
INSERT INTO DIENTHOAI VALUES('30',N'Vsmark Joy 4','6','3.290.000',NULL);
INSERT INTO DIENTHOAI VALUES('31',N'Realme C21Y 4GB','7','3.690.000',NULL);
INSERT INTO DIENTHOAI VALUES('32',N'Realme C25s','7','4.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('33',N'Realme 8 Pro vàng r?c r?,'7','8.690.000',NULL);
INSERT INTO DIENTHOAI VALUES('34',N'Realme 7 Pro','7','7.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('35',N'Realme 8','7','7.290.000',NULL);
INSERT INTO DIENTHOAI VALUES('36',N'Xiaomi Mi 11 Lite','8','7.590.000',NULL);
INSERT INTO DIENTHOAI VALUES('37',N'Xiaomi Redmi Note 10 5G','8','5.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('38',N'Xiaomi Mi 11 5G','8','16.990.000',NULL);
INSERT INTO DIENTHOAI VALUES('39',N'Xiaomi Redmi Note 10 Pro','8','7.490.000',NULL);
INSERT INTO DIENTHOAI VALUES('40',N'Xiaomi POCO X3 NFC','8','6.190.000',NULL);

INSERT INTO KHACHHANG VALUES('KH01',N'Nguyen Van A',TO_DATE('02 Jan 2001','DD MONTH YYYY'),N'Nam',N'TP.HCM');
INSERT INTO KHACHHANG VALUES('KH02',N'Nguyen Van B',TO_DATE('02 Jan 2001','DD MONTH YYYY'),N'Nam',N'TP.HCM');
INSERT INTO KHACHHANG VALUES('KH03',N'Nguyen Van C',TO_DATE('02 Jan 2001','DD MONTH YYYY'),N'Nam',N'TP.HCM');
INSERT INTO KHACHHANG VALUES('KH04',N'Nguyen Van D',TO_DATE('02 Jan 2001','DD MONTH YYYY'),N'Nam',N'TP.HCM');
INSERT INTO KHACHHANG VALUES('KH05',N'Nguyen Van E',TO_DATE('02 Jan 2001','DD MONTH YYYY'),N'Nam',N'TP.HCM');
INSERT INTO KHACHHANG VALUES('KH06',N'Nguyen Van F',TO_DATE('02 Jan 2001','DD MONTH YYYY'),N'Nam',N'TP.HCM');
INSERT INTO KHACHHANG VALUES('KH07',N'Nguyen Van G',TO_DATE('02 Jan 2001','DD MONTH YYYY'),N'Nam',N'TP.HCM');
INSERT INTO KHACHHANG VALUES('KH08',N'Nguyen Van H',TO_DATE('02 Jan 2001','DD MONTH YYYY'),N'Nam',N'TP.HCM');

INSERT INTO HOADON VALUES('1',TO_DATE('29 Jan 2021','DD MONTH YYYY'),'KH01',10800000);
INSERT INTO HOADON VALUES('2',TO_DATE('29 Jan 2021','DD MONTH YYYY'),'KH02',25600000);
INSERT INTO HOADON VALUES('3',TO_DATE('29 Jan 2021','DD MONTH YYYY'),'KH03',10000000);
INSERT INTO HOADON VALUES('5',TO_DATE('29 Jan 2021','DD MONTH YYYY'),'KH04',20800000);
INSERT INTO HOADON VALUES('4',TO_DATE('29 Jan 2021','DD MONTH YYYY'),'KH05',30800000);
INSERT INTO HOADON VALUES('6',TO_DATE('29 Jan 2021','DD MONTH YYYY'),'KH06',150800000);
INSERT INTO HOADON VALUES('7',TO_DATE('29 Jan 2021','DD MONTH YYYY'),'KH07',8550000);
INSERT INTO HOADON VALUES('8',TO_DATE('29 Jan 2021','DD MONTH YYYY'),'KH08',86600000);

INSERT INTO CTHD VALUES('1','4',3);
INSERT INTO CTHD VALUES('2','10',56);
INSERT INTO CTHD VALUES('3','1',32);
INSERT INTO CTHD VALUES('4','2',31);
INSERT INTO CTHD VALUES('5','5',33);
INSERT INTO CTHD VALUES('6','9',34);
INSERT INTO CTHD VALUES('7','12',35);
INSERT INTO CTHD VALUES('8','11',36);


INSERT INTO LOGIN VALUES ('sys','123');
INSERT INTO LOGIN VALUES ('hr','123');
INSERT INTO LOGIN VALUES ('trungtin1','123');
INSERT INTO LOGIN VALUES ('trungtin2','123');
INSERT INTO LOGIN VALUES ('trungtin3','123');
-------------------------------------------------------------------
--rang buoc
alter table DIENTHOAI
add constraint UK_TDT unique (TENDIENTHOAI);
alter table THELOAI
add constraint UK_TL unique (TENLOAI);
alter table CTHD
add constraint CK_CTHD check(SL>0);
alter table HOADON
add constraint CK_TT check (THANHTIEN >0);


--tao tablespaces
select * from dba_tablespaces;
CREATE TABLESPACE QL_DTDD1 DATAFILE 'dtdd1.dbf' size 200M, 'dtdd2.dbf' size 200M;
CREATE TABLESPACE QL_DTDD2 DATAFILE 'dtdd3.dbf' size 200M, 'dtdd4.dbf' size 200M;
--bo sung datafile vao tablespace
ALTER TABLESPACE QL_DTDD2 ADD DATAFILE 'dtdd5.dbf' size 200M;

--tao user
CREATE USER trungtin1 IDENTIFIED BY 123 DEFAULT TABLESPACE QL_DTDD1
TEMPORARY TABLESPACE TEMP
QUOTA 1M ON QL_DTDD1 ;
CREATE USER trungtin2 IDENTIFIED BY 123 DEFAULT TABLESPACE QL_DTDD2
TEMPORARY TABLESPACE TEMP
QUOTA 1M ON QL_DTDD2 ;
ALTER USER trungtin1 QUOTA 2M ON QL_DTDD1;
ALTER USER trungtin2 QUOTA 2M ON QL_DTDD2;

--tao quyen
GRANT CREATE SESSION,CREATE TABLE TO trungtin1
WITH ADMIN OPTION;
GRANT CREATE SESSION,CREATE TABLE TO trungtin2
WITH ADMIN OPTION;
REVOKE CREATE TABLE FROM trungtin1;
GRANT select,update ON DIENTHOAI to trungtin1;

--quan ly nhom quyen
CREATE ROLE NhanVien;
GRANT SELECT, INSERT, DELETE, UPDATE ON DIENTHOAI TO NhanVien;
GRANT NhanVien TO trungtin1;
CREATE ROLE KhachHang;
GRANT SELECT ON DIENTHOAI TO KhachHang;
GRANT KhachHang TO trungtin2;
--thu hoi nhom quyen
REVOKE NhanVien FROM trungtin1;
REVOKE KhachHang FROM trungtin2;

--TAO PROFILE
CREATE PROFILE PROFILE1 LIMIT 
CONNECT_TIME UNLIMITED
PASSWORD_REUSE_MAX 2
PASSWORD_LIFE_TIME 60
PASSWORD_GRACE_TIME 7
FAILED_LOGIN_ATTEMPTS 10
PASSWORD_LOCK_TIME 1

CREATE PROFILE PROFILE2 LIMIT
CPU_PER_SESSION 6000
CPU_PER_CALL UNLIMITED
IDLE_TIME UNLIMITED
PASSWORD_REUSE_MAX 2
PASSWORD_LIFE_TIME 60
PASSWORD_GRACE_TIME 7

DROP PROFILE PROFILE1
DROP PROFILE PROFILE2

--audit
SELECT * FROM AUDIT_UNIFIED_POLICIES;
CREATE AUDIT POLICY audit1 ACTIONS SELECT, UPDATE, LOCK ON DIENTHOAI;
CREATE AUDIT POLICY audit2 ACTIONS SELECT, UPDATE, LOCK ON HOADON;
CREATE AUDIT POLICY audit3 ACTIONS SELECT, UPDATE, LOCK ON CTHD;
CREATE AUDIT POLICY audit4 ACTIONS SELECT, UPDATE, LOCK ON THELOAI;

AUDIT POLICY audit1 BY trungtin1;

--CURSOR
--Su dung explicit cursor in ra mã dien thoai, tên, mã th? lo?i, giá kèm danh so thu tu phía truoc
SET SERVEROUTPUT ON
/
DECLARE
    V_MADIENTHOAI DIENTHOAI.MADIENTHOAI%TYPE;
    V_TENDIENTHOAI DIENTHOAI.TENDIENTHOAI%TYPE;
    V_MATHELOAI DIENTHOAI.MATHELOAI%TYPE;
    V_GIA DIENTHOAI.GIA%TYPE;
    CURSOR curl1 IS SELECT MADIENTHOAI,TENDIENTHOAI,MATHELOAI,GIA FROM DIENTHOAI; 
BEGIN 
    OPEN curl1;
    DBMS_OUTPUT.PUT_LINE('-MADIENTHOAI - TENDIENTHOAI - MATHELOAI - GIA ');
    LOOP
        FETCH curl1 INTO V_MADIENTHOAI,V_TENDIENTHOAI,V_MATHELOAI,V_GIA;
        EXIT WHEN curl1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(V_MADIENTHOAI||'-'||V_TENDIENTHOAI||'-'||V_MATHELOAI||'-'||V_GIA);
    END LOOP;
    CLOSE curl1;
END;
/
--S? d?ng explicit cursor th?c hi?n in ra danh sách mã the loai và ten loai. ?ng v?i moi loai in ra
--danh sách dien thoai các loai: ma dien thoai , ten dien thoai. M?i loai ??u ???c ?ánh s? th? t? theo d?ng A, B, C… và m?i dien thoai ??u ???c ?ánh s? th? t? 1, 2, 3….
SET SERVEROUTPUT ON
/
DECLARE
    V_MATHELOAI THELOAI.MATHELOAI%TYPE;
    V_TENLOAI THELOAI.TENLOAI%TYPE;
    CURSOR CS1 IS SELECT MATHELOAI,TENLOAI FROM THELOAI;
    CURSOR CS2 IS SELECT MADIENTHOAI,TENDIENTHOAI FROM DIENTHOAI;
    V_MADIENTHOAI DIENTHOAI.MADIENTHOAI%TYPE;
    V_TENDIENTHOAI DIENTHOAI.TENDIENTHOAI%TYPE;
BEGIN
    OPEN CS1;
    LOOP
        FETCH CS1 INTO V_MATHELOAI, V_TENLOAI;
        EXIT WHEN CS1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(CHR(64+CS1%ROWCOUNT)||' '||V_MATHELOAI||'-'||V_TENLOAI);
        BEGIN
            OPEN CS2;
            LOOP
                FETCH CS2 INTO V_MADIENTHOAI,V_TENDIENTHOAI;
                EXIT WHEN CS2%NOTFOUND;
                DBMS_OUTPUT.PUT_LINE('    '||CS2%ROWCOUNT||' '||V_MADIENTHOAI||' '||V_TENDIENTHOAI);
            END LOOP;
            CLOSE CS2;
        END;
    END LOOP;
    CLOSE CS1;
END;
/
--Xóa các dòng v?i MA DIEN THOAI ???c ch? ??nh tr??c và in ra s? dòng ???c xóa.
DECLARE
    V_ROWS_DELETE VARCHAR2(30);
    V_EMPNO DIENTHOAI.MADIENTHOAI%TYPE := 14;
BEGIN
    DELETE FROM DIENTHOAI
    WHERE MADIENTHOAI = V_EMPNO;
    V_ROWS_DELETE := (SQL%ROWCOUNT || 'row deleted.');
    DBMS_OUTPUT.PUT_LINE (V_ROWS_DELETE);
END;
--In ra man hinh madienthoai, tendienthoai dua vao matheloai
DECLARE 
    CURSOR CS3 IS
    SELECT MADIENTHOAI, TENDIENTHOAI FROM DIENTHOAI
    WHERE MATHELOAI = 1;
    V_MADT DIENTHOAI.MADIENTHOAI%TYPE;
    V_TENDT DIENTHOAI.TENDIENTHOAI%TYPE;
BEGIN
    OPEN CS3;
    FETCH CS3 INTO V_MADT, V_TENDT;
    DBMS_OUTPUT.PUT_LINE(V_MADT ||' '||V_TENDT);
END;
/

----TRIGGER
--tao trigger theo log on
CREATE OR REPLACE TRIGGER logon
AFTER LOGON ON SCHEMA
BEGIN
    INSERT INTO TAIKHOAN(USERNAME,PASSWORD)
    VALUES(trungtin,123);
END;
/
--tao trigger theo log off
CREATE OR REPLACE TRIGGER logoff
AFTER LOGOFF ON SCHEMA
BEGIN
    INSERT INTO TAIKHOAN(USERNAME,PASSWORD)
    VALUES(trungtin,123);
END;
/
--Gia cua madienthoai duoc chi dinh khong the be hon 10000000
CREATE OR REPLACE TRIGGER trigger1 
BEFORE INSERT OR UPDATE OF GIA ON DIENTHOAI
FOR EACH ROW
BEGIN
    IF NOT (:NEW.MADIENTHOAI IN ('1','2','3','4'))
        AND :NEW.GIA < 10000000 THEN
        RAISE_APPLICATION_ERROR (-20202,'Gia khong the be hon 10000000');
    END IF;
END;

CREATE VIEW view_user AS
SELECT username,password,default_tablespace,profile,account_status
FROM dba_users
select * from view_user

CREATE OR REPLACE PROCEDURE taouser (usn in sys.dba_users.username%type,pas in sys.dba_users.password%type,
def in sys.dba_users.default_tablespace%type,qt in varchar, pro in sys.dba_users.profile%type,rol in sys.dba_roles.role%type)
is
s varchar2(1000);
x varchar2(1000);
begin
    s:='create user '|| usn ||'indentified by'|| pas ||' default_tablespace'|| def ||'quota'|| qt ||'M on' || def ||'profile'|| pro;
    EXECUTE IMMEDIATE (s);
    /*x:='grant' || rol || 'to' ||usn;
    EXECUTE IMMEDIATE (x);
    INSERT INTO LOGIN VALUES(usn,pas);
    commit;*/
end;
exec taouser ('trungtin5','123','QL_DTDD1','200','PROFILE1','ROLE_NV_34_TIN')
drop procedure taouser
create or replace view view_tentablespace as select name from v$tablespace
select * from view_tentablespace

create or replace view view_tenprofile as select profile from dba_profiles
select * from view_tenprofile

create or replace view view_tenrole as select role from dba_roles

select count(*) from sys.dba_users where username='@username';

drop view kt_taouser
drop kt_taouser

create or replace view view_xemtenuserhienco as select username from dba_users
select * from view_xemtenuserhienco

create or replace view view_xemquyenhethong as select grantee,privilege,admin_option,common from DBA_SYS_PRIVS
select * from view_xemquyenhethong
/
CREATE OR REPLACE PROCEDURE taoganquyenhethong (a varchar2(50),b varchar2(50))
is
s varchar2(1000);
begin
    s:='GRANT SELECT ON DIENTHOAI TO TRUNGTIN1;';
    EXECUTE IMMEDIATE (s);
    commit;
end;
/
EXEC taoganquyenhethong ('trungtin1','drop table')
grant select ON DIENTHOAI to trungtin1
CREATE OR REPLACE PROCEDURE thuhoiganquyenhethong (a in sys.DBA_SYS_PRIVS.grantee%type,b in sys.DBA_SYS_PRIVS.privilege%type)
is
s varchar2(1000);
begin
    s:='revoke' || b || 'from' || a;
    EXECUTE IMMEDIATE (s);
    commit;
end;
SELECT * FROM DBA_USERS
drop procedure taoganquyenhethong
select * from  sys.LOGIN

create or REPLACE function kt_taouser (a is sys.dba_users.username%type)
return number IS
sl number(2) :=0;
begin
    select count(*) into sl from sys.dba_users where username = a;
    return sl;
end;

select kt_taouser('trungtin1') as soluong from dual

create or replace function kt_lockuser (a is sys.dba_users.username%type)
return number 
IS
    sl number(2):=0;
begin
    select count(*) into sl from sys.dba_users where username = a and account_status='LOCKED';
    return sl;
end;
 
create or replace view view_xemprofile as select profile,resource_name,resource_type,limit,common from dba_profiles

CREATE OR REPLACE PROCEDURE taoprofile (a in sys.dba_profiles.profile%type,b in sys.dba_profiles.resource_name%type,
c in sys.dba_profiles.resource_type%type,d in sys.dba_profiles.limit%type,e in sys.dba_profiles.common%type)
is
s varchar2(1000);
begin
    s:='create profile '|| a ||'limit'|| d ||' resource_name'|| b ||'resource_type'|| c ||'common' || e;
    EXECUTE IMMEDIATE (s);
    commit;
end;
create or replace view view_xemlogin as select * from LOGIN

CREATE TABLE LOGIN
(
USERNAME VARCHAR2(50),
PASSWORD VARCHAR2(50),
CONSTRAINT PK_LOGIN PRIMARY KEY (USERNAME)
)

CREATE OR REPLACE PROCEDURE Tinh_tong(a NUMBER, b NUMBER)
IS
  tong NUMBER;
BEGIN
  tong := a+b;
  DBMS_OUTPUT.PUT_LINE('Tong: '||tong);
END;

EXEC Tinh_tong(12,34);

SELECT * FROM DBA_ROLES