
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate'
			and sp.to_date >= '2000-10-21 18:00:14' and sp.from_date <= '2055-07-31 15:31:11' and sp.company = '8company'
