-- USE psekdb;

BULK INSERT DEPENDIENTE FROM 'C:\Users\PS\Downloads\Misc\data\dependiente.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n');

BULK INSERT DEPARTAMENTO FROM 'C:\Users\PS\Downloads\Misc\data\departamento.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n');

BULK INSERT EMPLEADO FROM 'C:\Users\PS\Downloads\Misc\data\empleado.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n');

BULK INSERT PROYECTO FROM 'C:\Users\PS\Downloads\Misc\data\proyecto.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n');

BULK INSERT LOCALIZACION_DEP FROM 'C:\Users\PS\Downloads\Misc\data\localidadDepto.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n');

BULK INSERT TRABAJA_EN FROM 'C:\Users\PS\Downloads\Misc\data\trabaja_en.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n');