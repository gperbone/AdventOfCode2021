//TODAY I USED RECURSION!
import Foundation

var input = [07 ,9 ,8 ,8 ,9 ,1 ,2 ,4 ,9 ,8 ,7 ,7 ,5 ,6 ,7 ,7 ,8 ,9 ,9 ,9 ,7 ,6 ,5 ,4 ,4 ,6 ,7 ,6 ,7 ,8 ,9 ,2 ,1 ,2 ,3 ,4 ,6 ,7 ,9 ,3 ,9 ,8 ,9 ,8 ,9 ,6 ,4 ,5 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,6 ,7 ,9 ,9 ,8 ,6 ,7 ,7 ,8 ,9 ,9 ,9 ,8 ,7 ,9 ,8 ,9 ,6 ,5 ,4 ,3 ,2 ,3 ,4 ,9 ,6 ,5 ,4 ,2 ,1 ,0 ,1 ,4 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,5 ,6 ,7 ,5 ,7,6 ,7 ,7 ,7 ,9 ,2 ,4 ,9 ,8 ,7 ,6 ,5 ,4 ,6 ,8 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,6 ,3 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,5 ,4 ,5 ,6 ,9 ,8 ,9 ,4 ,9 ,7 ,8 ,7 ,8 ,9 ,3 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,2 ,4 ,5 ,6 ,8 ,9 ,5 ,5 ,6 ,9 ,9 ,9 ,8 ,9 ,6 ,5 ,7 ,9 ,9 ,7 ,6 ,5 ,4 ,5 ,9 ,8 ,7 ,6 ,5 ,9 ,2 ,9 ,2 ,3 ,4 ,5 ,8 ,9 ,8 ,7 ,5 ,4 ,1 ,2 ,4 ,6,5 ,4 ,5 ,6 ,8 ,9 ,6 ,9 ,8 ,7 ,8 ,2 ,3 ,5 ,4 ,5 ,5 ,6 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,5 ,6 ,6 ,7 ,8 ,9 ,9 ,9 ,5 ,7 ,7 ,8 ,9 ,9 ,9 ,7 ,6 ,5 ,6 ,7 ,8 ,9 ,7 ,9 ,9 ,8 ,6 ,5 ,4 ,4 ,5 ,7 ,8 ,9 ,2 ,3 ,4 ,5 ,9 ,9 ,8 ,7 ,8 ,9 ,4 ,6 ,7 ,8 ,9 ,7 ,6 ,5 ,9 ,9 ,9 ,9 ,9 ,9 ,8 ,9 ,8 ,9 ,9 ,5 ,6 ,7 ,9 ,8 ,7 ,6 ,2 ,0 ,1 ,3 ,4,4 ,3 ,4 ,5 ,6 ,9 ,9 ,8 ,7 ,6 ,7 ,1 ,0 ,1 ,2 ,3 ,4 ,9 ,9 ,9 ,8 ,7 ,9 ,9 ,4 ,6 ,7 ,7 ,8 ,9 ,7 ,9 ,8 ,9 ,9 ,8 ,9 ,9 ,9 ,8 ,7 ,5 ,4 ,5 ,6 ,7 ,9 ,5 ,4 ,3 ,9 ,7 ,7 ,5 ,5 ,9 ,8 ,9 ,0 ,1 ,3 ,4 ,9 ,8 ,7 ,6 ,5 ,9 ,5 ,3 ,5 ,6 ,6 ,9 ,8 ,9 ,9 ,8 ,9 ,9 ,9 ,8 ,7 ,6 ,6 ,6 ,7 ,8 ,9 ,7 ,8 ,9 ,9 ,8 ,3 ,2 ,1 ,3 ,4 ,5,2 ,2 ,3 ,5 ,6 ,8 ,9 ,7 ,6 ,5 ,3 ,2 ,4 ,6 ,4 ,8 ,5 ,7 ,8 ,9 ,9 ,9 ,7 ,8 ,9 ,9 ,8 ,9 ,9 ,7 ,6 ,7 ,6 ,8 ,9 ,9 ,9 ,9 ,8 ,7 ,6 ,4 ,3 ,6 ,7 ,8 ,9 ,6 ,4 ,2 ,1 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,1 ,2 ,9 ,5 ,7 ,9 ,6 ,5 ,4 ,2 ,1 ,2 ,3 ,4 ,5 ,8 ,9 ,8 ,7 ,6 ,7 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,6 ,8 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,4 ,5 ,9,1 ,0 ,2 ,4 ,5 ,6 ,9 ,8 ,7 ,9 ,5 ,3 ,4 ,7 ,8 ,7 ,6 ,8 ,9 ,9 ,9 ,8 ,6 ,8 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,6 ,5 ,6 ,7 ,8 ,9 ,6 ,4 ,3 ,2 ,1 ,2 ,5 ,6 ,7 ,8 ,9 ,5 ,3 ,2 ,4 ,9 ,8 ,9 ,8 ,9 ,9 ,2 ,9 ,8 ,9 ,9 ,8 ,7 ,3 ,2 ,1 ,0 ,1 ,2 ,5 ,6 ,7 ,8 ,9 ,9 ,5 ,9 ,8 ,7 ,6 ,5 ,5 ,2 ,4 ,5 ,6 ,8 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,6 ,6 ,8,2 ,1 ,3 ,7 ,9 ,7 ,8 ,9 ,9 ,8 ,7 ,5 ,5 ,6 ,9 ,8 ,7 ,9 ,8 ,9 ,8 ,7 ,5 ,9 ,6 ,7 ,8 ,9 ,8 ,4 ,3 ,2 ,4 ,5 ,6 ,9 ,8 ,7 ,7 ,5 ,1 ,0 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,7 ,6 ,5 ,6 ,9 ,3 ,9 ,9 ,8 ,9 ,8 ,7 ,8 ,9 ,9 ,8 ,9 ,9 ,9 ,1 ,2 ,4 ,8 ,7 ,8 ,9 ,9 ,8 ,4 ,9 ,8 ,6 ,5 ,4 ,3 ,1 ,5 ,4 ,5 ,5 ,8 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,7 ,9,4 ,3 ,4 ,6 ,8 ,9 ,9 ,6 ,5 ,9 ,8 ,7 ,6 ,8 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,6 ,4 ,3 ,4 ,6 ,9 ,5 ,4 ,3 ,2 ,1 ,6 ,7 ,7 ,8 ,9 ,8 ,7 ,4 ,3 ,1 ,2 ,5 ,6 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,9 ,6 ,4 ,9 ,8 ,7 ,8 ,7 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,4 ,5 ,6 ,8 ,9 ,8 ,9 ,7 ,2 ,3 ,9 ,8 ,7 ,4 ,2 ,0 ,1 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,9 ,9 ,9 ,8 ,9,5 ,6 ,5 ,7 ,8 ,9 ,6 ,5 ,4 ,2 ,9 ,8 ,7 ,8 ,9 ,9 ,9 ,9 ,8 ,5 ,4 ,3 ,3 ,2 ,6 ,4 ,7 ,9 ,9 ,4 ,3 ,2 ,7 ,8 ,9 ,9 ,3 ,9 ,6 ,5 ,6 ,4 ,3 ,6 ,7 ,8 ,9 ,5 ,6 ,9 ,8 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,7 ,5 ,5 ,7 ,9 ,9 ,8 ,7 ,6 ,7 ,9 ,5 ,7 ,7 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,6 ,9 ,6 ,5 ,4 ,1 ,3 ,4 ,4 ,6 ,7 ,8 ,9 ,9 ,6 ,9 ,8 ,9 ,9 ,9 ,9,6 ,7 ,8 ,8 ,9 ,7 ,6 ,3 ,2 ,1 ,2 ,9 ,9 ,9 ,6 ,7 ,9 ,8 ,7 ,6 ,3 ,2 ,1 ,0 ,1 ,2 ,6 ,7 ,8 ,9 ,5 ,3 ,8 ,9 ,0 ,1 ,2 ,3 ,9 ,6 ,8 ,6 ,4 ,9 ,8 ,9 ,6 ,4 ,3 ,4 ,9 ,8 ,7 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,4 ,5 ,9 ,8 ,7 ,6 ,5 ,6 ,8 ,9 ,8 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,6 ,9 ,8 ,7 ,6 ,5 ,5 ,4 ,5 ,6 ,7 ,8 ,9 ,8 ,6 ,5 ,4 ,6 ,7 ,8 ,9 ,9,7 ,8 ,9 ,9 ,9 ,8 ,5 ,4 ,1 ,0 ,1 ,2 ,3 ,4 ,5 ,9 ,9 ,9 ,8 ,8 ,4 ,3 ,2 ,1 ,2 ,3 ,4 ,8 ,9 ,9 ,6 ,4 ,9 ,8 ,9 ,2 ,3 ,9 ,8 ,7 ,8 ,7 ,8 ,9 ,9 ,5 ,4 ,3 ,2 ,9 ,8 ,7 ,6 ,5 ,9 ,8 ,7 ,8 ,3 ,2 ,1 ,9 ,8 ,7 ,6 ,5 ,4 ,8 ,9 ,8 ,9 ,9 ,2 ,3 ,9 ,8 ,9 ,9 ,7 ,8 ,9 ,8 ,7 ,6 ,9 ,7 ,6 ,7 ,8 ,9 ,7 ,6 ,5 ,4 ,3 ,5 ,7 ,8 ,9 ,8,9 ,9 ,7 ,9 ,8 ,7 ,6 ,6 ,5 ,3 ,2 ,3 ,7 ,5 ,9 ,8 ,9 ,9 ,9 ,9 ,5 ,4 ,4 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,9 ,7 ,9 ,8 ,9 ,8 ,9 ,7 ,8 ,9 ,5 ,4 ,4 ,5 ,9 ,8 ,4 ,3 ,4 ,9 ,8 ,7 ,2 ,1 ,0 ,3 ,9 ,8 ,7 ,6 ,5 ,9 ,8 ,7 ,8 ,2 ,1 ,0 ,3 ,9 ,9 ,9 ,8 ,9 ,2 ,9 ,8 ,7 ,9 ,8 ,7 ,8 ,9 ,8 ,6 ,5 ,4 ,3 ,2 ,3 ,4 ,9 ,8 ,6,5 ,6 ,6 ,8 ,9 ,8 ,7 ,9 ,5 ,4 ,5 ,4 ,6 ,9 ,8 ,7 ,8 ,9 ,9 ,9 ,8 ,5 ,5 ,3 ,4 ,6 ,6 ,8 ,8 ,9 ,9 ,9 ,7 ,6 ,5 ,8 ,7 ,6 ,7 ,9 ,9 ,9 ,8 ,6 ,7 ,8 ,9 ,9 ,5 ,6 ,7 ,9 ,6 ,4 ,5 ,6 ,9 ,6 ,5 ,3 ,1 ,2 ,3 ,9 ,8 ,7 ,8 ,9 ,7 ,6 ,5 ,3 ,2 ,1 ,2 ,9 ,9 ,9 ,9 ,2 ,1 ,2 ,9 ,8 ,9 ,9 ,9 ,9 ,7 ,7 ,5 ,4 ,4 ,4 ,1 ,2 ,9 ,8 ,7 ,5,3 ,4 ,5 ,6 ,7 ,9 ,9 ,8 ,7 ,5 ,6 ,5 ,9 ,8 ,7 ,6 ,8 ,9 ,9 ,8 ,7 ,6 ,6 ,4 ,5 ,7 ,8 ,9 ,9 ,8 ,9 ,8 ,9 ,7 ,4 ,3 ,4 ,5 ,9 ,9 ,9 ,0 ,2 ,4 ,5 ,6 ,7 ,8 ,9 ,7 ,9 ,8 ,9 ,5 ,6 ,9 ,8 ,7 ,6 ,4 ,2 ,4 ,4 ,9 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,2 ,9 ,8 ,7 ,8 ,9 ,4 ,2 ,3 ,4 ,9 ,5 ,4 ,9 ,7 ,6 ,5 ,4 ,3 ,2 ,1 ,0 ,1 ,2 ,9 ,5 ,4,4 ,6 ,7 ,7 ,9 ,9 ,9 ,9 ,9 ,6 ,7 ,6 ,7 ,9 ,8 ,5 ,6 ,8 ,9 ,9 ,8 ,7 ,7 ,6 ,6 ,8 ,9 ,9 ,8 ,7 ,6 ,7 ,9 ,5 ,3 ,2 ,3 ,9 ,8 ,9 ,8 ,9 ,3 ,4 ,8 ,7 ,8 ,9 ,9 ,9 ,8 ,7 ,8 ,9 ,7 ,8 ,9 ,8 ,7 ,4 ,3 ,6 ,5 ,8 ,9 ,9 ,9 ,9 ,8 ,8 ,6 ,5 ,6 ,9 ,8 ,7 ,6 ,7 ,9 ,9 ,3 ,4 ,9 ,8 ,4 ,3 ,9 ,8 ,7 ,6 ,7 ,4 ,4 ,3 ,1 ,9 ,9 ,7 ,4 ,3,5 ,7 ,8 ,9 ,9 ,8 ,9 ,9 ,8 ,7 ,9 ,7 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,2 ,9 ,9 ,8 ,9 ,8 ,9 ,9 ,9 ,9 ,7 ,5 ,6 ,8 ,9 ,9 ,1 ,9 ,9 ,7 ,9 ,7 ,8 ,9 ,6 ,7 ,8 ,9 ,9 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,9 ,0 ,9 ,8 ,6 ,9 ,7 ,6 ,7 ,9 ,1 ,9 ,8 ,9 ,9 ,7 ,6 ,7 ,9 ,8 ,7 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,6 ,2 ,0 ,9 ,9 ,7 ,6 ,5 ,6 ,4 ,9 ,8 ,7 ,6 ,2 ,1,6 ,8 ,9 ,9 ,9 ,7 ,9 ,9 ,9 ,9 ,9 ,8 ,9 ,9 ,9 ,8 ,9 ,9 ,2 ,1 ,9 ,9 ,9 ,7 ,9 ,8 ,9 ,8 ,7 ,5 ,4 ,5 ,9 ,9 ,8 ,9 ,8 ,6 ,6 ,7 ,6 ,9 ,9 ,7 ,8 ,9 ,9 ,8 ,9 ,5 ,4 ,5 ,6 ,7 ,8 ,9 ,1 ,9 ,9 ,9 ,8 ,9 ,7 ,8 ,9 ,0 ,9 ,7 ,6 ,5 ,9 ,7 ,9 ,8 ,7 ,6 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,9 ,8 ,2 ,1 ,2 ,9 ,8 ,7 ,6 ,7 ,6 ,7 ,9 ,8 ,5 ,1 ,0,7 ,9 ,9 ,8 ,7 ,6 ,9 ,8 ,9 ,7 ,5 ,9 ,8 ,6 ,7 ,9 ,9 ,9 ,9 ,9 ,8 ,8 ,4 ,6 ,6 ,7 ,8 ,9 ,8 ,7 ,6 ,6 ,9 ,8 ,7 ,8 ,6 ,5 ,4 ,4 ,5 ,7 ,8 ,9 ,9 ,9 ,8 ,7 ,5 ,5 ,3 ,3 ,5 ,6 ,9 ,3 ,9 ,8 ,9 ,8 ,7 ,8 ,9 ,9 ,9 ,9 ,8 ,9 ,5 ,4 ,5 ,9 ,9 ,7 ,6 ,5 ,3 ,4 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,3 ,2 ,3 ,5 ,9 ,8 ,7 ,8 ,7 ,9 ,8 ,7 ,4 ,2 ,1,9 ,8 ,7 ,8 ,6 ,5 ,6 ,7 ,8 ,9 ,4 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,8 ,9 ,7 ,6 ,3 ,6 ,5 ,6 ,7 ,9 ,9 ,8 ,8 ,9 ,8 ,7 ,6 ,9 ,5 ,4 ,3 ,3 ,4 ,8 ,9 ,9 ,9 ,8 ,7 ,6 ,4 ,3 ,2 ,1 ,2 ,3 ,9 ,4 ,9 ,7 ,6 ,7 ,6 ,8 ,9 ,9 ,9 ,8 ,7 ,8 ,9 ,5 ,6 ,7 ,9 ,8 ,7 ,4 ,2 ,6 ,7 ,9 ,9 ,9 ,8 ,7 ,9 ,9 ,4 ,6 ,6 ,7 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,3 ,2,7 ,7 ,6 ,5 ,3 ,4 ,7 ,9 ,9 ,6 ,5 ,4 ,5 ,6 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,2 ,5 ,4 ,5 ,9 ,8 ,9 ,9 ,9 ,9 ,7 ,6 ,5 ,4 ,3 ,2 ,1 ,2 ,5 ,6 ,8 ,9 ,6 ,9 ,9 ,7 ,6 ,4 ,4 ,3 ,9 ,9 ,8 ,9 ,7 ,4 ,5 ,4 ,5 ,7 ,9 ,8 ,9 ,4 ,6 ,7 ,9 ,6 ,7 ,9 ,9 ,8 ,4 ,2 ,1 ,5 ,7 ,8 ,9 ,8 ,7 ,6 ,8 ,8 ,9 ,9 ,7 ,8 ,9 ,9 ,4 ,4 ,9 ,8 ,7 ,5 ,4 ,3,6 ,6 ,7 ,3 ,2 ,3 ,4 ,7 ,8 ,9 ,9 ,5 ,6 ,7 ,9 ,9 ,7 ,9 ,8 ,7 ,6 ,2 ,1 ,2 ,3 ,7 ,6 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,8 ,7 ,4 ,3 ,2 ,3 ,6 ,7 ,8 ,9 ,5 ,7 ,9 ,8 ,8 ,7 ,6 ,9 ,8 ,8 ,7 ,5 ,6 ,3 ,2 ,3 ,4 ,5 ,8 ,7 ,8 ,9 ,7 ,8 ,9 ,7 ,9 ,8 ,7 ,6 ,5 ,2 ,0 ,4 ,6 ,9 ,8 ,9 ,8 ,5 ,7 ,6 ,7 ,8 ,9 ,9 ,6 ,4 ,3 ,2 ,4 ,9 ,8 ,6 ,6 ,7,5 ,4 ,1 ,0 ,1 ,2 ,3 ,5 ,6 ,7 ,8 ,9 ,7 ,8 ,9 ,5 ,6 ,9 ,9 ,5 ,4 ,3 ,0 ,1 ,3 ,4 ,5 ,9 ,9 ,8 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,5 ,9 ,8 ,9 ,3 ,4 ,8 ,9 ,9 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,2 ,1 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,7 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,1 ,3 ,5 ,6 ,7 ,8 ,9 ,4 ,3 ,5 ,8 ,9 ,7 ,8 ,9 ,3 ,2 ,1 ,2 ,9 ,8 ,7 ,9 ,8,4 ,3 ,2 ,1 ,2 ,4 ,4 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,3 ,4 ,9 ,8 ,7 ,6 ,7 ,6 ,4 ,3 ,4 ,6 ,7 ,8 ,9 ,7 ,9 ,9 ,9 ,9 ,8 ,9 ,6 ,5 ,4 ,6 ,9 ,9 ,0 ,2 ,4 ,5 ,9 ,8 ,6 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,2 ,1 ,0 ,9 ,6 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,6 ,5 ,9 ,9 ,7 ,7 ,6 ,5 ,6 ,4 ,7 ,8 ,9 ,9 ,4 ,3 ,2 ,4 ,2 ,3 ,5 ,7 ,8 ,9 ,3 ,2 ,3 ,4 ,9 ,8 ,9 ,9,6 ,5 ,3 ,2 ,3 ,4 ,5 ,9 ,9 ,8 ,9 ,9 ,9 ,3 ,2 ,6 ,7 ,9 ,9 ,8 ,9 ,8 ,9 ,4 ,5 ,8 ,8 ,9 ,7 ,6 ,8 ,7 ,9 ,9 ,9 ,8 ,7 ,6 ,6 ,7 ,8 ,9 ,9 ,3 ,6 ,6 ,9 ,6 ,5 ,3 ,9 ,8 ,9 ,6 ,5 ,4 ,3 ,9 ,9 ,8 ,9 ,7 ,7 ,8 ,9 ,8 ,7 ,7 ,5 ,4 ,5 ,9 ,8 ,9 ,7 ,8 ,9 ,5 ,6 ,8 ,9 ,5 ,3 ,2 ,1 ,0 ,1 ,2 ,4 ,5 ,6 ,9 ,4 ,4 ,5 ,6 ,9 ,9 ,3 ,5,7 ,6 ,4 ,3 ,4 ,9 ,6 ,9 ,8 ,7 ,8 ,9 ,4 ,3 ,1 ,5 ,6 ,9 ,8 ,9 ,4 ,9 ,7 ,6 ,7 ,9 ,9 ,9 ,6 ,5 ,4 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,9 ,7 ,8 ,9 ,7 ,9 ,8 ,9 ,3 ,2 ,1 ,9 ,8 ,7 ,8 ,9 ,9 ,8 ,8 ,7 ,8 ,9 ,9 ,9 ,9 ,9 ,6 ,4 ,3 ,2 ,9 ,8 ,9 ,9 ,8 ,9 ,7 ,6 ,7 ,9 ,7 ,6 ,5 ,3 ,2 ,1 ,2 ,3 ,4 ,6 ,7 ,8 ,9 ,5 ,6 ,7 ,8 ,9 ,2 ,3,8 ,7 ,8 ,9 ,9 ,8 ,9 ,9 ,9 ,6 ,7 ,8 ,9 ,5 ,0 ,4 ,9 ,8 ,7 ,6 ,5 ,6 ,9 ,8 ,9 ,7 ,9 ,8 ,7 ,7 ,3 ,2 ,3 ,9 ,9 ,9 ,9 ,9 ,9 ,3 ,4 ,6 ,7 ,8 ,9 ,8 ,7 ,9 ,9 ,1 ,0 ,1 ,9 ,8 ,9 ,9 ,9 ,7 ,6 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,5 ,9 ,9 ,7 ,7 ,8 ,9 ,9 ,7 ,9 ,7 ,8 ,9 ,7 ,6 ,5 ,4 ,6 ,2 ,3 ,4 ,6 ,7 ,8 ,9 ,8 ,7 ,7 ,9 ,9 ,2 ,1 ,2,9 ,8 ,9 ,9 ,8 ,7 ,9 ,9 ,8 ,5 ,6 ,7 ,9 ,4 ,2 ,3 ,4 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,4 ,6 ,5 ,9 ,9 ,8 ,2 ,0 ,9 ,9 ,9 ,8 ,7 ,8 ,1 ,2 ,4 ,5 ,6 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,1 ,9 ,9 ,9 ,9 ,9 ,8 ,6 ,5 ,4 ,7 ,8 ,9 ,2 ,1 ,9 ,8 ,9 ,8 ,7 ,6 ,6 ,6 ,8 ,9 ,6 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,6 ,4 ,3 ,4 ,5 ,7 ,9 ,9 ,9 ,9 ,9 ,9 ,8 ,9 ,9 ,0 ,3,2 ,9 ,9 ,8 ,7 ,6 ,9 ,8 ,6 ,4 ,5 ,6 ,8 ,9 ,4 ,5 ,5 ,8 ,9 ,9 ,7 ,8 ,9 ,5 ,3 ,5 ,4 ,5 ,8 ,9 ,4 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,6 ,6 ,7 ,8 ,9 ,8 ,7 ,8 ,9 ,9 ,9 ,8 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,3 ,5 ,9 ,8 ,9 ,0 ,1 ,9 ,8 ,9 ,6 ,5 ,4 ,5 ,7 ,9 ,9 ,9 ,9 ,3 ,4 ,9 ,9 ,8 ,7 ,5 ,4 ,5 ,6 ,8 ,9 ,6 ,7 ,8 ,9 ,9 ,6 ,7 ,8 ,9 ,4,4 ,9 ,8 ,7 ,6 ,5 ,4 ,9 ,5 ,3 ,4 ,5 ,6 ,8 ,9 ,6 ,6 ,7 ,8 ,9 ,8 ,9 ,5 ,4 ,2 ,1 ,2 ,3 ,7 ,9 ,9 ,8 ,7 ,6 ,9 ,9 ,7 ,8 ,6 ,4 ,7 ,8 ,9 ,9 ,9 ,9 ,8 ,9 ,8 ,9 ,7 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,3 ,2 ,3 ,5 ,6 ,9 ,1 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,4 ,8 ,7 ,8 ,9 ,3 ,2 ,3 ,4 ,6 ,9 ,8 ,7 ,6 ,6 ,7 ,9 ,8 ,5 ,6 ,9 ,9 ,8 ,5 ,6 ,7 ,8 ,9,9 ,8 ,7 ,6 ,5 ,4 ,3 ,2 ,1 ,2 ,3 ,4 ,9 ,7 ,8 ,9 ,7 ,8 ,9 ,1 ,9 ,9 ,9 ,6 ,5 ,3 ,4 ,5 ,6 ,9 ,8 ,9 ,6 ,5 ,6 ,9 ,8 ,9 ,6 ,5 ,6 ,7 ,8 ,9 ,9 ,9 ,9 ,8 ,7 ,9 ,6 ,5 ,6 ,7 ,9 ,8 ,9 ,3 ,2 ,1 ,0 ,3 ,7 ,8 ,9 ,9 ,9 ,7 ,6 ,7 ,3 ,2 ,3 ,5 ,6 ,7 ,8 ,9 ,1 ,2 ,3 ,4 ,5 ,9 ,8 ,7 ,7 ,8 ,9 ,7 ,4 ,5 ,9 ,8 ,7 ,6 ,8 ,9 ,9 ,9,9 ,9 ,8 ,7 ,7 ,6 ,4 ,1 ,0 ,1 ,2 ,3 ,4 ,6 ,7 ,8 ,9 ,9 ,1 ,0 ,1 ,9 ,8 ,9 ,6 ,4 ,5 ,9 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,6 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,7 ,8 ,8 ,9 ,6 ,5 ,7 ,5 ,4 ,5 ,9 ,8 ,7 ,6 ,5 ,3 ,2 ,1 ,2 ,8 ,9 ,8 ,9 ,8 ,6 ,5 ,3 ,2 ,1 ,0 ,3 ,7 ,9 ,9 ,9 ,0 ,1 ,2 ,3 ,4 ,7 ,9 ,8 ,9 ,9 ,6 ,5 ,3 ,4 ,5 ,9 ,8 ,7 ,9 ,9 ,9 ,8,9 ,9 ,9 ,9 ,8 ,5 ,3 ,2 ,1 ,3 ,3 ,4 ,5 ,7 ,8 ,9 ,4 ,3 ,2 ,1 ,9 ,9 ,7 ,8 ,9 ,7 ,6 ,7 ,8 ,9 ,9 ,9 ,3 ,2 ,1 ,5 ,7 ,9 ,8 ,9 ,8 ,9 ,3 ,5 ,6 ,7 ,9 ,5 ,4 ,3 ,2 ,3 ,4 ,5 ,9 ,8 ,9 ,8 ,5 ,3 ,5 ,6 ,9 ,6 ,7 ,9 ,9 ,8 ,6 ,4 ,3 ,2 ,1 ,2 ,4 ,5 ,6 ,8 ,9 ,2 ,9 ,4 ,5 ,6 ,7 ,9 ,3 ,9 ,7 ,7 ,8 ,5 ,6 ,7 ,9 ,8 ,9 ,9 ,8 ,6,7 ,9 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,5 ,4 ,5 ,6 ,8 ,9 ,8 ,9 ,5 ,3 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,9 ,8 ,9 ,9 ,9 ,8 ,9 ,3 ,2 ,4 ,9 ,8 ,9 ,7 ,9 ,0 ,2 ,4 ,6 ,7 ,8 ,9 ,3 ,2 ,1 ,2 ,6 ,9 ,9 ,9 ,8 ,7 ,6 ,7 ,9 ,8 ,9 ,5 ,9 ,9 ,9 ,9 ,7 ,8 ,4 ,4 ,2 ,4 ,6 ,7 ,8 ,9 ,0 ,9 ,8 ,9 ,8 ,7 ,8 ,9 ,4 ,9 ,8 ,8 ,9 ,6 ,7 ,9 ,8 ,9 ,5 ,3 ,5 ,4,5 ,6 ,7 ,9 ,9 ,7 ,9 ,5 ,4 ,5 ,5 ,6 ,7 ,9 ,8 ,7 ,8 ,9 ,4 ,5 ,9 ,6 ,5 ,6 ,8 ,9 ,8 ,9 ,9 ,9 ,8 ,7 ,8 ,9 ,9 ,9 ,8 ,7 ,7 ,6 ,2 ,1 ,2 ,3 ,7 ,9 ,9 ,8 ,9 ,3 ,0 ,1 ,9 ,8 ,9 ,6 ,9 ,9 ,7 ,8 ,9 ,9 ,2 ,4 ,8 ,8 ,9 ,9 ,8 ,9 ,7 ,6 ,6 ,5 ,7 ,9 ,9 ,3 ,1 ,9 ,7 ,9 ,9 ,8 ,9 ,9 ,9 ,9 ,9 ,9 ,8 ,7 ,9 ,8 ,7 ,5 ,4 ,2 ,1 ,3,4 ,3 ,4 ,3 ,4 ,9 ,8 ,7 ,5 ,8 ,7 ,9 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,7 ,9 ,8 ,7 ,8 ,9 ,8 ,7 ,6 ,5 ,6 ,8 ,8 ,9 ,6 ,5 ,4 ,3 ,2 ,3 ,5 ,6 ,9 ,9 ,7 ,9 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,2 ,9 ,8 ,9 ,3 ,2 ,1 ,2 ,6 ,7 ,9 ,9 ,9 ,9 ,8 ,7 ,8 ,6 ,8 ,9 ,9 ,9 ,9 ,8 ,6 ,8 ,9 ,9 ,9 ,9 ,8 ,9 ,9 ,8 ,9 ,8 ,9 ,9 ,8 ,4 ,2 ,1 ,0 ,1,3 ,2 ,3 ,2 ,3 ,4 ,9 ,7 ,6 ,7 ,9 ,8 ,7 ,9 ,1 ,5 ,6 ,7 ,9 ,9 ,9 ,9 ,9 ,9 ,8 ,7 ,6 ,9 ,8 ,9 ,8 ,6 ,4 ,5 ,7 ,7 ,8 ,9 ,6 ,5 ,4 ,3 ,4 ,5 ,9 ,8 ,7 ,6 ,5 ,7 ,8 ,9 ,7 ,6 ,5 ,4 ,3 ,6 ,9 ,8 ,9 ,1 ,0 ,1 ,5 ,6 ,7 ,9 ,9 ,8 ,9 ,8 ,9 ,7 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,7 ,8 ,9 ,2 ,1 ,9 ,4 ,3 ,2 ,1 ,3,4 ,1 ,0 ,1 ,2 ,3 ,4 ,9 ,8 ,9 ,8 ,7 ,5 ,4 ,2 ,3 ,4 ,6 ,7 ,8 ,9 ,8 ,7 ,6 ,4 ,5 ,4 ,6 ,7 ,8 ,9 ,4 ,3 ,4 ,5 ,6 ,9 ,1 ,9 ,7 ,5 ,4 ,5 ,6 ,9 ,8 ,7 ,6 ,4 ,6 ,7 ,8 ,9 ,7 ,6 ,5 ,4 ,5 ,6 ,7 ,8 ,9 ,1 ,2 ,3 ,4 ,5 ,8 ,9 ,7 ,6 ,9 ,4 ,9 ,9 ,9 ,9 ,9 ,6 ,6 ,4 ,5 ,6 ,7 ,8 ,9 ,6 ,7 ,9 ,6 ,7 ,9 ,3 ,9 ,8 ,7 ,6 ,4 ,5 ,4,3 ,2 ,1 ,3 ,4 ,4 ,5 ,9 ,9 ,9 ,9 ,9 ,5 ,4 ,3 ,4 ,8 ,9 ,8 ,9 ,9 ,8 ,7 ,5 ,3 ,4 ,3 ,7 ,6 ,7 ,8 ,9 ,2 ,8 ,7 ,8 ,9 ,0 ,1 ,9 ,6 ,7 ,8 ,9 ,8 ,9 ,9 ,1 ,2 ,4 ,6 ,7 ,9 ,9 ,8 ,6 ,5 ,7 ,7 ,9 ,9 ,4 ,2 ,4 ,5 ,5 ,6 ,7 ,8 ,9 ,5 ,4 ,3 ,2 ,3 ,9 ,8 ,6 ,5 ,4 ,3 ,4 ,5 ,6 ,7 ,9 ,5 ,6 ,7 ,5 ,6 ,8 ,9 ,9 ,9 ,8 ,9 ,8 ,7 ,6,4 ,3 ,2 ,4 ,5 ,5 ,7 ,8 ,9 ,9 ,9 ,7 ,6 ,5 ,4 ,5 ,6 ,9 ,9 ,9 ,9 ,9 ,5 ,4 ,2 ,1 ,2 ,3 ,5 ,6 ,9 ,2 ,1 ,9 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,9 ,7 ,4 ,3 ,2 ,6 ,5 ,7 ,9 ,3 ,4 ,9 ,7 ,7 ,9 ,8 ,9 ,7 ,4 ,3 ,5 ,6 ,7 ,8 ,8 ,9 ,7 ,6 ,5 ,4 ,3 ,4 ,5 ,9 ,8 ,6 ,3 ,2 ,3 ,4 ,7 ,8 ,9 ,4 ,3 ,4 ,4 ,5 ,6 ,8 ,9 ,3 ,9 ,1 ,9 ,8 ,7,5 ,4 ,3 ,6 ,8 ,9 ,8 ,9 ,6 ,7 ,9 ,8 ,7 ,6 ,7 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,5 ,4 ,1 ,0 ,1 ,2 ,7 ,8 ,9 ,9 ,0 ,1 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,9 ,8 ,7 ,8 ,9 ,1 ,2 ,9 ,8 ,9 ,8 ,9 ,9 ,8 ,6 ,5 ,4 ,5 ,6 ,7 ,9 ,9 ,9 ,8 ,7 ,6 ,7 ,4 ,5 ,9 ,8 ,7 ,5 ,2 ,1 ,2 ,3 ,5 ,7 ,9 ,2 ,1 ,5 ,3 ,4 ,7 ,8 ,9 ,2 ,1 ,0 ,1 ,9 ,8,6 ,5 ,4 ,5 ,9 ,8 ,9 ,9 ,7 ,8 ,9 ,9 ,9 ,8 ,8 ,7 ,8 ,9 ,9 ,9 ,8 ,7 ,4 ,3 ,2 ,1 ,2 ,4 ,5 ,6 ,7 ,8 ,9 ,2 ,4 ,5 ,7 ,8 ,9 ,2 ,9 ,4 ,9 ,9 ,7 ,6 ,7 ,9 ,8 ,9 ,3 ,2 ,3 ,9 ,7 ,9 ,9 ,7 ,8 ,9 ,7 ,6 ,5 ,6 ,7 ,9 ,2 ,1 ,2 ,9 ,8 ,7 ,9 ,6 ,7 ,9 ,9 ,5 ,4 ,3 ,2 ,3 ,5 ,6 ,9 ,2 ,1 ,0 ,1 ,2 ,3 ,4 ,9 ,4 ,3 ,2 ,1 ,2 ,4 ,9,7 ,6 ,7 ,9 ,9 ,7 ,8 ,9 ,8 ,9 ,9 ,8 ,9 ,9 ,9 ,8 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,7 ,3 ,3 ,3 ,6 ,6 ,7 ,8 ,9 ,5 ,3 ,7 ,6 ,7 ,9 ,0 ,1 ,2 ,3 ,4 ,9 ,8 ,7 ,8 ,9 ,9 ,7 ,9 ,3 ,9 ,7 ,6 ,8 ,9 ,6 ,9 ,9 ,9 ,8 ,7 ,7 ,8 ,9 ,1 ,0 ,9 ,9 ,9 ,8 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,6 ,5 ,4 ,6 ,7 ,8 ,9 ,2 ,1 ,2 ,3 ,4 ,9 ,8 ,9 ,9 ,3 ,4 ,9 ,5 ,6,9 ,7 ,9 ,8 ,8 ,6 ,7 ,8 ,9 ,9 ,9 ,7 ,8 ,9 ,6 ,9 ,8 ,9 ,9 ,9 ,8 ,9 ,8 ,7 ,6 ,4 ,5 ,7 ,7 ,8 ,9 ,7 ,6 ,4 ,8 ,8 ,9 ,2 ,1 ,2 ,3 ,4 ,6 ,7 ,9 ,9 ,9 ,7 ,8 ,6 ,8 ,9 ,8 ,7 ,5 ,6 ,9 ,9 ,8 ,9 ,9 ,9 ,9 ,8 ,9 ,3 ,2 ,9 ,8 ,9 ,9 ,9 ,9 ,9 ,9 ,9 ,8 ,7 ,8 ,9 ,6 ,5 ,6 ,9 ,9 ,6 ,3 ,2 ,3 ,4 ,9 ,8 ,7 ,7 ,8 ,9 ,9 ,8 ,9 ,7,8 ,9 ,8 ,7 ,6 ,5 ,6 ,9 ,8 ,9 ,7 ,6 ,7 ,4 ,5 ,6 ,7 ,8 ,9 ,5 ,9 ,3 ,9 ,8 ,7 ,5 ,6 ,7 ,9 ,9 ,9 ,8 ,7 ,5 ,9 ,9 ,9 ,3 ,2 ,9 ,9 ,8 ,7 ,9 ,8 ,9 ,7 ,6 ,7 ,5 ,9 ,8 ,9 ,8 ,6 ,7 ,8 ,9 ,6 ,7 ,8 ,9 ,9 ,9 ,5 ,4 ,5 ,9 ,7 ,8 ,9 ,2 ,9 ,8 ,7 ,6 ,9 ,8 ,9 ,9 ,7 ,7 ,8 ,9 ,6 ,5 ,4 ,3 ,6 ,5 ,9 ,7 ,6 ,6 ,7 ,8 ,9 ,7 ,9 ,8,7 ,7 ,5 ,7 ,6 ,4 ,5 ,7 ,7 ,9 ,8 ,5 ,4 ,3 ,4 ,5 ,9 ,9 ,5 ,4 ,3 ,2 ,0 ,9 ,7 ,6 ,7 ,8 ,9 ,9 ,9 ,9 ,8 ,9 ,9 ,9 ,8 ,9 ,9 ,8 ,9 ,9 ,8 ,9 ,7 ,6 ,5 ,5 ,3 ,4 ,6 ,7 ,9 ,8 ,7 ,8 ,9 ,4 ,5 ,7 ,9 ,8 ,9 ,9 ,9 ,9 ,9 ,7 ,6 ,9 ,0 ,1 ,9 ,8 ,6 ,5 ,6 ,9 ,9 ,9 ,8 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,9 ,9 ,8 ,5 ,4 ,3 ,4 ,7 ,6 ,8 ,9,6 ,5 ,4 ,5 ,4 ,3 ,4 ,5 ,6 ,7 ,9 ,4 ,3 ,2 ,5 ,7 ,8 ,9 ,6 ,5 ,4 ,3 ,9 ,9 ,8 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,9 ,9 ,9 ,9 ,7 ,9 ,8 ,7 ,8 ,9 ,9 ,9 ,6 ,5 ,4 ,3 ,2 ,4 ,3 ,8 ,9 ,9 ,8 ,9 ,1 ,3 ,6 ,8 ,9 ,7 ,8 ,9 ,8 ,8 ,7 ,6 ,5 ,8 ,9 ,9 ,8 ,7 ,6 ,4 ,5 ,6 ,9 ,9 ,9 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,9 ,8 ,7 ,8 ,4 ,3 ,2 ,3 ,5 ,5 ,6 ,8,7 ,4 ,3 ,2 ,1 ,2 ,3 ,6 ,8 ,8 ,9 ,5 ,4 ,3 ,4 ,6 ,7 ,8 ,9 ,6 ,6 ,9 ,8 ,9 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,8 ,9 ,9 ,8 ,7 ,5 ,6 ,7 ,6 ,7 ,8 ,9 ,8 ,7 ,6 ,5 ,1 ,0 ,1 ,2 ,9 ,9 ,9 ,9 ,5 ,2 ,4 ,5 ,9 ,8 ,5 ,9 ,8 ,7 ,6 ,6 ,5 ,4 ,6 ,7 ,8 ,9 ,5 ,4 ,3 ,4 ,8 ,8 ,9 ,5 ,7 ,8 ,9 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,4 ,5 ,2 ,1 ,2 ,3 ,4 ,6 ,7,6 ,5 ,4 ,3 ,3 ,3 ,4 ,7 ,9 ,9 ,7 ,6 ,5 ,4 ,5 ,7 ,8 ,9 ,9 ,9 ,9 ,8 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,6 ,5 ,6 ,9 ,8 ,7 ,6 ,3 ,2 ,4 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,5 ,4 ,2 ,2 ,4 ,7 ,8 ,9 ,6 ,4 ,3 ,4 ,5 ,9 ,7 ,4 ,3 ,9 ,8 ,5 ,4 ,2 ,3 ,5 ,6 ,9 ,9 ,8 ,5 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,9 ,4 ,3 ,9 ,9 ,5 ,3 ,2 ,1 ,0 ,3 ,6 ,7 ,9 ,9,8 ,7 ,5 ,4 ,4 ,5 ,5 ,9 ,9 ,9 ,8 ,7 ,9 ,5 ,6 ,8 ,9 ,9 ,9 ,8 ,8 ,7 ,6 ,7 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,6 ,9 ,6 ,5 ,4 ,3 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,3 ,4 ,6 ,7 ,8 ,9 ,6 ,7 ,5 ,9 ,8 ,6 ,4 ,2 ,9 ,8 ,6 ,3 ,1 ,4 ,6 ,7 ,9 ,8 ,7 ,6 ,5 ,6 ,7 ,9 ,9 ,9 ,8 ,7 ,6 ,8 ,9 ,9 ,4 ,9 ,8 ,7 ,4 ,3 ,2 ,1 ,4 ,5 ,6 ,7 ,8,9 ,9 ,6 ,5 ,6 ,6 ,7 ,8 ,9 ,4 ,9 ,9 ,8 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,5 ,6 ,5 ,6 ,9 ,9 ,9 ,6 ,5 ,4 ,3 ,4 ,7 ,9 ,8 ,7 ,5 ,4 ,5 ,6 ,7 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,9 ,6 ,9 ,7 ,5 ,3 ,1 ,0 ,9 ,5 ,4 ,3 ,4 ,5 ,6 ,7 ,9 ,8 ,9 ,7 ,7 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,4 ,2 ,8 ,7 ,7 ,8 ,9,9 ,9 ,8 ,7 ,8 ,7 ,8 ,9 ,4 ,3 ,4 ,5 ,9 ,9 ,8 ,9 ,9 ,8 ,9 ,5 ,4 ,5 ,4 ,6 ,7 ,8 ,9 ,7 ,6 ,9 ,5 ,6 ,8 ,9 ,9 ,7 ,6 ,5 ,6 ,9 ,8 ,9 ,8 ,7 ,9 ,8 ,9 ,6 ,7 ,6 ,7 ,9 ,9 ,6 ,9 ,9 ,9 ,8 ,9 ,7 ,6 ,4 ,2 ,9 ,8 ,6 ,5 ,7 ,6 ,6 ,7 ,8 ,9 ,9 ,9 ,9 ,8 ,9 ,8 ,9 ,9 ,6 ,5 ,4 ,5 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,5 ,5 ,3 ,9 ,8 ,9 ,9 ,9,8 ,7 ,9 ,8 ,9 ,8 ,9 ,8 ,9 ,5 ,6 ,9 ,8 ,7 ,9 ,9 ,8 ,7 ,9 ,7 ,2 ,1 ,2 ,5 ,6 ,7 ,8 ,9 ,7 ,8 ,9 ,8 ,9 ,6 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,9 ,9 ,6 ,5 ,9 ,7 ,9 ,8 ,7 ,8 ,9 ,9 ,5 ,4 ,5 ,9 ,9 ,9 ,8 ,6 ,5 ,3 ,9 ,8 ,7 ,6 ,9 ,8 ,8 ,8 ,9 ,6 ,7 ,8 ,9 ,9 ,5 ,6 ,7 ,8 ,9 ,4 ,3 ,4 ,5 ,8 ,9 ,2 ,1 ,9 ,7 ,6 ,5 ,4 ,5 ,6 ,7 ,8 ,9,7 ,6 ,5 ,9 ,3 ,9 ,5 ,6 ,8 ,9 ,9 ,8 ,7 ,6 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,0 ,1 ,4 ,5 ,6 ,9 ,8 ,9 ,9 ,9 ,9 ,6 ,5 ,4 ,9 ,9 ,8 ,9 ,9 ,9 ,9 ,8 ,7 ,3 ,4 ,5 ,6 ,9 ,8 ,9 ,8 ,8 ,9 ,3 ,9 ,8 ,9 ,6 ,9 ,7 ,6 ,5 ,6 ,9 ,8 ,7 ,8 ,9 ,9 ,9 ,6 ,5 ,6 ,8 ,9 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,2 ,3 ,4 ,7 ,8 ,9 ,0 ,9 ,8 ,9 ,6 ,6 ,6 ,7 ,9 ,9 ,8,8 ,5 ,4 ,3 ,2 ,3 ,4 ,5 ,6 ,9 ,8 ,7 ,6 ,5 ,4 ,9 ,8 ,7 ,6 ,9 ,8 ,1 ,2 ,3 ,4 ,5 ,6 ,7 ,9 ,9 ,8 ,9 ,7 ,7 ,3 ,4 ,5 ,9 ,9 ,8 ,9 ,8 ,9 ,1 ,2 ,3 ,4 ,5 ,6 ,9 ,8 ,6 ,7 ,8 ,9 ,8 ,7 ,6 ,5 ,6 ,9 ,7 ,6 ,7 ,8 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,4 ,5 ,7 ,8 ,9 ,5 ,6 ,7 ,8 ,9 ,0 ,1 ,4 ,5 ,6 ,7 ,8 ,9 ,6 ,9 ,9 ,8 ,9 ,7 ,8 ,9 ,5 ,7,7 ,6 ,5 ,4 ,1 ,0 ,9 ,6 ,7 ,8 ,9 ,8 ,9 ,6 ,5 ,6 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,6 ,9 ,9 ,9 ,9 ,7 ,8 ,9 ,4 ,2 ,3 ,9 ,8 ,9 ,7 ,8 ,7 ,8 ,9 ,3 ,5 ,7 ,6 ,9 ,9 ,7 ,5 ,6 ,7 ,8 ,9 ,2 ,5 ,4 ,5 ,9 ,8 ,9 ,9 ,9 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,3 ,4 ,6 ,9 ,9 ,8 ,7 ,8 ,9 ,2 ,1 ,2 ,3 ,4 ,7 ,8 ,9 ,4 ,5 ,7 ,8 ,9 ,9 ,8 ,9 ,5 ,4 ,6,8 ,8 ,6 ,9 ,2 ,9 ,8 ,9 ,9 ,9 ,5 ,9 ,8 ,7 ,6 ,7 ,9 ,7 ,5 ,9 ,8 ,7 ,6 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,1 ,2 ,9 ,7 ,7 ,6 ,7 ,6 ,7 ,9 ,4 ,9 ,8 ,9 ,8 ,7 ,6 ,4 ,5 ,9 ,9 ,2 ,1 ,2 ,3 ,9 ,9 ,9 ,5 ,6 ,7 ,9 ,8 ,9 ,9 ,8 ,5 ,3 ,2 ,3 ,5 ,7 ,8 ,9 ,8 ,9 ,4 ,3 ,2 ,3 ,4 ,5 ,6 ,9 ,4 ,3 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,3 ,4,9 ,9 ,9 ,8 ,9 ,8 ,7 ,9 ,8 ,9 ,4 ,3 ,9 ,8 ,9 ,9 ,8 ,6 ,4 ,3 ,9 ,8 ,9 ,6 ,7 ,8 ,9 ,8 ,9 ,8 ,5 ,7 ,8 ,9 ,2 ,9 ,8 ,5 ,4 ,5 ,4 ,5 ,6 ,8 ,9 ,6 ,9 ,9 ,9 ,7 ,5 ,3 ,4 ,7 ,9 ,9 ,0 ,1 ,9 ,8 ,9 ,5 ,3 ,2 ,9 ,8 ,7 ,9 ,8 ,7 ,6 ,2 ,0 ,5 ,7 ,8 ,9 ,9 ,9 ,7 ,6 ,9 ,3 ,5 ,7 ,6 ,7 ,8 ,9 ,2 ,4 ,5 ,7 ,9 ,9 ,8 ,7 ,6 ,4 ,5,9 ,9 ,8 ,7 ,6 ,7 ,5 ,9 ,7 ,8 ,9 ,2 ,1 ,9 ,9 ,9 ,8 ,7 ,2 ,1 ,0 ,9 ,8 ,7 ,9 ,9 ,6 ,7 ,4 ,5 ,4 ,5 ,9 ,9 ,9 ,8 ,7 ,4 ,3 ,4 ,3 ,4 ,5 ,9 ,6 ,5 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,9 ,3 ,9 ,8 ,6 ,5 ,9 ,8 ,3 ,2 ,1 ,2 ,3 ,4 ,8 ,9 ,9 ,9 ,9 ,8 ,9 ,9 ,8 ,7 ,9 ,9 ,3 ,1 ,4 ,6 ,9 ,9 ,6 ,9 ,8 ,6 ,5 ,6,8 ,7 ,6 ,5 ,4 ,2 ,3 ,5 ,6 ,7 ,8 ,9 ,0 ,1 ,9 ,9 ,9 ,4 ,3 ,2 ,2 ,3 ,9 ,8 ,9 ,9 ,5 ,4 ,3 ,2 ,3 ,4 ,5 ,9 ,8 ,8 ,6 ,5 ,2 ,1 ,2 ,3 ,9 ,8 ,9 ,4 ,5 ,9 ,8 ,9 ,6 ,5 ,6 ,7 ,9 ,9 ,9 ,8 ,7 ,5 ,6 ,7 ,8 ,9 ,7 ,6 ,5 ,4 ,5 ,9 ,5 ,4 ,3 ,4 ,6 ,6 ,7 ,8 ,9 ,8 ,9 ,7 ,9 ,9 ,9 ,8 ,9 ,4 ,3 ,2 ,3 ,9 ,8 ,7 ,5 ,7 ,9 ,8 ,6 ,8,9 ,7 ,5 ,4 ,3 ,1 ,3 ,4 ,5 ,8 ,9 ,2 ,1 ,9 ,8 ,7 ,6 ,5 ,4 ,4 ,3 ,4 ,5 ,9 ,9 ,8 ,9 ,3 ,0 ,1 ,2 ,3 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,0 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,6 ,9 ,9 ,8 ,8 ,7 ,8 ,9 ,8 ,9 ,3 ,3 ,4 ,4 ,5 ,9 ,8 ,7 ,6 ,4 ,3 ,4 ,9 ,8 ,7 ,4 ,6 ,7 ,8 ,9 ,9 ,4 ,7 ,8 ,6 ,8 ,9 ,8 ,9 ,6 ,5 ,5 ,4 ,5 ,9 ,9 ,9 ,4 ,5 ,6 ,9 ,8 ,9,8 ,7 ,4 ,2 ,1 ,0 ,2 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,4 ,6 ,9 ,9 ,9 ,7 ,6 ,2 ,1 ,2 ,4 ,6 ,7 ,9 ,9 ,6 ,5 ,3 ,2 ,1 ,3 ,4 ,5 ,8 ,9 ,9 ,8 ,5 ,6 ,7 ,9 ,9 ,8 ,9 ,9 ,6 ,7 ,2 ,2 ,2 ,3 ,5 ,7 ,9 ,6 ,5 ,3 ,2 ,9 ,8 ,7 ,6 ,5 ,6 ,7 ,9 ,5 ,6 ,3 ,5 ,3 ,5 ,5 ,6 ,7 ,9 ,7 ,6 ,6 ,5 ,9 ,8 ,9 ,8 ,9 ,6 ,8 ,9 ,9 ,9,7 ,6 ,5 ,3 ,2 ,1 ,2 ,3 ,4 ,8 ,9 ,8 ,8 ,7 ,8 ,9 ,9 ,9 ,7 ,9 ,9 ,9 ,8 ,9 ,9 ,8 ,5 ,4 ,3 ,4 ,5 ,7 ,8 ,9 ,9 ,8 ,6 ,7 ,3 ,2 ,4 ,5 ,6 ,7 ,8 ,9 ,7 ,3 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,5 ,2 ,1 ,0 ,1 ,2 ,6 ,9 ,9 ,8 ,6 ,2 ,1 ,3 ,9 ,9 ,7 ,9 ,8 ,9 ,9 ,4 ,3 ,2 ,1 ,2 ,3 ,4 ,5 ,9 ,9 ,9 ,9 ,7 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,9 ,1 ,0 ,9,9 ,8 ,5 ,4 ,3 ,2 ,3 ,4 ,5 ,9 ,9 ,7 ,6 ,5 ,7 ,8 ,9 ,8 ,9 ,7 ,8 ,9 ,7 ,8 ,9 ,9 ,8 ,7 ,4 ,6 ,7 ,8 ,9 ,6 ,5 ,9 ,7 ,6 ,5 ,3 ,4 ,6 ,8 ,8 ,9 ,8 ,6 ,2 ,3 ,4 ,8 ,9 ,9 ,9 ,6 ,4 ,3 ,2 ,3 ,5 ,9 ,9 ,8 ,5 ,9 ,8 ,9 ,3 ,4 ,5 ,9 ,8 ,9 ,9 ,8 ,7 ,5 ,4 ,1 ,0 ,1 ,4 ,5 ,9 ,8 ,9 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,6 ,7 ,8 ,9 ,3 ,9 ,8,8 ,7 ,6 ,5 ,4 ,3 ,4 ,8 ,9 ,9 ,8 ,6 ,5 ,4 ,5 ,9 ,8 ,7 ,6 ,5 ,6 ,6 ,6 ,7 ,8 ,9 ,7 ,6 ,5 ,7 ,8 ,9 ,9 ,9 ,4 ,3 ,9 ,7 ,9 ,6 ,5 ,8 ,9 ,9 ,9 ,7 ,5 ,4 ,4 ,5 ,6 ,8 ,9 ,8 ,7 ,5 ,4 ,6 ,5 ,9 ,8 ,8 ,7 ,4 ,6 ,9 ,5 ,4 ,5 ,6 ,7 ,9 ,4 ,5 ,9 ,8 ,6 ,7 ,2 ,1 ,2 ,3 ,9 ,9 ,7 ,9 ,8 ,7 ,8 ,9 ,7 ,5 ,4 ,5 ,6 ,7 ,8 ,9 ,6 ,7,9 ,8 ,7 ,6 ,6 ,4 ,6 ,7 ,8 ,9 ,6 ,5 ,4 ,3 ,2 ,1 ,9 ,9 ,5 ,4 ,3 ,4 ,5 ,8 ,9 ,9 ,8 ,7 ,6 ,8 ,9 ,9 ,9 ,7 ,9 ,2 ,9 ,8 ,9 ,7 ,6 ,9 ,9 ,9 ,8 ,9 ,6 ,5 ,9 ,6 ,7 ,8 ,9 ,9 ,8 ,6 ,6 ,9 ,9 ,8 ,6 ,7 ,6 ,3 ,4 ,9 ,8 ,7 ,6 ,8 ,8 ,9 ,3 ,3 ,5 ,9 ,9 ,8 ,7 ,4 ,3 ,9 ,8 ,7 ,6 ,8 ,7 ,6 ,9 ,8 ,9 ,4 ,3 ,9 ,9 ,9 ,9 ,8 ,5 ,6,9 ,9 ,9 ,7 ,7 ,9 ,7 ,8 ,9 ,9 ,9 ,9 ,5 ,2 ,1 ,0 ,9 ,8 ,7 ,6 ,5 ,7 ,9 ,9 ,1 ,0 ,9 ,9 ,9 ,9 ,9 ,8 ,9 ,6 ,8 ,9 ,9 ,9 ,9 ,8 ,7 ,8 ,9 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,9 ,9 ,8 ,7 ,9 ,8 ,7 ,8 ,9 ,8 ,5 ,4 ,5 ,2 ,3 ,4 ,9 ,8 ,7 ,9 ,9 ,2 ,1 ,2 ,6 ,7 ,8 ,9 ,6 ,5 ,9 ,8 ,9 ,6 ,5 ,3 ,8 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,7 ,9 ,6 ,4 ,5,8 ,9 ,9 ,8 ,9 ,9 ,8 ,9 ,9 ,9 ,8 ,8 ,9 ,9 ,2 ,1 ,2 ,9 ,8 ,9 ,6 ,8 ,9 ,9 ,3 ,2 ,9 ,8 ,8 ,9 ,9 ,7 ,6 ,5 ,6 ,8 ,9 ,9 ,9 ,9 ,8 ,9 ,4 ,5 ,6 ,8 ,9 ,9 ,9 ,8 ,9 ,3 ,6 ,5 ,6 ,9 ,8 ,9 ,8 ,7 ,6 ,3 ,2 ,1 ,2 ,4 ,5 ,9 ,8 ,9 ,5 ,4 ,2 ,4 ,5 ,6 ,9 ,8 ,7 ,9 ,8 ,7 ,8 ,5 ,4 ,2 ,3 ,4 ,5 ,6 ,7 ,9 ,8 ,7 ,6 ,5 ,6 ,4 ,3 ,4,7 ,6 ,5 ,9 ,7 ,8 ,9 ,9 ,8 ,8 ,6 ,7 ,7 ,8 ,9 ,2 ,9 ,8 ,9 ,8 ,7 ,9 ,5 ,8 ,9 ,9 ,8 ,7 ,6 ,9 ,8 ,9 ,5 ,4 ,5 ,6 ,9 ,9 ,8 ,6 ,9 ,5 ,3 ,4 ,6 ,7 ,8 ,9 ,7 ,9 ,3 ,2 ,3 ,4 ,7 ,9 ,9 ,9 ,9 ,8 ,8 ,4 ,5 ,4 ,3 ,4 ,6 ,7 ,9 ,7 ,6 ,5 ,6 ,7 ,6 ,7 ,8 ,9 ,8 ,9 ,7 ,6 ,5 ,4 ,2 ,1 ,2 ,3 ,4 ,5 ,7 ,8 ,9 ,7 ,5 ,4 ,2 ,1 ,2 ,6,6 ,5 ,4 ,5 ,6 ,7 ,9 ,8 ,7 ,6 ,5 ,6 ,6 ,7 ,9 ,9 ,8 ,7 ,8 ,9 ,8 ,9 ,6 ,7 ,9 ,8 ,7 ,8 ,5 ,6 ,7 ,8 ,9 ,5 ,6 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,2 ,3 ,9 ,9 ,9 ,7 ,6 ,4 ,3 ,1 ,3 ,4 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,6 ,7 ,8 ,5 ,7 ,8 ,9 ,9 ,7 ,7 ,7 ,8 ,7 ,9 ,9 ,7 ,9 ,9 ,8 ,7 ,6 ,4 ,3 ,2 ,3 ,5 ,5 ,7 ,8 ,9 ,9 ,8 ,6 ,3 ,1 ,0 ,1 ,8,5 ,4 ,3 ,2 ,3 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,5 ,9 ,8 ,9 ,7 ,6 ,6 ,8 ,9 ,9 ,7 ,8 ,9 ,7 ,6 ,7 ,4 ,5 ,8 ,9 ,9 ,9 ,7 ,8 ,9 ,8 ,7 ,6 ,5 ,9 ,1 ,9 ,8 ,8 ,9 ,9 ,7 ,6 ,5 ,3 ,4 ,9 ,8 ,7 ,8 ,9 ,9 ,9 ,8 ,7 ,9 ,8 ,7 ,6 ,7 ,9 ,7 ,9 ,8 ,8 ,8 ,9 ,8 ,9 ,7 ,6 ,5 ,6 ,9 ,8 ,9 ,5 ,4 ,5 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,7 ,6 ,3 ,2 ,3 ,4 ,6,4 ,3 ,2 ,1 ,2 ,9 ,8 ,7 ,7 ,4 ,3 ,4 ,4 ,6 ,7 ,8 ,9 ,5 ,4 ,6 ,6 ,8 ,9 ,9 ,8 ,6 ,5 ,4 ,3 ,4 ,5 ,6 ,9 ,8 ,9 ,9 ,9 ,9 ,8 ,7 ,9 ,8 ,9 ,8 ,7 ,6 ,9 ,8 ,9 ,7 ,6 ,8 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,6 ,5 ,9 ,9 ,9 ,6 ,9 ,8 ,9 ,1 ,3 ,9 ,9 ,9 ,8 ,7 ,5 ,6 ,5 ,9 ,7 ,8 ,9 ,9 ,8 ,6 ,5 ,4 ,3 ,4 ,5 ,7,9 ,5 ,4 ,3 ,9 ,8 ,7 ,6 ,8 ,5 ,1 ,2 ,3 ,7 ,8 ,9 ,5 ,4 ,3 ,4 ,5 ,9 ,8 ,7 ,6 ,5 ,6 ,3 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,9 ,9 ,8 ,7 ,8 ,7 ,6 ,5 ,8 ,7 ,8 ,9 ,7 ,9 ,8 ,7 ,6 ,5 ,5 ,6 ,7 ,8 ,9 ,9 ,3 ,4 ,9 ,8 ,9 ,8 ,9 ,3 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,8 ,6 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,9 ,7 ,6 ,5 ,4 ,6 ,6 ,7,7 ,6 ,6 ,7 ,8 ,9 ,8 ,5 ,4 ,3 ,2 ,3 ,4 ,6 ,9 ,6 ,4 ,3 ,2 ,3 ,4 ,5 ,9 ,9 ,8 ,4 ,3 ,4 ,1 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,9 ,8 ,7 ,6 ,5 ,6 ,7 ,4 ,5 ,6 ,7 ,8 ,9 ,7 ,6 ,8 ,7 ,4 ,4 ,5 ,7 ,8 ,9 ,1 ,2 ,3 ,4 ,9 ,9 ,7 ,9 ,9 ,0 ,1 ,3 ,4 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,4 ,9 ,7 ,8 ,9 ,1 ,2 ,3 ,7 ,9 ,9 ,8 ,8 ,7 ,6 ,7 ,8 ,9,8 ,7 ,9 ,9 ,9 ,9 ,9 ,6 ,5 ,7 ,3 ,4 ,5 ,6 ,7 ,9 ,3 ,2 ,1 ,2 ,3 ,6 ,9 ,8 ,7 ,6 ,2 ,1 ,0 ,1 ,2 ,7 ,8 ,9 ,9 ,8 ,7 ,6 ,7 ,9 ,9 ,7 ,4 ,5 ,5 ,3 ,4 ,5 ,6 ,7 ,9 ,9 ,5 ,4 ,3 ,2 ,3 ,4 ,5 ,9 ,1 ,0 ,1 ,3 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,3 ,4 ,9 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,9 ,8 ,9 ,1 ,0 ,9 ,5 ,6 ,8 ,9 ,9 ,9 ,9 ,7 ,8 ,9 ,5,9 ,9 ,8 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,1 ,0 ,4 ,4 ,9 ,9 ,9 ,8 ,7 ,3 ,2 ,3 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,7 ,5 ,9 ,8 ,7 ,6 ,3 ,2 ,1 ,2 ,3 ,4 ,5 ,6 ,9 ,8 ,9 ,8 ,7 ,4 ,4 ,5 ,9 ,8 ,9 ,1 ,2 ,5 ,6 ,9 ,6 ,5 ,6 ,8 ,9 ,4 ,5 ,9 ,7 ,8 ,9 ,9 ,9 ,8 ,7 ,3 ,2 ,1 ,9 ,9 ,9 ,9 ,8 ,9 ,9 ,9 ,4 ,3 ,4 ,5 ,9 ,9 ,2 ,3,9 ,8 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,8 ,7 ,9 ,9 ,7 ,8 ,9 ,2 ,3 ,4 ,8 ,9 ,9 ,9 ,6 ,4 ,4 ,6 ,4 ,5 ,6 ,8 ,8 ,9 ,3 ,5 ,4 ,5 ,9 ,7 ,5 ,4 ,3 ,2 ,3 ,4 ,5 ,7 ,9 ,8 ,7 ,8 ,9 ,6 ,5 ,8 ,9 ,9 ,7 ,8 ,9 ,3 ,4 ,9 ,8 ,7 ,4 ,7 ,9 ,8 ,9 ,9 ,8 ,6 ,9 ,3 ,4 ,5 ,9 ,6 ,5 ,4 ,2 ,3 ,9 ,8 ,8 ,7 ,9 ,8 ,9 ,9 ,1 ,2 ,9 ,2 ,1 ,0 ,1,9 ,7 ,5 ,6 ,7 ,9 ,9 ,9 ,8 ,7 ,9 ,9 ,8 ,9 ,6 ,6 ,7 ,8 ,9 ,5 ,5 ,6 ,7 ,9 ,8 ,7 ,6 ,7 ,8 ,5 ,6 ,7 ,9 ,9 ,3 ,2 ,2 ,3 ,9 ,8 ,7 ,6 ,7 ,4 ,3 ,4 ,5 ,9 ,8 ,9 ,9 ,6 ,9 ,8 ,7 ,6 ,7 ,9 ,8 ,6 ,7 ,8 ,9 ,5 ,6 ,9 ,9 ,3 ,5 ,6 ,7 ,9 ,8 ,7 ,5 ,8 ,9 ,9 ,6 ,9 ,8 ,7 ,5 ,5 ,4 ,9 ,7 ,7 ,6 ,5 ,7 ,9 ,8 ,9 ,9 ,8 ,9 ,2 ,1 ,2,6 ,8 ,4 ,5 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,8 ,9 ,6 ,5 ,5 ,6 ,7 ,8 ,9 ,6 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,9 ,7 ,8 ,9 ,9 ,9 ,0 ,1 ,4 ,5 ,9 ,8 ,7 ,8 ,8 ,7 ,5 ,6 ,9 ,9 ,8 ,8 ,5 ,9 ,9 ,8 ,7 ,9 ,8 ,7 ,5 ,6 ,7 ,8 ,9 ,8 ,9 ,8 ,7 ,6 ,9 ,9 ,9 ,7 ,6 ,4 ,6 ,8 ,8 ,9 ,9 ,9 ,8 ,6 ,9 ,9 ,8 ,6 ,6 ,5 ,4 ,5 ,9 ,7 ,6 ,8 ,7 ,8 ,9 ,4 ,3,5 ,4 ,3 ,4 ,6 ,7 ,7 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,4 ,8 ,9 ,9 ,7 ,8 ,9 ,7 ,8 ,9 ,8 ,9 ,2 ,9 ,8 ,9 ,9 ,8 ,8 ,9 ,2 ,3 ,4 ,7 ,9 ,8 ,9 ,9 ,8 ,6 ,9 ,8 ,8 ,6 ,7 ,4 ,8 ,9 ,9 ,9 ,9 ,9 ,3 ,4 ,8 ,8 ,9 ,8 ,9 ,8 ,9 ,8 ,9 ,8 ,7 ,8 ,5 ,4 ,2 ,5 ,6 ,7 ,7 ,9 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,4 ,4 ,3 ,9 ,8 ,9 ,5 ,6 ,5 ,7 ,8 ,9 ,5,1 ,0 ,1 ,2 ,3 ,4 ,6 ,8 ,9 ,7 ,9 ,9 ,8 ,6 ,7 ,4 ,5 ,6 ,8 ,9 ,8 ,9 ,5 ,6 ,9 ,5 ,9 ,2 ,1 ,2 ,9 ,5 ,5 ,6 ,7 ,8 ,9 ,4 ,5 ,6 ,7 ,9 ,6 ,7 ,9 ,9 ,8 ,7 ,6 ,5 ,3 ,2 ,7 ,8 ,9 ,9 ,9 ,3 ,2 ,0 ,1 ,9 ,8 ,7 ,8 ,7 ,8 ,9 ,9 ,7 ,6 ,5 ,4 ,3 ,0 ,4 ,5 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,5 ,4 ,3 ,2 ,1 ,2 ,9 ,7 ,5 ,4 ,3 ,4 ,5 ,6 ,9 ,9,2 ,1 ,2 ,9 ,5 ,7 ,8 ,9 ,5 ,6 ,7 ,9 ,8 ,7 ,8 ,5 ,6 ,7 ,9 ,3 ,9 ,2 ,3 ,9 ,8 ,4 ,3 ,1 ,0 ,1 ,2 ,3 ,4 ,5 ,9 ,9 ,7 ,5 ,7 ,9 ,9 ,8 ,5 ,6 ,8 ,9 ,9 ,6 ,5 ,3 ,2 ,1 ,6 ,7 ,9 ,9 ,8 ,7 ,5 ,1 ,2 ,9 ,8 ,6 ,7 ,6 ,7 ,8 ,9 ,8 ,7 ,4 ,3 ,2 ,1 ,2 ,3 ,4 ,7 ,9 ,9 ,9 ,9 ,8 ,6 ,5 ,7 ,3 ,0 ,9 ,8 ,9 ,7 ,5 ,2 ,1 ,2 ,6 ,8 ,8,3 ,2 ,9 ,8 ,9 ,8 ,9 ,2 ,4 ,5 ,6 ,7 ,9 ,8 ,9 ,8 ,7 ,8 ,9 ,1 ,0 ,1 ,9 ,8 ,7 ,5 ,4 ,9 ,1 ,2 ,4 ,4 ,5 ,9 ,8 ,9 ,9 ,9 ,9 ,8 ,7 ,6 ,4 ,5 ,6 ,9 ,8 ,7 ,9 ,4 ,3 ,3 ,5 ,9 ,8 ,9 ,9 ,8 ,4 ,3 ,4 ,9 ,7 ,5 ,8 ,5 ,9 ,9 ,9 ,9 ,8 ,5 ,6 ,4 ,2 ,3 ,4 ,6 ,7 ,8 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,0 ,3 ,5 ,6 ,7,4 ,9 ,8 ,7 ,8 ,9 ,2 ,1 ,3 ,4 ,5 ,9 ,8 ,9 ,8 ,9 ,8 ,9 ,8 ,9 ,2 ,4 ,5 ,9 ,7 ,6 ,9 ,8 ,9 ,3 ,9 ,5 ,9 ,8 ,7 ,6 ,8 ,8 ,9 ,9 ,8 ,7 ,8 ,6 ,9 ,8 ,9 ,9 ,8 ,9 ,4 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,5 ,4 ,9 ,8 ,6 ,4 ,3 ,4 ,8 ,9 ,8 ,9 ,9 ,9 ,8 ,6 ,4 ,4 ,5 ,6 ,8 ,9 ,9 ,7 ,8 ,9 ,8 ,8 ,6 ,5 ,6 ,9 ,9 ,9 ,6 ,5 ,2 ,1 ,2 ,4 ,5 ,6,9 ,8 ,7 ,6 ,9 ,8 ,9 ,0 ,1 ,2 ,9 ,8 ,7 ,6 ,6 ,5 ,9 ,6 ,7 ,8 ,9 ,6 ,6 ,9 ,8 ,9 ,8 ,7 ,8 ,9 ,8 ,6 ,9 ,8 ,6 ,5 ,6 ,7 ,8 ,9 ,9 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,7 ,9 ,5 ,6 ,7 ,7 ,8 ,9 ,8 ,9 ,9 ,9 ,7 ,9 ,5 ,5 ,2 ,8 ,7 ,6 ,7 ,8 ,9 ,9 ,9 ,7 ,5 ,7 ,6 ,8 ,9 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,7 ,6 ,7 ,9 ,9 ,8 ,6 ,4 ,3 ,4 ,3 ,5 ,6 ,7,9 ,7 ,6 ,5 ,6 ,7 ,8 ,9 ,2 ,4 ,5 ,9 ,8 ,5 ,7 ,4 ,4 ,5 ,6 ,9 ,9 ,8 ,7 ,9 ,9 ,7 ,5 ,6 ,7 ,8 ,9 ,7 ,9 ,8 ,6 ,3 ,8 ,9 ,9 ,8 ,7 ,9 ,9 ,9 ,8 ,6 ,9 ,8 ,6 ,8 ,9 ,9 ,8 ,8 ,9 ,6 ,7 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,1 ,2 ,4 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,6 ,8 ,7 ,9 ,4 ,3 ,4 ,7 ,8 ,9 ,3 ,2 ,9 ,9 ,8 ,9 ,9 ,8 ,7 ,5 ,4 ,5 ,6 ,8 ,7 ,8,8 ,9 ,5 ,4 ,6 ,8 ,9 ,6 ,3 ,4 ,9 ,9 ,9 ,4 ,3 ,2 ,3 ,4 ,7 ,8 ,9 ,9 ,8 ,9 ,8 ,9 ,4 ,5 ,8 ,9 ,9 ,9 ,0 ,9 ,5 ,4 ,5 ,9 ,9 ,9 ,6 ,9 ,8 ,7 ,6 ,5 ,4 ,5 ,5 ,7 ,9 ,8 ,9 ,9 ,7 ,5 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,2 ,0 ,1 ,3 ,4 ,7 ,8 ,9 ,3 ,9 ,9 ,8 ,9 ,8 ,9 ,4 ,2 ,3 ,6 ,7 ,8 ,9 ,3 ,4 ,5 ,9 ,7 ,6 ,9 ,9 ,6 ,5 ,6 ,7 ,9 ,8 ,9,7 ,6 ,5 ,3 ,4 ,9 ,9 ,5 ,4 ,9 ,8 ,9 ,8 ,9 ,2 ,1 ,2 ,5 ,8 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,3 ,4 ,9 ,7 ,8 ,9 ,1 ,9 ,6 ,9 ,6 ,7 ,8 ,9 ,5 ,6 ,9 ,6 ,5 ,4 ,3 ,4 ,4 ,5 ,6 ,7 ,9 ,9 ,6 ,4 ,3 ,9 ,8 ,9 ,6 ,5 ,6 ,3 ,1 ,2 ,3 ,5 ,9 ,9 ,0 ,2 ,3 ,5 ,9 ,8 ,9 ,4 ,3 ,1 ,4 ,5 ,6 ,7 ,8 ,9 ,6 ,7 ,8 ,9 ,5 ,9 ,8 ,7 ,6 ,9 ,8 ,9 ,9 ,9,6 ,5 ,3 ,2 ,3 ,6 ,8 ,9 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,6 ,5 ,2 ,1 ,4 ,6 ,7 ,8 ,9 ,8 ,9 ,8 ,9 ,8 ,9 ,3 ,4 ,9 ,8 ,7 ,4 ,3 ,2 ,4 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,5 ,4 ,5 ,9 ,8 ,7 ,8 ,7 ,9 ,2 ,3 ,4 ,7 ,8 ,9 ,1 ,4 ,6 ,9 ,8 ,7 ,6 ,5 ,4 ,2 ,3 ,5 ,9 ,8 ,9 ,8 ,7 ,9 ,9 ,5 ,4 ,5 ,9 ,9 ,8 ,9 ,9 ,5 ,4 ,9,8 ,7 ,4 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,7 ,5 ,9 ,7 ,8 ,9 ,5 ,5 ,7 ,8 ,9 ,9 ,8 ,6 ,5 ,4 ,1 ,0 ,3 ,5 ,6 ,9 ,8 ,7 ,6 ,7 ,8 ,9 ,5 ,4 ,9 ,8 ,7 ,6 ,5 ,2 ,1 ,0 ,2 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,5 ,6 ,7 ,9 ,8 ,9 ,9 ,5 ,3 ,6 ,5 ,6 ,9 ,3 ,2 ,3 ,4 ,5 ,9 ,8 ,9 ,6 ,4 ,3 ,4 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,8 ,9 ,3 ,4 ,3 ,4 ,9 ,9 ,9 ,6 ,9 ,8,7 ,6 ,5 ,6 ,5 ,8 ,7 ,9 ,9 ,7 ,6 ,4 ,5 ,6 ,7 ,8 ,9 ,6 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,3 ,2 ,1 ,2 ,6 ,9 ,8 ,7 ,6 ,5 ,6 ,9 ,8 ,6 ,5 ,6 ,9 ,8 ,8 ,4 ,3 ,2 ,1 ,3 ,6 ,7 ,8 ,9 ,2 ,9 ,8 ,7 ,7 ,8 ,9 ,9 ,8 ,7 ,6 ,8 ,7 ,6 ,8 ,9 ,5 ,3 ,9 ,7 ,6 ,9 ,9 ,8 ,9 ,5 ,4 ,5 ,6 ,7 ,8 ,9 ,3 ,9 ,8 ,7 ,3 ,2 ,1 ,2 ,9 ,8 ,8 ,8 ,9 ,6 ,7,8 ,7 ,6 ,7 ,8 ,9 ,9 ,9 ,8 ,7 ,6 ,5 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,9 ,7 ,9 ,7 ,6 ,5 ,4 ,3 ,3 ,3 ,4 ,5 ,9 ,8 ,8 ,7 ,7 ,8 ,9 ,7 ,8 ,7 ,8 ,9 ,9 ,5 ,6 ,5 ,2 ,3 ,7 ,9 ,9 ,5 ,4 ,5 ,9 ,8 ,8 ,9 ,5 ,4 ,9 ,8 ,7 ,9 ,9 ,9 ,9 ,7 ,6 ,9 ,8 ,9 ,9 ,8 ,8 ,7 ,9 ,6 ,5 ,6 ,8 ,8 ,9 ,0 ,2 ,9 ,7 ,6 ,4 ,3 ,4 ,9 ,8 ,7 ,6 ,7 ,4 ,5 ,6,9 ,8 ,7 ,8 ,9 ,9 ,9 ,8 ,9 ,8 ,7 ,6 ,7 ,9 ,9 ,9 ,9 ,8 ,9 ,5 ,6 ,8 ,9 ,8 ,6 ,5 ,4 ,4 ,5 ,7 ,8 ,9 ,9 ,9 ,8 ,8 ,9 ,9 ,8 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,3 ,4 ,9 ,9 ,9 ,7 ,9 ,6 ,9 ,9 ,9 ,3 ,1 ,3 ,3 ,9 ,9 ,9 ,8 ,7 ,9 ,8 ,7 ,9 ,7 ,8 ,9 ,7 ,9 ,6 ,8 ,9 ,9 ,7 ,9 ,9 ,9 ,1 ,2 ,9 ,8 ,7 ,6 ,4 ,9 ,8 ,9 ,8 ,5 ,4 ,3 ,2 ,1,4 ,9 ,8 ,9 ,3 ,9 ,8 ,7 ,9 ,9 ,8 ,7 ,9 ,8 ,8 ,9 ,9 ,9 ,5 ,4 ,6 ,7 ,8 ,9 ,7 ,6 ,5 ,5 ,6 ,7 ,8 ,9 ,3 ,3 ,9 ,9 ,1 ,2 ,9 ,6 ,9 ,2 ,9 ,8 ,7 ,6 ,6 ,4 ,5 ,6 ,7 ,8 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,0 ,1 ,2 ,3 ,9 ,8 ,7 ,6 ,8 ,9 ,9 ,8 ,6 ,7 ,4 ,6 ,4 ,5 ,7 ,8 ,8 ,9 ,9 ,9 ,8 ,9 ,9 ,9 ,9 ,8 ,7 ,9 ,8 ,7 ,8 ,9 ,6 ,5 ,4 ,5 ,2,5 ,7 ,9 ,4 ,2 ,1 ,9 ,6 ,5 ,4 ,9 ,8 ,9 ,6 ,7 ,8 ,9 ,7 ,6 ,3 ,4 ,5 ,8 ,9 ,8 ,7 ,6 ,6 ,9 ,8 ,9 ,3 ,2 ,1 ,3 ,9 ,0 ,9 ,6 ,5 ,4 ,1 ,0 ,9 ,8 ,9 ,8 ,7 ,6 ,9 ,8 ,9 ,6 ,6 ,7 ,9 ,8 ,8 ,2 ,1 ,3 ,3 ,9 ,8 ,9 ,9 ,5 ,6 ,7 ,9 ,9 ,5 ,4 ,3 ,4 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,6 ,7 ,8 ,8 ,7 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,9 ,8 ,7 ,6 ,7 ,4,7 ,9 ,8 ,4 ,3 ,9 ,8 ,7 ,6 ,3 ,4 ,9 ,4 ,5 ,6 ,7 ,8 ,9 ,8 ,6 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,9 ,9 ,9 ,5 ,4 ,9 ,0 ,9 ,8 ,9 ,8 ,9 ,4 ,3 ,2 ,1 ,2 ,9 ,7 ,9 ,8 ,7 ,8 ,9 ,9 ,5 ,4 ,5 ,5 ,9 ,9 ,7 ,5 ,4 ,9 ,7 ,7 ,8 ,9 ,4 ,5 ,6 ,9 ,8 ,6 ,5 ,2 ,1 ,2 ,3 ,6 ,7 ,8 ,9 ,6 ,5 ,6 ,4 ,7 ,6 ,7 ,9 ,9 ,9 ,9 ,5 ,4 ,5 ,9 ,8 ,8 ,9 ,5,9 ,8 ,7 ,5 ,4 ,5 ,9 ,9 ,8 ,2 ,1 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,8 ,8 ,9 ,5 ,9 ,9 ,8 ,9 ,7 ,6 ,9 ,8 ,9 ,8 ,7 ,9 ,7 ,8 ,9 ,4 ,3 ,2 ,9 ,9 ,6 ,7 ,9 ,8 ,9 ,7 ,8 ,9 ,2 ,3 ,4 ,9 ,8 ,7 ,6 ,9 ,8 ,6 ,5 ,3 ,2 ,3 ,4 ,9 ,8 ,7 ,6 ,5 ,4 ,2 ,3 ,4 ,9 ,8 ,9 ,9 ,8 ,3 ,2 ,3 ,5 ,5 ,6 ,7 ,8 ,9 ,8 ,6 ,3 ,9 ,8 ,9 ,9 ,7 ,6,6 ,9 ,9 ,6 ,5 ,6 ,9 ,9 ,7 ,1 ,0 ,1 ,2 ,3 ,5 ,8 ,9 ,9 ,7 ,9 ,9 ,9 ,9 ,3 ,4 ,9 ,8 ,7 ,8 ,9 ,9 ,8 ,7 ,6 ,5 ,6 ,5 ,6 ,7 ,8 ,9 ,4 ,9 ,8 ,7 ,5 ,4 ,3 ,9 ,5 ,6 ,9 ,2 ,1 ,2 ,4 ,5 ,9 ,8 ,7 ,9 ,9 ,7 ,3 ,2 ,1 ,2 ,5 ,4 ,9 ,8 ,7 ,6 ,4 ,3 ,4 ,5 ,6 ,9 ,6 ,5 ,7 ,2 ,1 ,2 ,3 ,4 ,6 ,9 ,9 ,9 ,8 ,7 ,2 ,9 ,7 ,5 ,4 ,9 ,8,4 ,9 ,8 ,7 ,6 ,9 ,8 ,7 ,6 ,3 ,1 ,2 ,3 ,4 ,5 ,7 ,8 ,9 ,5 ,4 ,3 ,2 ,1 ,2 ,9 ,8 ,9 ,6 ,7 ,9 ,8 ,7 ,6 ,5 ,4 ,8 ,4 ,5 ,7 ,9 ,8 ,9 ,8 ,7 ,6 ,4 ,3 ,2 ,3 ,4 ,5 ,9 ,1 ,0 ,3 ,4 ,5 ,6 ,9 ,9 ,8 ,7 ,6 ,4 ,3 ,0 ,1 ,2 ,3 ,4 ,9 ,9 ,6 ,5 ,4 ,5 ,8 ,7 ,9 ,5 ,4 ,3 ,1 ,0 ,1 ,8 ,6 ,7 ,8 ,9 ,6 ,9 ,8 ,9 ,8 ,5 ,4 ,3 ,2 ,9,3 ,4 ,9 ,8 ,9 ,8 ,7 ,6 ,5 ,4 ,2 ,3 ,5 ,7 ,6 ,7 ,9 ,9 ,6 ,3 ,2 ,1 ,0 ,9 ,8 ,7 ,6 ,5 ,7 ,8 ,9 ,9 ,9 ,4 ,3 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,8 ,7 ,1 ,0 ,1 ,2 ,3 ,4 ,8 ,9 ,1 ,4 ,5 ,7 ,7 ,8 ,9 ,9 ,8 ,7 ,8 ,4 ,1 ,2 ,3 ,4 ,6 ,9 ,8 ,7 ,6 ,5 ,6 ,9 ,8 ,9 ,7 ,5 ,4 ,5 ,6 ,3 ,7 ,7 ,8 ,9 ,6 ,5 ,4 ,9 ,8 ,7 ,5 ,4 ,3 ,1 ,2,2 ,1 ,0 ,9 ,9 ,9 ,8 ,7 ,6 ,7 ,3 ,4 ,6 ,8 ,7 ,8 ,9 ,7 ,6 ,5 ,4 ,3 ,4 ,5 ,9 ,4 ,3 ,4 ,6 ,7 ,9 ,8 ,7 ,6 ,1 ,0 ,7 ,6 ,8 ,9 ,8 ,9 ,6 ,5 ,3 ,2 ,4 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,9 ,7 ,8 ,9 ,9 ,1 ,3 ,9 ,8 ,7 ,5 ,2 ,3 ,4 ,5 ,7 ,8 ,9 ,9 ,7 ,6 ,7 ,9 ,9 ,9 ,9 ,8 ,6 ,7 ,7 ,4 ,6 ,8 ,9 ,7 ,6 ,4 ,3 ,4 ,9 ,9 ,6 ,2 ,1 ,0 ,1]

var data = [[Int]](repeating: [Int](repeating: 0, count: 100), count: 100)
var k = 0
var lowPoints = [(i: Int, j: Int)]()


for i in 0..<100{
  for j in 0..<100{
    data[i][j] = input[k]
    k += 1
  }
}

//part 1 - check if it is the lowest point
var sumRiskLevels = 0

for i in 0..<100{
  for j in 0..<100{
  if i == 0 && j == 0{
      if  data[i][j] < data[i+1][j]  && data[i][j] < data[i][j+1] {
          sumRiskLevels += data[i][j]
          sumRiskLevels += 1
          lowPoints.append((i,j))
          }
      }
  
  else if i == 0 && j == 99 {
      if data[i][j] < data[i+1][j] && data[i][j] < data[i][j-1]  {
          sumRiskLevels += data[i][j]
          sumRiskLevels += 1
          lowPoints.append((i,j))
      }
  }
  else if i == 99 && j == 0 {
      if data[i][j] < data[i-1][j] && data[i][j] < data[i][j+1] {
          sumRiskLevels += data[i][j]
          sumRiskLevels += 1
          lowPoints.append((i,j))
          
      }
  }
  else if i == 99 && j == 99 {
      if data[i][j] < data[i-1][j]  && data[i][j] < data[i][j-1]  {
          sumRiskLevels += data[i][j]
          sumRiskLevels += 1
          lowPoints.append((i,j))
      }
  }
  
  else  if i == 0 {
     if data[i][j] < data[i+1][j] && data[i][j] < data[i][j-1] && data[i][j] < data[i][j+1] {
          sumRiskLevels += data[i][j]
          sumRiskLevels += 1
         lowPoints.append((i,j))
      }
    }
    
    else if i == 99 {
     if data[i][j] < data[i-1][j]  && data[i][j] < data[i][j-1] && data[i][j] < data[i][j+1] {
          sumRiskLevels += data[i][j]
          sumRiskLevels += 1
         lowPoints.append((i,j))
      }
    }
    
    else if j == 0 {
     if data[i][j] < data[i-1][j] && data[i][j] < data[i+1][j] && data[i][j] < data[i][j+1] {
          sumRiskLevels += data[i][j]
          sumRiskLevels += 1
         lowPoints.append((i,j))
      }
    }
    
    else if j == 99 {
     if data[i][j] < data[i-1][j] && data[i][j] < data[i+1][j] && data[i][j] < data[i][j-1] {
          sumRiskLevels += data[i][j]
          sumRiskLevels += 1
         lowPoints.append((i,j))
      }
    }
    
    else if data[i][j] < data[i-1][j] && data[i][j] < data[i+1][j] && data[i][j] < data[i][j-1] && data[i][j] < data[i][j+1] {
          sumRiskLevels += data[i][j]
          sumRiskLevels += 1
        lowPoints.append((i,j))
      }
  }
  }

print(sumRiskLevels)

//part2
func checkAbove(i: Int, j: Int){
    let x = i + 1
    if x >= 0 && x <= 99 && j >= 0 && j <= 99 && data2[x][j] != 9 && data2[x][j] != -1 {
        data2[x][j] = -1
        basinSize += 1
        //call above, left, right
        checkAbove(i: x, j: j)
        checkLeft(i: x, j: j)
        checkRight(i: x, j: j)
    }
}

func checkBelow(i: Int, j: Int){
    let x = i - 1

    if x >= 0 && x <= 99 && j >= 0 && j <= 99 && data2[x][j] != 9 && data2[x][j] != -1 {
        data2[x][j] = -1
        basinSize += 1
        
        //call below, left, right
        checkBelow(i: x, j: j)
        checkLeft(i: x, j: j)
        checkRight(i: x, j: j)
    }
}

func checkLeft(i: Int, j: Int){
    let y = j - 1
    if i >= 0 && i <= 99 && y >= 0 && y <= 99 && data2[i][y] != 9 && data2[i][y] != -1 {
        data2[i][y] = -1
        basinSize += 1
        //call above, below, left
        checkAbove(i: i, j: y)
        checkBelow(i: i, j: y)
        checkLeft(i: i, j: y)
    }
}

func checkRight(i: Int, j: Int){
    let y = j + 1
    if i >= 0 && i <= 99 && y >= 0 && y <= 99 && data2[i][y] != 9 && data2[i][y] != -1 {
        data2[i][y] = -1
        basinSize += 1
        //call above, below, right
        checkAbove(i: i, j: y)
        checkBelow(i: i, j: y)
        checkRight(i: i, j: y)
    }
}

var arrayOfBasins = [Int]()
var basinSize = 1
var data2 = data

for coordinates in lowPoints{
    data2 = data
    let i = coordinates.i
    let j = coordinates.j
    
    // for a way to know i have already counted that entry, the numbers will be attributed the value -1
    data2[i][j] = -1
    basinSize = 1
    checkAbove(i: i, j: j)
    checkBelow(i: i, j: j)
    checkLeft(i: i, j: j)
    checkRight(i: i, j: j)
    
    arrayOfBasins.append(basinSize)
    
}

arrayOfBasins.sort()
arrayOfBasins.reverse()

let result2 = arrayOfBasins[0]*arrayOfBasins[1]*arrayOfBasins[2]

print(result2)
//902880