This File explains each and every steps involved in doing the task given in each section.

 #### **Section 1: Python + Machine Learning**
dataset: https://www.kaggle.com/datasets/spscientist/students-performance-in-exams

---

1. **Load the Dataset & Clean Data**  
   - Import the CSV file into a pandas DataFrame.  
   - Check for missing values or incorrect data types.  
   - Standardize column names for easier handling.

---

2. **Perform Exploratory Data Analysis (EDA)**  
   - Visualize score distributions using histograms.  
   - Use boxplots to compare scores by gender or group.  
   - Plot a heatmap to understand correlations between math, reading, and writing scores.

---

3. **Feature Engineering**  
   - Create a new column for **average score**.  
   - Define a student as "pass" if the average score is ≥ 50, and "fail" otherwise.

---

4. **Encode Categorical Variables**  
   - Convert text fields (like gender, parental education) into numerical form using label encoding or one-hot encoding.

---

5. **Split the Dataset**  
   - Divide the data into training and test sets (e.g., 80/20 split).

---

6. **Train Classification Models**  
   - Use **Logistic Regression** and **Random Forest** to train models that predict whether a student passes or fails.

---

7. **Evaluate the Models**  
   - Assess model performance using **accuracy**, **confusion matrix**, and **F1-score** to understand both correctness and balance of predictions.

---

8. **Interpret Results**  
   - Compare models, observe feature importance, and draw insights on factors influencing student performance.


### **Section 2: SQL**
dataset: https://github.com/lerocha/chinook-database
---

### 1. **Top 5 Customers by Total Purchase Amount**
- Join the **Customer** and **Invoice** tables.
- Group the data by each customer.
- Sum up the total invoice amount per customer.
- Sort the result in descending order and select the top 5.

---

### 2. **Most Popular Genre by Total Tracks Sold**
- Join the **Genre**, **Track**, and **InvoiceLine** tables.
- Count how many times tracks from each genre appear in the invoice lines (representing sales).
- Group the data by genre and order by the total count to find the most sold genre.

---

### 3. **Employees Who Are Managers and Their Subordinates**
- Perform a self-join on the **Employee** table.
- Use the `ReportsTo` field to link each subordinate to their manager.
- Display the names of both the manager and their direct reports.

---

### 4. **Most Sold Album per Artist**
- Join the **Artist**, **Album**, **Track**, and **InvoiceLine** tables.
- Count the number of times each album's tracks were sold.
- Group the data by album and artist.
- For each artist, identify the album with the highest number of sales.

---

### 5. **Monthly Sales Trends in 2013**
- Filter the **Invoice** table for records from the year 2013.
- Extract the month and year from each invoice date.
- Group invoices by month.
- Sum the total sales for each month to identify trends across the year.

---

### **Section 3: Tableau**
dataset:https://www.kaggle.com/datasets/dgomonov/new-york-city-airbnb-open-data

---

### 1. **Import Data into Tableau**
- Download the dataset from Kaggle (CSV format).
- Open Tableau and connect to the CSV file.

---

### 2. **Create View: Listings Count by Neighborhood**
- Drag `neighbourhood_group` to **Rows**.
- Drag `id` (or any unique identifier) to **Columns** and set it to **Count**.
- Use a bar chart to visualize listings by neighborhood group.

---

### 3. **Create View: Price Distribution per Room Type**
- Drag `room_type` to Columns and `price` to Rows.
- Use a **box plot** or **histogram** to show the price distribution per room type.
- Add filters to remove outliers if needed (e.g., prices > $1000).

---

### 4. **Create View: Availability Trends**
- Use `availability_365` or filter by date if available.
- Create a line chart or bar chart showing availability across neighborhoods or room types.

---

### 5. **Add Filters**
- Add **room type** and **neighbourhood group** as filters.
- Show filter controls on the dashboard so users can interact with them.

---

### 6. **Create the Dashboard**
- Combine all three views into one dashboard.
- Use layout containers for clean design.
- Add titles, legends, and filters for clarity.

---

### 7. **Publish to Tableau Public**
- Sign in to Tableau Public.
- Click **File > Save to Tableau Public As...**
- Give your dashboard a name and share the generated link.

### **Section 4: Excel**
dataset:https://archive.ics.uci.edu/ml/datasets/online+retail

---

### 1. **Clean the Data**
- Load the Excel/CSV file into Excel or Power BI.
- Remove rows with **null or missing values**, especially in key columns like `InvoiceNo`, `CustomerID`, or `InvoiceDate`.
- Remove **duplicate rows** if any are found.

---

### 2. **Create a Pivot Table: Total Sales by Country and Month**
- Add a new column named `TotalSales` using the formula:  
  `=Quantity * UnitPrice`.
- Insert a Pivot Table.
- Use `Country` as **Rows**, and **Month (from InvoiceDate)** as **Columns**.
- Set `TotalSales` as the **Values** field (Sum).

---

### 3. **Calculate Average Order Value**
- Use the formula:  
  `=Total Sales / Number of Unique Invoices`.
- Can be done in a separate summary section or as a calculated field.

---

### 4. **Calculate % Contribution of Each Country**
- In the pivot or a new column, use:  
  `=Country TotalSales / Grand TotalSales`.
- Format it as a percentage.

---

### 5. **Highlight Top 5 Countries by Revenue**
- Select the column with **total sales by country**.
- Apply **Conditional Formatting → Top/Bottom Rules → Top 5 Items**.
- Choose a color to highlight.

---

### 6. **Create a Chart for Monthly Revenue Trend**
- Use a line or bar chart.
- Plot **Months** on the x-axis and **Total Sales** on the y-axis.
- Source data can be from the same pivot or a separate monthly summary.
