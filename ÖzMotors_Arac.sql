use �zMotors


select * from KisiBilgileri;
select * from AracBilgileri;
select * from AracDonan�m;

truncate table Arac_Bilgileri;

alter table Arac_Bilgileri Alter column Arac_Model int;
alter table Arac_Bilgileri Alter column Al�s_Fiyat� Money;

---

select * from AracBilgileri where Arac_Renk='K�rm�z�';
select * from AracBilgileri where Arac_Renk='K�rm�z�' and Arac_Marka='BMW';
select * from AracBilgileri where Arac_Renk='Ye�il' or Arac_Marka='Audi';

select * from AracBilgileri where Arac_ModelY�l� in(2010,2020,2017);
select * from AracBilgileri where Arac_Marka like'%_R%';

select Arac_Plaka,Arac_Marka,Arac_Renk from AracBilgileri;
select distinct Arac_Renk from AracBilgileri;
SELECT distinct Arac_ModelY�l� FROM AracBilgileri;

select * from AracBilgileri order by Arac_Marka ASC;
select * from AracBilgileri order by Arac_No DESC;
select * from AracBilgileri where Arac_ModelY�l� between 2010 and 2018;
select UPPER(Arac_Marka) as 'Ara� Marka B�y�k Harf' from AracBilgileri
select lower(Kisi_AdSoyad) as 'Ara� Marka K���k Harf' from KisiBilgileri;
-
select SUM(Al�s_Fiyat�) as 'Toplam Ara� Y�l�' from AracBilgileri
select max(Arac_ModelY�l�) as 'En Y�ksek Ara� Y�l�' from AracBilgileri
select min(Arac_ModelY�l�) as 'En D���k Arac Y�l�' from AracBilgileri GROUP BY Arac_ModelY�l�
select AVG(Arac_ModelY�l�) as 'Ara� Y�llar� Ortalamas�' from AracBilgileri
select COUNT(Arac_Plaka) from AracBilgileri
SELECT distinct Arac_Marka FROM AracBilgileri;
select top(10) * from AracBilgileri;
select GETDATE()
-
select Arac_Marka,COUNT(Arac_Plaka) as 'Ara� Say�s�' from AracBilgileri group by Arac_Marka
select Arac_Marka,COUNT(Arac_Plaka) as 'Ara� Say�s�' from AracBilgileri group by Arac_Marka ORDER BY Arac_Marka DESC;
--ARA� F�YATLARIDA EKLENECEK VE SONRASINDA BU GROUP BY DA F�YATA G�RE 

SELECT Arac_Marka,min(Arac_ModelY�l�) as 'En d���k modelli ara� markas�',
MAX (Arac_ModelY�l�) as 'En Y�ksek modelli ara� markas�' 
from AracBilgileri
Group by Arac_Marka

select Arac_Plaka,Arac_Marka,Arac_Renk,Kisi_AdSoyad from AracBilgileri,KisiBilgileri where AracBilgileri.Arac_Plaka=KisiBilgileri.Arac_Plakas�
--

select Kisi_AdSoyad,Arac_Plaka from AracBilgileri A1 inner join KisiBilgileri K2
ON
A1.Arac_Plaka=K2.Arac_Plakas�

select Kisi_AdSoyad,Arac_Plaka from AracBilgileri A1 left outer join KisiBilgileri K2
ON
A1.Arac_Plaka=K2.Arac_Plakas�

select Kisi_AdSoyad,Arac_Plaka from AracBilgileri A1 right outer join KisiBilgileri K2
ON
A1.Arac_Plaka=K2.Arac_Plakas�

select Kisi_AdSoyad,Arac_Plaka from AracBilgileri A1 full outer join KisiBilgileri K2
ON
A1.Arac_Plaka=K2.Arac_Plakas�

select Kisi_AdSoyad,Arac_Plakas�  from KisiBilgileri K1 CROSS join AracBilgileri D2

select Arac_Marka, AVG(Arac_ModelY�l�) from AracBilgileri where Arac_Renk='K�rm�z�' group by Arac_Marka 
select Arac_Marka, AVG(Arac_ModelY�l�) from AracBilgileri group by Arac_Marka  having avg(Arac_ModelY�l�)>2010
select Arac_Marka, SUM(Al�s_Fiyat�) from AracBilgileri group by Arac_Marka having SUM(Al�s_Fiyat�)>250000
select Arac_Marka, MAX(Al�s_Fiyat�) from AracBilgileri group by Arac_Marka having MAX(Al�s_Fiyat�)>250000
select Arac_Marka, MIN(Al�s_Fiyat�) from AracBilgileri group by Arac_Marka having MIN(Al�s_Fiyat�)>250000



select * from KisiBilgileri
select * from AracBilgileri
select Arac_Plakas� from KisiBilgileri
intersect
select Arac_Plaka from AracBilgileri

select Arac_Plakas� from KisiBilgileri
except
select Arac_Plaka from AracBilgileri

select Arac_Plakas� from KisiBilgileri
Union
select Arac_Plaka from AracBilgileri

select Arac_Plakas� from KisiBilgileri
union all
select Arac_Plaka from AracBilgileri













