
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Researcher'
			and sp.to_date >= '2047-05-07 19:15:56' and sp.from_date <= '2065-05-11 05:45:14' and sp.company = '16company'
