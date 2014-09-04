.class public abstract Llewa/laml/data/NotifierVariableUpdater;
.super Llewa/laml/data/VariableUpdater;
.source "NotifierVariableUpdater.java"

# interfaces
.implements Llewa/laml/NotifierManager$OnNotifyListener;


# instance fields
.field protected mNotifierManager:Llewa/laml/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llewa/laml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 1
    .parameter "m"
    .parameter "type"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Llewa/laml/data/VariableUpdater;-><init>(Llewa/laml/data/VariableUpdaterManager;)V

    .line 17
    iput-object p2, p0, Llewa/laml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Llewa/laml/data/VariableUpdaterManager;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Llewa/laml/NotifierManager;->getInstance(Landroid/content/Context;)Llewa/laml/NotifierManager;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/NotifierVariableUpdater;->mNotifierManager:Llewa/laml/NotifierManager;

    .line 19
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Llewa/laml/data/NotifierVariableUpdater;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->releaseNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 23
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Llewa/laml/data/NotifierVariableUpdater;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->acquireNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 27
    return-void
.end method

.method public abstract onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Llewa/laml/data/NotifierVariableUpdater;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->pause(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 33
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Llewa/laml/data/NotifierVariableUpdater;->mNotifierManager:Llewa/laml/NotifierManager;

    iget-object v1, p0, Llewa/laml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->resume(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 37
    return-void
.end method
