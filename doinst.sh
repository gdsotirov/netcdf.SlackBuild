# Update the info database with NetCDF pages
ErrCount=0

function echo_exit {
  ((ErrCount += $1))
  if [ $1 -eq 0 ]; then
    echo -n "$2 "
  else
    echo -n $3
  fi
}

if [ -x /usr/bin/install-info ] ; then
  echo -n "Installing info pages... "
  install-info --info-dir=/usr/info /usr/info/netcdf-c.info.gz        2>/dev/null
  echo_exit $? 0 
  install-info --info-dir=/usr/info /usr/info/netcdf-c.info-1.gz      2>/dev/null
  echo_exit $? 1
  install-info --info-dir=/usr/info /usr/info/netcdf-c.info-2.gz      2>/dev/null
  echo_exit $? 2
  install-info --info-dir=/usr/info /usr/info/netcdf-cxx.info.gz      2>/dev/null
  echo_exit $? 3
  install-info --info-dir=/usr/info /usr/info/netcdf-f77.info.gz      2>/dev/null
  echo_exit $? 4
  install-info --info-dir=/usr/info /usr/info/netcdf-f77.info-1.gz    2>/dev/null
  echo_exit $? 5
  install-info --info-dir=/usr/info /usr/info/netcdf-f77.info-2.gz    2>/dev/null
  echo_exit $? 6
  install-info --info-dir=/usr/info /usr/info/netcdf-f90.info.gz      2>/dev/null
  echo_exit $? 7
  install-info --info-dir=/usr/info /usr/info/netcdf-install.info.gz  2>/dev/null
  echo_exit $? 8
  install-info --info-dir=/usr/info /usr/info/netcdf-tutorial.info.gz 2>/dev/null
  echo_exit $? 9
  install-info --info-dir=/usr/info /usr/info/netcdf.info.gz          2>/dev/null
  echo_exit $? 10
  echo_exit $ErrCount "DONE" "FAILURE"
  echo
else
  echo "WARNING: Info pages cannot be installed!"
fi

