
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Project Manager'
			and sp.to_date >= '2020-03-06 06:13:12' and sp.from_date <= '2048-05-22 04:18:55' and sp.company = '12company'
