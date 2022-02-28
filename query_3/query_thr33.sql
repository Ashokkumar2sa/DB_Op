
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Associate'
			and sp.to_date >= '2044-10-11 07:11:25' and sp.from_date <= '2057-04-08 08:32:40' and sp.company = '3company'
