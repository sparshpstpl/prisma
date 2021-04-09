-- AlterTable
ALTER TABLE "MemberTransaction" ADD COLUMN     "reference" TEXT,
ALTER COLUMN "processedDate" DROP NOT NULL;
