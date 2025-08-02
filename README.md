# 📝 To-Do Flutter App

Aplicación móvil Flutter para gestionar tareas. Desarrollada con arquitectura limpia, persistencia local y gestión de estado eficiente usando Provider.

---

## ✅ Características

- Ver lista de tareas
- Agregar nuevas tareas
- Editar tareas existentes
- Marcar tareas como completadas
- Eliminar tareas
- Persistencia local con `sqflite`
- Gestión de estado con `provider`
- Arquitectura organizada y modular (Clean Architecture)
- Manejo de errores y validaciones básicas

---

## 📂 Estructura del proyecto

```
lib/
├── core/              # Acceso a la base de datos
├── data/              # Repositorio concreto
├── domain/            # Modelos y abstracciones
├── presentation/      # UI, estado y pantallas
│   ├── screens/
│   ├── providers/
│   └── widgets/
└── main.dart
```

---

## 🚀 Cómo ejecutar

1. Clona este repositorio:
   ```bash
   git clone https://github.com/TU_USUARIO/TU_REPOSITORIO.git
   cd TU_REPOSITORIO
   ```

2. Instala las dependencias:
   ```bash
   flutter pub get
   ```

3. Ejecuta la app:
   ```bash
   flutter run
   ```

---

## 🧱 Dependencias principales

- flutter
- provider: ^6.0.0
- sqflite: ^2.0.0+4
- path: ^1.8.0

---

## 🛠 Requisitos técnicos cubiertos

- [x] Persistencia de datos local
- [x] CRUD completo
- [x] Manejo de estado con Provider
- [x] Arquitectura modular
- [x] Validaciones y manejo de errores
- [x] Buenas prácticas en rendimiento (uso de ListView.builder)

---