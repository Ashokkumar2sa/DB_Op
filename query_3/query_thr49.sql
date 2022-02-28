
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Associate'
			and sp.to_date >= '2084-12-22 06:00:52' and sp.from_date <= '2099-04-14 15:53:01' and sp.company = '12company'
