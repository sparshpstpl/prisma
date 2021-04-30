# prisma

1. Install prisma globally in your system `npm install -g prisma` 
2. Add your changes to the `schema.prisma` file
3. Run the migration locally with `npx prisma migrate dev --name init --preview-feature`
4. Verify that everything went according to plan locally without conflictions.
5. Add node module in your package.json file under the dependencies
6. Add schema path in package.json file
`"prisma": { "schema": "node_modules/tribevest-pgdb/prisma/schema.prisma" }`
7. Run `npm install`
8. Add DATABASE_URL in project .env file
9. Run the migration in project with `prisma migrate` to update prisma client for every changes
