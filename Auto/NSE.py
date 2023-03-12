from datetime import date
from nsepy import get_history

# Stock futures (Similarly for index futures, set index = True)
stock_fut = get_history(symbol="SBIN",
                        start=date(2015, 1, 1),
                        end=date(2015, 1, 10),
                        futures=True,
                        expiry_date=date(2015, 1, 29))