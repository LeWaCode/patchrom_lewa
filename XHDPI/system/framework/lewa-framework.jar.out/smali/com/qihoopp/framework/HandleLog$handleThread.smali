.class public Lcom/qihoopp/framework/HandleLog$handleThread;
.super Ljava/lang/Thread;
.source "HandleLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoopp/framework/HandleLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "handleThread"
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field private canCheck:Z

.field private canDelete:Z

.field private canDump:Z

.field private canSend:Z

.field elog:Lcom/qihoopp/framework/ErrorLogUtil;

.field mContext:Landroid/content/Context;

.field private mCount:I

.field public final mDirtyFlag:Ljava/lang/String;

.field mEx:Ljava/lang/String;

.field public final mThreshhold:I

.field mTr:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/qihoopp/framework/HandleLog;


# direct methods
.method public constructor <init>(Lcom/qihoopp/framework/HandleLog;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "ex"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 62
    iput-object p1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->this$0:Lcom/qihoopp/framework/HandleLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    .line 49
    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mEx:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mTr:Ljava/lang/Throwable;

    .line 52
    iput v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mCount:I

    .line 53
    const-string v0, "DIRTY_FLAG"

    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mDirtyFlag:Ljava/lang/String;

    .line 54
    const-string v0, "handleThread"

    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->TAG:Ljava/lang/String;

    .line 55
    const/16 v0, 0x12c

    iput v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mThreshhold:I

    .line 57
    iput-boolean v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canDump:Z

    .line 58
    iput-boolean v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canCheck:Z

    .line 59
    iput-boolean v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canSend:Z

    .line 60
    iput-boolean v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canDelete:Z

    .line 63
    iput-object p2, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mEx:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/qihoopp/framework/ErrorLogUtil;

    iget-object v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qihoopp/framework/ErrorLogUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/qihoopp/framework/HandleLog;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 68
    iput-object p1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->this$0:Lcom/qihoopp/framework/HandleLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    .line 49
    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mEx:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mTr:Ljava/lang/Throwable;

    .line 52
    iput v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mCount:I

    .line 53
    const-string v0, "DIRTY_FLAG"

    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mDirtyFlag:Ljava/lang/String;

    .line 54
    const-string v0, "handleThread"

    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->TAG:Ljava/lang/String;

    .line 55
    const/16 v0, 0x12c

    iput v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mThreshhold:I

    .line 57
    iput-boolean v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canDump:Z

    .line 58
    iput-boolean v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canCheck:Z

    .line 59
    iput-boolean v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canSend:Z

    .line 60
    iput-boolean v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canDelete:Z

    .line 69
    iput-object p2, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mTr:Ljava/lang/Throwable;

    .line 71
    new-instance v0, Lcom/qihoopp/framework/ErrorLogUtil;

    iget-object v1, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qihoopp/framework/ErrorLogUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    .line 72
    return-void
.end method

.method private checkHasFiles(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 190
    const-string v4, "handleThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkHasFiles, path is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, dir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    const-string v4, "handleThread"

    const-string v5, "checkHasFiles, dir not exist."

    invoke-static {v4, v5}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    return v3

    .line 197
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 198
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_1

    .line 199
    const-string v4, "handleThread"

    const-string v5, "checkHasFiles, path is not dir."

    invoke-static {v4, v5}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_1
    array-length v4, v1

    if-nez v4, :cond_2

    .line 202
    const-string v4, "handleThread"

    const-string v5, "checkHasFiles, dir has not file."

    invoke-static {v4, v5}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 206
    const-string v3, "handleThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkHasFiles, file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \' name is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_3
    const-string v3, "handleThread"

    const-string v4, "checkHasFiles, dir has files."

    invoke-static {v3, v4}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private checkTime()Z
    .locals 3

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, result:Z
    const/4 v0, 0x0

    .line 230
    .local v0, duration:I
    iget-object v2, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    invoke-virtual {v2}, Lcom/qihoopp/framework/ErrorLogUtil;->getDuration()I

    move-result v0

    .line 233
    :cond_0
    const/16 v2, 0x12c

    if-le v0, v2, :cond_1

    .line 234
    const/4 v1, 0x1

    .line 238
    :goto_0
    return v1

    .line 236
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkWifiStatus(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 216
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 218
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 220
    .local v2, wifiinfo:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 221
    const/4 v1, 0x1

    .line 225
    .local v1, result:Z
    :goto_0
    return v1

    .line 223
    .end local v1           #result:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method private needSendFile()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    sget-object v2, Lcom/qihoopp/framework/ErrorLogUtil;->PATH:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qihoopp/framework/HandleLog$handleThread;->checkHasFiles(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/qihoopp/framework/HandleLog$handleThread;->checkWifiStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    const-string v0, "handleThread"

    const-string v2, "needSendFile, wifi need."

    invoke-static {v0, v2}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 173
    goto :goto_0

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/qihoopp/framework/HandleLog$handleThread;->checkTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const-string v0, "handleThread"

    const-string v2, "needSendFile, timeout need."

    invoke-static {v0, v2}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 179
    goto :goto_0
.end method

.method private process()V
    .locals 15

    .prologue
    .line 79
    const/4 v4, 0x0

    .line 80
    .local v4, ifDump:Z
    const/4 v7, 0x0

    .line 81
    .local v7, needSend:Z
    const/4 v6, 0x0

    .line 82
    .local v6, ifsent:Z
    invoke-static {}, Lcom/qihoopp/framework/HandleLog;->access$000()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 83
    :try_start_0
    iget-object v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    if-nez v11, :cond_0

    .line 84
    const-string v11, "handleThread"

    const-string v13, "process, elog == null"

    invoke-static {v11, v13}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    monitor-exit v12

    .line 150
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mEx:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mEx:Ljava/lang/String;

    const-string v13, ""

    if-eq v11, v13, :cond_1

    iget-boolean v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canDump:Z

    if-eqz v11, :cond_1

    .line 91
    iget-object v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    iget-object v13, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mEx:Ljava/lang/String;

    iget-object v14, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->this$0:Lcom/qihoopp/framework/HandleLog;

    #getter for: Lcom/qihoopp/framework/HandleLog;->mMap:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/qihoopp/framework/HandleLog;->access$100(Lcom/qihoopp/framework/HandleLog;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/qihoopp/framework/ErrorLogUtil;->dumpLog(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    .line 93
    :cond_1
    iget-object v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mTr:Ljava/lang/Throwable;

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canDump:Z

    if-eqz v11, :cond_2

    .line 95
    iget-object v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    iget-object v13, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mTr:Ljava/lang/Throwable;

    iget-object v14, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->this$0:Lcom/qihoopp/framework/HandleLog;

    #getter for: Lcom/qihoopp/framework/HandleLog;->mMap:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/qihoopp/framework/HandleLog;->access$100(Lcom/qihoopp/framework/HandleLog;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/qihoopp/framework/ErrorLogUtil;->dumpLog(Ljava/lang/Throwable;Ljava/util/HashMap;)Z

    move-result v4

    .line 97
    :cond_2
    iget-boolean v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canCheck:Z

    if-eqz v11, :cond_3

    .line 98
    invoke-direct {p0}, Lcom/qihoopp/framework/HandleLog$handleThread;->needSendFile()Z

    move-result v7

    .line 100
    :cond_3
    if-eqz v7, :cond_4

    .line 102
    iget-object v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    invoke-virtual {v11}, Lcom/qihoopp/framework/ErrorLogUtil;->initFilesManager()V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 106
    .local v1, dateTaken:J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/qihoopp/framework/ErrorLogUtil;->BASE_NAME:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/qihoopp/framework/ErrorLogUtil;->NAME:Ljava/lang/String;

    .line 108
    .end local v1           #dateTaken:J
    :cond_4
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    invoke-static {}, Lcom/qihoopp/framework/HandleLog;->access$200()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 110
    if-eqz v7, :cond_8

    :try_start_1
    iget-boolean v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canSend:Z

    if-eqz v11, :cond_8

    .line 112
    :goto_1
    iget v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mCount:I

    if-lez v11, :cond_5

    .line 114
    iget-object v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    iget-object v13, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->this$0:Lcom/qihoopp/framework/HandleLog;

    #getter for: Lcom/qihoopp/framework/HandleLog;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/qihoopp/framework/HandleLog;->access$100(Lcom/qihoopp/framework/HandleLog;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/qihoopp/framework/ErrorLogUtil;->sendFiles(Ljava/util/HashMap;)Z

    move-result v6

    .line 115
    if-eqz v6, :cond_7

    .line 123
    :cond_5
    iget-object v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 125
    .local v10, sp:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 126
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 127
    .restart local v1       #dateTaken:J
    const-wide/16 v13, 0x3e8

    div-long v8, v1, v13

    .line 128
    .local v8, seconds:J
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, create_seconds:Ljava/lang/String;
    const-string v11, "SEND_TIME"

    invoke-interface {v3, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    if-eqz v6, :cond_9

    iget-boolean v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->canDelete:Z

    if-eqz v11, :cond_9

    .line 138
    const/4 v5, 0x0

    .line 140
    .local v5, ifdelete:Z
    iget-object v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->elog:Lcom/qihoopp/framework/ErrorLogUtil;

    invoke-virtual {v11}, Lcom/qihoopp/framework/ErrorLogUtil;->deleteFiles()Z

    move-result v5

    .line 141
    if-nez v5, :cond_6

    .line 148
    .end local v5           #ifdelete:Z
    :cond_6
    :goto_2
    monitor-exit v12

    goto/16 :goto_0

    .end local v0           #create_seconds:Ljava/lang/String;
    .end local v1           #dateTaken:J
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v8           #seconds:J
    .end local v10           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 108
    :catchall_1
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 118
    :cond_7
    :try_start_3
    iget v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/qihoopp/framework/HandleLog$handleThread;->mCount:I

    goto :goto_1

    .line 133
    :cond_8
    const-string v11, "handleThread"

    const-string v13, "process, not needSend."

    invoke-static {v11, v13}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    monitor-exit v12

    goto/16 :goto_0

    .line 146
    .restart local v0       #create_seconds:Ljava/lang/String;
    .restart local v1       #dateTaken:J
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v8       #seconds:J
    .restart local v10       #sp:Landroid/content/SharedPreferences;
    :cond_9
    const-string v11, "handleThread"

    const-string v13, "process, can not delete."

    invoke-static {v11, v13}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 242
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 243
    invoke-direct {p0}, Lcom/qihoopp/framework/HandleLog$handleThread;->process()V

    .line 244
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 245
    return-void
.end method
