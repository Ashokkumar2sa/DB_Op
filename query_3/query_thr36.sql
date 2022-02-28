
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Researcher'
			and sp.to_date >= '2000-04-07 15:32:21' and sp.from_date <= '2049-05-07 13:34:53' and sp.company = '8company'
