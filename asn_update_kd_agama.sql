use pegawai;

update asn
set kd_agama = '1'
where nama regexp '^(N|D|M)';