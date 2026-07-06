# VSM Fuentemilanos

### *La historia imprescindible para pilotos noveles de Vuelo Sin Motor (VSM)*

[![Build PDF](https://github.com/VuelaLibre-net/vsm-fuentemilanos/actions/workflows/book-generate-pdf.yaml/badge.svg)](https://github.com/VuelaLibre-net/vsm-fuentemilanos/actions/workflows/book-generate-pdf.yaml)
[![Versión](https://img.shields.io/badge/versión-1.4.1-blue.svg)](https://github.com/VuelaLibre-net/vsm-fuentemilanos/blob/main/CHANGELOG.md)
[![Idioma](https://img.shields.io/badge/idiomas-español%20%7C%20english-red.svg)](#)
[![Lectura](https://img.shields.io/badge/lectura-~2_h-brightgreen.svg)](#)

<p align="center">
  <img src="book/es/images/mockup-libro.png" alt="Mockup de VSM Fuentemilanos" width="400">
</p>

---

## 📥 Descargas Directas (Direct Downloads)

Puedes descargar la última versión del libro (`1.4.1`) en formato PDF y EPUB directamente desde los siguientes enlaces:

| Idioma / Language | Formato PDF | Formato EPUB |
| :--- | :--- | :--- |
| **Español (Original)** | [📄 Descargar PDF](https://github.com/VuelaLibre-net/vsm-fuentemilanos/releases/download/1.4.1/vsm-fuentemilanos.pdf) | [📱 Descargar EPUB](https://github.com/VuelaLibre-net/vsm-fuentemilanos/releases/download/1.4.1/vsm-fuentemilanos.epub) |
| **English (Translation)** | [📄 Download PDF](https://github.com/VuelaLibre-net/vsm-fuentemilanos/releases/download/1.4.1/vsm-fuentemilanos_en.pdf) | [📱 Download EPUB](https://github.com/VuelaLibre-net/vsm-fuentemilanos/releases/download/1.4.1/vsm-fuentemilanos_en.epub) |

---

## 🛩️ Sobre la Obra (Reedición de 1996)

Este repositorio alberga la **reedición digital (2026)** de la mítica obra original de **1996**, una guía práctica nacida en el aeródromo de Fuentemilanos (Segovia) para ayudar a pilotos noveles a superar la etapa de las **"alas de plomo"** (donde mantenerse en el aire más de 20 minutos parece imposible) y dar el salto con confianza al **vuelo de distancia (cross-country)**.

Reconstruida a partir de fotografías de la edición de 1996 mediante digitalización y el apoyo de Inteligencia Artificial, esta reedición revive un clásico del vuelo a vela con un formato digital moderno (Asciidoctor) y un diseño editorial de alta calidad (temas claro/oscuro y tipografías optimizadas).

---

## 📖 Estructura del Libro

* **Capítulo 1: En el Palomar** — Adaptación al velero monoplaza, control de vuelo y superación de las "alas de plomo".
* **Capítulo 2: Atmósfera** — Comprensión práctica de las térmicas, viento y meteorología para mantenerse en el aire.
* **Capítulo 3: Los Primeros Kilómetros** — Preparación psicológica y técnica para alejarse del aeródromo local con seguridad.
* **Capítulo 4: Cross-Country** — Tácticas y seguridad para planificar y ejecutar vuelos de distancia (50, 100, 300 km y más).
* **Capítulo 5: Bibliografía** — Lecturas recomendadas para continuar el aprendizaje.

---

## 🛠️ Generación del Libro (Docker)

Toda la compilación se realiza de forma automatizada mediante contenedores **Docker**:

### Compilar en PDF

* **Versión en Español:** `./create-book-pdf.sh es` (o simplemente `./create-book-pdf.sh`)
* **Versión en Inglés:** `./create-book-pdf.sh en`
* *El archivo generado se guarda en: `build/vsm-fuentemilanos.pdf` o `build/vsm-fuentemilanos_en.pdf`*

### Compilar en EPUB

* **Versión en Español:** `./create-book-epub.sh es` (o simplemente `./create-book-epub.sh`)
* **Versión en Inglés:** `./create-book-epub.sh en`
* *El archivo generado se guarda en: `build/vsm-fuentemilanos.epub` o `build/vsm-fuentemilanos_en.epub`*

---

## 👥 Créditos

* **Coordinación Original (1996):** Fernando Correa
* **Colaboradores:** Fernando Lázaro, José Gresa, Pedro Berlinches, Antonio Gonzalez
* **Diseño, Edición e Ilustraciones:** Tito Klein y Manuel Martínez
* **Maquetación y Digitalización (2025-2026):** Ramón G. Camus
