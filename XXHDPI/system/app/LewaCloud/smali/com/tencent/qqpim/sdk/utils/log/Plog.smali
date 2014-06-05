.class public Lcom/tencent/qqpim/sdk/utils/log/Plog;
.super Ljava/lang/Object;


# static fields
.field private static IS_LOGCAT_ON:Z

.field private static IS_LOGFILE_ON:Z

.field private static LOG_WRITE_LEVEL:I

.field private static LogFileName:Ljava/lang/String;

.field private static mIsSDCardMounted:Z

.field private static mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mIsSDCardMounted:Z

    sput-boolean v2, Lcom/tencent/qqpim/sdk/utils/log/Plog;->IS_LOGCAT_ON:Z

    sput-boolean v2, Lcom/tencent/qqpim/sdk/utils/log/Plog;->IS_LOGFILE_ON:Z

    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->LOG_WRITE_LEVEL:I

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->LogFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mIsSDCardMounted:Z

    :goto_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mkdirAndInitLogName()V

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mIsSDCardMounted:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final closeOutputStream(Ljava/io/OutputStream;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Plog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cant close output stream "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final closeWrite(Ljava/io/Writer;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Plog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cant close writer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static doLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->IS_LOGCAT_ON:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->IS_LOGFILE_ON:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->getCodeLineInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->IS_LOGCAT_ON:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mIsSDCardMounted:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->IS_LOGFILE_ON:Z

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->writeToFile(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, p0, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCodeLineInfo()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/tencent/qqpim/sdk/utils/log/Plog;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static final getLOG_WRITE_LEVEL()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->LOG_WRITE_LEVEL:I

    return v0
.end method

.method private static final getLogFileName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->LogFileName:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final mkdirAndInitLogName()V
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->LogFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->LogFileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "qqpim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yyyyMMddkkmmss"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->LogFileName:Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/log/Plog;->LogFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-void
.end method

.method public static setLogFileSwitch(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->IS_LOGFILE_ON:Z

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    sput p0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->LOG_WRITE_LEVEL:I

    return-void
.end method

.method public static setLogcatSwitch(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->IS_LOGCAT_ON:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final declared-synchronized writeLogToFile(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const-class v3, Lcom/tencent/qqpim/sdk/utils/log/Plog;

    monitor-enter v3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "Plog"

    const-string v1, "writeLogToFile logmsg null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->getLogFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "qqpim"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "crash"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_1
    :try_start_2
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v4

    if-nez v4, :cond_3

    const-string v0, "Plog"

    const-string v2, "writeLogToFile bytes null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeOutputStream(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeOutputStream(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeWrite(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :try_start_4
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->getLogFileName()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_3
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v2, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    array-length v0, v4

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/FormatTransfer;->int2BytesLittleEndian(I)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v0, 0x0

    :try_start_7
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeOutputStream(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeWrite(Ljava/io/Writer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_8
    const-string v2, "Plog"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v0, 0x0

    :try_start_9
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeOutputStream(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeWrite(Ljava/io/Writer;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_3
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeOutputStream(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->closeWrite(Ljava/io/Writer;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private static final declared-synchronized writeToFile(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v1, Lcom/tencent/qqpim/sdk/utils/log/Plog;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->getLOG_WRITE_LEVEL()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge p0, v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x20

    :goto_1
    :try_start_1
    sget-object v2, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    sget-object v4, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/log/Plog;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->writeLogToFile(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_0
    const/16 v0, 0x49

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x45

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x56

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x44

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x57

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x41

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
