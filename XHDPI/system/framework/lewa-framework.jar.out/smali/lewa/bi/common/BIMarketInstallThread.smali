.class public Llewa/bi/common/BIMarketInstallThread;
.super Ljava/lang/Thread;
.source "BIMarketInstallThread.java"


# static fields
.field private static final eventObject:Ljava/lang/Object;


# instance fields
.field private appName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private event:Ljava/lang/String;

.field private finishTime:J

.field private netType:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private packageSize:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llewa/bi/common/BIMarketInstallThread;->eventObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "context"
    .parameter "event"
    .parameter "packageName"
    .parameter "appName"
    .parameter "version"
    .parameter "path"
    .parameter "status"
    .parameter "netType"
    .parameter "packageSize"
    .parameter "finishTime"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    iput-object p2, p0, Llewa/bi/common/BIMarketInstallThread;->event:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Llewa/bi/common/BIMarketInstallThread;->context:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Llewa/bi/common/BIMarketInstallThread;->packageName:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Llewa/bi/common/BIMarketInstallThread;->appName:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Llewa/bi/common/BIMarketInstallThread;->version:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Llewa/bi/common/BIMarketInstallThread;->path:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Llewa/bi/common/BIMarketInstallThread;->status:Ljava/lang/String;

    .line 29
    iput-object p8, p0, Llewa/bi/common/BIMarketInstallThread;->netType:Ljava/lang/String;

    .line 30
    iput-object p9, p0, Llewa/bi/common/BIMarketInstallThread;->packageSize:Ljava/lang/String;

    .line 31
    iput-wide p10, p0, Llewa/bi/common/BIMarketInstallThread;->finishTime:J

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 37
    :try_start_0
    sget-object v13, Llewa/bi/common/BIMarketInstallThread;->eventObject:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :try_start_1
    invoke-static {}, Llewa/bi/BIAgent;->getBIAgent()Llewa/bi/BIAgent;

    move-result-object v0

    iget-object v1, p0, Llewa/bi/common/BIMarketInstallThread;->context:Landroid/content/Context;

    iget-object v2, p0, Llewa/bi/common/BIMarketInstallThread;->event:Ljava/lang/String;

    iget-object v3, p0, Llewa/bi/common/BIMarketInstallThread;->packageName:Ljava/lang/String;

    iget-object v4, p0, Llewa/bi/common/BIMarketInstallThread;->appName:Ljava/lang/String;

    iget-object v5, p0, Llewa/bi/common/BIMarketInstallThread;->version:Ljava/lang/String;

    iget-object v6, p0, Llewa/bi/common/BIMarketInstallThread;->path:Ljava/lang/String;

    iget-object v7, p0, Llewa/bi/common/BIMarketInstallThread;->status:Ljava/lang/String;

    iget-object v8, p0, Llewa/bi/common/BIMarketInstallThread;->netType:Ljava/lang/String;

    iget-object v9, p0, Llewa/bi/common/BIMarketInstallThread;->packageSize:Ljava/lang/String;

    iget-wide v10, p0, Llewa/bi/common/BIMarketInstallThread;->finishTime:J

    invoke-static/range {v0 .. v11}, Llewa/bi/BIAgent;->saveMarketInstall(Llewa/bi/BIAgent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 40
    monitor-exit v13

    .line 44
    :goto_0
    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    :catch_0
    move-exception v12

    .line 42
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
