
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Secretary'
			and sp.to_date >= '2024-11-16 03:53:14' and sp.from_date <= '2051-03-24 16:41:21' and sp.company = 'NA'
