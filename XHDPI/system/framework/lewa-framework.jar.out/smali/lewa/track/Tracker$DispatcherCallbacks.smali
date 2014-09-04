.class final Llewa/track/Tracker$DispatcherCallbacks;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Llewa/track/IDispatcher$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/track/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DispatcherCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/track/Tracker;


# direct methods
.method constructor <init>(Llewa/track/Tracker;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Llewa/track/Tracker$DispatcherCallbacks;->this$0:Llewa/track/Tracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    return-void
.end method


# virtual methods
.method public dispatchFinished()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Llewa/track/Tracker$DispatcherCallbacks;->this$0:Llewa/track/Tracker;

    #getter for: Llewa/track/Tracker;->handler:Landroid/os/Handler;
    invoke-static {v0}, Llewa/track/Tracker;->access$000(Llewa/track/Tracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Llewa/track/Tracker$DispatcherCallbacks$1;

    invoke-direct {v1, p0}, Llewa/track/Tracker$DispatcherCallbacks$1;-><init>(Llewa/track/Tracker$DispatcherCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method

.method public hitDispatched(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 386
    iget-object v0, p0, Llewa/track/Tracker$DispatcherCallbacks;->this$0:Llewa/track/Tracker;

    #getter for: Llewa/track/Tracker;->hitStore:Llewa/track/Hit$IHitStore;
    invoke-static {v0}, Llewa/track/Tracker;->access$100(Llewa/track/Tracker;)Llewa/track/Hit$IHitStore;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Llewa/track/Hit$IHitStore;->deleteHit(J)V

    .line 387
    return-void
.end method
