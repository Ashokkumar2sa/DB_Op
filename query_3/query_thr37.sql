
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Secretary'
			and sp.to_date >= '2029-07-04 18:30:02' and sp.from_date <= '2069-04-13 01:57:40' and sp.company = '3company'
