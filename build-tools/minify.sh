#!/bin/sh

DIR=$(dirname $0)

# Core
echo Compressing JavaScript with Google Closure Compiler and CSS with cssminifier.com.
head -n 5 "${DIR}/../src/pnotify.core.js" > "${DIR}/../src/pnotify.core.min.js"
java -jar "${DIR}/compiler.jar" --js="${DIR}/../src/pnotify.core.js" >> "${DIR}/../src/pnotify.core.min.js"
curl --data-urlencode input@"${DIR}/../src/pnotify.core.css" http://cssminifier.com/raw > "${DIR}/../src/pnotify.core.min.css"

# Buttons
java -jar "${DIR}/compiler.jar" --js="${DIR}/../src/pnotify.buttons.js" > "${DIR}/../src/pnotify.buttons.min.js"
curl --data-urlencode input@"${DIR}/../src/pnotify.buttons.css" http://cssminifier.com/raw > "${DIR}/../src/pnotify.buttons.min.css"

# Callbacks
java -jar "${DIR}/compiler.jar" --js="${DIR}/../src/pnotify.callbacks.js" > "${DIR}/../src/pnotify.callbacks.min.js"

# Confirm
java -jar "${DIR}/compiler.jar" --js="${DIR}/../src/pnotify.confirm.js" > "${DIR}/../src/pnotify.confirm.min.js"

# Desktop
java -jar "${DIR}/compiler.jar" --js="${DIR}/../src/pnotify.desktop.js" > "${DIR}/../src/pnotify.desktop.min.js"

# History
java -jar "${DIR}/compiler.jar" --js="${DIR}/../src/pnotify.history.js" > "${DIR}/../src/pnotify.history.min.js"
curl --data-urlencode input@"${DIR}/../src/pnotify.history.css" http://cssminifier.com/raw > "${DIR}/../src/pnotify.history.min.css"

# Non-block
java -jar "${DIR}/compiler.jar" --js="${DIR}/../src/pnotify.nonblock.js" > "${DIR}/../src/pnotify.nonblock.min.js"

# Reference
java -jar "${DIR}/compiler.jar" --js="${DIR}/../src/pnotify.reference.js" > "${DIR}/../src/pnotify.reference.min.js"

# Tooltop
java -jar "${DIR}/compiler.jar" --js="${DIR}/../src/pnotify.tooltip.js" > "${DIR}/../src/pnotify.tooltip.min.js"

# Mobile
java -jar "${DIR}/compiler.jar" --js="${DIR}/../src/pnotify.mobile.js" > "${DIR}/../src/pnotify.mobile.min.js"
curl --data-urlencode input@"${DIR}/../src/pnotify.mobile.css" http://cssminifier.com/raw > "${DIR}/../src/pnotify.mobile.min.css"

# Bright Theme
curl --data-urlencode input@"${DIR}/../src/pnotify.brighttheme.css" http://cssminifier.com/raw > "${DIR}/../src/pnotify.brighttheme.min.css"

# Animate
java -jar "${DIR}/compiler.jar" --js="${DIR}/../src/pnotify.animate.js" > "${DIR}/../src/pnotify.animate.min.js"

echo Done.