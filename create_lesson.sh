#!/bin/bash
# Script per creare velocemente nuove lezioni Ada
# Uso: ./create_lesson.sh NUMERO NOME

# Verifica che siano stati passati i parametri
if [ $# -ne 2 ]; then
    echo "❌ Uso: $0 <numero> <nome>"
    echo "Esempio: $0 003 InputOutput"
    exit 1
fi

LESSON_NUM=$1
LESSON_NAME=$2

# Formatta il numero con zero padding (es: 3 -> 003)
LESSON_NUM_PADDED=$(printf "%03d" $LESSON_NUM)

FOLDER="Ada_${LESSON_NUM_PADDED}_${LESSON_NAME}"

# Verifica se la cartella esiste già
if [ -d "$FOLDER" ]; then
    echo "⚠️  La cartella $FOLDER esiste già!"
    read -p "Vuoi sovrascriverla? (s/n): " CONFIRM
    if [ "$CONFIRM" != "s" ]; then
        echo "Operazione annullata."
        exit 0
    fi
fi

# Crea la cartella
mkdir -p "$FOLDER"
cd "$FOLDER"

# Crea il file README.md
cat > README.md << 'EOF'
# Ada_LESSON_NUM - LESSON_NAME

## 📚 Obiettivo
[Descrivi cosa imparerai in questa lezione]

## 🎯 Concetti chiave
- Concetto 1
- Concetto 2
- Concetto 3

## 📝 Codice

### File: `main.adb`
```ada
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
begin
    Put_Line ("Hello from LESSON_NAME!");
end Main;
```

## 🔧 Come compilare ed eseguire

```bash
cd Ada/Ada_LESSON_NUM_LESSON_NAME
gnatmake main.adb
./main
```

## 📊 Output atteso
```
[Inserisci l'output del programma]
```

## 💡 Note e spiegazioni

### Spiegazione del codice
- Linea X: [spiegazione]

### Errori comuni
- [Errore comune e soluzione]

## 🔗 Risorse utili
- [Link a documentazione rilevante]

## ✅ Esercizi suggeriti
1. Modifica il programma per...
2. Crea una variante che...

## 📅 Data
[Data di completamento]

---
**Precedente:** [Ada_PREV](../Ada_PREV_Nome)  
**Successivo:** [Ada_NEXT](../Ada_NEXT_Nome)
EOF

# Sostituisci i placeholder
sed -i "s/LESSON_NUM/$LESSON_NUM_PADDED/g" README.md
sed -i "s/LESSON_NAME/$LESSON_NAME/g" README.md

# Calcola lezione precedente e successiva
PREV_NUM=$(printf "%03d" $((10#$LESSON_NUM_PADDED - 1)))
NEXT_NUM=$(printf "%03d" $((10#$LESSON_NUM_PADDED + 1)))
sed -i "s/PREV/$PREV_NUM/g" README.md
sed -i "s/NEXT/$NEXT_NUM/g" README.md

# Crea il file main.adb di base
cat > main.adb << 'EOF'
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
begin
    Put_Line ("Hello from LESSON_NAME!");
end Main;
EOF

sed -i "s/LESSON_NAME/$LESSON_NAME/g" main.adb

# Crea notes.md per appunti personali
cat > notes.md << EOF
# Appunti personali - $LESSON_NAME

## Cose che ho imparato
- 

## Difficoltà incontrate
- 

## Da rivedere
- 
EOF

echo ""
echo "✅ Lezione Ada_${LESSON_NUM_PADDED}_${LESSON_NAME} creata con successo!"
echo "📁 Percorso: $(pwd)"
echo ""
echo "📝 File creati:"
echo "   - README.md (template della lezione)"
echo "   - main.adb (codice di base)"
echo "   - notes.md (appunti personali)"
echo ""
echo "🚀 Prossimi passi:"
echo "   1. cd $FOLDER"
echo "   2. Modifica main.adb con il tuo codice"
echo "   3. gnatmake main.adb"
echo "   4. ./main"
