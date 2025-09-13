/*
  Warnings:

  - The `keyTrends` column on the `IndustryInsight` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "public"."IndustryInsight" DROP COLUMN "keyTrends",
ADD COLUMN     "keyTrends" TEXT[];
