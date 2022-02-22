
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Software Developer'
			and sp.to_date >= '2051-09-10 11:56:06' and sp.from_date <= '2080-06-07 11:22:48' and sp.company = '5company'
