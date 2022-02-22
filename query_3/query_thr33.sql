
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Designer'
			and sp.to_date >= '2038-12-01 22:08:27' and sp.from_date <= '2092-04-24 12:27:50' and sp.company = '6company'
