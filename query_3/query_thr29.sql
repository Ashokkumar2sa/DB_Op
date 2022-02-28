
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Researcher'
			and sp.to_date >= '2015-02-07 16:45:57' and sp.from_date <= '2098-05-17 10:13:42' and sp.company = '17company'
