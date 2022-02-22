
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Researcher'
			and sp.to_date >= '2060-04-27 20:20:11' and sp.from_date <= '2066-10-28 23:22:57' and sp.company = '8company'
