
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Researcher'
			and sp.to_date >= '2065-02-22 01:38:33' and sp.from_date <= '2082-11-10 15:04:28' and sp.company = '6company'
