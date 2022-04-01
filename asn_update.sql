use pegawai;

update asn set nama = 'M. Septiawan' where nip = '197209172005011002';

SELECT 	nip,
		nama,
        date_format(CONCAT(LEFT(nip, 4),MID(nip, 5, 2),MID(nip, 7, 2)), "%W, %d %M %Y") AS TanggalLahir,
        date_format(CONCAT(MID(nip, 9,4),MID(nip,13,2),"1"), "%M, %Y") AS TanggalPengangkatan,
        IF(substring(nip,15,1)="1","Pria","Wanita") As Gender,
        RIGHT(nip,3) AS NoUrut
FROM asn;