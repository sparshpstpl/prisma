/*
  Warnings:

  - Added the required column `transactionId` to the `MemberTransaction` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "MemberTransaction" ADD COLUMN     "transactionId" TEXT NOT NULL;
