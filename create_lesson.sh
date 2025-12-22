if [ $# -ne 2 ]; then
    echo "❌ Use: $0 <number> <name>"
    echo "Exemple: $0 003 InputOutput"
    exit 1
fi

LESSON_NUM=$1
LESSON_NAME=$2

LESSON_NUM_PADDED=$(printf "%03d" $LESSON_NUM)

FOLDER="Ada_${LESSON_NUM_PADDED}_${LESSON_NAME}"

if [ -d "$FOLDER" ]; then
    echo "⚠️  The directory $FOLDER already exists!"
    read -p "Overwrite? (s/n): " CONFIRM
    if [ "$CONFIRM" != "s" ]; then
        echo "Operation nulled."
        exit 0
    fi
fi

mkdir -p "$FOLDER"
cd "$FOLDER"

cat > README.md << 'EOF'
EOF

sed -i "s/LESSON_NUM/$LESSON_NUM_PADDED/g" README.md
sed -i "s/LESSON_NAME/$LESSON_NAME/g" README.md

PREV_NUM=$(printf "%03d" $((10#$LESSON_NUM_PADDED - 1)))
NEXT_NUM=$(printf "%03d" $((10#$LESSON_NUM_PADDED + 1)))
sed -i "s/PREV/$PREV_NUM/g" README.md
sed -i "s/NEXT/$NEXT_NUM/g" README.md

cat > main.adb << 'EOF'
EOF

sed -i "s/LESSON_NAME/$LESSON_NAME/g" main.adb

cat > notes.md << EOF
EOF
