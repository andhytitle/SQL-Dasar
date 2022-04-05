use pegawai;

-- update asn set nama = 'M. Septiawan' where nip = '197209172005011002';

-- DROP VIEW vw_info_asn;
-- CREATE VIEW vw_info_asn AS
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
		RIGHT(nip,3) AS NoUrut
FROM asn;

SELECT gender AS NamaGender, count(gender) AS JumlahGender
 FROM vw_info_asn
WHERE gender = 'Pria'
 GROUP BY gender;
 

SELECT * FROM pegawai.vw_info_asn 
WHERE nama like 'n%';


-- DELETE FROM vw_info_asn
-- WHERE gender = 'Pria';

-- Memperbaiki atribut kolom nama
-- bila tersebut kurang panjang
#ALTER TABLE asn 
#	MODIFY nama varchar(120);
 

UPDATE asn SET nama = 'Aprilia Gunawan'
where nip = '201407142022101004';
