
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate'
			and sp.to_date >= '2032-04-05 21:29:00' and sp.from_date <= '2042-02-04 16:44:19' and sp.company = '10company'
