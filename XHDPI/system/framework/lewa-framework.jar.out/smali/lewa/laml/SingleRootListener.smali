.class public Llewa/laml/SingleRootListener;
.super Ljava/lang/Object;
.source "SingleRootListener.java"

# interfaces
.implements Llewa/laml/RendererController$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SingleRootListener"


# instance fields
.field private mRenderable:Llewa/laml/RendererController$IRenderable;

.field private mRoot:Llewa/laml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Llewa/laml/RendererController$IRenderable;)V
    .locals 2
    .parameter "root"
    .parameter "renderable"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p2, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "renderable is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    iput-object p2, p0, Llewa/laml/SingleRootListener;->mRenderable:Llewa/laml/RendererController$IRenderable;

    .line 21
    invoke-virtual {p0, p1}, Llewa/laml/SingleRootListener;->setRoot(Llewa/laml/ScreenElementRoot;)V

    .line 22
    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llewa/laml/SingleRootListener;->mRenderable:Llewa/laml/RendererController$IRenderable;

    invoke-interface {v0}, Llewa/laml/RendererController$IRenderable;->doRender()V

    .line 26
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llewa/laml/SingleRootListener;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->finish()V

    .line 30
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llewa/laml/SingleRootListener;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->init()V

    .line 34
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Llewa/laml/SingleRootListener;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Llewa/laml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SingleRootListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "SingleRootListener"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Llewa/laml/SingleRootListener;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->pause()V

    .line 49
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Llewa/laml/SingleRootListener;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->resume()V

    .line 53
    return-void
.end method

.method public setRoot(Llewa/laml/ScreenElementRoot;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "root is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Llewa/laml/SingleRootListener;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 59
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 62
    iget-object v0, p0, Llewa/laml/SingleRootListener;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Llewa/laml/ScreenElementRoot;->tick(J)V

    .line 63
    return-void
.end method

.method public updateFramerate(J)J
    .locals 2
    .parameter "time"

    .prologue
    .line 66
    iget-object v0, p0, Llewa/laml/SingleRootListener;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Llewa/laml/ScreenElementRoot;->updateFramerate(J)J

    move-result-wide v0

    return-wide v0
.end method
