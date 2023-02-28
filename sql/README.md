# SQL

<img src="https://user-images.githubusercontent.com/50648409/206942388-b6ccc9e7-6428-404e-af89-7e4be7aca56a.jpeg" width="500" height="500"/>

## isi

- [First Step 📯](/first-step-postgres/README.md)
- [Telkom Assignment ⛵](/telkom-mysql/README.md)

## Tentang SQL

nama : SQL (Standard Query Language)<br/> 
sejak : 1974<br/>
dibuat oleh : [Donald D. Chamberlin](https://en.wikipedia.org/wiki/Donald_D._Chamberlin), [Raymond F. Boyce](https://en.wikipedia.org/wiki/Raymond_F._Boyce)<br/>
tujuan pembuatan : digunakan untuk memberikan perintah untuk mengakses dan mengolah data berbasis relational pada sebuah sistem database.<br/>
paradigma pemrograman : [Declarative](https://en.wikipedia.org/wiki/Declarative_programming)<br/>
situs web resmi : [ISO/IEC 9075-1:2016](https://www.iso.org/standard/63555.html)<br/>
learning : [frontendmasters](https://frontendmasters.com/)

## type of statement

```bash
# DQL (data query language)
SELECT * FROM <database>;

# DDL (data definition language)
CREATE TABLE <table> (
  <colomn> <datatype>,
  <colomn> <datatype>
);
...

# DCL (data control language)
GRANT SELECT,INSERT,UPDATE,DELETE on <database> To <user>
...

# DML (data manipulation language)
INSERT INTO <table> (<colomn>, <colomn>) VALUES (<value>, <value>);
...
```

## Berkontribusi

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Lisensi

[MIT](/LICENSE)
