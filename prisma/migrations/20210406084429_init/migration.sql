/*
  Warnings:

  - You are about to drop the column `unitCounterpartyId` on the `UnitRelationship` table. All the data in the column will be lost.
  - Added the required column `unitApplicationId` to the `UnitCustomerAccount` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "UnitRelationship" DROP CONSTRAINT "UnitRelationship_unitCounterpartyId_fkey";

-- AlterTable
ALTER TABLE "UnitCustomerAccount" ADD COLUMN     "unitApplicationId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "UnitRelationship" DROP COLUMN "unitCounterpartyId";
