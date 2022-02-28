
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Designer'
			and sp.to_date >= '2044-12-28 19:31:55' and sp.from_date <= '2085-08-29 18:44:48' and sp.company = '10company'
