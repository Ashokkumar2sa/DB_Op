
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Analyst'
			and sp.to_date >= '2042-08-28 06:20:46' and sp.from_date <= '2049-04-16 11:26:39' and sp.company = '16company'
