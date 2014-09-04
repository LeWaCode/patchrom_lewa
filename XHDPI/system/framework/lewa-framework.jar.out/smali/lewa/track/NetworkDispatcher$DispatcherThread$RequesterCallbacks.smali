.class Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;
.super Ljava/lang/Object;
.source "NetworkDispatcher.java"

# interfaces
.implements Llewa/track/PipelinedRequester$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/track/NetworkDispatcher$DispatcherThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequesterCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/track/NetworkDispatcher$DispatcherThread;


# direct methods
.method private constructor <init>(Llewa/track/NetworkDispatcher$DispatcherThread;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Llewa/track/NetworkDispatcher$DispatcherThread;Llewa/track/NetworkDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;-><init>(Llewa/track/NetworkDispatcher$DispatcherThread;)V

    return-void
.end method


# virtual methods
.method public pipelineModeChanged(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    const-wide/16 v1, 0x1e

    invoke-static {v0, v1, v2}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$414(Llewa/track/NetworkDispatcher$DispatcherThread;J)J

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$414(Llewa/track/NetworkDispatcher$DispatcherThread;J)J

    goto :goto_0
.end method

.method public requestSent()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->currentTask:Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;
    invoke-static {v1}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$500(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    move-result-object v1

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->currentTask:Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;
    invoke-static {v1}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$500(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    move-result-object v1

    invoke-virtual {v1}, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->removeNextHit()Llewa/track/Hit;

    move-result-object v0

    .line 161
    .local v0, localHit:Llewa/track/Hit;
    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->callbacks:Llewa/track/IDispatcher$Callbacks;
    invoke-static {v1}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$600(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/IDispatcher$Callbacks;

    move-result-object v1

    iget-wide v2, v0, Llewa/track/Hit;->hitId:J

    invoke-interface {v1, v2, v3}, Llewa/track/IDispatcher$Callbacks;->hitDispatched(J)V

    goto :goto_0
.end method

.method public serverError(I)V
    .locals 1
    .parameter "laststatuscode"

    .prologue
    .line 167
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #setter for: Llewa/track/NetworkDispatcher$DispatcherThread;->lastStatusCode:I
    invoke-static {v0, p1}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$702(Llewa/track/NetworkDispatcher$DispatcherThread;I)I

    .line 168
    return-void
.end method
