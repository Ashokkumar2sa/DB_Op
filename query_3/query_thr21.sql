
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Engineer'
			and sp.to_date >= '2031-09-20 15:05:04' and sp.from_date <= '2094-07-10 17:23:19' and sp.company = '14company'
