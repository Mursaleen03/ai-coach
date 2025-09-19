

# AI Coach

AI Coach is a full-stack web application that leverages artificial intelligence to help users build, improve, and showcase their professional profiles. It provides personalized resume and cover letter generation, industry insights, interview preparation, and actionable recommendations to boost career growth.

## 🚀 Features
- **User Authentication & Onboarding:** Secure sign-up/sign-in using Clerk, with onboarding flow to collect user details and preferences.
- **AI-Powered Industry Insights:** Get up-to-date information about your industry, including salary ranges, growth rate, demand level, key trends, and recommended skills.
- **Resume Builder:** Create and edit resumes with AI suggestions for professional summary, skills, and experience sections.
- **Cover Letter Generator:** Generate tailored cover letters for job applications using AI.
- **Interview Preparation:** Practice with mock interviews and receive feedback and improvement tips from AI.
- **Dashboard:** View personalized recommendations, track progress, and access all features in one place.
- **Improve with AI:** Enhance your professional summary and skills with AI-generated suggestions.

## 🛠️ Tech Stack & Architecture
- **Frontend:** Next.js (App Router), React, Tailwind CSS, Shadcn UI
- **Backend:** Next.js API routes, Prisma ORM (PostgreSQL)
- **Authentication:** Clerk
- **AI Integration:** Google Gemini API
- **Background Jobs:** Inngest
- **Notifications:** Sonner

### Folder Structure
- `app/` - Main application pages and layouts
- `components/` - Reusable UI components
- `actions/` - Server actions and business logic (API endpoints)
- `lib/` - Utility functions and Prisma client
- `hooks/` - Custom React hooks
- `prisma/` - Prisma schema and migrations
- `public/` - Static assets
- `data/` - Static data files

## 📡 API Overview
All business logic is handled via server actions in the `actions/` folder. Key APIs include:

### User APIs
- `POST /api/user/update` — Update user profile and industry
- `GET /api/user/status` — Get onboarding status

### Industry Insights
- `POST /api/industry-insight` — Generate or fetch industry insights (AI-powered)

### Resume & Cover Letter
- `POST /api/resume` — Create or update resume
- `POST /api/cover-letter` — Generate cover letter

### Interview
- `POST /api/interview/mock` — Start a mock interview session

#### Example: Update User Profile
```js
// POST /api/user/update
{
  "industry": "tech-blockchain-&-cryptocurrency",
  "experience": 3,
  "bio": "Blockchain developer with 3 years experience",
  "skills": ["Solidity", "Smart Contracts", "Web3"]
}
```

#### Example: Get Industry Insights
```js
// POST /api/industry-insight
{
  "industry": "tech-blockchain-&-cryptocurrency"
}
// Response
{
  "salaryRanges": [...],
  "growthRate": 12.5,

# AI Coach

AI Coach is a full-stack, AI-powered career assistant web application. It helps users build, improve, and showcase their professional profiles, resumes, and cover letters, and prepares them for interviews using real-time industry insights and generative AI.

## 📦 Project Structure

- **app/** — Main application pages and layouts (Next.js App Router)
	- **(main)/dashboard/** — Industry insights dashboard
	- **(main)/resume/** — Resume builder and editor
	- **(main)/ai-cover-letter/** — Cover letter generator and manager
	- **(main)/interview/** — Interview preparation, mock interviews, performance charts
	- **(main)/onboarding/** — User onboarding form and flow
	- **(auth)/sign-in, sign-up/** — Authentication pages (Clerk)
- **components/** — Reusable UI components (header, hero, theme-provider, shadcn-ui)
- **actions/** — Server actions and API logic (user, resume, cover-letter, interview, dashboard)
- **lib/** — Utility functions, Prisma client, user check, AI client, helper functions
- **prisma/** — Prisma schema and migrations
- **data/** — Static data (industries, features, testimonials, etc.)
- **public/** — Static assets (images, icons)

## 🛠️ Tech Stack

- **Frontend:** Next.js, React, Tailwind CSS, Shadcn UI
- **Backend:** Next.js API routes, Prisma ORM (PostgreSQL)
- **Authentication:** Clerk
- **AI Integration:** Google Gemini API (Generative AI)
- **Background Jobs:** Inngest
- **Notifications:** Sonner

## � Features

- **User Authentication & Onboarding:** Secure sign-up/sign-in, onboarding form to collect user details, industry, experience, and skills.
- **AI-Powered Industry Insights:** Real-time salary ranges, growth rate, demand level, top skills, market outlook, and trends for selected industries.
- **Resume Builder:** Create, edit, and improve resumes with AI suggestions for summary, skills, experience, education, and projects. Export as PDF.
- **Cover Letter Generator:** Generate and manage tailored cover letters for job applications using AI.
- **Interview Preparation:** Take mock interviews, receive instant feedback, view performance charts and stats.
- **Dashboard:** Personalized recommendations, insights, and progress tracking.
- **Improve with AI:** Enhance professional summary and skills in resume and profile using AI.

## � API Endpoints & Server Actions

All business logic is handled via server actions in the `actions/` folder. Key APIs include:

- **User APIs**
	- `updateUser(data)` — Update user profile and industry
	- `getUserOnboardingStatus()` — Get onboarding status
- **Industry Insights**
	- `generateAIInsights(industry)` — Generate/fetch industry insights (AI-powered)
	- `getIndustryInsights()` — Get all industry insights
- **Resume**
	- `saveResume(content)` — Create/update resume
	- `getResume()` — Get user resume
	- `improveWithAI({ current, type })` — Improve summary/skills with AI
- **Cover Letter**
	- `generateCoverLetter(data)` — Generate cover letter
	- `getCoverLetters()` — List all cover letters
	- `getCoverLetter(id)` — Get cover letter by ID
	- `deleteCoverLetter(id)` — Delete cover letter
- **Interview**
	- `generateQuiz()` — Start mock interview session
	- `saveQuizResult(questions, answers, score)` — Save quiz results
	- `getAssessments()` — Get interview assessments

### Example API Usage

```js
// Update user profile
await updateUser({
	industry: "tech-blockchain-&-cryptocurrency",
	experience: 3,
	bio: "Blockchain developer with 3 years experience",
	skills: ["Solidity", "Smart Contracts", "Web3"]
});

// Generate cover letter
await generateCoverLetter({
	jobTitle: "Blockchain Developer",
	companyName: "Acme Corp",
	jobDescription: "..."
});

// Improve resume summary with AI
await improveWithAI({ current: "Experienced dev...", type: "summary" });
```

## 🗄️ Database Schema (Prisma)

- **User:** id, clerkUserId, email, name, imageUrl, industry, bio, experience, skills
- **IndustryInsight:** industry, salaryRanges, growthRate, demandLevel, topSkills, marketOutlook, keyTrends, recommendedSkills, lastUpdated, nextUpdate
- **Resume:** id, userId, content
- **CoverLetter:** id, userId, content, jobTitle, companyName, jobDescription
- **Assessment:** id, userId, quizScore, questions, category, improvementTip

## 🤖 How AI Works

- Uses Google Gemini API for generative AI (industry insights, resume/cover letter improvement, interview feedback)
- AI suggestions are integrated in resume builder, cover letter generator, and dashboard
- Background jobs (Inngest) update industry insights weekly

## 🏁 Getting Started

1. Clone the repository:
	 ```bash
	 git clone https://github.com/Mursaleen03/ai-coach.git
	 ```
2. Install dependencies:
	 ```bash
	 npm install
	 ```
3. Set up environment variables in `.env` (see `.env.example` if available)
4. Run database migrations:
	 ```bash
	 npx prisma migrate dev
	 ```
5. Start the development server:
	 ```bash
	 npm run dev
	 ```

## 🚀 Deployment

Deploy on [Vercel](https://vercel.com/) or your preferred platform. Set environment variables for database, Clerk, and Gemini API keys. Run migrations and start the server.

## ❓ FAQ & Troubleshooting

- **Unsupported color function 'lab':** Update your CSS tooling or replace `lab()` colors with supported formats like `rgb()` or `hsl()`.
- **Chart not showing:** Ensure chart library is installed and data is passed correctly.
- **Improve summary/skills with AI:** Use the 'Improve with AI' button in resume builder or dashboard.
- **Reset password:** Use Clerk's password reset feature on the login page.

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## 📬 Contact

For questions or support, reach out to Mursaleen(mailto:mursaleen9306@gmail.com.com) or open an issue on GitHub.

## 📄 License

This project is licensed under the MIT License.

---
Created with ❤ by Mursaleen