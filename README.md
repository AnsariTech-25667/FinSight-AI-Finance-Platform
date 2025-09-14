![Build Status](https://github.com/AnsariTech-25667/FinSight-AI/actions/workflows/ci.yml/badge.svg)
![License](https://img.shields.io/github/license/AnsariTech-25667/FinSight-AI)

# FinSight-AI: Intelligent Financial Tracking & Analysis

## Overview
**FinSight-AI** is a next-generation AI-powered financial management platform designed to automate and optimize personal finance tracking. This full-stack application integrates cutting-edge machine learning models, intelligent automation, and a secure, scalable architecture to provide users with seamless financial insights.

## Key Features
- **Smart Income & Expense Tracking:** Supports multiple accounts with AI-driven categorization.
- **AI Receipt Scanning:** OCR-powered receipt scanning extracts data with 90% accuracy, reducing manual entry.
- **Automated Recurring Transactions:** Uses Cron jobs to manage subscriptions, salaries, and recurring expenses.
- **Budget Management & Alerts:** Provides real-time budget tracking with email notifications at 90% utilization.
- **Interactive Data Visualization:** Displays spending patterns for the last 7 days, 1 month, and 6 months using dynamic charts.
- **AI-Powered Monthly Insights:** Generates personalized reports with savings tips and analysis.
- **Bulk Transaction Actions:** Allows batch editing/deletion for efficiency.
- **Security Enhancements:** Implements bot protection, API rate limiting, and robust authentication mechanisms.

## Tech Stack & Innovations
### **Frontend:**
- **Next.js & React.js:** Utilized for server-side rendering and optimized performance.
- **Shadcn UI & Tailwind CSS:** Built a sleek, responsive interface with modern UI components.
- **React Hook Form & Zod:** Ensured high-quality form validation and user-friendly input handling.

### **Backend:**
- **Node.js & Express.js:** Built a scalable REST API for transaction management.
- **MongoDB with Prisma ORM:** Leveraged a flexible NoSQL database with Prisma for enhanced querying.

### **AI/ML Integration:**
- **OCR Technology:** Implemented AI-based receipt scanning to eliminate manual data entry.
- **GPT-Driven Insights:** Integrated AI to provide financial recommendations and spending analysis.

### **Security & DevOps:**
- **Cron Jobs:** Automated recurring transaction updates and scheduled report generation.
- **Bot Protection & API Rate Limiting:** Enhanced platform security against abuse.
- **Environment-Based Configurations:** Managed sensitive keys using `.env` variables.

## Project Setup & Installation
### **1. Clone the Repository**
```bash
  git clone https://github.com/YOUR_GITHUB_USERNAME/ai-finance-manager.git
  cd ai-finance-manager
```

### **2. Install Dependencies**
```bash
  npm install
```

### **3. Configure Environment Variables**
Create a `.env` file and populate it with:
```env
DATABASE_URL=
DIRECT_URL=
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=
CLERK_SECRET_KEY=
GEMINI_API_KEY=
RESEND_API_KEY=
ARCJET_KEY=
```

### **4. Run the Application**
```bash
  npm run dev
```
The application will be available at `http://localhost:3000`.

## Why This Project is Unique
This platform isn't just another finance tracker; it integrates AI to offer **smart insights**, **automated expense management**, and **intelligent receipt scanning**. The project pushes the boundaries of traditional financial tracking by leveraging **Next.js for SSR performance**, **OCR for AI-driven data extraction**, and **GPT-based financial guidance**. Every feature was engineered with scalability, security, and efficiency in mind.

## Developed By
This project was **independently designed and built by Maaz Ansari** to showcase expertise in **full-stack AI-powered development**. 🚀

## Getting Started
Run the following to install and start:
```bash
npm install
npm start
```
