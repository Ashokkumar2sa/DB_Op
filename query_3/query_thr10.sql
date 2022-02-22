
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'HR Manager'
			and sp.to_date >= '2031-11-12 03:54:07' and sp.from_date <= '2078-11-18 00:32:17' and sp.company = '7company'
