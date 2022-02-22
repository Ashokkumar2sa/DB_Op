
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'HR Manager'
			and sp.to_date >= '2053-07-14 15:45:13' and sp.from_date <= '2078-03-29 10:56:40' and sp.company = '8company'
