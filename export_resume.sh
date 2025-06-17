#!/usr/bin/env bash
# Shell counterpart of export_resume.bat
# Provides an interactive menu to export resume files with different themes.

set -euo pipefail

show_menu() {
  echo "============================="
  echo "Resume Export Menu"
  echo "============================="
  echo "1. Export PDF with straightforward theme"
  echo "2. Export PDF with kendall theme"
  echo "3. Export HTML with straightforward theme"
  echo "4. Export HTML with kendall theme"
  echo "5. Exit"
  echo
}

while true; do
  show_menu
  read -rp "Select an option (1-5): " choice
  case "$choice" in
    1)
      echo "Exporting PDF with straightforward theme..."
      if resume export resume.pdf --theme straightforward; then
        echo "Export completed: resume.pdf"
      else
        echo "Export failed."
      fi
      ;;
    2)
      echo "Exporting PDF with kendall theme..."
      if resume export resume.pdf --theme kendall; then
        echo "Export completed: resume.pdf"
      else
        echo "Export failed."
      fi
      ;;
    3)
      echo "Exporting HTML with straightforward theme..."
      if resume export resume.html --theme straightforward; then
        echo "Export completed: resume.html"
      else
        echo "Export failed."
      fi
      ;;
    4)
      echo "Exporting HTML with kendall theme..."
      if resume export resume.html --theme kendall; then
        echo "Export completed: resume.html"
      else
        echo "Export failed."
      fi
      ;;
    5)
      echo "Done."
      exit 0
      ;;
    *)
      echo "Invalid selection. Please try again."
      ;;
  esac
  echo
  # loop back to menu
done
