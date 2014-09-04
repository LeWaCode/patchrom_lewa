.class abstract Llewa/laml/ActionCommand$NotificationReceiver;
.super Llewa/laml/ActionCommand$StatefulActionCommand;
.source "ActionCommand.java"

# interfaces
.implements Llewa/laml/NotifierManager$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NotificationReceiver"
.end annotation


# instance fields
.field private mNotifierManager:Llewa/laml/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "stateName"
    .parameter "type"

    .prologue
    .line 591
    invoke-direct {p0, p1, p2}, Llewa/laml/ActionCommand$StatefulActionCommand;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V

    .line 592
    iput-object p3, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 593
    iget-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Llewa/laml/NotifierManager;->getInstance(Landroid/content/Context;)Llewa/laml/NotifierManager;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mNotifierManager:Llewa/laml/NotifierManager;

    .line 594
    return-void
.end method


# virtual methods
.method protected asyncUpdate()V
    .locals 2

    .prologue
    .line 559
    invoke-static {}, Llewa/laml/ActionCommand;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Llewa/laml/ActionCommand$NotificationReceiver$1;

    invoke-direct {v1, p0}, Llewa/laml/ActionCommand$NotificationReceiver$1;-><init>(Llewa/laml/ActionCommand$NotificationReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->releaseNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 568
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 571
    invoke-virtual {p0}, Llewa/laml/ActionCommand$NotificationReceiver;->update()V

    .line 572
    iget-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->acquireNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 573
    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 576
    invoke-virtual {p0}, Llewa/laml/ActionCommand$NotificationReceiver;->asyncUpdate()V

    .line 577
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->pause(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 581
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 584
    invoke-virtual {p0}, Llewa/laml/ActionCommand$NotificationReceiver;->update()V

    .line 585
    iget-object v0, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->resume(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 586
    return-void
.end method

.method protected abstract update()V
.end method
