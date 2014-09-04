.class public Lcom/qihoopp/framework/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final DBG_D:Z = true

.field private static final DBG_E:Z = true

.field private static final DBG_F:Z = true

.field private static final DBG_I:Z = true

.field private static final DBG_LOG:Z = true

.field public static final DBG_THROWEXCETON:Z = true

.field public static final DBG_TOAST:Z = true

.field private static final DBG_V:Z = true

.field private static final DBG_W:Z = true

.field private static mContext:Landroid/content/Context;

.field private static mMap:Ljava/util/HashMap;
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

.field private static sDBGLevels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDBGOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/qihoopp/framework/LogUtil;->sDBGLevels:Ljava/util/HashMap;

    .line 34
    sput-object v0, Lcom/qihoopp/framework/LogUtil;->sDBGOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qihoopp/framework/LogUtil;->sDBGLevels:Ljava/util/HashMap;

    .line 39
    sget-object v0, Lcom/qihoopp/framework/LogUtil;->sDBGLevels:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "V"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/qihoopp/framework/LogUtil;->sDBGLevels:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "D"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/qihoopp/framework/LogUtil;->sDBGLevels:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "I"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/qihoopp/framework/LogUtil;->sDBGLevels:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "W"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/qihoopp/framework/LogUtil;->sDBGLevels:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/qihoopp/framework/LogUtil;->initDBGOutputStream()V

    .line 51
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 137
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 230
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 247
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    sget-object v2, Lcom/qihoopp/framework/LogUtil;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 253
    new-instance v1, Lcom/qihoopp/framework/HandleLog;

    sget-object v2, Lcom/qihoopp/framework/LogUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/qihoopp/framework/LogUtil;->mMap:Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Lcom/qihoopp/framework/HandleLog;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 254
    .local v1, handle_log:Lcom/qihoopp/framework/HandleLog;
    invoke-virtual {v1, p2}, Lcom/qihoopp/framework/HandleLog;->getThread(Ljava/lang/Throwable;)Lcom/qihoopp/framework/HandleLog$handleThread;

    move-result-object v0

    .line 255
    .local v0, hThread:Lcom/qihoopp/framework/HandleLog$handleThread;
    invoke-virtual {v0}, Lcom/qihoopp/framework/HandleLog$handleThread;->start()V

    .line 256
    .end local v0           #hThread:Lcom/qihoopp/framework/HandleLog$handleThread;
    .end local v1           #handle_log:Lcom/qihoopp/framework/HandleLog;
    :cond_0
    return-void
.end method

.method public static declared-synchronized f(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 317
    const-class v0, Lcom/qihoopp/framework/LogUtil;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/qihoopp/framework/LogUtil;->toFile(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit v0

    return-void

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 299
    const-class v0, Lcom/qihoopp/framework/LogUtil;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1, p0, p1}, Lcom/qihoopp/framework/LogUtil;->toFile(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit v0

    return-void

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLogInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/qihoopp/framework/LogUtil;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 152
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 169
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p0, Lcom/qihoopp/framework/LogUtil;->mContext:Landroid/content/Context;

    .line 55
    sput-object p1, Lcom/qihoopp/framework/LogUtil;->mMap:Ljava/util/HashMap;

    .line 56
    sget-object v2, Lcom/qihoopp/framework/LogUtil;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 60
    new-instance v1, Lcom/qihoopp/framework/HandleLog;

    sget-object v2, Lcom/qihoopp/framework/LogUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/qihoopp/framework/LogUtil;->mMap:Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Lcom/qihoopp/framework/HandleLog;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 62
    .local v1, handle_log:Lcom/qihoopp/framework/HandleLog;
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/qihoopp/framework/HandleLog;->getThread(Ljava/lang/String;)Lcom/qihoopp/framework/HandleLog$handleThread;

    move-result-object v0

    .line 63
    .local v0, hThread:Lcom/qihoopp/framework/HandleLog$handleThread;
    invoke-virtual {v0}, Lcom/qihoopp/framework/HandleLog$handleThread;->start()V

    .line 64
    .end local v0           #hThread:Lcom/qihoopp/framework/HandleLog$handleThread;
    .end local v1           #handle_log:Lcom/qihoopp/framework/HandleLog;
    :cond_0
    return-void
.end method

.method private static initDBGOutputStream()V
    .locals 4

    .prologue
    .line 358
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "trace.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v2, Lcom/qihoopp/framework/LogUtil;->sDBGOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized toFile(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 331
    const-class v5, Lcom/qihoopp/framework/LogUtil;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/qihoopp/framework/LogUtil;->sDBGOutputStream:Ljava/io/FileOutputStream;

    if-nez v4, :cond_0

    .line 332
    invoke-static {}, Lcom/qihoopp/framework/LogUtil;->initDBGOutputStream()V

    .line 335
    :cond_0
    sget-object v4, Lcom/qihoopp/framework/LogUtil;->sDBGOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 337
    :try_start_1
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 338
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Lcom/qihoopp/framework/LogUtil;->sDBGLevels:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, msgdata:Ljava/lang/String;
    sget-object v4, Lcom/qihoopp/framework/LogUtil;->sDBGOutputStream:Ljava/io/FileOutputStream;

    const-string v6, "UTF-8"

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 343
    sget-object v4, Lcom/qihoopp/framework/LogUtil;->sDBGOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    .end local v2           #msgdata:Ljava/lang/String;
    .end local v3           #time:Landroid/text/format/Time;
    :cond_1
    :goto_0
    monitor-exit v5

    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :try_start_3
    sget-object v4, Lcom/qihoopp/framework/LogUtil;->sDBGOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 351
    :goto_1
    const/4 v4, 0x0

    :try_start_4
    sput-object v4, Lcom/qihoopp/framework/LogUtil;->sDBGOutputStream:Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 331
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 348
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 349
    .local v1, e1:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "msg"

    .prologue
    .line 379
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 381
    return-void
.end method

.method public static update_version(Ljava/lang/String;)V
    .locals 4
    .parameter "version"

    .prologue
    .line 67
    sget-object v1, Lcom/qihoopp/framework/LogUtil;->mMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/framework/LogUtil;->mMap:Ljava/util/HashMap;

    const-string v3, "version="

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, v:Ljava/lang/String;
    const-string v1, "update_version"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v1, Lcom/qihoopp/framework/LogUtil;->mMap:Ljava/util/HashMap;

    const-string v2, "version="

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lcom/qihoopp/framework/LogUtil;->mMap:Ljava/util/HashMap;

    const-string v2, "version="

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v0           #v:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 105
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 184
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 201
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 215
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    return-void
.end method
