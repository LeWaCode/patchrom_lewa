.class Llewa/track/Tracker$DispatcherCallbacks$1;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/track/Tracker$DispatcherCallbacks;->dispatchFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llewa/track/Tracker$DispatcherCallbacks;


# direct methods
.method constructor <init>(Llewa/track/Tracker$DispatcherCallbacks;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Llewa/track/Tracker$DispatcherCallbacks$1;->this$1:Llewa/track/Tracker$DispatcherCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Llewa/track/Tracker$DispatcherCallbacks$1;->this$1:Llewa/track/Tracker$DispatcherCallbacks;

    iget-object v0, v0, Llewa/track/Tracker$DispatcherCallbacks;->this$0:Llewa/track/Tracker;

    invoke-virtual {v0}, Llewa/track/Tracker;->dispatchFinished()V

    .line 381
    return-void
.end method
