
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Software Developer'
			and sp.to_date >= '2099-03-07 23:32:02' and sp.from_date <= '2099-06-15 18:06:46' and sp.company = '2company'
