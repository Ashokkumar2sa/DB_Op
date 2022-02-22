
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Administrative Officer'
			and sp.to_date >= '2014-05-16 05:17:26' and sp.from_date <= '2065-12-19 12:37:45' and sp.company = '16company'
