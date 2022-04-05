alter table asn
	add column kd_agama int,
    add constraint kd_agama_asn2agama_kode
		foreign key(kd_agama)
        references agama(kode);