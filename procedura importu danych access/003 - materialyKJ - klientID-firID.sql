ALTER TABLE dbo.materialyKJ ADD CONSTRAINT
	materialyKJ$Reference18 FOREIGN KEY
	(
	klientID
	) REFERENCES dbo.firmy
	(
	firID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	 