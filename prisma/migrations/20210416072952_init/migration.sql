/*
  Warnings:

  - You are about to drop the column `tribeId` on the `UnitApplication` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `UnitApplication` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "UnitApplication" DROP COLUMN "tribeId",
DROP COLUMN "userId";
