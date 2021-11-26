import pymysql

def conectar():
    conn = pymysql.connect(
        host= 'localhost',
        user= 'root',
        password = '',
        database= 'consultorio',
        cursorclass= pymysql.cursors.DictCursor,
    )
    return conn