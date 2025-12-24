# 🌿 Hyprland — Configuración Personal de Alberto Trujillo

Configuración modular y documentada de **Hyprland** optimizada para *Wayland puro* en Arch Linux (entorno Surface Laptop con Hyprland + Waybar + Wofi).

---

## 🧩 Estructura de archivos

```
~/.config/hypr/
├── autostart.conf        # Programas y scripts que se inician automáticamente
├── environment.conf      # Variables de entorno (Qt, GTK, Wayland, etc.)
├── input.conf            # Configuración de teclado, touchpad y ratón
├── keybindings.conf      # Atajos de teclado personalizados
├── looknfeel.conf        # Apariencia general, decoración, bordes, blur, gaps, etc.
├── monitors.conf         # Configuración de pantallas
├── programs.conf         # Variables con rutas de programas principales
├── rules.conf            # Reglas de ventanas y comportamiento
├── hyprland.conf         # Archivo principal que importa todos los anteriores
└── scripts/              # Scripts auxiliares (wallpapers, etc.)
```

---

## ⚙️ Descripción general

Esta configuración busca:
- 💡 *Claridad:* cada aspecto está separado en un archivo independiente.
- 🧠 *Mantenibilidad:* fácil de editar, sin repetir código ni opciones.
- 🚀 *Compatibilidad Wayland total:* sin depender de XWayland.
- 🎨 *Minimalismo elegante:* sombras suaves, bordes finos y transparencias ligeras.

---

## 🖥️ Requisitos recomendados

- **Hyprland** (última versión estable)
- **Waybar** — barra superior
- **Wofi** — launcher de aplicaciones
- **Kitty** — terminal principal
- **Quod Libet**, **Thunar**, **Firefox**, **Thunderbird**, **OBS Studio**
- **Grim** y **Slurp** — capturas de pantalla
- **playerctl**, **wpctl**, **brightnessctl** — multimedia y brillo

---

## ⌨️ Cambio rápido de layout de teclado

El sistema usa dos layouts:
```
gb, es
```
y alterna con `Alt+Shift`.  
También puedes usar un atajo manual:
```bash
bind = $mainMod, space, exec, hyprctl switchxkblayout "NOMBRE_DEL_TECLADO" next
```

Para conocer el nombre exacto de tu teclado, ejecuta:

```bash
hyprctl devices
```

Busca en la salida algo como:
```
Device atkbd0:
  Type: keyboard
  ...
```

El nombre que aparece después de `Device` (por ejemplo, `atkbd0`) es el que debes usar:

```bash
bind = $mainMod, space, exec, hyprctl switchxkblayout "atkbd0" next
```

💡 *Consejo:* si usas un teclado Bluetooth o externo, también puedes añadir otro `bind` con su nombre (Hyprland trata cada dispositivo por separado).

---

## 🔁 Recargar la configuración

Para aplicar cambios sin cerrar sesión:
```bash
SUPER + R
```

Esto ejecuta:
```bash
hyprctl reload
```

---

## 📸 Capturas y multimedia

- **SUPER + Shift + S** → captura de pantalla completa  
- **SUPER + Shift + R** → seleccionar región con Slurp  
- Teclas multimedia → volumen, brillo y reproducción con `wpctl`, `playerctl` y `brightnessctl`

---

## 🧰 Scripts adicionales

Algunos scripts se encuentran en `~/.config/scripts/`, por ejemplo:
- `wallpaper-fijo.sh` — gestiona el fondo de pantalla.
- `cambia_wallpaper.sh` — (opcional) cambio dinámico de fondos.

---

## 📜 Licencia

Uso libre con atribución.  
Puedes adaptar esta configuración, siempre que menciones al autor original.

**© 2025 Alberto Trujillo**
