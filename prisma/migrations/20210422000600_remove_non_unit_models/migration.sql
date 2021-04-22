/*
  Warnings:

  - You are about to drop the `AchAuthorizationLog` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `FundingRound` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `FundingRoundSubscription` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Member` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MemberTransaction` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Tribe` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UnitCounterpartie` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UnitCustomerAccount` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "AchAuthorizationLog" DROP CONSTRAINT "AchAuthorizationLog_fundingRoundId_fkey";

-- DropForeignKey
ALTER TABLE "AchAuthorizationLog" DROP CONSTRAINT "AchAuthorizationLog_fundingRoundSubscriptionId_fkey";

-- DropForeignKey
ALTER TABLE "AchAuthorizationLog" DROP CONSTRAINT "AchAuthorizationLog_memberId_fkey";

-- DropForeignKey
ALTER TABLE "AchAuthorizationLog" DROP CONSTRAINT "AchAuthorizationLog_tribeId_fkey";

-- DropForeignKey
ALTER TABLE "AchAuthorizationLog" DROP CONSTRAINT "AchAuthorizationLog_userId_fkey";

-- DropForeignKey
ALTER TABLE "FundingRound" DROP CONSTRAINT "FundingRound_tribeId_fkey";

-- DropForeignKey
ALTER TABLE "FundingRoundSubscription" DROP CONSTRAINT "FundingRoundSubscription_fundingRoundId_fkey";

-- DropForeignKey
ALTER TABLE "FundingRoundSubscription" DROP CONSTRAINT "FundingRoundSubscription_memberId_fkey";

-- DropForeignKey
ALTER TABLE "FundingRoundSubscription" DROP CONSTRAINT "FundingRoundSubscription_tribeId_fkey";

-- DropForeignKey
ALTER TABLE "Member" DROP CONSTRAINT "Member_tribeId_fkey";

-- DropForeignKey
ALTER TABLE "Member" DROP CONSTRAINT "Member_userId_fkey";

-- DropForeignKey
ALTER TABLE "Tribe" DROP CONSTRAINT "Tribe_memberId_fkey";

-- DropForeignKey
ALTER TABLE "UnitRelationship" DROP CONSTRAINT "UnitRelationship_unitAccountId_fkey";

-- DropTable
DROP TABLE "AchAuthorizationLog";

-- DropTable
DROP TABLE "FundingRound";

-- DropTable
DROP TABLE "FundingRoundSubscription";

-- DropTable
DROP TABLE "Member";

-- DropTable
DROP TABLE "MemberTransaction";

-- DropTable
DROP TABLE "Tribe";

-- DropTable
DROP TABLE "UnitCounterpartie";

-- DropTable
DROP TABLE "UnitCustomerAccount";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "UnitAccount" (
    "id" TEXT NOT NULL,
    "ownerId" TEXT NOT NULL,
    "ownerType" TEXT NOT NULL,
    "accountId" TEXT NOT NULL,
    "accountType" TEXT NOT NULL,
    "accountStatus" TEXT NOT NULL,
    "unitCustomerId" TEXT NOT NULL,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UnitCounterparty" (
    "id" TEXT NOT NULL,
    "ownerId" TEXT NOT NULL,
    "ownerType" TEXT NOT NULL,
    "unitCustomerId" TEXT NOT NULL,
    "unitCounterpartyId" TEXT NOT NULL,
    "bank" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "accountType" TEXT NOT NULL,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "UnitAccount.accountId_unique" ON "UnitAccount"("accountId");

-- CreateIndex
CREATE UNIQUE INDEX "UnitCounterparty.unitCounterpartyId_unique" ON "UnitCounterparty"("unitCounterpartyId");

-- AddForeignKey
ALTER TABLE "UnitRelationship" ADD FOREIGN KEY ("unitAccountId") REFERENCES "UnitAccount"("accountId") ON DELETE CASCADE ON UPDATE CASCADE;
