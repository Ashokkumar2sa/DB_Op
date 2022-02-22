
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Analyst'
			and sp.to_date >= '2031-10-07 18:34:04' and sp.from_date <= '2082-06-03 20:29:26' and sp.company = '12company'
