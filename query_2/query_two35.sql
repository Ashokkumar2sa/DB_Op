
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='7company' and spd.designation='Administrative Officer'
		and to_date >= '2049-09-29 11:53:22' and from_date <= '2051-10-12 17:57:38'
