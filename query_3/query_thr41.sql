
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Engineer'
			and sp.to_date >= '2046-04-30 01:48:41' and sp.from_date <= '2075-10-04 06:48:49' and sp.company = '5company'
