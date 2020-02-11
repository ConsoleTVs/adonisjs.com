trap "exit" INT TERM ERR
trap "kill 0" EXIT

echo ""
echo "----- Start API Server -----"
(cd docs && npm run serve) &
sleep 2

echo ""
echo "----- Start Frontend Server -----"
(cd frontend && npm run develop)

wait
