
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate'
			and sp.to_date >= '2055-09-07 09:40:58' and sp.from_date <= '2065-01-18 12:24:12' and sp.company = '6company'
