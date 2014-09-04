.class public Lcom/qihoopp/framework/ErrorLogUtil;
.super Ljava/lang/Object;
.source "ErrorLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;,
        Lcom/qihoopp/framework/ErrorLogUtil$FileManager;
    }
.end annotation


# static fields
.field public static BASE_NAME:Ljava/lang/String; = null

.field public static NAME:Ljava/lang/String; = null

.field public static final PATH:Ljava/lang/String; = null

.field public static final send_time:Ljava/lang/String; = "SEND_TIME"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private URLString:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

.field private mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

.field private mParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CrashCatcher/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoopp/framework/ErrorLogUtil;->PATH:Ljava/lang/String;

    .line 43
    const-string v0, "ErrorLog"

    sput-object v0, Lcom/qihoopp/framework/ErrorLogUtil;->BASE_NAME:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/qihoopp/framework/ErrorLogUtil;->BASE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/qihoopp/framework/ErrorLogUtil;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "http://beta.360pay.cn/upload/do"

    iput-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil;->URLString:Ljava/lang/String;

    .line 46
    const-string v0, "errorLogUtil"

    iput-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil;->TAG:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    .line 48
    iput-object v1, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mParam:Ljava/util/HashMap;

    .line 49
    iput-object v1, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    .line 52
    iput-object p1, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private initManager()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    sget-object v1, Lcom/qihoopp/framework/ErrorLogUtil;->PATH:Ljava/lang/String;

    sget-object v2, Lcom/qihoopp/framework/ErrorLogUtil;->NAME:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;-><init>(Lcom/qihoopp/framework/ErrorLogUtil;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    .line 61
    :cond_0
    return-void
.end method

.method private initParam(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mParam:Ljava/util/HashMap;

    .line 85
    return-void
.end method


# virtual methods
.method public deleteFile()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, result:Z
    iget-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    if-eqz v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    invoke-virtual {v2}, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->deleteFile()Z

    move-result v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    const/4 v1, 0x1

    .line 298
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    const-string v2, "errorLogUtil"

    const-string v3, "deleteFile, mFileManager == null, failed."

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteFiles()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, result:Z
    iget-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    invoke-virtual {v2}, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->deleteFiles()Z

    move-result v0

    .line 305
    if-eqz v0, :cond_0

    .line 306
    const/4 v1, 0x1

    .line 312
    :cond_0
    :goto_0
    return v1

    .line 311
    :cond_1
    const-string v2, "errorLogUtil"

    const-string v3, "deleteFile, mFileManager == null, failed."

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpLog(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 3
    .parameter "log"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 124
    if-eqz p1, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/qihoopp/framework/ErrorLogUtil;->initManager()V

    .line 126
    invoke-direct {p0, p2}, Lcom/qihoopp/framework/ErrorLogUtil;->initParam(Ljava/util/HashMap;)V

    .line 127
    iget-object v1, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    invoke-virtual {v1, p1, p2}, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->dumpSingleLine(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const-string v1, "errorLogUtil"

    const-string v2, "dumpLog, dumpSingleLine failed!"

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return v0

    .line 131
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const-string v1, "errorLogUtil"

    const-string v2, "dumpLog, ex is null!"

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpLog(Ljava/lang/Throwable;Ljava/util/HashMap;)Z
    .locals 8
    .parameter "ex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 92
    if-eqz p1, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/qihoopp/framework/ErrorLogUtil;->initManager()V

    .line 94
    invoke-direct {p0, p2}, Lcom/qihoopp/framework/ErrorLogUtil;->initParam(Ljava/util/HashMap;)V

    .line 95
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v3, sb:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 97
    .local v4, writer:Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 98
    .local v1, printWriter:Ljava/io/PrintWriter;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 100
    .local v0, cause:Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 105
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v6, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->dumpSingleLine(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 108
    const-string v6, "errorLogUtil"

    const-string v7, "dumpLog, dumpSingleLine failed!"

    invoke-static {v6, v7}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #printWriter:Ljava/io/PrintWriter;
    .end local v2           #result:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #writer:Ljava/io/Writer;
    :goto_1
    return v5

    .line 111
    .restart local v0       #cause:Ljava/lang/Throwable;
    .restart local v1       #printWriter:Ljava/io/PrintWriter;
    .restart local v2       #result:Ljava/lang/String;
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    .restart local v4       #writer:Ljava/io/Writer;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 114
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #printWriter:Ljava/io/PrintWriter;
    .end local v2           #result:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #writer:Ljava/io/Writer;
    :cond_2
    const-string v6, "errorLogUtil"

    const-string v7, "dumpLog, ex is null!"

    invoke-static {v6, v7}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getDuration()I
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    .line 140
    const/4 v6, 0x0

    .line 177
    .local v6, result:I
    iget-object v10, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 180
    .local v9, sp:Landroid/content/SharedPreferences;
    const-string v10, "SEND_TIME"

    const-string v11, "0"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, last_send_time:Ljava/lang/String;
    const-string v10, "0"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 183
    .local v2, dateTaken_first:J
    div-long v7, v2, v12

    .line 184
    .local v7, seconds:J
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 185
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "SEND_TIME"

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    const/4 v10, 0x0

    .line 194
    .end local v2           #dateTaken_first:J
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v10

    .line 190
    .end local v7           #seconds:J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 191
    .local v0, dateTaken:J
    div-long v7, v0, v12

    .line 192
    .restart local v7       #seconds:J
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long v10, v7, v10

    long-to-int v6, v10

    move v10, v6

    .line 194
    goto :goto_0
.end method

.method public ifLogFileExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, dir:Ljava/io/File;
    const/4 v1, 0x0

    .line 321
    .local v1, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 323
    const-string v3, "errorLogUtil"

    const-string v4, "ifLogFileExist, dir not exist."

    invoke-static {v3, v4}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_0
    return v2

    .line 326
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    const-string v3, "errorLogUtil"

    const-string v4, "ifLogFileExist, file not exist."

    invoke-static {v3, v4}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_1
    const-string v2, "errorLogUtil"

    const-string v3, "ifLogFileExist, file exist."

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public initFilesManager()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    sget-object v1, Lcom/qihoopp/framework/ErrorLogUtil;->PATH:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;-><init>(Lcom/qihoopp/framework/ErrorLogUtil;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    .line 69
    :cond_0
    return-void
.end method

.method public readFile()V
    .locals 3

    .prologue
    .line 284
    const-string v0, "errorLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readFile, head is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    invoke-virtual {v2}, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->readHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "errorLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readFile, errorlog is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    invoke-virtual {v2}, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->readErrorLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public sendFile()Z
    .locals 10

    .prologue
    .line 256
    const/4 v5, 0x0

    .line 257
    .local v5, result:Z
    invoke-direct {p0}, Lcom/qihoopp/framework/ErrorLogUtil;->initManager()V

    .line 260
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 261
    .local v0, dateTaken:J
    new-instance v4, Lcom/qihoopp/framework/HttpSend;

    invoke-direct {v4}, Lcom/qihoopp/framework/HttpSend;-><init>()V

    .line 262
    .local v4, hSend:Lcom/qihoopp/framework/HttpSend;
    new-instance v3, Lcom/qihoopp/framework/FormFile;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    invoke-virtual {v7}, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFileManager:Lcom/qihoopp/framework/ErrorLogUtil$FileManager;

    invoke-virtual {v7}, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->getFile()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/qihoopp/framework/FormFile;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .local v3, formFile:Lcom/qihoopp/framework/FormFile;
    iget-object v6, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/qihoopp/framework/HttpSend;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 266
    iget-object v6, p0, Lcom/qihoopp/framework/ErrorLogUtil;->URLString:Ljava/lang/String;

    iget-object v7, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mParam:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v7, v3}, Lcom/qihoopp/framework/HttpSend;->post(Ljava/lang/String;Ljava/util/Map;Lcom/qihoopp/framework/FormFile;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 272
    .end local v0           #dateTaken:J
    .end local v3           #formFile:Lcom/qihoopp/framework/FormFile;
    .end local v4           #hSend:Lcom/qihoopp/framework/HttpSend;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 273
    const-string v6, "errorLogUtil"

    const-string v7, "sendFile success."

    invoke-static {v6, v7}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_1
    return v5

    .line 268
    :catch_0
    move-exception v2

    .line 270
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 275
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const-string v6, "errorLogUtil"

    const-string v7, "sendFile failed."

    invoke-static {v6, v7}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public sendFiles(Ljava/util/HashMap;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 206
    .local v8, result:Z
    invoke-direct {p0, p1}, Lcom/qihoopp/framework/ErrorLogUtil;->initParam(Ljava/util/HashMap;)V

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/qihoopp/framework/ErrorLogUtil;->updateFilesManager()V

    .line 210
    new-instance v5, Lcom/qihoopp/framework/HttpSend;

    invoke-direct {v5}, Lcom/qihoopp/framework/HttpSend;-><init>()V

    .line 211
    .local v5, hSend:Lcom/qihoopp/framework/HttpSend;
    const/4 v7, 0x0

    .line 212
    .local v7, length:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v9, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    invoke-virtual {v9}, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->getFiles()[Ljava/io/File;

    move-result-object v9

    array-length v9, v9

    if-ge v6, v9, :cond_1

    .line 213
    iget-object v9, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    invoke-virtual {v9}, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->getFiles()[Ljava/io/File;

    move-result-object v9

    aget-object v9, v9, v6

    if-eqz v9, :cond_0

    .line 214
    add-int/lit8 v7, v7, 0x1

    .line 212
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const-string v9, "errorLogUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendFiles, files num are : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-array v4, v7, [Lcom/qihoopp/framework/FormFile;

    .line 219
    .local v4, formFiles:[Lcom/qihoopp/framework/FormFile;
    const/4 v3, 0x0

    .line 220
    .local v3, file_num:I
    const/4 v6, 0x0

    :goto_1
    array-length v9, v4

    if-ge v6, v9, :cond_3

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 223
    .local v0, dateTaken:J
    const-string v9, "errorLogUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendFiles, dateTaken is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_2
    iget-object v9, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    invoke-virtual {v9}, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->getFiles()[Ljava/io/File;

    move-result-object v9

    aget-object v9, v9, v3

    if-nez v9, :cond_2

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 228
    :cond_2
    const-string v9, "errorLogUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendFiles, file_num is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v9, Lcom/qihoopp/framework/FormFile;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    invoke-virtual {v11}, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->getFilesName()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    invoke-virtual {v11}, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->getFiles()[Ljava/io/File;

    move-result-object v11

    aget-object v11, v11, v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/qihoopp/framework/FormFile;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v4, v6

    .line 232
    add-int/lit8 v3, v3, 0x1

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 234
    .end local v0           #dateTaken:J
    :cond_3
    iget-object v9, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Lcom/qihoopp/framework/HttpSend;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 235
    iget-object v9, p0, Lcom/qihoopp/framework/ErrorLogUtil;->URLString:Ljava/lang/String;

    iget-object v10, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mParam:Ljava/util/HashMap;

    invoke-virtual {v5, v9, v10, v4}, Lcom/qihoopp/framework/HttpSend;->post(Ljava/lang/String;Ljava/util/Map;[Lcom/qihoopp/framework/FormFile;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 241
    .end local v3           #file_num:I
    .end local v4           #formFiles:[Lcom/qihoopp/framework/FormFile;
    .end local v5           #hSend:Lcom/qihoopp/framework/HttpSend;
    .end local v6           #i:I
    .end local v7           #length:I
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 242
    const-string v9, "errorLogUtil"

    const-string v10, "sendFiles success."

    invoke-static {v9, v10}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_4
    return v8

    .line 237
    :catch_0
    move-exception v2

    .line 239
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 244
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    const-string v9, "errorLogUtil"

    const-string v10, "sendFiles failed."

    invoke-static {v9, v10}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public updateFilesManager()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil;->mFilesManager:Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;

    invoke-virtual {v0}, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->updateFilesInfo()V

    .line 74
    :cond_0
    return-void
.end method
