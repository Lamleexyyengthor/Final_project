/*
  Warnings:

  - You are about to drop the column `purchase_price` on the `Product` table. All the data in the column will be lost.
  - Added the required column `variant_id` to the `OrderDetail` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "OrderDetail" ADD COLUMN     "variant_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "purchase_price";

-- AddForeignKey
ALTER TABLE "OrderDetail" ADD CONSTRAINT "OrderDetail_variant_id_fkey" FOREIGN KEY ("variant_id") REFERENCES "ProductVariant"("variant_id") ON DELETE RESTRICT ON UPDATE CASCADE;
