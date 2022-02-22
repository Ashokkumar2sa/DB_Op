
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'HR Manager'
			and sp.to_date >= '2039-06-30 16:12:37' and sp.from_date <= '2064-11-11 00:51:22' and sp.company = '17company'
