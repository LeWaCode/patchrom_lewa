.class Llewa/track/NetworkDispatcher$DispatcherThread;
.super Landroid/os/HandlerThread;
.source "NetworkDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/track/NetworkDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DispatcherThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;,
        Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;
    }
.end annotation


# instance fields
.field private final callbacks:Llewa/track/IDispatcher$Callbacks;

.field private currentTask:Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

.field volatile handlerExecuteOnDispatcherThread:Landroid/os/Handler;

.field private lastStatusCode:I

.field private maxEventsPerRequest:I

.field private final pipelinedRequester:Llewa/track/PipelinedRequester;

.field private final requesterCallBacks:Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

.field private retryInterval:J

.field private final userAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Llewa/track/IDispatcher$Callbacks;Ljava/lang/String;Llewa/track/NetworkDispatcher;)V
    .locals 2
    .parameter "paramCallbacks"
    .parameter "paramString"
    .parameter "paramNetworkDispatcher"

    .prologue
    .line 116
    new-instance v0, Llewa/track/PipelinedRequester;

    invoke-static {}, Llewa/track/NetworkDispatcher;->access$200()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-direct {v0, v1}, Llewa/track/PipelinedRequester;-><init>(Lorg/apache/http/HttpHost;)V

    invoke-direct {p0, p1, v0, p2, p3}, Llewa/track/NetworkDispatcher$DispatcherThread;-><init>(Llewa/track/IDispatcher$Callbacks;Llewa/track/PipelinedRequester;Ljava/lang/String;Llewa/track/NetworkDispatcher;)V

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Llewa/track/IDispatcher$Callbacks;Ljava/lang/String;Llewa/track/NetworkDispatcher;Llewa/track/NetworkDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Llewa/track/NetworkDispatcher$DispatcherThread;-><init>(Llewa/track/IDispatcher$Callbacks;Ljava/lang/String;Llewa/track/NetworkDispatcher;)V

    return-void
.end method

.method private constructor <init>(Llewa/track/IDispatcher$Callbacks;Llewa/track/PipelinedRequester;Ljava/lang/String;Llewa/track/NetworkDispatcher;)V
    .locals 2
    .parameter "paramCallbacks"
    .parameter "paramPipelinedRequester"
    .parameter "paramString"
    .parameter "paramNetworkDispatcher"

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    const/16 v0, 0x1e

    iput v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->maxEventsPerRequest:I

    .line 109
    iput-object v1, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->currentTask:Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    .line 125
    iput-object p1, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->callbacks:Llewa/track/IDispatcher$Callbacks;

    .line 126
    iput-object p3, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->userAgent:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->pipelinedRequester:Llewa/track/PipelinedRequester;

    .line 128
    new-instance v0, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    invoke-direct {v0, p0, v1}, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;-><init>(Llewa/track/NetworkDispatcher$DispatcherThread;Llewa/track/NetworkDispatcher$1;)V

    iput-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->requesterCallBacks:Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    .line 129
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->pipelinedRequester:Llewa/track/PipelinedRequester;

    iget-object v1, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->requesterCallBacks:Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    invoke-virtual {v0, v1}, Llewa/track/PipelinedRequester;->installCallbacks(Llewa/track/PipelinedRequester$Callbacks;)V

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Llewa/track/IDispatcher$Callbacks;Llewa/track/PipelinedRequester;Ljava/lang/String;Llewa/track/NetworkDispatcher;Llewa/track/NetworkDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Llewa/track/NetworkDispatcher$DispatcherThread;-><init>(Llewa/track/IDispatcher$Callbacks;Llewa/track/PipelinedRequester;Ljava/lang/String;Llewa/track/NetworkDispatcher;)V

    return-void
.end method

.method static synthetic access$1000(Llewa/track/NetworkDispatcher$DispatcherThread;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->requesterCallBacks:Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    return-object v0
.end method

.method static synthetic access$400(Llewa/track/NetworkDispatcher$DispatcherThread;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 102
    iget-wide v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->retryInterval:J

    return-wide v0
.end method

.method static synthetic access$402(Llewa/track/NetworkDispatcher$DispatcherThread;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-wide p1, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->retryInterval:J

    return-wide p1
.end method

.method static synthetic access$414(Llewa/track/NetworkDispatcher$DispatcherThread;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iget-wide v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->retryInterval:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->retryInterval:J

    return-wide v0
.end method

.method static synthetic access$500(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->currentTask:Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    return-object v0
.end method

.method static synthetic access$502(Llewa/track/NetworkDispatcher$DispatcherThread;Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;)Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->currentTask:Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    return-object p1
.end method

.method static synthetic access$600(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/IDispatcher$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->callbacks:Llewa/track/IDispatcher$Callbacks;

    return-object v0
.end method

.method static synthetic access$700(Llewa/track/NetworkDispatcher$DispatcherThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->lastStatusCode:I

    return v0
.end method

.method static synthetic access$702(Llewa/track/NetworkDispatcher$DispatcherThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->lastStatusCode:I

    return p1
.end method

.method static synthetic access$800(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/PipelinedRequester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->pipelinedRequester:Llewa/track/PipelinedRequester;

    return-object v0
.end method

.method static synthetic access$900(Llewa/track/NetworkDispatcher$DispatcherThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->maxEventsPerRequest:I

    return v0
.end method


# virtual methods
.method public dispatchHits([Llewa/track/Hit;)V
    .locals 2
    .parameter "paramArrayOfHit"

    .prologue
    .line 138
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->handlerExecuteOnDispatcherThread:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->handlerExecuteOnDispatcherThread:Landroid/os/Handler;

    new-instance v1, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    invoke-direct {v1, p0, p1}, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;-><init>(Llewa/track/NetworkDispatcher$DispatcherThread;[Llewa/track/Hit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onLooperPrepared()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread;->handlerExecuteOnDispatcherThread:Landroid/os/Handler;

    .line 135
    return-void
.end method
