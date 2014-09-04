.class Llewa/laml/data/BroadcastBinder$2;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/BroadcastBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/data/BroadcastBinder;


# direct methods
.method constructor <init>(Llewa/laml/data/BroadcastBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Llewa/laml/data/BroadcastBinder$2;->this$0:Llewa/laml/data/BroadcastBinder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    const-string v0, "BroadcastBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder$2;->this$0:Llewa/laml/data/BroadcastBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Llewa/laml/data/BroadcastBinder;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 147
    return-void
.end method
