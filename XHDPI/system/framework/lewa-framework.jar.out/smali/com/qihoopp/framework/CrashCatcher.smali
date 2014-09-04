.class public Lcom/qihoopp/framework/CrashCatcher;
.super Ljava/lang/Object;
.source "CrashCatcher.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static INSTANCE:Lcom/qihoopp/framework/CrashCatcher; = null

.field public static final TAG:Ljava/lang/String; = "CrashHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/qihoopp/framework/CrashCatcher;

    invoke-direct {v0}, Lcom/qihoopp/framework/CrashCatcher;-><init>()V

    sput-object v0, Lcom/qihoopp/framework/CrashCatcher;->INSTANCE:Lcom/qihoopp/framework/CrashCatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/qihoopp/framework/CrashCatcher;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/qihoopp/framework/CrashCatcher;->INSTANCE:Lcom/qihoopp/framework/CrashCatcher;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/qihoopp/framework/CrashCatcher;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoopp/framework/CrashCatcher;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 23
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 29
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "uncaughtException"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    const-string v2, "CrashHandler"

    const-string v3, "uncaughtException"

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :try_start_0
    new-instance v1, Lcom/qihoopp/framework/HandleLog;

    iget-object v2, p0, Lcom/qihoopp/framework/CrashCatcher;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/qihoopp/framework/LogUtil;->getLogInfo()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qihoopp/framework/HandleLog;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 53
    .local v1, hLog:Lcom/qihoopp/framework/HandleLog;
    invoke-virtual {v1, p2}, Lcom/qihoopp/framework/HandleLog;->justDump(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1           #hLog:Lcom/qihoopp/framework/HandleLog;
    :goto_0
    iget-object v2, p0, Lcom/qihoopp/framework/CrashCatcher;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/qihoopp/framework/CrashCatcher;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 63
    :goto_1
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1
.end method
