.class public Llewa/bi/common/BIAppUsageThread;
.super Ljava/lang/Thread;
.source "BIAppUsageThread.java"


# static fields
.field private static final eventObject:Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private durtion:J

.field private packageName:Ljava/lang/String;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llewa/bi/common/BIAppUsageThread;->eventObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "context"
    .parameter "packageName"
    .parameter "startTime"
    .parameter "durtion"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    iput-object p1, p0, Llewa/bi/common/BIAppUsageThread;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Llewa/bi/common/BIAppUsageThread;->packageName:Ljava/lang/String;

    .line 18
    iput-wide p3, p0, Llewa/bi/common/BIAppUsageThread;->startTime:J

    .line 19
    iput-wide p5, p0, Llewa/bi/common/BIAppUsageThread;->durtion:J

    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 25
    :try_start_0
    sget-object v8, Llewa/bi/common/BIAppUsageThread;->eventObject:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    invoke-static {}, Llewa/bi/BIAgent;->getBIAgent()Llewa/bi/BIAgent;

    move-result-object v0

    iget-object v1, p0, Llewa/bi/common/BIAppUsageThread;->context:Landroid/content/Context;

    iget-object v2, p0, Llewa/bi/common/BIAppUsageThread;->packageName:Ljava/lang/String;

    iget-wide v3, p0, Llewa/bi/common/BIAppUsageThread;->startTime:J

    iget-wide v5, p0, Llewa/bi/common/BIAppUsageThread;->durtion:J

    invoke-static/range {v0 .. v6}, Llewa/bi/BIAgent;->saveAppUsage(Llewa/bi/BIAgent;Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 27
    monitor-exit v8

    .line 31
    :goto_0
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    :catch_0
    move-exception v7

    .line 29
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
