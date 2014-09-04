.class public Lcom/qihoopp/framework/HandleLog;
.super Ljava/lang/Object;
.source "HandleLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoopp/framework/HandleLog$handleThread;
    }
.end annotation


# static fields
.field private static INSTANCE1:Ljava/lang/Object;

.field private static INSTANCE2:Ljava/lang/Object;


# instance fields
.field mContext:Landroid/content/Context;

.field private mMap:Ljava/util/HashMap;
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
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qihoopp/framework/HandleLog;->INSTANCE1:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qihoopp/framework/HandleLog;->INSTANCE2:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
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
    .line 28
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/qihoopp/framework/HandleLog;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/qihoopp/framework/HandleLog;->mMap:Ljava/util/HashMap;

    .line 31
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/qihoopp/framework/HandleLog;->INSTANCE1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qihoopp/framework/HandleLog;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/qihoopp/framework/HandleLog;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/qihoopp/framework/HandleLog;->INSTANCE2:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getThread(Ljava/lang/String;)Lcom/qihoopp/framework/HandleLog$handleThread;
    .locals 2
    .parameter "log"

    .prologue
    .line 34
    new-instance v0, Lcom/qihoopp/framework/HandleLog$handleThread;

    iget-object v1, p0, Lcom/qihoopp/framework/HandleLog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/qihoopp/framework/HandleLog$handleThread;-><init>(Lcom/qihoopp/framework/HandleLog;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getThread(Ljava/lang/Throwable;)Lcom/qihoopp/framework/HandleLog$handleThread;
    .locals 2
    .parameter "tr"

    .prologue
    .line 37
    new-instance v0, Lcom/qihoopp/framework/HandleLog$handleThread;

    iget-object v1, p0, Lcom/qihoopp/framework/HandleLog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/qihoopp/framework/HandleLog$handleThread;-><init>(Lcom/qihoopp/framework/HandleLog;Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public justDump(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 41
    sget-object v2, Lcom/qihoopp/framework/HandleLog;->INSTANCE1:Ljava/lang/Object;

    monitor-enter v2

    .line 42
    :try_start_0
    new-instance v0, Lcom/qihoopp/framework/ErrorLogUtil;

    iget-object v1, p0, Lcom/qihoopp/framework/HandleLog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qihoopp/framework/ErrorLogUtil;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, elog:Lcom/qihoopp/framework/ErrorLogUtil;
    iget-object v1, p0, Lcom/qihoopp/framework/HandleLog;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Lcom/qihoopp/framework/ErrorLogUtil;->dumpLog(Ljava/lang/Throwable;Ljava/util/HashMap;)Z

    .line 44
    monitor-exit v2

    .line 45
    return-void

    .line 44
    .end local v0           #elog:Lcom/qihoopp/framework/ErrorLogUtil;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
