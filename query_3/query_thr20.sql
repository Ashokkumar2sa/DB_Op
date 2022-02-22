
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Accountant'
			and sp.to_date >= '2084-01-30 17:20:47' and sp.from_date <= '2086-01-09 21:29:07' and sp.company = '3company'
