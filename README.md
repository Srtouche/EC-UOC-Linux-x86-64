# Entorno Linux para las Prácticas de EC

> **Este repositorio es una plantilla.** No lo clones directamente — crea tu propio repositorio a partir de él siguiendo los pasos de abajo.

## Pasos para empezar (solo la primera vez)

### 1. Crea tu repositorio desde esta plantilla
- En la esquina superior derecha de esta página, haz clic en el botón verde **Use this template** → **Create a new repository**.
- Dale un nombre a tu repositorio (por ejemplo, `practicas-EC`).
- Selecciona **Private** para que tu trabajo no sea visible por otros estudiantes.
- Haz clic en **Create repository**.

### 2. Crea tu Codespace
- En **tu nuevo repositorio**, haz clic en el botón verde **`<> Code`**.
- Ve a la pestaña **Codespaces** y haz clic en **Create codespace on main**.
- Espera a que se construya el entorno (puede tardar unos minutos la primera vez).

### 3. Accede al escritorio Linux
- Una vez que el Codespace haya cargado, aparecerá una notificación de que el **puerto 6080** está disponible. Haz clic en **Open in Browser**.
- Se abrirá el escritorio Linux en el navegador. ¡Ya puedes trabajar!

---

## Añadir los archivos de tu práctica
- En el Codespace, verás el **explorador de archivos** en el panel izquierdo de VS Code.
- Simplemente **arrastra la carpeta de tu práctica** desde tu ordenador y suéltala ahí.
- Los archivos quedarán disponibles dentro del escritorio Linux automáticamente.

---

## Próximas veces
- Entra a [github.com/codespaces](https://github.com/codespaces), abre tu Codespace y espera a que cargue.
- El escritorio se iniciará solo. Abre el puerto 6080 cuando aparezca la notificación.

---

## Instalar Firefox (opcional)
Si necesitas un navegador dentro del escritorio Linux, abre la terminal del Codespace y ejecuta:
```bash
sudo apt-get update && sudo apt-get install -y firefox
```
