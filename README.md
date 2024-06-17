# AI_CostEstimation
AI driven cost estimation tool.  
-UI is created in .NET 6 
-Backend in Python and GenAI
-Database SqlServer

Configration :-
Backend : - All python lib should be installed which is inside requirments. (pip install "libname")
          - SQL connection name has to be changed inside the file GenAi_API.
              - this is line 22  "def __init__(self, server='471D0A8AE4E15D5\MSSQLSERVER01', database='AICostEstimation',driver='ODBC Driver 17 for SQL Server'):"
              - only change server name check the server name in your SQL server provide 'server=your SQL server name'
          - To run the API run this command " python -m uvicorn GenAi_API:app --reload" in the path terminal.
Database :- Open AI_CostEstimation_Dataset in SQL server and run he code.
            check if the table is created inside Open AI_CostEstimation_Dataset 
          


change

# AI Cost Estimation Tool

This project is an AI-driven cost estimation tool designed to provide  cost estimates based on various parameters.

## Project Components

- **UI**: Created using .NET 6 framework.
- **Backend**: Implemented in Python using GenAI.
- **Database**: Utilizes SQL Server to store and manage data.

## Configuration

### Backend Configuration

1. **Python Libraries Installation**: Ensure all required Python libraries are installed. You can install them using the following command:
   ```
   pip install -r requirements.txt
   ```

2. **SQL Server Connection**: Modify the SQL connection details in the `GenAi_API.py` file:
   - Locate the `__init__` method in `GenAi_API.py`.
   - Update the server name in line 22:
     ```python
     def __init__(self, server='your_server_name', database='AICostEstimation', driver='ODBC Driver 17 for SQL Server'):
     ```
     Replace `'your_server_name'` with your actual SQL Server instance name.

3. **Running the API**: To run the API, execute the following command in the terminal at the project directory:
   ```
   python -m uvicorn GenAi_API:app --reload
   ```

### Database Setup

1. **Database Initialization**: Open SQL Server Management Studio and execute the script `Open AI_CostEstimation_Dataset.sql` to create the necessary database and tables.
   
2. **Verification**: Confirm that the tables have been successfully created inside the `Open AI_CostEstimation_Dataset` database.

## Usage

1. **UI Interaction**: Interact with the UI to input parameters and retrieve cost estimations.
   
2. **API Access**: Utilize the API endpoints to integrate cost estimation functionality into other applications.

