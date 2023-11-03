
#!/bin/bash
files=$(find lib -name "*.dart" -not \( -name "*.*freezed.dart" -o -name "*.*g.dart" -o -name "*.gen.dart" \))
echo "Formatting files: $files"
for file in "$files"; do
  # limit jobs to 10
  if [ "$(jobs -r | wc -l)" -ge 10 ]; then
    wait "$(jobs -r -p | head -1)"
  fi
  dart fix --apply "$file" &
done
wait
dart format "$files"