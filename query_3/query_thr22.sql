
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Designer'
			and sp.to_date >= '2067-05-30 16:54:24' and sp.from_date <= '2094-01-29 12:56:27' and sp.company = '11company'
