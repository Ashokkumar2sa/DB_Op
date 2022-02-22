
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Designer'
			and sp.to_date >= '2015-10-29 22:21:19' and sp.from_date <= '2095-08-23 07:56:39' and sp.company = '11company'
