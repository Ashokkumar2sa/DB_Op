
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate'
			and sp.to_date >= '2057-08-31 02:42:34' and sp.from_date <= '2080-06-08 02:43:32' and sp.company = '6company'
