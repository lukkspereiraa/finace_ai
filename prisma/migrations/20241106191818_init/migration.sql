-- CreateEnum
CREATE TYPE "TransactionType" AS ENUM ('DEPOSIT', 'EXPENSE', 'INVESTMENT');

-- CreateEnum
CREATE TYPE "TransactioCategory" AS ENUM ('HOUSING', 'TRASPORTATAION', 'FOOD', 'ENTERTAINMENT', 'HEALTH', 'UTILITY', 'SALARY', 'EDUCATION', 'OTHER');

-- CreateEnum
CREATE TYPE "TransactionPaymentaMathod" AS ENUM ('CREDIT_CAD', 'DEBIT_CAD', 'BANK_TRANFER', 'BANK_SLIP', 'CASH', 'PIX', 'OTHER');

-- CreateTable
CREATE TABLE "Transaction" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "type" "TransactionType" NOT NULL,
    "amout" DECIMAL(10,2) NOT NULL,
    "category" "TransactioCategory" NOT NULL,
    "paymentaMethod" "TransactionPaymentaMathod" NOT NULL,
    "data" TIMESTAMP(3) NOT NULL,
    "createAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Transaction_pkey" PRIMARY KEY ("id")
);
