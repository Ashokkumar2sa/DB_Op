
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Project Manager'
			and sp.to_date >= '2089-02-14 14:10:42' and sp.from_date <= '2092-06-11 04:24:27' and sp.company = '3company'
