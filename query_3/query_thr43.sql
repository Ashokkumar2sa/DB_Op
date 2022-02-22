
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Business Development Manager'
			and sp.to_date >= '2076-03-14 22:31:35' and sp.from_date <= '2088-09-11 08:25:17' and sp.company = '4company'
