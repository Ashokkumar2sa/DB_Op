
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Software Developer'
			and sp.to_date >= '2015-02-06 03:57:56' and sp.from_date <= '2070-10-24 10:29:41' and sp.company = '6company'
