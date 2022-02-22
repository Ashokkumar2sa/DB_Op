
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Researcher'
			and sp.to_date >= '2014-03-19 22:00:02' and sp.from_date <= '2099-04-26 20:05:57' and sp.company = '5company'
