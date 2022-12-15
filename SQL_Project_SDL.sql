--Create table BIODATA
CREATE TABLE BIODATA (
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
            
ALTER TABLE BIODATA 
MODIFY (nik VARCHAR2(16));

--table DOKTER

CREATE TABLE DOKTER (
NAMA VARCHAR2 (40)
    CONSTRAINT DOKTER_NAMA_NN NOT NULL,
NIP NUMBER (16) 
    CONSTRAINT DOKTER_NIP_PK PRIMARY KEY,
POLI VARCHAR (15)
    CONSTRAINT DOKTER_POLI_NN NOT NULL);

     