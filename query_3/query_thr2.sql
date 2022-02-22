
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate'
			and sp.to_date >= '2060-10-09 02:25:52' and sp.from_date <= '2094-01-22 14:07:00' and sp.company = '11company'
