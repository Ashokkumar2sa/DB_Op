
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Researcher'
			and sp.to_date >= '2035-10-20 16:51:56' and sp.from_date <= '2083-08-18 00:04:51' and sp.company = '14company'
