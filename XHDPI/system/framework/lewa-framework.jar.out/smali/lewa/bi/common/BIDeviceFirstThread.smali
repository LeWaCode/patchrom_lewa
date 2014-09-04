.class public Llewa/bi/common/BIDeviceFirstThread;
.super Ljava/lang/Thread;
.source "BIDeviceFirstThread.java"


# static fields
.field private static final eventObject:Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llewa/bi/common/BIDeviceFirstThread;->eventObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 13
    iput-object p1, p0, Llewa/bi/common/BIDeviceFirstThread;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 19
    :try_start_0
    sget-object v2, Llewa/bi/common/BIDeviceFirstThread;->eventObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    invoke-static {}, Llewa/bi/BIAgent;->getBIAgent()Llewa/bi/BIAgent;

    move-result-object v1

    iget-object v3, p0, Llewa/bi/common/BIDeviceFirstThread;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Llewa/bi/BIAgent;->saveDeviceFirst(Llewa/bi/BIAgent;Landroid/content/Context;)V

    .line 21
    monitor-exit v2

    .line 25
    :goto_0
    return-void

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
