.class public Llewa/laml/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"

.field private static sGlobalThread:Llewa/laml/RenderThread;

.field private static sGlobalThreadLock:Ljava/lang/Object;


# instance fields
.field private mNextUpdateInterval:J

.field private mPaused:Z

.field private mRendererControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeSignal:Ljava/lang/Object;

.field private mSignaled:Z

.field private mSleepSignal:Ljava/lang/Object;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llewa/laml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "LAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/RenderThread;->mPaused:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/laml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/laml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>(Llewa/laml/RendererController;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 37
    const-string v0, "LAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/RenderThread;->mPaused:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/laml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/laml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, p1}, Llewa/laml/RenderThread;->addRendererController(Llewa/laml/RendererController;)V

    .line 39
    return-void
.end method

.method private doFinish()V
    .locals 4

    .prologue
    .line 42
    iget-object v2, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v3, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 45
    :try_start_0
    iget-object v2, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/RendererController;

    .line 46
    .local v0, c:Llewa/laml/RendererController;
    invoke-virtual {v0}, Llewa/laml/RendererController;->finish()V

    goto :goto_1

    .line 48
    .end local v0           #c:Llewa/laml/RendererController;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doInit()V
    .locals 6

    .prologue
    .line 52
    iget-object v4, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 64
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 55
    .local v1, currentTime:J
    iget-object v5, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 56
    :try_start_0
    iget-object v4, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/RendererController;

    .line 57
    .local v0, c:Llewa/laml/RendererController;
    invoke-virtual {v0, v1, v2}, Llewa/laml/RendererController;->setLastUpdateTime(J)V

    .line 58
    invoke-virtual {v0}, Llewa/laml/RendererController;->init()V

    .line 59
    iget-boolean v4, p0, Llewa/laml/RenderThread;->mPaused:Z

    if-eqz v4, :cond_1

    .line 60
    invoke-virtual {v0, v1, v2}, Llewa/laml/RendererController;->tick(J)V

    .line 61
    :cond_1
    invoke-virtual {v0}, Llewa/laml/RendererController;->requestUpdate()V

    goto :goto_1

    .line 63
    .end local v0           #c:Llewa/laml/RendererController;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doPause()V
    .locals 4

    .prologue
    .line 67
    iget-object v2, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v3, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 70
    :try_start_0
    iget-object v2, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/RendererController;

    .line 71
    .local v0, c:Llewa/laml/RendererController;
    invoke-virtual {v0}, Llewa/laml/RendererController;->pause()V

    goto :goto_1

    .line 73
    .end local v0           #c:Llewa/laml/RendererController;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doResume()V
    .locals 4

    .prologue
    .line 77
    iget-object v2, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v3, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 80
    :try_start_0
    iget-object v2, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/RendererController;

    .line 81
    .local v0, c:Llewa/laml/RendererController;
    invoke-virtual {v0}, Llewa/laml/RendererController;->resume()V

    goto :goto_1

    .line 83
    .end local v0           #c:Llewa/laml/RendererController;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doUpdateFramerate(J)Z
    .locals 9
    .parameter "time"

    .prologue
    .line 87
    iget-object v5, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 90
    :cond_0
    const/4 v0, 0x1

    .line 91
    .local v0, allPaused:Z
    const-wide v5, 0x7fffffffffffffffL

    iput-wide v5, p0, Llewa/laml/RenderThread;->mNextUpdateInterval:J

    .line 92
    iget-object v6, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 93
    :try_start_0
    iget-object v5, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/RendererController;

    .line 94
    .local v1, c:Llewa/laml/RendererController;
    invoke-virtual {v1}, Llewa/laml/RendererController;->isSelfPaused()Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    invoke-virtual {v1, p1, p2}, Llewa/laml/RendererController;->updateFramerate(J)J

    move-result-wide v3

    .line 96
    .local v3, l:J
    iget-wide v7, p0, Llewa/laml/RenderThread;->mNextUpdateInterval:J

    cmp-long v5, v3, v7

    if-gez v5, :cond_1

    .line 97
    iput-wide v3, p0, Llewa/laml/RenderThread;->mNextUpdateInterval:J

    .line 98
    const/4 v0, 0x0

    goto :goto_1

    .line 102
    .end local v1           #c:Llewa/laml/RendererController;
    .end local v3           #l:J
    :cond_2
    monitor-exit v6

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public static globalThread()Llewa/laml/RenderThread;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {v0}, Llewa/laml/RenderThread;->globalThread(Z)Llewa/laml/RenderThread;

    move-result-object v0

    return-object v0
.end method

.method public static globalThread(Z)Llewa/laml/RenderThread;
    .locals 2
    .parameter "ensureStart"

    .prologue
    .line 111
    sget-object v0, Llewa/laml/RenderThread;->sGlobalThread:Llewa/laml/RenderThread;

    if-nez v0, :cond_1

    .line 112
    sget-object v1, Llewa/laml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Llewa/laml/RenderThread;->sGlobalThread:Llewa/laml/RenderThread;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Llewa/laml/RenderThread;

    invoke-direct {v0}, Llewa/laml/RenderThread;-><init>()V

    sput-object v0, Llewa/laml/RenderThread;->sGlobalThread:Llewa/laml/RenderThread;

    .line 115
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Llewa/laml/RenderThread;->sGlobalThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    :try_start_1
    sget-object v0, Llewa/laml/RenderThread;->sGlobalThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    :cond_2
    :goto_0
    sget-object v0, Llewa/laml/RenderThread;->sGlobalThread:Llewa/laml/RenderThread;

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static globalThreadStop()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Llewa/laml/RenderThread;->sGlobalThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_1

    .line 127
    sget-object v1, Llewa/laml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Llewa/laml/RenderThread;->sGlobalThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Llewa/laml/RenderThread;->sGlobalThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->setStop()V

    .line 130
    :cond_0
    monitor-exit v1

    .line 131
    :cond_1
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isGlobal(Llewa/laml/RenderThread;)Z
    .locals 2
    .parameter "renderThread"

    .prologue
    const/4 v0, 0x0

    .line 300
    sget-object v1, Llewa/laml/RenderThread;->sGlobalThread:Llewa/laml/RenderThread;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Llewa/laml/RenderThread;->sGlobalThread:Llewa/laml/RenderThread;

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sleepForFramerate(FJ)V
    .locals 4
    .parameter "framerate"
    .parameter "nextUpdateInterval"

    .prologue
    .line 134
    const/high16 v2, 0x447a

    div-float/2addr v2, p1

    float-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 135
    .local v0, sleepTime:J
    invoke-direct {p0, v0, v1}, Llewa/laml/RenderThread;->waitSleep(J)V

    .line 136
    const/4 v2, 0x0

    iput-boolean v2, p0, Llewa/laml/RenderThread;->mSignaled:Z

    .line 137
    return-void
.end method

.method private waitSleep(J)V
    .locals 4
    .parameter "t"

    .prologue
    .line 140
    iget-boolean v1, p0, Llewa/laml/RenderThread;->mSignaled:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 141
    iget-object v2, p0, Llewa/laml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v2

    .line 143
    :try_start_0
    iget-boolean v1, p0, Llewa/laml/RenderThread;->mSignaled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 144
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    :try_start_2
    iget-object v1, p0, Llewa/laml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    :goto_1
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "RenderThread"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private waiteForResume()V
    .locals 3

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Llewa/laml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "RenderThread"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addRendererController(Llewa/laml/RendererController;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 162
    iget-object v1, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p1, p0}, Llewa/laml/RendererController;->setRenderThread(Llewa/laml/RenderThread;)V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llewa/laml/RenderThread;->setPaused(Z)V

    .line 166
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Llewa/laml/RenderThread;->mStarted:Z

    return v0
.end method

.method public removeRendererController(Llewa/laml/RendererController;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 174
    iget-object v1, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Llewa/laml/RendererController;->setRenderThread(Llewa/laml/RenderThread;)V

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 181
    const-string v16, "RenderThread"

    const-string v17, "RenderThread started"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct/range {p0 .. p0}, Llewa/laml/RenderThread;->doInit()V

    .line 183
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llewa/laml/RenderThread;->mStarted:Z

    .line 184
    const/4 v15, 0x0

    .line 186
    .local v15, pendingCounter:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llewa/laml/RenderThread;->mStop:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Llewa/laml/RenderThread;->mPaused:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 187
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 188
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llewa/laml/RenderThread;->mPaused:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 189
    invoke-direct/range {p0 .. p0}, Llewa/laml/RenderThread;->doPause()V

    .line 190
    const-string v16, "RenderThread"

    const-string v18, "RenderThread paused, waiting for signal"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct/range {p0 .. p0}, Llewa/laml/RenderThread;->waiteForResume()V

    .line 192
    const-string v16, "RenderThread"

    const-string v18, "RenderThread resumed"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct/range {p0 .. p0}, Llewa/laml/RenderThread;->doResume()V

    .line 195
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llewa/laml/RenderThread;->mStop:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 196
    invoke-direct/range {p0 .. p0}, Llewa/laml/RenderThread;->doFinish()V

    .line 197
    const-string v16, "RenderThread"

    const-string v18, "RenderThread stopped"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    monitor-exit v17

    return-void

    .line 200
    :cond_3
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 203
    .local v6, currentTime:J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Llewa/laml/RenderThread;->doUpdateFramerate(J)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 204
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llewa/laml/RenderThread;->mPaused:Z

    goto :goto_0

    .line 200
    .end local v6           #currentTime:J
    :catchall_0
    move-exception v16

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 206
    .restart local v6       #currentTime:J
    :cond_5
    const/4 v14, 0x0

    .line 207
    .local v14, maxFramerate:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 208
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    .line 209
    .local v3, N:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v3, :cond_11

    .line 211
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llewa/laml/RendererController;

    .line 212
    .local v4, c:Llewa/laml/RendererController;
    invoke-virtual {v4}, Llewa/laml/RendererController;->isSelfPaused()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 209
    .end local v4           #c:Llewa/laml/RendererController;
    :cond_6
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 214
    .restart local v4       #c:Llewa/laml/RendererController;
    :cond_7
    invoke-virtual {v4}, Llewa/laml/RendererController;->hasInited()Z

    move-result v16

    if-nez v16, :cond_8

    .line 215
    invoke-virtual {v4}, Llewa/laml/RendererController;->init()V

    .line 218
    :cond_8
    const/4 v13, 0x0

    .line 220
    .local v13, isFramerateDive:Z
    invoke-virtual {v4}, Llewa/laml/RendererController;->getFramerate()F

    move-result v11

    .line 221
    .local v11, framerate:F
    cmpl-float v16, v11, v14

    if-lez v16, :cond_9

    .line 222
    move v14, v11

    .line 224
    :cond_9
    invoke-virtual {v4}, Llewa/laml/RendererController;->getCurFramerate()F

    move-result v5

    .line 225
    .local v5, curFramerate:F
    cmpl-float v16, v5, v11

    if-eqz v16, :cond_b

    .line 226
    const/high16 v16, 0x3f80

    cmpl-float v16, v5, v16

    if-lez v16, :cond_a

    const/high16 v16, 0x3f80

    cmpg-float v16, v11, v16

    if-gez v16, :cond_a

    .line 227
    const/4 v13, 0x1

    .line 229
    :cond_a
    invoke-virtual {v4, v11}, Llewa/laml/RendererController;->setCurFramerate(F)V

    .line 230
    const-string v16, "RenderThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "framerate changed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at time: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/16 v16, 0x0

    cmpl-float v16, v11, v16

    if-nez v16, :cond_10

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    float-to-int v10, v0

    .line 235
    .local v10, frameTime:I
    invoke-virtual {v4, v10}, Llewa/laml/RendererController;->setFrameTime(I)V

    .line 238
    .end local v10           #frameTime:I
    :cond_b
    if-nez v13, :cond_c

    invoke-virtual {v4}, Llewa/laml/RendererController;->getLastUpdateTime()J

    move-result-wide v18

    sub-long v18, v6, v18

    invoke-virtual {v4}, Llewa/laml/RendererController;->getFrameTime()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v16, v18, v20

    if-gez v16, :cond_c

    invoke-virtual {v4}, Llewa/laml/RendererController;->shouldUpdate()Z

    move-result v16

    if-nez v16, :cond_c

    invoke-virtual {v4}, Llewa/laml/RendererController;->hasMessage()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 241
    :cond_c
    invoke-virtual {v4}, Llewa/laml/RendererController;->getMessage()Landroid/view/MotionEvent;

    move-result-object v9

    .line 242
    .local v9, event:Landroid/view/MotionEvent;
    if-eqz v9, :cond_d

    .line 243
    invoke-virtual {v4, v9}, Llewa/laml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    .line 244
    :cond_d
    invoke-virtual {v4, v6, v7}, Llewa/laml/RendererController;->tick(J)V

    .line 245
    invoke-virtual {v4}, Llewa/laml/RendererController;->doRender()V

    .line 246
    invoke-virtual {v4, v6, v7}, Llewa/laml/RendererController;->setLastUpdateTime(J)V

    .line 247
    const/4 v15, 0x0

    .line 249
    .end local v9           #event:Landroid/view/MotionEvent;
    :cond_e
    invoke-virtual {v4}, Llewa/laml/RendererController;->shouldUpdate()Z

    move-result v16

    if-nez v16, :cond_f

    invoke-virtual {v4}, Llewa/laml/RendererController;->hasMessage()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 250
    :cond_f
    const-wide/16 v18, 0x5

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Llewa/laml/RenderThread;->mNextUpdateInterval:J

    .line 251
    invoke-virtual {v4}, Llewa/laml/RendererController;->pendingRender()Z

    move-result v16

    if-eqz v16, :cond_6

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x14

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 252
    const-string v16, "RenderThread"

    const-string v18, "detected waiting too long for pending render."

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v4}, Llewa/laml/RendererController;->doneRender()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 254
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 233
    :cond_10
    const/high16 v16, 0x447a

    div-float v16, v16, v11

    goto :goto_3

    .line 257
    .end local v4           #c:Llewa/laml/RendererController;
    .end local v5           #curFramerate:F
    .end local v11           #framerate:F
    .end local v13           #isFramerateDive:Z
    :catch_0
    move-exception v8

    .line 258
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    const-string v16, "RenderThread"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 261
    .end local v3           #N:I
    .end local v8           #e:Ljava/lang/Exception;
    .end local v12           #i:I
    :catchall_1
    move-exception v16

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v16

    .restart local v3       #N:I
    .restart local v12       #i:I
    :cond_11
    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 262
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llewa/laml/RenderThread;->mPaused:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 263
    move-object/from16 v0, p0

    iget-wide v0, v0, Llewa/laml/RenderThread;->mNextUpdateInterval:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v14, v1, v2}, Llewa/laml/RenderThread;->sleepForFramerate(FJ)V

    goto/16 :goto_0
.end method

.method public setPaused(Z)V
    .locals 2
    .parameter "pause"

    .prologue
    .line 270
    iget-boolean v0, p0, Llewa/laml/RenderThread;->mPaused:Z

    if-ne v0, p1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Llewa/laml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    iput-boolean p1, p0, Llewa/laml/RenderThread;->mPaused:Z

    if-nez p1, :cond_1

    .line 274
    iget-object v0, p0, Llewa/laml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 275
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPausedSafety(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 279
    iget-boolean v0, p0, Llewa/laml/RenderThread;->mSignaled:Z

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Llewa/laml/RenderThread;->signal()V

    .line 281
    :cond_0
    invoke-virtual {p0, p1}, Llewa/laml/RenderThread;->setPaused(Z)V

    .line 282
    return-void
.end method

.method public setStop()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/RenderThread;->mStop:Z

    .line 286
    invoke-virtual {p0}, Llewa/laml/RenderThread;->signal()V

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llewa/laml/RenderThread;->setPaused(Z)V

    .line 288
    return-void
.end method

.method public signal()V
    .locals 2

    .prologue
    .line 291
    iget-boolean v0, p0, Llewa/laml/RenderThread;->mSignaled:Z

    if-nez v0, :cond_0

    .line 292
    iget-object v1, p0, Llewa/laml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Llewa/laml/RenderThread;->mSignaled:Z

    .line 294
    iget-object v0, p0, Llewa/laml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 295
    monitor-exit v1

    .line 297
    :cond_0
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
