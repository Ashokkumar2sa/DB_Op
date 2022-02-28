
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'HR Manager'
			and sp.to_date >= '2028-10-21 07:24:27' and sp.from_date <= '2047-11-23 00:51:41' and sp.company = '5company'
