.class interface abstract Llewa/track/IDispatcher;
.super Ljava/lang/Object;
.source "IDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/track/IDispatcher$Callbacks;
    }
.end annotation


# virtual methods
.method public abstract dispatchHits([Llewa/track/Hit;)V
.end method

.method public abstract init(Llewa/track/IDispatcher$Callbacks;)V
.end method

.method public abstract isDryRun()Z
.end method

.method public abstract setDryRun(Z)V
.end method

.method public abstract stop()V
.end method
