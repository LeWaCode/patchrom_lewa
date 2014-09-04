.class Llewa/track/Tracker$1;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/track/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/track/Tracker;


# direct methods
.method constructor <init>(Llewa/track/Tracker;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Llewa/track/Tracker$1;->this$0:Llewa/track/Tracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Llewa/track/Tracker$1;->this$0:Llewa/track/Tracker;

    invoke-virtual {v0}, Llewa/track/Tracker;->dispatch()Z

    .line 51
    return-void
.end method
