/*
  Warnings:

  - Added the required column `created_at` to the `albums` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `albums` table without a default value. This is not possible if the table is not empty.
  - Added the required column `created_at` to the `artists` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `artists` table without a default value. This is not possible if the table is not empty.
  - Added the required column `created_at` to the `formats` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `formats` table without a default value. This is not possible if the table is not empty.
  - Added the required column `created_at` to the `labels` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `labels` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "albums" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "artists" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "formats" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "labels" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;
