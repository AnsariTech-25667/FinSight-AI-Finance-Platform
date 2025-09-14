import { Inter } from "next/font/google";
import "./globals.css";
import Header from "@/components/header";
import { ClerkProvider } from "@clerk/nextjs";
import { Toaster } from "sonner";

const inter = Inter({ subsets: ["latin"] });

export const metadata = {
  title: "FinSight-AI",
  description: "AI-powered financial tracking by Maaz Ansari",
};


export default function RootLayout({ children }) {
  return (
    <ClerkProvider>
      <html lang="en">
        <head>
<span className="text-xl font-bold text-indigo-600">
  FinSight-AI
</span>
        </head>
        <body className={`${inter.className}`}>
          <Header />
          <main className="min-h-screen">{children}</main>
          <Toaster richColors />

        <footer className="bg-blue-50 py-12">
  <div className="container mx-auto px-4 text-center text-gray-600">
    <p>© 2025 FinSight-AI | Built with 💗 by Maaz Ansari</p>
  </div>
</footer>

        </body>
      </html>
    </ClerkProvider>
  );
}
