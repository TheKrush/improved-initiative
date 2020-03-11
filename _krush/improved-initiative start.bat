title = improved-initiative start

@Echo off
for /F %%I in ('curl https://myexternalip.com/raw') do set ExtIP=%%I
Echo External IP is : %ExtIP%
@Echo on

cd improved-initiative
SET PORT=8080
SET BASE_URL=http://%ExtIP%/
SET DEFAULT_ACCOUNT_LEVEL=epicinitiative
SET DEFAULT_PATREON_ID=4767544
SET DB_CONNECTION_STRING=mongodb://localhost:27017/improved-initiative
echo SET PATREON_URL=https://www.patreon.com/thekrush
echo SET PATREON_CLIENT_ID=roQtksjnEMyPSSXqpUBrmkxaMfs_Vy26eX9M3m5mC6lXaiBf1J3SH_nRjhUKnNBN
echo SET PATREON_CLIENT_SECRET=NyaE7sHCzgiJJq_W3KkmihIWWE3YGpnkXfHMs8EJEGxRNNVvh0Z6h66IUgHB-0jo
npm start
pause
cd ..