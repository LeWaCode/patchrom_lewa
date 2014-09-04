.class public interface abstract Llewa/laml/RendererController$Listener;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Llewa/laml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/RendererController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract finish()V
.end method

.method public abstract init()V
.end method

.method public abstract onTouch(Landroid/view/MotionEvent;)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract tick(J)V
.end method

.method public abstract updateFramerate(J)J
.end method
