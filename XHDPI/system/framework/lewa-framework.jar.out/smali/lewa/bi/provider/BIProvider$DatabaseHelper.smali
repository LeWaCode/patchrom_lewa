.class Llewa/bi/provider/BIProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/bi/provider/BIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    const-string v0, "lewabi.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 78
    return-void
.end method

.method private recreateDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 141
    const-string v0, "DROP TABLE IF EXISTS appusage"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    const-string v0, "DROP TABLE IF EXISTS event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    const-string v0, "DROP TABLE IF EXISTS eventmap"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string v0, "DROP TABLE IF EXISTS devicefirst"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string v0, "DROP TABLE IF EXISTS marketinstall"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p1}, Llewa/bi/provider/BIProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 82
    const-string v0, "CREATE TABLE appusage (_id INTEGER PRIMARY KEY,appName TEXT,startTime INTEGER,drution INTEGER,time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    const-string v0, "CREATE TABLE event (_id INTEGER PRIMARY KEY,eventId TEXT,type INTEGER,label TEXT,appId TEXT,time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string v0, "CREATE TABLE eventmap (_id INTEGER PRIMARY KEY,event_id INTEGER,eventKey TEXT,EventValue TEXT,time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v0, "CREATE TABLE devicefirst (_id INTEGER PRIMARY KEY,name TEXT,id TEXT,ver TEXT,vname TEXT,md5 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v0, "CREATE TABLE marketinstall (_id INTEGER PRIMARY KEY,event TEXT,package TEXT,appName TEXT,version TEXT,path TEXT,status TEXT,netType TEXT,packageSize TEXT,clientTime INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 137
    const-string v0, "BIProvider"

    const-string v1, "onDowngrade and delete all old data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, p1}, Llewa/bi/provider/BIProvider$DatabaseHelper;->recreateDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v4, 0x4

    .line 107
    const-string v1, "BIProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v1, "BIProvider"

    const-string v2, "Destroying all old data."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    move v0, p2

    .line 112
    .local v0, ver:I
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 113
    const-string v1, "DROP TABLE IF EXISTS devicefirst"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const-string v1, "CREATE TABLE devicefirst (_id INTEGER PRIMARY KEY,name TEXT,id TEXT,ver TEXT,vname TEXT,md5 TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x3

    .line 120
    :cond_0
    if-ge v0, v4, :cond_1

    .line 121
    const-string v1, "DROP TABLE IF EXISTS marketinstall"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    const-string v1, "CREATE TABLE marketinstall (_id INTEGER PRIMARY KEY,event TEXT,package TEXT,appName TEXT,version TEXT,path TEXT,status TEXT,netType TEXT,packageSize TEXT,clientTime INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x4

    .line 129
    :cond_1
    if-eq v0, v4, :cond_2

    .line 130
    invoke-direct {p0, p1}, Llewa/bi/provider/BIProvider$DatabaseHelper;->recreateDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    :cond_2
    return-void
.end method
