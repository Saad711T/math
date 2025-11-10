from pulp import LpMaximize, LpProblem, LpVariable

# Linear Programming Model / نموذج البرمجة الخطية
model = LpProblem(name="Sensitivity_Analysis", sense=LpMaximize)

# Variables / المتغيرات
x = LpVariable(name="Product_A", lowBound=0)
y = LpVariable(name="Product_B", lowBound=0)

# Objective Function / دالة الهدف
model += 10 * x + 15 * y, "Profit"

# Constraints / القيود
model += 2 * x + 4 * y <= 100, "Material_Constraint"
model += 3 * x + 2 * y <= 90, "Labor_Constraint"

# Solving Model / حل النموذج
model.solve()

# Print
print(f"Optimal Production of Product A: {x.varValue}")
print(f"Optimal Production of Product B: {y.varValue}")
print(f"Maximum Profit: {model.objective.value()}")

# Using numpy for Sensitivity Analysis / استخدام numpy لتحليل الحساسية
import numpy as np
cost_factors = np.linspace(0.8, 1.2, 5) 

for factor in cost_factors:
    new_profit = (10 * factor) * x.varValue + (15 * factor) * y.varValue
    print(f"Profit with cost factor {factor:.2f}: {new_profit:.2f}")
