
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Analyst'
			and sp.to_date >= '2017-06-25 12:54:58' and sp.from_date <= '2090-02-09 16:29:48' and sp.company = '16company'
