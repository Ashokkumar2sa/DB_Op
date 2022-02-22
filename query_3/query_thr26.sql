
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Project Manager'
			and sp.to_date >= '2033-01-05 14:17:07' and sp.from_date <= '2034-06-18 21:25:27' and sp.company = '9company'
