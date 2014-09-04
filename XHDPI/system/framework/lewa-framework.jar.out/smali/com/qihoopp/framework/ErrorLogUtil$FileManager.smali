.class Lcom/qihoopp/framework/ErrorLogUtil$FileManager;
.super Ljava/lang/Object;
.source "ErrorLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoopp/framework/ErrorLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileManager"
.end annotation


# static fields
.field public static final mFileCreateSeconds:Ljava/lang/String; = "FILE_CREATE_SECONDS"

.field public static final mFileCreateTime:Ljava/lang/String; = "FILE_CREATE_TIME"

.field public static final mLogCreateSeconds:Ljava/lang/String; = "LOG_CREATE_SECONDS"

.field public static final mLogCreateTime:Ljava/lang/String; = "LOG_CREATE_TIME"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBr:Ljava/lang/String;

.field private final mDivider:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field final synthetic this$0:Lcom/qihoopp/framework/ErrorLogUtil;


# direct methods
.method public constructor <init>(Lcom/qihoopp/framework/ErrorLogUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "path"
    .parameter "name"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->this$0:Lcom/qihoopp/framework/ErrorLogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const-string v2, "*^*"

    iput-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mDivider:Ljava/lang/String;

    .line 349
    const-string v2, "@_@"

    iput-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mBr:Ljava/lang/String;

    .line 350
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    .line 351
    const-string v2, "FileManager"

    iput-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->TAG:Ljava/lang/String;

    .line 358
    const-string v2, "FileManager"

    const-string v3, "FileManager, enter FileManager."

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v2, "FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileManager, path is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v2, "FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileManager, name is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, dir:Ljava/io/File;
    if-eqz p2, :cond_0

    .line 363
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    .restart local v0       #dir:Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 369
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    .line 370
    iget-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 372
    :try_start_0
    iget-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 373
    const-string v2, "FileManager"

    const-string v3, "FileManager, createNewFile success."

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->createHeader()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_2
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v1

    .line 377
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private createHeader()V
    .locals 13

    .prologue
    .line 392
    iget-object v11, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 399
    .local v3, dateTaken:J
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 400
    .local v8, nowTime:Ljava/util/Date;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    sget-object v12, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v9, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 401
    .local v9, sdFormatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, create_time:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 404
    const-string v11, "FILE_CREATE_TIME"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v11, "*^*"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_0
    move-wide v6, v3

    .line 409
    .local v6, m_seconds:J
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, create_seconds:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 411
    const-string v11, "FILE_CREATE_SECONDS"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v11, "*^*"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_1
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :try_start_0
    new-instance v10, Ljava/io/OutputStreamWriter;

    new-instance v11, Ljava/io/FileOutputStream;

    iget-object v12, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 421
    .local v10, writer:Ljava/io/OutputStreamWriter;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V

    .line 423
    const-string v11, "FileManager"

    const-string v12, "createHeader success."

    invoke-static {v11, v12}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #create_seconds:Ljava/lang/String;
    .end local v2           #create_time:Ljava/lang/String;
    .end local v3           #dateTaken:J
    .end local v6           #m_seconds:J
    .end local v8           #nowTime:Ljava/util/Date;
    .end local v9           #sdFormatter:Ljava/text/SimpleDateFormat;
    .end local v10           #writer:Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 424
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v1       #create_seconds:Ljava/lang/String;
    .restart local v2       #create_time:Ljava/lang/String;
    .restart local v3       #dateTaken:J
    .restart local v6       #m_seconds:J
    .restart local v8       #nowTime:Ljava/util/Date;
    .restart local v9       #sdFormatter:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v5

    .line 426
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 429
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #create_seconds:Ljava/lang/String;
    .end local v2           #create_time:Ljava/lang/String;
    .end local v3           #dateTaken:J
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #m_seconds:J
    .end local v8           #nowTime:Ljava/util/Date;
    .end local v9           #sdFormatter:Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v11, "FileManager"

    const-string v12, "createHeader, mFile is null or can\'t write!"

    invoke-static {v11, v12}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteFile()Z
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 621
    const-string v0, "FileManager"

    const-string v1, "deleteFile, success."

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x1

    .line 625
    :goto_0
    return v0

    .line 624
    :cond_0
    const-string v0, "FileManager"

    const-string v1, "deleteFile, failed!"

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpSingleLine(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 17
    .parameter "ex"
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
    .line 438
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 448
    .local v4, dateTaken:J
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 449
    .local v10, nowTime:Ljava/util/Date;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd HH:mm:ss"

    sget-object v15, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v12, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 450
    .local v12, sdFormatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v12, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, create_time:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 454
    const-string v14, "LOG_CREATE_TIME"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v14, "*^*"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_0
    move-wide v8, v4

    .line 459
    .local v8, m_seconds:J
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, create_seconds:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 461
    const-string v14, "LOG_CREATE_SECONDS"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v14, "*^*"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_1
    if-eqz p2, :cond_3

    .line 467
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 468
    .local v11, o:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "seckey="

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 471
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v14, "*^*"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 477
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #o:Ljava/lang/String;
    :cond_3
    const-string v14, "\n"

    const-string v15, "@_@"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v14, "*^*"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v14, "\n"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :try_start_0
    new-instance v13, Ljava/io/OutputStreamWriter;

    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    const/16 v16, 0x1

    invoke-direct/range {v14 .. v16}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 484
    .local v13, writer:Ljava/io/OutputStreamWriter;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V

    .line 486
    const-string v14, "FileManager"

    const-string v15, "dumpSingleLine success."

    invoke-static {v14, v15}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    const/4 v14, 0x1

    .line 495
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #create_seconds:Ljava/lang/String;
    .end local v3           #create_time:Ljava/lang/String;
    .end local v4           #dateTaken:J
    .end local v8           #m_seconds:J
    .end local v10           #nowTime:Ljava/util/Date;
    .end local v12           #sdFormatter:Ljava/text/SimpleDateFormat;
    .end local v13           #writer:Ljava/io/OutputStreamWriter;
    :goto_1
    return v14

    .line 488
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #create_seconds:Ljava/lang/String;
    .restart local v3       #create_time:Ljava/lang/String;
    .restart local v4       #dateTaken:J
    .restart local v8       #m_seconds:J
    .restart local v10       #nowTime:Ljava/util/Date;
    .restart local v12       #sdFormatter:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v6

    .line 490
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    const/4 v14, 0x0

    goto :goto_1

    .line 494
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #create_seconds:Ljava/lang/String;
    .end local v3           #create_time:Ljava/lang/String;
    .end local v4           #dateTaken:J
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #m_seconds:J
    .end local v10           #nowTime:Ljava/util/Date;
    .end local v12           #sdFormatter:Ljava/text/SimpleDateFormat;
    :cond_4
    const-string v14, "FileManager"

    const-string v15, "dumpSingleLine, mFile is null or can\'t write!"

    invoke-static {v14, v15}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readErrorLog()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 582
    iget-object v6, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 586
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v7, "UTF-8"

    invoke-direct {v3, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 588
    .local v3, read:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 589
    .local v4, reader:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 591
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 592
    .local v2, line:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 593
    const-string v6, "FILE_CREATE_TIME"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 601
    :catch_0
    move-exception v1

    .line 603
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 613
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #read:Ljava/io/InputStreamReader;
    .end local v4           #reader:Ljava/io/BufferedReader;
    :goto_1
    return-object v5

    .line 597
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #read:Ljava/io/InputStreamReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 598
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 599
    const-string v6, "FileManager"

    const-string v7, "readErrorLog success."

    invoke-static {v6, v7}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_1

    .line 606
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #read:Ljava/io/InputStreamReader;
    .end local v4           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 608
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 612
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "readHeader, mFile can\'t read."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public readHeader()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 504
    iget-object v5, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 508
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 510
    .local v2, read:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 512
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, line:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 514
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 521
    const-string v5, "FileManager"

    const-string v6, "readHeader success."

    invoke-static {v5, v6}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 535
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #read:Ljava/io/InputStreamReader;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :goto_0
    return-object v1

    .line 523
    .restart local v2       #read:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v4

    .line 526
    goto :goto_0

    .line 528
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #read:Ljava/io/InputStreamReader;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v4

    .line 531
    goto :goto_0

    .line 534
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "readHeader, mFile can\'t read."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v1, v4

    .line 535
    goto :goto_0
.end method

.method public readLastLine()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 544
    iget-object v6, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 548
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/qihoopp/framework/ErrorLogUtil$FileManager;->mFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v7, "UTF-8"

    invoke-direct {v2, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 550
    .local v2, read:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 552
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 553
    .local v1, line:Ljava/lang/String;
    const/4 v4, 0x0

    .line 554
    .local v4, tmp_line:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 555
    move-object v1, v4

    goto :goto_0

    .line 557
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 558
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 559
    const-string v6, "FileManager"

    const-string v7, "readLastLine success."

    invoke-static {v6, v7}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 573
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #read:Ljava/io/InputStreamReader;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #tmp_line:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 561
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #read:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #tmp_line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 563
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v5

    .line 564
    goto :goto_1

    .line 566
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #read:Ljava/io/InputStreamReader;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #tmp_line:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 568
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v5

    .line 569
    goto :goto_1

    .line 572
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "readHeader, mFile can\'t read."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v1, v5

    .line 573
    goto :goto_1
.end method
