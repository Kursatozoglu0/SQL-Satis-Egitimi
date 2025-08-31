use ÖzMotors


select * from KisiBilgileri;
select * from AracBilgileri;
select * from AracDonaným;

truncate table Arac_Bilgileri;

alter table Arac_Bilgileri Alter column Arac_Model int;
alter table Arac_Bilgileri Alter column Alýs_Fiyatý Money;

---

select * from AracBilgileri where Arac_Renk='Kýrmýzý';
select * from AracBilgileri where Arac_Renk='Kýrmýzý' and Arac_Marka='BMW';
select * from AracBilgileri where Arac_Renk='Yeþil' or Arac_Marka='Audi';

select * from AracBilgileri where Arac_ModelYýlý in(2010,2020,2017);
select * from AracBilgileri where Arac_Marka like'%_R%';

select Arac_Plaka,Arac_Marka,Arac_Renk from AracBilgileri;
select distinct Arac_Renk from AracBilgileri;
SELECT distinct Arac_ModelYýlý FROM AracBilgileri;

select * from AracBilgileri order by Arac_Marka ASC;
select * from AracBilgileri order by Arac_No DESC;
select * from AracBilgileri where Arac_ModelYýlý between 2010 and 2018;
select UPPER(Arac_Marka) as 'Araç Marka Büyük Harf' from AracBilgileri
select lower(Kisi_AdSoyad) as 'Araç Marka Küçük Harf' from KisiBilgileri;
-
select SUM(Alýs_Fiyatý) as 'Toplam Araç Yýlý' from AracBilgileri
select max(Arac_ModelYýlý) as 'En Yüksek Araç Yýlý' from AracBilgileri
select min(Arac_ModelYýlý) as 'En Düþük Arac Yýlý' from AracBilgileri GROUP BY Arac_ModelYýlý
select AVG(Arac_ModelYýlý) as 'Araç Yýllarý Ortalamasý' from AracBilgileri
select COUNT(Arac_Plaka) from AracBilgileri
SELECT distinct Arac_Marka FROM AracBilgileri;
select top(10) * from AracBilgileri;
select GETDATE()
-
select Arac_Marka,COUNT(Arac_Plaka) as 'Araç Sayýsý' from AracBilgileri group by Arac_Marka
select Arac_Marka,COUNT(Arac_Plaka) as 'Araç Sayýsý' from AracBilgileri group by Arac_Marka ORDER BY Arac_Marka DESC;
--ARAÇ FÝYATLARIDA EKLENECEK VE SONRASINDA BU GROUP BY DA FÝYATA GÖRE 

SELECT Arac_Marka,min(Arac_ModelYýlý) as 'En düþük modelli araç markasý',
MAX (Arac_ModelYýlý) as 'En Yüksek modelli araç markasý' 
from AracBilgileri
Group by Arac_Marka

select Arac_Plaka,Arac_Marka,Arac_Renk,Kisi_AdSoyad from AracBilgileri,KisiBilgileri where AracBilgileri.Arac_Plaka=KisiBilgileri.Arac_Plakasý
--

select Kisi_AdSoyad,Arac_Plaka from AracBilgileri A1 inner join KisiBilgileri K2
ON
A1.Arac_Plaka=K2.Arac_Plakasý

select Kisi_AdSoyad,Arac_Plaka from AracBilgileri A1 left outer join KisiBilgileri K2
ON
A1.Arac_Plaka=K2.Arac_Plakasý

select Kisi_AdSoyad,Arac_Plaka from AracBilgileri A1 right outer join KisiBilgileri K2
ON
A1.Arac_Plaka=K2.Arac_Plakasý

select Kisi_AdSoyad,Arac_Plaka from AracBilgileri A1 full outer join KisiBilgileri K2
ON
A1.Arac_Plaka=K2.Arac_Plakasý

select Kisi_AdSoyad,Arac_Plakasý  from KisiBilgileri K1 CROSS join AracBilgileri D2

select Arac_Marka, AVG(Arac_ModelYýlý) from AracBilgileri where Arac_Renk='Kýrmýzý' group by Arac_Marka 
select Arac_Marka, AVG(Arac_ModelYýlý) from AracBilgileri group by Arac_Marka  having avg(Arac_ModelYýlý)>2010
select Arac_Marka, SUM(Alýs_Fiyatý) from AracBilgileri group by Arac_Marka having SUM(Alýs_Fiyatý)>250000
select Arac_Marka, MAX(Alýs_Fiyatý) from AracBilgileri group by Arac_Marka having MAX(Alýs_Fiyatý)>250000
select Arac_Marka, MIN(Alýs_Fiyatý) from AracBilgileri group by Arac_Marka having MIN(Alýs_Fiyatý)>250000



select * from KisiBilgileri
select * from AracBilgileri
select Arac_Plakasý from KisiBilgileri
intersect
select Arac_Plaka from AracBilgileri

select Arac_Plakasý from KisiBilgileri
except
select Arac_Plaka from AracBilgileri

select Arac_Plakasý from KisiBilgileri
Union
select Arac_Plaka from AracBilgileri

select Arac_Plakasý from KisiBilgileri
union all
select Arac_Plaka from AracBilgileri













