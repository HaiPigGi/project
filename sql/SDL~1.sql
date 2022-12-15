create or replace package BIODATA_tapi
is

type BIODATA_tapi_rec is record (
NIK  BIODATA.NIK%type
,NAMA  BIODATA.NAMA%type
,SANDI  BIODATA.SANDI%type
,TANGGAL_LAHIR  BIODATA.TANGGAL_LAHIR%type
,EMAIL  BIODATA.EMAIL%type
);
type BIODATA_tapi_tab is table of BIODATA_tapi_rec;

-- insert
procedure ins (
p_NIK in BIODATA.NIK%type
,p_NAMA in BIODATA.NAMA%type
,p_SANDI in BIODATA.SANDI%type
,p_TANGGAL_LAHIR in BIODATA.TANGGAL_LAHIR%type
,p_EMAIL in BIODATA.EMAIL%type
);
-- update
procedure upd (
p_NIK in BIODATA.NIK%type
,p_NAMA in BIODATA.NAMA%type
,p_SANDI in BIODATA.SANDI%type
,p_TANGGAL_LAHIR in BIODATA.TANGGAL_LAHIR%type
,p_EMAIL in BIODATA.EMAIL%type
);
-- delete
procedure del (
p_EMAIL in BIODATA.EMAIL%type
);
end BIODATA_tapi;

/
create or replace package body BIODATA_tapi
is
-- insert
procedure ins (
p_NIK in BIODATA.NIK%type
,p_NAMA in BIODATA.NAMA%type
,p_SANDI in BIODATA.SANDI%type
,p_TANGGAL_LAHIR in BIODATA.TANGGAL_LAHIR%type
,p_EMAIL in BIODATA.EMAIL%type
) is
begin
insert into BIODATA(
NIK
,NAMA
,SANDI
,TANGGAL_LAHIR
,EMAIL
) values (
p_NIK
,p_NAMA
,p_SANDI
,p_TANGGAL_LAHIR
,p_EMAIL
);end;
-- update
procedure upd (
p_NIK in BIODATA.NIK%type
,p_NAMA in BIODATA.NAMA%type
,p_SANDI in BIODATA.SANDI%type
,p_TANGGAL_LAHIR in BIODATA.TANGGAL_LAHIR%type
,p_EMAIL in BIODATA.EMAIL%type
) is
begin
update BIODATA set
NIK = p_NIK
,NAMA = p_NAMA
,SANDI = p_SANDI
,TANGGAL_LAHIR = p_TANGGAL_LAHIR
where EMAIL = p_EMAIL;
end;
-- del
procedure del (
p_EMAIL in BIODATA.EMAIL%type
) is
begin
delete from BIODATA
where EMAIL = p_EMAIL;
end;
end BIODATA_tapi;
