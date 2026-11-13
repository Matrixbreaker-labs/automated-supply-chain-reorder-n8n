# Automated Supply Chain Reorder & Supplier PO Pipeline (n8n + Google Sheets + Gemini AI)

An end-to-end, low-code supply chain automation workflow built with **n8n**, **Google Sheets**, and **Google Gemini AI**. This pipeline monitors live inventory levels daily, calculates Reorder Points (ROP), filters low-stock items, and automatically drafts formal Purchase Order (PO) emails for vendors.

## 🚀 Key Features
- **Automated Daily Scheduling:** Runs automatically on a configured schedule (`Asia/Dhaka` or custom timezone) without manual intervention.
- **Live Google Sheets Integration:** Reads real-time product SKU, current stock, reorder limits, and vendor contact records directly from an inventory spreadsheet.
- **Dynamic ROP Calculation:** Evaluates stock thresholds using custom JavaScript logic (`Current Stock <= Reorder Point`) to flag items requiring immediate restocking.
- **Smart Conditional Routing:** Uses conditional branching (`IF` node) to isolate low-stock SKUs (`true` branch) from adequately stocked inventory (`false` branch).
- **AI-Powered PO Drafting:** Integrates **Google Gemini AI** to generate context-aware, formal Purchase Order emails tailored to each low-stock SKU.

## 🛠️ Tech Stack
- **Workflow Orchestration:** n8n (Cloud / Self-Hosted)
- **Database / Inventory Source:** Google Sheets API
- **AI Engine:** Google Gemini (`Message a model` / Text Actions)
- **Custom Logic:** JavaScript (n8n Code Node)

## 📂 How to Use
1. Download the `supply_chain_reorder_workflow.json` file from this repository.
2. Open your n8n canvas, click the `...` menu, and select **Import from File**.
3. Connect your **Google Sheets** and **Google Gemini** credentials inside the respective nodes.
4. Select your inventory spreadsheet and click **Execute** or **Publish** to activate daily automation.
