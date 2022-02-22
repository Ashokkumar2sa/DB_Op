
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Designer'
			and sp.to_date >= '2048-05-30 06:39:53' and sp.from_date <= '2064-04-27 07:29:58' and sp.company = '10company'
