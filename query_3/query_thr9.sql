
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Analyst'
			and sp.to_date >= '2021-10-24 19:59:28' and sp.from_date <= '2059-10-20 12:56:21' and sp.company = '16company'
