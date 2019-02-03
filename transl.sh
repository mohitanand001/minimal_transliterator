content=$(curl  --silent --header  "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.11 (KHTMhrome/23.0.1271.64 Safari/537.11" \
--header "Accept: application/json;q=0.9" \
 "http://translate.google.com/translate_a/single?client=gtx&ie=UTF-8&oe=UTF-8&dt=bd&dt=ex&dt=ld&dt=md&dt=rw&dt=rm&dt=ss&dt=t&dt=at&dt=gt&dt=qca&sl=auto&tl=ml&hl=emj&q=$1")

# echo $content

translated_word=(${content//,/ })

if [ "${translated_word[7]}" == "" ]; then
	echo ${translated_word[8]}
else
	echo ${translated_word[7]}
fi