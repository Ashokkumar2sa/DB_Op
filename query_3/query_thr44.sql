
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate'
			and sp.to_date >= '2061-09-06 02:28:28' and sp.from_date <= '2092-08-27 21:56:40' and sp.company = '2company'
