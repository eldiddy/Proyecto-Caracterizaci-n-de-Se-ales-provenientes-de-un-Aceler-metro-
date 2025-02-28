#!/usr/bin/env python3

import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import accuracy_score

# Se cargan los datos
df = pd.read_csv("/root/catkin_ws/src/data_svm/data/mfcc_bobcat_data_aug2.csv")

# Asegurar que sean strings
df["estado"] = df["estado"].astype(str)
print("Valores unicos en 'estado':", df["estado"].unique())

# Eliminar espacios en blanco en los valores
df["estado"] = df["estado"].str.strip()

# Filtrar los valores no validos
valid_states = {"roca", "vacio", "inactivo"}
df = df[df["estado"].isin(valid_states)]

# Mapear a numeros
df["estado"] = df["estado"].map({"roca": 0, "vacio": 1, "inactivo": 2})

# Verificar si hay valores nulos despues del mapeo
if df["estado"].isnull().sum() > 0:
    print("Error: Existen valores nulos en la columna 'estado'")
    exit()

# Convertir las columnas de MFCC a matrices de Numpy
features = df.iloc[:, 1:-1].values
labels = df["estado"].values 

# Dividir datos en entrenamiento y prueba
X_train, X_test, y_train, y_test = train_test_split(features, labels, test_size=0.2, random_state=42)

# Normalizar los datos
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)

# Entrenar el modelo SVM
svm_model = SVC(kernel="rbf", C=1.0, gamma="scale")
svm_model.fit(X_train, y_train)

# Evaluar el modelo
y_pred = svm_model.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f"Precision del modelo SVM: {accuracy:.2f}")

# Guardar el modelo entrenado
import joblib
joblib.dump(scaler, "scale002.pkl")
joblib.dump(svm_model, "svm_model002.pkl")
