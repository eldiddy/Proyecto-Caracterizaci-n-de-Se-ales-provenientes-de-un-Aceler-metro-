#!/usr/bin/env python3

import pandas as pd
import numpy as np
from imblearn.over_sampling import SMOTE

# Se cargan los datos
df = pd.read_csv("mfcc_bobcat_data.csv")

# Se convierten todas las columnas numéricas a float
for col in df.columns[1:-1]:  # Se omite timestamp y estado
    df[col] = pd.to_numeric(df[col], errors="coerce")

# Se mantienen columnas de etiquetas
estado_col = "estado"
timestamp_col = "timestamp"

# Se filtra por el estado con menor cantidad de datos
estado_minoritario = "roca"  # Cambiar segun dato a aumentar
df_min = df[df[estado_col] == estado_minoritario]
df_may = df[df[estado_col] != estado_minoritario]

# Separar características y etiquetas
X_min = df_min.drop(columns=[timestamp_col, estado_col]).values.astype(float)
y_min = df_min[estado_col].values
timestamps_min = df_min[timestamp_col].values

X_may = df_may.drop(columns=[timestamp_col, estado_col]).values.astype(float)
y_may = df_may[estado_col].values
timestamps_may = df_may[timestamp_col].values

# Se agrega ruido aleatorio
X_noise = X_min + np.random.normal(0, 0.01, X_min.shape)
y_noise = np.full(len(X_min), estado_minoritario)
timestamps_noise = timestamps_min  # Se mantienen los timestamps originales

# Se concatenan todos los datos aumentados
X_aug = np.vstack([X_min, X_noise])
y_aug = np.concatenate([y_min, y_noise])
timestamps_aug = np.concatenate([timestamps_min, timestamps_noise])

# Unir con datos originales de los otros estados
X_fin = np.vstack([X_may, X_aug])
y_fin = np.concatenate([y_may, y_aug])
timestamps_fin = np.concatenate([timestamps_may, timestamps_aug])

# Crear DataFrame fin
df_fin = pd.DataFrame(X_fin, columns=df.columns[1:-1])
df_fin[timestamp_col] = timestamps_fin
df_fin[estado_col] = y_fin

# Guardar el nuevo archivo
df_fin = df_fin[[timestamp_col] + list(df.columns[1:-1]) + [estado_col]]
df_fin.to_csv("mfcc_bobcat_data_aug2.csv", index=False)

print(f"Datos aumentados guardados correctamente con timestamps. Ahora el estado '{estado_minoritario}' tiene {len(y_aug)} ejemplos.")



