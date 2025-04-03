const admin = require("firebase-admin");
const fs = require("fs");

// 🔐 Remplacez par le chemin de votre clé de service si différent
const serviceAccount = require("./serviceAccountKey.json");

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});

const db = admin.firestore();

// 📂 Remplacez par le chemin de votre fichier JSON s'il est ailleurs
const questions = JSON.parse(fs.readFileSync("mundicol_cbt_questions_with_feedback_v2.json", "utf8"));

async function importQuestions() {
  const batchSize = 500;
  let batch = db.batch();
  let count = 0;

  for (let i = 0; i < questions.length; i++) {
    const question = questions[i];
    const docRef = db.collection("cbt_questions").doc(); // Génère un ID unique

    batch.set(docRef, question);
    count++;

    if (count === batchSize || i === questions.length - 1) {
      await batch.commit();
      console.log(`✅ ${count} questions imported.`);
      batch = db.batch();
      count = 0;
    }
  }

  console.log("🎉 Import completed.");
}

importQuestions().catch(console.error);
