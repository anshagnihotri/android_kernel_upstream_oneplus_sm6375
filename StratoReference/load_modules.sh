#!/system/bin/sh
# Module loading script for vendor_dlkm
# Can be used for debugging or manual loading

MODDIR="/vendor_dlkm/lib/modules"
MODLIST="${MODDIR}/modules.load"

if [ ! -f "$MODLIST" ]; then
    echo "ERROR: modules.load not found at $MODLIST"
    exit 1
fi

echo "Loading modules from $MODLIST..."
while IFS= read -r module; do
    # Skip empty lines and comments
    [ -z "$module" ] && continue
    echo "$module" | grep -q '^#' && continue

    modpath="${MODDIR}/${module}"
    if [ -f "$modpath" ]; then
        echo "Loading: $module"
        insmod "$modpath" || echo "  Failed to load $module"
    else
        echo "  Missing: $module"
    fi
done < "$MODLIST"

echo "Module loading complete"
