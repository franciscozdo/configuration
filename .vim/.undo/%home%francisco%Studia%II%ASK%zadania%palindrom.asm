Vim�UnDo� {=E #�	B��t�:��7��'��˹�t�   5                 )       )   )   )    \�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             \�R    �          5      ARG1		EQU		n5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             \�|    �          5      ARG1		EQU		a5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             \�v     �         5    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             \�x     �          6      ARG1		EQU		n5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             \�z    �         8      ARG1		EQU		n    �         8       5�_�      )                      ����                                                                                                                                                                                                                                                                                                                                                             \�     �                  5�_�                 )           ����                                                                                                                                                                                                                                                                                                                            .          .          V       \�    �                  5�_�             )              ����                                                                                                                                                                                                                                                                                                                                                             \�    �               5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             \�     �         5      	;	ldr		r3, =0x0000FFFF ; mask5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             \�     �         5      	;	ldr		r4, =16 ; shift5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             \�     �      	   5      	;	mov		r2, r1, lsr #165�_�   
                 	       ����                                                                                                                                                                                                                                                                                                                                                             \�     �      
   5      	;	and		r1, r1, r35�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             \�     �   	      5      	;	lsl		r1, r1, r45�_�                           ����                                                                                                                                                                                                                                                                                                                                                             \�     �   
      5      	;	orr		r1, r1, r25�_�                    .       ����                                                                                                                                                                                                                                                                                                                                                             \�"     �   -   /   5      9		cmp		r1, r0 ; check if inverted is differ from original5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             \�>     �   ,   .   5      		; setting 1 or 0 in r0       and   r0, 5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             \�Z     �   ,   .   6      		; setting 1 or 0 in r0       ldr   r3, =0xffff00005�_�                    /       ����                                                                                                                                                                                                                                                                                                                                                             \�n     �   .   0   7          and   r0, r35�_�                           ����                                                                                                                                                                                                                                                                                                                            0          1          V       \��     �         7    �         7          ldr   r3, =0xffff0000       and   r0, r35�_�                           ����                                                                                                                                                                                                                                                                                                                            1          2          V       \��     �         9      START	   !    ldr		r1, =ARG1 ;load argument5�_�                           ����                                                                                                                                                                                                                                                                                                                            2          3          V       \��     �         :          and   r0, r3    5�_�                       
    ����                                                                                                                                                                                                                                                                                                                            2          3          V       \��     �         ;          and   r0, r0, r35�_�                            ����                                                                                                                                                                                                                                                                                                                            2          3          V       \��     �      	   ;          and   r1, r1, r3, lsr #165�_�                    2       ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �   1   3        5�_�                    2       ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �   1   3        5�_�                           ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �         9      		ldr		r3, =0x0ff00ff ; mask5�_�                           ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �         9      		ldr		r3, =0xff00ff ; mask5�_�                           ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �         9      		ldr		r3, =0xf00ff ; mask5�_�                           ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �         9      		ldr		r3, =0x00ff ; mask5�_�                           ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �         9      		ldr		r3, =0xf0f0f0f5�_�                           ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �         9      		ldr		r3, =0x0f0f0f5�_�                            ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �         9      		ldr		r3, =0xf0f0f5�_�      !                      ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �         9      		ldr		r3, =0x0f0f5�_�       "           !   !       ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �       "   9      		ldr		r3, =0x33333335�_�   !   #           "   !       ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �       "   9      		ldr		r3, =0x3333335�_�   "   $           #   !       ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �       "   9      		ldr		r3, =0x333335�_�   #   %           $   !       ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �       "   9      		ldr		r3, =0x33335�_�   $   &           %   )       ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �   (   *   9      		ldr		r3, =0x55555555�_�   %   '           &   )       ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �   (   *   9      		ldr		r3, =0x5555555�_�   &   (           '   )       ����                                                                                                                                                                                                                                                                                                                            2          2          V       \��     �   (   *   9      		ldr		r3, =0x555555�_�   '               (   )       ����                                                                                                                                                                                                                                                                                                                                                             \��    �   (   *   9      		ldr		r3, =0x55555��