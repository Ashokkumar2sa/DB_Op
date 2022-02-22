
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'HR Manager'
			and sp.to_date >= '2057-08-26 02:04:17' and sp.from_date <= '2088-05-19 08:49:07' and sp.company = '13company'
