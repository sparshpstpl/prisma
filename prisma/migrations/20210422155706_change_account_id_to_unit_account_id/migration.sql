/*
  Warnings:

  - You are about to drop the column `accountId` on the `UnitAccount` table. All the data in the column will be lost.
  - The migration will add a unique constraint covering the columns `[unitAccountId]` on the table `UnitAccount`. If there are existing duplicate values, the migration will fail.
  - Added the required column `unitAccountId` to the `UnitAccount` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "UnitRelationship" DROP CONSTRAINT "UnitRelationship_unitAccountId_fkey";

-- DropIndex
DROP INDEX "UnitAccount.accountId_unique";

-- AlterTable
ALTER TABLE "UnitAccount" DROP COLUMN "accountId",
ADD COLUMN     "unitAccountId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "UnitAccount.unitAccountId_unique" ON "UnitAccount"("unitAccountId");

-- AddForeignKey
ALTER TABLE "UnitRelationship" ADD FOREIGN KEY ("unitAccountId") REFERENCES "UnitAccount"("unitAccountId") ON DELETE CASCADE ON UPDATE CASCADE;
