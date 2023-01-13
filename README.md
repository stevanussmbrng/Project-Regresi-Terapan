# Project-Regresi-Terapan
Regresi Poisson

Data yang diambil dari https://support.minitab.com/en-us/datasets/regression-data-sets/resin-defects-data/

## Variabel
Variabel penelitian terdiri dari 1 variabel respon dan 3 variabel prediktor yaitu: 
- Hours Since Cleanse (prediktor)	: Jumlah jam sejak pekerja membersihkan selang
- Size of Screw (prediktor)		: Ukuran sekrup yang menggerakkan pelet melalui selang transfer: kecil atau besar	
- Temperature (prediktor)		: Suhu resin: 80 atau 215
- Discoloration Defects (respon)	: Jumlah cacat perubahan warna per jam
- Clump Defects (respon)		: Jumlah gumpalan yang cukup besar untuk menjadi cacat, per jam

## Uji Kolmogorov-Smirnov Satu Sampel
H0: Variabel Respons Discoloration Defect berasal dari distribusi Poisson

H1: Variabel Respons Discoloration Defect tidak berasal dari distribusi Poisson
- Oleh karena P-Value(0,148) > α(0,05) maka Gagal Tolak H0, sehingga variabel respons Discoloration Defect telah berasal dari distribusi Poisson, sehingga analisis regresi Poisson dapat dilakukan.

## Uji Asumsi Klasik Multikolinieritas
Terlihat bahwa seluruh nilai VIF < 5, sehingga dapat dikatakan tidak terjadi gejala multikolinieritas pada dataset ini.

## Uji Serentak

- Pengujian parameter dilakukan pengujian secara serentak model menggunakan Maximum Likelihood Ratio Test (MLRT) dengan hipotesis sebagai berikut:

H0:  𝛽1(U1,V1) = 𝛽2(U2,V2) = … = 𝛽j(Ui,Vi) = 0 (semua variabel tidak berpengaruh terhadap model)

H1: Paling sedikit ada satu 𝛽j(Ui,Vi) ≠ 0 (terdapat variabel yang berpengaruh pada model)
- Dengan menggunakan taraf nyata alpha = 5% nilai khi kuadrat tabel sebesar 7,81, sehingga devians lebih besar dari nilai khi kuadrat tabel maka keputusannya adalah tolak H0, yang berarti bahwa ada variabel yang berpengaruh terhadap model.

## Uji Parsial
- Uji parsial bertujuan untuk mengetahui variabel bebas yang berpengaruh secara signifikan terhadap variabel terikat pada masing-masing lokasi. Hipotesis uji Wald:

H0 : 𝛽k(Ui,Vi) = 0 (Tidak adanya pengaruh signifikan antara variabel bebas terhadap variabel terikat)

H1 : 𝛽k(Ui,Vi) ≠ 0 dengan k = 1, 2, …, p (Adanya pengaruh yang signifikan antara variabel bebas terhadap variabel terikat)

- Karena seluruh variabel independen signifikan atau P-Value < alpha(0,05) maka tolak H0, sehingga keseluruhan variabel independen berpengaruh terhadap variabel respons.

## Uji Equidispersi
Dengan menggunakan Tabel 4, didapatkan Residual Deviance(31,607) dibagi dengan derajat bebas(32) adalah 0,987 dan nilai tersebut mendekati 1 maka pada data ini tidak terjadi overdispersion, sehingga dapat dimodelkan dengan Poisson Regression.

## Model Terbaik
Discoloration Defect = e<sup>4,3981998 + 0,0179753Hours Since Cleanse - 0,0019744Temperature - 0,154572Size of Screw (Small)</sup>
