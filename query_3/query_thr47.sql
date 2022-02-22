
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Project Manager'
			and sp.to_date >= '2068-11-07 21:40:18' and sp.from_date <= '2088-05-02 16:57:24' and sp.company = '11company'
