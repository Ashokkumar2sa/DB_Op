
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'HR Manager'
			and sp.to_date >= '2059-11-17 11:12:37' and sp.from_date <= '2076-01-25 05:07:05' and sp.company = '16company'
