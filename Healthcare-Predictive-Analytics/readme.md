# Healthcare Predictive Analytics: Diabetes Disease Detection

## Project Overview

This project focuses on predicting diabetes risk using machine learning techniques and healthcare data. The objective is to identify patients who are likely to have diabetes based on medical attributes such as glucose level, BMI, age, blood pressure, insulin level, and other health indicators.

The project demonstrates the complete data science workflow, including data preprocessing, exploratory data analysis (EDA), visualization, machine learning model development, and performance evaluation.

---

## Problem Statement

Diabetes is one of the most common chronic diseases worldwide. Early detection can help healthcare professionals provide timely treatment and reduce health complications. This project aims to build a predictive model that can assist in identifying individuals at risk of diabetes.

---

## Dataset

**Dataset:** Pima Indians Diabetes Dataset

### Features Used

* Pregnancies
* Glucose
* BloodPressure
* SkinThickness
* Insulin
* BMI
* DiabetesPedigreeFunction
* Age

### Target Variable

* Outcome

  * 0 = No Diabetes
  * 1 = Diabetes

---

## Technologies Used

* R Programming
* RStudio
* ggplot2
* Random Forest
* caret
* corrplot
* tidyverse

---

## Exploratory Data Analysis

The following analyses were performed:

* Diabetes Outcome Distribution
* Glucose vs Diabetes Analysis
* BMI vs Diabetes Analysis
* Age vs Diabetes Analysis
* Glucose vs BMI Relationship
* Correlation Heatmap
* Feature Importance Analysis

---

## Machine Learning Model

### Random Forest Classifier

The dataset was split into:

* 80% Training Data
* 20% Testing Data

The Random Forest algorithm was used to predict diabetes status based on patient health indicators.

---

## Model Performance

| Metric            | Value |
| ----------------- | ----- |
| Accuracy          | 81.7% |
| Sensitivity       | 92.0% |
| Specificity       | 62.3% |
| Balanced Accuracy | 77.1% |

---

## Key Findings

* Glucose was identified as the most important predictor of diabetes.
* BMI showed a strong relationship with diabetes occurrence.
* Age was positively associated with diabetes risk.
* Random Forest achieved good predictive performance with an accuracy of 81.7%.
* Machine learning can support healthcare professionals in early disease detection.

---

## Ethical Considerations

Healthcare data should be handled responsibly to protect patient privacy and confidentiality. Predictive models should be used as decision-support tools and not as a replacement for professional medical diagnosis.

---

## Conclusion

This project successfully developed a diabetes prediction model using machine learning techniques. The results demonstrate the potential of data-driven healthcare analytics in supporting early disease detection and improving patient outcomes.

---

## Author

Hanfiya Tabassum

B.Sc. Data Science
