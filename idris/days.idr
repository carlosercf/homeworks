module days 

data days = mo | tu | wed | thu | fr | sat | sun
nextDay: days -> days
nextDay mo = tu
nextDay tu = wed
nextDay wed = thu
nextDay thu = fr
nextDay fr = sat
nextDay sat = sun
nextDay _ = mo

nextWeekday: days -> days
nextWeekday mo = tu
nextWeekday tu = wed
nextWeekday wed = thu
nextWeekday thu = fr
nextWeekday _ = mo

  
