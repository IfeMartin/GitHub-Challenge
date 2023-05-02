import sys

#shift=int(input("shift number: "))
shift=sys.argv[1]

#65-90 
#read message
message= sys.stdin
message= message.upper()
count=0
count_lin=0
final_message=""
for line in message:
  if ord(line)>= 65 and ord(line)<= 90:
	  update_line = ord(line)+int(shift)
	  if update_line> 90:
		  update_line = update_line-26
	  final_message+=chr(update_line)
	  count+=1
	  if count == 5:
		  final_message+= " "
		  count_lin+=1
		  count=0
		  if count_lin == 10:
			  final_message= final_message + "\n"
			  count_lin = 0
print(final_message)


