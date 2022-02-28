
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Researcher'
			and sp.to_date >= '2086-12-03 07:18:55' and sp.from_date <= '2087-04-04 21:48:40' and sp.company = '5company'
