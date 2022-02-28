
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Software Developer'
			and sp.to_date >= '2080-12-14 06:37:53' and sp.from_date <= '2090-04-30 15:33:19' and sp.company = '8company'
