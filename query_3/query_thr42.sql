
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Secretary'
			and sp.to_date >= '2020-10-31 20:47:25' and sp.from_date <= '2067-10-14 20:52:04' and sp.company = '10company'
