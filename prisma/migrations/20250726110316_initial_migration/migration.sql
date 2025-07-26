-- CreateEnum
CREATE TYPE "MediaType" AS ENUM ('vinyl', 'cd', 'cassette', 'digital');

-- CreateTable
CREATE TABLE "albums" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "genre" TEXT NOT NULL,
    "release_date" TIMESTAMP(3) NOT NULL,
    "image" TEXT NOT NULL,
    "artistId" INTEGER,
    "labelId" INTEGER,

    CONSTRAINT "albums_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "artists" (
    "id" SERIAL NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "birth_date" TEXT NOT NULL,
    "death_date" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "labelId" INTEGER,

    CONSTRAINT "artists_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "formats" (
    "id" SERIAL NOT NULL,
    "type" "MediaType" NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "stock" INTEGER NOT NULL,
    "barcode" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "albumId" INTEGER,

    CONSTRAINT "formats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "labels" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "founded" TEXT NOT NULL,
    "image" TEXT NOT NULL,

    CONSTRAINT "labels_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "albums_title_key" ON "albums"("title");

-- CreateIndex
CREATE UNIQUE INDEX "albums_image_key" ON "albums"("image");

-- CreateIndex
CREATE UNIQUE INDEX "artists_first_name_key" ON "artists"("first_name");

-- CreateIndex
CREATE UNIQUE INDEX "artists_last_name_key" ON "artists"("last_name");

-- CreateIndex
CREATE UNIQUE INDEX "artists_image_key" ON "artists"("image");

-- CreateIndex
CREATE UNIQUE INDEX "formats_image_key" ON "formats"("image");

-- CreateIndex
CREATE UNIQUE INDEX "labels_name_key" ON "labels"("name");

-- CreateIndex
CREATE UNIQUE INDEX "labels_image_key" ON "labels"("image");

-- AddForeignKey
ALTER TABLE "albums" ADD CONSTRAINT "albums_artistId_fkey" FOREIGN KEY ("artistId") REFERENCES "artists"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "albums" ADD CONSTRAINT "albums_labelId_fkey" FOREIGN KEY ("labelId") REFERENCES "labels"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "artists" ADD CONSTRAINT "artists_labelId_fkey" FOREIGN KEY ("labelId") REFERENCES "labels"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "formats" ADD CONSTRAINT "formats_albumId_fkey" FOREIGN KEY ("albumId") REFERENCES "albums"("id") ON DELETE SET NULL ON UPDATE CASCADE;
