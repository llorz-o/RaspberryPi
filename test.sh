source "$(cd ~ && pwd)/.utils.sh"

${null:?"null is not valid"}

if [ ${vaa:+1} ]; then
  echo "1"
else
  echo "vaa not available"
fi

read -r -t 5
exit

