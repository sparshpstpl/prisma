/*
  Warnings:

  - You are about to drop the column `fromAccount` on the `MemberTransaction` table. All the data in the column will be lost.
  - You are about to drop the column `reference` on the `MemberTransaction` table. All the data in the column will be lost.
  - You are about to drop the column `batchId` on the `MemberTransaction` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "MemberTransaction" DROP CONSTRAINT "MemberTransaction_fundingRoundId_fkey";

-- DropForeignKey
ALTER TABLE "MemberTransaction" DROP CONSTRAINT "MemberTransaction_fundingRoundSubscriptionId_fkey";

-- DropForeignKey
ALTER TABLE "MemberTransaction" DROP CONSTRAINT "MemberTransaction_memberId_fkey";

-- DropForeignKey
ALTER TABLE "MemberTransaction" DROP CONSTRAINT "MemberTransaction_tribeId_fkey";

-- AlterTable
ALTER TABLE "MemberTransaction" DROP COLUMN "fromAccount",
DROP COLUMN "reference",
DROP COLUMN "batchId";
