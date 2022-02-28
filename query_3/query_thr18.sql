
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Accountant'
			and sp.to_date >= '2060-05-02 19:49:26' and sp.from_date <= '2078-02-22 07:49:29' and sp.company = '9company'
