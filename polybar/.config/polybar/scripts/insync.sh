#!/bin/sh

STATUS=$(insync get_status)

case $STATUS in

  ERROR)
    echo -n ""
    ;;
  OFFLINE)
    echo -n ""
    ;;
  PAUSED)
    echo -n ""
    ;;
  SHARE)
    echo -n ""
    ;;
  SYNCED)
    echo -n ""
    ;;
  SYNCING)
    echo -n ""
    ;;
  UNLINKED)
    echo -n ""
    ;;
  *)
    echo -n ""
    ;;
esac

