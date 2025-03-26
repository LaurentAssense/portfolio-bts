CREATE PROCEDURE sp_zonesStockage_add(@Nom varchar(100), @Adresse varchar(200), @Batiment varchar(100), @Etage varchar(100), @IdCategorieProduit int, @CodeInseeVille char(5))
AS
BEGIN
 SET NOCOUNT ON;
 INSERT INTO ZoneStockage (Nom, Adresse, Batiment, Etage, IdCategorieProduit, CodeInseeVille) VALUES (@Nom, @Adresse, @Batiment, @Etage, @IdCategorieProduit, @CodeInseeVille);
END;

exec sp_zonesStockage_add "Morgan", "2 Pl. Georges Paquier", "Lycée Général", "3 eme étages", 1, "60141";

GO


CREATE PROCEDURE sp_zonesStockage_update(@Id int, @Nom varchar(100), @Adresse varchar(200), @Batiment varchar(100), @Etage varchar(100), @IdCategorieProduit int, @CodeInseeVille char(5))
AS
BEGIN
 SET NOCOUNT ON;
 UPDATE ZoneStockage SET Nom = @Nom, Adresse = @Adresse, Batiment = @Batiment, Etage = @Etage, IdCategorieProduit = @IdCategorieProduit, CodeInseeVille = @CodeInseeVille
 WHERE Id = @Id
END;

exec sp_zonesStockage_update "20", "Test", "2 Pl. Georges Paquier", "Lycée Général", "3", 1, "60141";

GO


CREATE PROCEDURE sp_zonesStockage_delete(@Id int)
AS
BEGIN
 SET NOCOUNT ON;
 DELETE FROM ZoneStockage WHERE id = @Id;
END;

exec sp_zonesStockage_delete 7;

go

CREATE PROCEDURE sp_obligationControleParZone_delete(@IdZoneStockage int)
AS
BEGIN
 SET NOCOUNT ON;
 DELETE FROM ObligationControle WHERE IdZoneStockage = @IdZoneStockage;
END;

exec sp_obligationControleParZone_delete 7;