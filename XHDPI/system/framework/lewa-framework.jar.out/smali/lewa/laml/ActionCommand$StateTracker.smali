.class public abstract Llewa/laml/ActionCommand$StateTracker;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    iput-boolean v0, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 823
    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 824
    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 825
    iput-boolean v0, p0, Llewa/laml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 826
    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 739
    iget-boolean v1, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 747
    :goto_0
    return v0

    .line 741
    :cond_0
    invoke-virtual {p0, p1}, Llewa/laml/ActionCommand$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 745
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 743
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 759
    iget-boolean v0, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 760
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 781
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Llewa/laml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 782
    const-string v1, "ActionCommand"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 785
    const-string v1, "ActionCommand"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    :goto_1
    iput-boolean v3, p0, Llewa/laml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 792
    :cond_1
    return-void

    .line 762
    :pswitch_0
    iput-boolean v4, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 763
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 767
    :pswitch_1
    iput-boolean v4, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 768
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 772
    :pswitch_2
    iput-boolean v3, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 773
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 777
    :pswitch_3
    iput-boolean v3, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 778
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 786
    :cond_2
    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 787
    iput-boolean v4, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 788
    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Llewa/laml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 760
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 795
    invoke-virtual {p0, p1}, Llewa/laml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 796
    .local v0, currentState:I
    sparse-switch v0, :sswitch_data_0

    .line 802
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 813
    :goto_0
    iget-boolean v1, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_2

    .line 814
    iput-boolean v2, p0, Llewa/laml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 819
    :goto_1
    return-void

    .line 806
    :sswitch_0
    iget-object v3, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    :cond_0
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_2

    .line 810
    :sswitch_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    goto :goto_0

    .line 816
    :cond_2
    iput-boolean v2, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 817
    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Llewa/laml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 796
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
