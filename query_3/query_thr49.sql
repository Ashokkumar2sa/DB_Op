
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Designer'
			and sp.to_date >= '2056-11-03 10:26:34' and sp.from_date <= '2080-01-22 20:10:09' and sp.company = '13company'
