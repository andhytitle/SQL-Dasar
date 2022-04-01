use pegawai;

update asn set nama = 'M. Septiawan' where nip = '197209172005011002';

SELECT 	nip,
		nama,
       # untuk format tanggal lahir lebih ringkas
       # date_format(nip,"%d %M %Y" ) AS TanggalLahir,
       
	   # untuk format tanggal lahir lebih panjang
	   # date_format(CONCAT(LEFT(nip, 4),MID(nip, 5, 2),MID(nip, 7, 2)), "%W, %d %M %Y") AS TanggalLahir,
       
       # untuk format tanggal pengangkatan lebih panjang
		# date_format(CONCAT(MID(nip, 9,4),"-",MID(nip,13,2),"-","1"), "%M %Y") AS TanggalPengangkatan,
        
        # tes upload github
        
        date_format(LEFT(nip,8), "%d %M %Y" ) AS TanggalLahir,
		date_format(concat(substring(nip,9,6),"01"), "%M %Y" ) AS TanggalPengangkatan,
        IF(substring(nip,15,1)="1","Pria","Wanita") As Gender,
        RIGHT(nip,3) AS NoUrut,
        RIGHT(nip,3) AS NoUrut,
         RIGHT(nip,3) AS NoUrut
FROM asn;