# Mundi College CBT Portal  

Bienvenue dans le portail de test en ligne de **Mundi College & Primary** alias *French Everything Bilingual School*.  
Welcome to the online testing portal of **Mundi College & Primary**, also known as *French Everything Bilingual School*.

Ce projet permet aux apprenants de passer des tests informatisés (CBT) et de recevoir automatiquement leurs résultats sous forme de bulletin PDF.  
This project allows learners to take computer-based tests (CBT) and automatically receive their results in PDF report card format.

---

## ✅ Fonctionnalités principales  
## ✅ Main Features

### ✅ Test interactif (CBT)  
### ✅ Interactive CBT
- Les élèves répondent aux questions à choix multiple  
  Students answer multiple choice questions
- Le score est calculé automatiquement à la soumission  
  The score is automatically calculated upon submission
- Le bulletin est généré et téléchargeable immédiatement  
  The report card is instantly generated and downloadable

### ✅ Envoi de rapport par Email  
### ✅ Report sent via Email
- Intégration avec **Email.js**  
  Integrated with **Email.js**
- Le bulletin est envoyé à l'élève avec un lien de téléchargement  
  The report card is emailed to the student with a download link

### ✅ Stockage Firebase  
### ✅ Firebase Storage
- Chaque bulletin PDF est stocké dans **Firebase Storage** sous `/bulletins`  
  Each report card is stored in **Firebase Storage** under `/bulletins`

### ✅ Interface admin  
### ✅ Admin Interface
- Liste dynamique des bulletins enregistrés  
  Dynamic list of stored report cards
- Filtres par nom, date et score  
  Filters by name, date, and score

### ✅ Importation des questions par l'admin  
### ✅ Admin Question Import
- Accès sécurisé pour l'ajout de questions depuis un fichier JSON  
  Secure access to upload questions via JSON file

---

## 🔄 Technologies utilisées  
## 🔄 Technologies Used
- HTML, CSS & JS Vanilla
- [Firebase](https://firebase.google.com) (Firestore + Storage + Auth)
- [Email.js](https://www.emailjs.com)
- [html2pdf.js](https://ekoopmans.github.io/html2pdf)

---

## 📂 Déploiement GitHub  
## 📂 GitHub Deployment
- Ce projet est lié à **GitHub Desktop**  
  This project is connected to **GitHub Desktop**
- Un seul fichier HTML est maintenu : `mundi_cbt_portal.html`  
  A single HTML file is maintained: `mundi_cbt_portal.html`
- Toutes les modifications sont suivies par commits Git  
  All changes are tracked using Git commits

---

## 📓 Historique de version (extrait)  
## 📓 Version History (Excerpt)

| Version | Date       | Détails (FR)                                            | Details (EN)                                            |
|---------|------------|--------------------------------------------------------|---------------------------------------------------------|
| v1.0    | 2025-04-01 | Portail CBT de base + Envoi Email                     | Basic CBT portal + Email sending                        |
| v1.1    | 2025-04-02 | Ajout de l'interface admin + liste de bulletins       | Added admin interface + bulletin list                  |
| v1.2    | 2025-04-02 | Filtrage par nom, date, score + génération PDF        | Filtering by name, date, score + dynamic PDF creation   |

---

## 🚀 Prochaine étape ?  
## 🚀 Next Steps?
- Interface parent pour consulter les bulletins  
  Parent interface to view report cards
- Analyse de performance par thème de questions  
  Performance analysis by question category
- Support multi-classe + multiple quiz  
  Multi-class and multi-quiz support

---

✉️ Pour tout retour ou idée d'amélioration : **patrickmundi1@gmail.com**  
✉️ For any feedback or improvement idea: **patrickmundi1@gmail.com**
