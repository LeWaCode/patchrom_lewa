.class public interface abstract Llewa/track/PipelinedRequester$Callbacks;
.super Ljava/lang/Object;
.source "PipelinedRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/track/PipelinedRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract pipelineModeChanged(Z)V
.end method

.method public abstract requestSent()V
.end method

.method public abstract serverError(I)V
.end method
