use pegawai;

create view vw_agama_asn as
	select asn.nip as NIP,
			asn.nama as Nama_Pegawai,
            agama.nama as Nama_Agama
	from asn, agama
    where asn.kd_agama = agama.kode;
    
select * from pegawai.vw_agama_asn;

