#���տ�ִ���ļ�
BIN = canbus 
#�ƶ�ͷ�ļ���Ŀ¼
INC = -Iinclude/
#ָ��Դ�ļ���wildcardΪ����������Ϊ�г�����.c��β���ļ�
SRC = $(wildcard *.c)
#ָ��obj�ļ���patsubstΪ��������������������Ϊ������SRC�е�.c��β���ļ��滻Ϊ.o��β
OBJS = $(patsubst %.c,%.o,$(SRC))
#�ƶ�������
CC = gcc
#����ѡ��
CFLAGS = $(INC) -g
#Ŀ�����������е�.o�ļ�
$(BIN):$(OBJS)
		$(CC) -lpthread $^ -o $@ 	
clean:
		rm $(OBJS) $(BIN)