source "$(cd ~ && pwd)/.utils.sh"

files=$(ls ./*init.sh*)
if [ -z "$files" ]; then
  echo "1"
fi
echo "$files"
read
