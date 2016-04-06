#!/bin/bash
PAGES=$1

function usage() {
  echo "Usage: $0 [# of slides]"
  echo ""
  echo "$@"
}

if [ -z $PAGES ]; then
  usage "ERROR: Specify number of slides"
  exit 1
fi

# Header
cat template/header.html > index.html 

# Insert slides
for i in $(seq -f "%02g" 1 $PAGES); do
  cat >> index.html <<EOF
<section style="background:url(img/Slide$i.png);background-size:cover;">
  &nbsp;
</section>
EOF
done

# Footer
cat template/footer.html >> index.html

# Done
echo "Generated stack.js presentation in 'index.html' with $PAGES slides..."
