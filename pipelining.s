	.data
Numbers:	.byte 37,	10, 8, 73, 72, 124, 5, 28
			.byte 49, 	110, 106, 39, 38, 73, 78, 112
			.byte 113, 125, 112, 70, 11, 125, 26, 35
			.byte 57, 114, 122, 123, 91, 38, 14, 15
			.byte 53, 72, 101, 24, 85, 13, 99, 108
			.byte 104, 67, 114, 27, 64, 16, 91, 47
			.byte 98, 37, 100, 73, 101, 114, 58, 5
			.byte 102, 124, 16, 124, 103, 21, 0, 93
			.byte 59, 76, 28, 46, 38, 118, 17, 9
			.byte 66, 81, 45, 69, 84, 77, 120, 50	#up to here, sum = 5390, row 10
		 	.byte 18, 9, 24, 38, 77, 21, 92, 59
		 	.byte 68, 109, 61, 106, 62, 114, 71, 69
		 	.byte 63, 37, 92, 7, 19, 99, 9, 92
		 	.byte 14, 107, 87, 40, 63, 120, 71, 99
		 	.byte 127, 62, 86, 97, 76, 18, 71, 43
		 	.byte 125, 52, 126, 78, 28, 114, 39, 30
		 	.byte 29, 1, 26, 125, 119, 63, 83, 88
		 	.byte 97, 46, 36, 2, 77, 0, 2, 58
		 	.byte 68, 8, 87, 15, 57, 76, 124, 79
		 	.byte 4, 13, 35, 12, 40, 79, 68, 120	#up to here, sum = 10316, row 20 
		 	.byte 72, 23, 32, 102, 90, 18, 119, 20
		 	.byte 35, 0, 7, 15, 2, 55, 52, 102
		 	.byte 78, 35, 92, 52, 37, 33, 49, 10
		 	.byte 74, 105, 106, 78, 81, 96, 103, 28
		 	.byte 21, 78, 30, 17, 48, 19, 57, 29
		 	.byte 108, 67, 81, 30, 18, 95, 14, 13
		 	.byte 115, 31, 109, 9, 10, 73, 89, 35
		 	.byte 57, 23, 37, 81, 14, 88, 69, 44
		 	.byte 124, 126, 24, 12, 38, 100, 29, 116
		 	.byte 6, 106, 72, 26, 34, 117, 113, 32	#up to here, sum = 14801, row 30
		 	.byte 27, 44, 95, 43, 37, 28, 5, 56
		 	.byte 91, 57, 116, 20, 113, 77, 81, 7
		 	.byte 23, 52, 0, 26, 5, 20, 68, 3
		 	.byte 100, 70, 8, 37, 112, 69, 4, 42
		 	.byte 83, 64, 87, 20, 104, 58, 75, 41
		 	.byte 52, 60, 76, 96, 108, 45, 89, 28
		 	.byte 109, 115, 73, 94, 24, 66, 59, 67
		 	.byte 97, 0, 3, 41, 29, 56, 55, 72
		 	.byte 121, 103, 44, 55, 66, 32, 18, 105
		 	.byte 82, 70, 42, 40, 85, 66, 121, 11 #up to here, sum = 19444, row 40  
		 	.byte 25, 94, 3, 123, 113, 31, 26, 22
		 	.byte 80, 126, 30, 67, 38, 45, 72, 69
		 	.byte 98, 82, 98, 86, 81, 85, 72, 3
		 	.byte 123, 66, 117, 8, 28, 41, 98, 94
		 	.byte 20, 52, 22, 11, 10, 30, 73, 10
		 	.byte 5, 92, 65, 99, 118, 121, 27, 45
		 	.byte 80, 24, 44, 108, 34, 12, 121, 45
		 	.byte 35, 123, 122, 94, 26, 89, 66, 31
		 	.byte 43, 103, 50, 65, 92, 67, 91, 3
		 	.byte 37, 113, 33, 106, 26, 96, 71, 22 #up to here, sum = 24460 , row 50
		 	.byte 8, 37, 70, 33, 17, 69, 53, 29
		 	.byte 58, 24, 36, 29, 19, 45, 113, 47
		 	.byte 126, 31, 70, 18, 127, 78, 100, 29
		 	.byte 82, 15, 16, 117, 77, 37, 20, 111
		 	.byte 87, 111, 16, 73, 19, 113, 14, 114
		 	.byte 111, 80, 84, 63, 8, 55, 42, 95
		 	.byte 106, 85, 122, 38, 16, 112, 87, 82
		 	.byte 72, 61, 7, 127, 10, 10, 32, 0
		 	.byte 117, 33, 22, 37, 81, 27, 55, 61
		 	.byte 98, 15, 55, 2, 19, 73, 62, 75 #up to here, sum = 29085 , row 60 
		 	.byte 100, 112, 102, 113, 107, 97, 11, 28
		 	.byte 58, 55, 41, 25, 121, 9, 44, 86
		 	.byte 105, 95, 99, 124 #FINALE: 30617, ROW 63

sum: .asciiz "Sum = " 



CONTROL: .word32 0x10000
DATA:    .word32 0x10008

	.text
	#daddi $t0, $zero, 0	#$t0 is the index for Numbers
	daddi $t1, $zero, 500
	#dadd $t2, $zero, $zero	#t2 will hold the sum
	lwu $a1, CONTROL($zero)
	lwu $a2, DATA($zero)

		
loop: 	beq $t0, $t1, print
		lbu $t3, Numbers($t0)
		daddi $t0, $t0, 1	#$t0++
		dadd $t2, $t2, $t3
		j loop	


# this should print 
print:	daddi $v0, $zero, 4
		daddi $t4 ,$zero, sum
        sd $t4, ($a2)        
        sd $v0, ($a1)

		daddi $v0, $zero, 1		##########################
		sd $t2, ($a2)			#  routine for printing  #
		sd $v0, ($a1)			##########################

halt

#best efficiency with Forwarding and BTB