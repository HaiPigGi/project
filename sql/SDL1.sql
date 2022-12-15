CREATE TABLE PASIEN (
        email   VARCHAR2(40)
            CONSTRAINT pasien_email_pk PRIMARY KEY
        ,sandi VARCHAR2(12)
            CONSTRAINT pasien_sandi_nn NOT NULL
        ,nik    NUMBER(16)
            CONSTRAINT pasien_nik_nn NOT NULL
        ,tanggal_lahir DATE
            CONSTRAINT pasien_tgl_nn NOT NULL
        ,nama   VARCHAR2(20)
            CONSTRAINT pasien_name_nn NOT NULL);
            
            DROP  TABLE PASIEN;
            
INSERT INTO PASIEN (email, sandi)
        VALUES ('jpjppjpj@gmail.com', '123452');
        
        
        SELECT * FROM PASIEN;
        
ALTER TABLE PASIEN 
MODIFY (nik VARCHAR2(16));
    
    
CREATE TABLE DOKTER (
NAMA VARCHAR2 (40)
    CONSTRAINT DOKTER_NAMA_NN NOT NULL,
NIP NUMBER (16) 
    CONSTRAINT DOKTER_NIP_PK PRIMARY KEY,
POLI VARCHAR (15)
    CONSTRAINT DOKTER_POLI_NN NOT NULL);
    
SELECT
    *
FROM DOKTER;

DESC DOKTER;

INSERT INTO DOKTER VALUES ('Dr Axel','215314100','Umum');

INSERT INTO DOKTER VALUES ('Dr Arsel','215314102','THT');
INSERT INTO DOKTER VALUES ('Dr Bryan','215314109','Jantung');

SELECT NAMA FROM DOKTER;

SELECT NAMA FROM DOKTER WHERE NAMA LIKE 'Dr Denata';

select * from biodata;1
