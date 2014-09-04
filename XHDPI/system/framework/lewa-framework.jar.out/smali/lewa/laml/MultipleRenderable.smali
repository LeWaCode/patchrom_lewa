.class public Llewa/laml/MultipleRenderable;
.super Ljava/lang/Object;
.source "MultipleRenderable.java"

# interfaces
.implements Llewa/laml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/MultipleRenderable$RenderableInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultipleRenderable"


# instance fields
.field private mActiveCount:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/MultipleRenderable$RenderableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 89
    return-void
.end method

.method private find(Llewa/laml/RendererController$IRenderable;)Llewa/laml/MultipleRenderable$RenderableInfo;
    .locals 4
    .parameter "r"

    .prologue
    .line 18
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Llewa/laml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 19
    iget-object v3, p0, Llewa/laml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/MultipleRenderable$RenderableInfo;

    .line 20
    .local v2, ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    iget-object v3, v2, Llewa/laml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 23
    .end local v2           #ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    :goto_1
    return-object v2

    .line 18
    .restart local v2       #ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v2           #ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setPause(Llewa/laml/RendererController$IRenderable;Z)I
    .locals 4
    .parameter "r"
    .parameter "pause"

    .prologue
    .line 27
    const-string v1, "MultipleRenderable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {p0, p1}, Llewa/laml/MultipleRenderable;->find(Llewa/laml/RendererController$IRenderable;)Llewa/laml/MultipleRenderable$RenderableInfo;

    move-result-object v0

    .line 30
    .local v0, ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    if-nez v0, :cond_0

    .line 31
    iget v1, p0, Llewa/laml/MultipleRenderable;->mActiveCount:I

    .line 37
    :goto_0
    return v1

    .line 33
    :cond_0
    iget-boolean v1, v0, Llewa/laml/MultipleRenderable$RenderableInfo;->paused:Z

    if-eq v1, p2, :cond_1

    .line 34
    iput-boolean p2, v0, Llewa/laml/MultipleRenderable$RenderableInfo;->paused:Z

    .line 35
    iget v2, p0, Llewa/laml/MultipleRenderable;->mActiveCount:I

    if-eqz p2, :cond_2

    const/4 v1, -0x1

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Llewa/laml/MultipleRenderable;->mActiveCount:I

    .line 37
    :cond_1
    iget v1, p0, Llewa/laml/MultipleRenderable;->mActiveCount:I

    goto :goto_0

    .line 35
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized add(Llewa/laml/RendererController$IRenderable;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Llewa/laml/MultipleRenderable;->find(Llewa/laml/RendererController$IRenderable;)Llewa/laml/MultipleRenderable$RenderableInfo;

    move-result-object v0

    .line 42
    .local v0, ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    if-nez v0, :cond_0

    .line 43
    const-string v1, "MultipleRenderable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Llewa/laml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    new-instance v2, Llewa/laml/MultipleRenderable$RenderableInfo;

    invoke-direct {v2, p1}, Llewa/laml/MultipleRenderable$RenderableInfo;-><init>(Llewa/laml/RendererController$IRenderable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget v1, p0, Llewa/laml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llewa/laml/MultipleRenderable;->mActiveCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    .end local v0           #ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized doRender()V
    .locals 4

    .prologue
    .line 50
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Llewa/laml/MultipleRenderable;->mActiveCount:I

    .line 51
    iget-object v3, p0, Llewa/laml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 52
    iget-object v3, p0, Llewa/laml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/MultipleRenderable$RenderableInfo;

    .line 53
    .local v2, ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    iget-object v3, v2, Llewa/laml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/RendererController$IRenderable;

    .line 54
    .local v1, r:Llewa/laml/RendererController$IRenderable;
    if-eqz v1, :cond_1

    .line 55
    iget-boolean v3, v2, Llewa/laml/MultipleRenderable$RenderableInfo;->paused:Z

    if-nez v3, :cond_0

    .line 56
    invoke-interface {v1}, Llewa/laml/RendererController$IRenderable;->doRender()V

    .line 57
    iget v3, p0, Llewa/laml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Llewa/laml/MultipleRenderable;->mActiveCount:I

    .line 51
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v3, p0, Llewa/laml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 50
    .end local v0           #i:I
    .end local v1           #r:Llewa/laml/RendererController$IRenderable;
    .end local v2           #ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 63
    .restart local v0       #i:I
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized pause(Llewa/laml/RendererController$IRenderable;)I
    .locals 1
    .parameter "r"

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Llewa/laml/MultipleRenderable;->setPause(Llewa/laml/RendererController$IRenderable;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Llewa/laml/RendererController$IRenderable;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Llewa/laml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 67
    iget-object v3, p0, Llewa/laml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/MultipleRenderable$RenderableInfo;

    .line 68
    .local v2, ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    iget-object v3, v2, Llewa/laml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/RendererController$IRenderable;

    .line 69
    .local v1, ren:Llewa/laml/RendererController$IRenderable;
    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_1

    iget-boolean v3, v2, Llewa/laml/MultipleRenderable$RenderableInfo;->paused:Z

    if-nez v3, :cond_1

    .line 70
    iget v3, p0, Llewa/laml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Llewa/laml/MultipleRenderable;->mActiveCount:I

    .line 71
    iget-object v3, p0, Llewa/laml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v1           #ren:Llewa/laml/RendererController$IRenderable;
    .end local v2           #ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    .restart local v1       #ren:Llewa/laml/RendererController$IRenderable;
    .restart local v2       #ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #ren:Llewa/laml/RendererController$IRenderable;
    .end local v2           #ri:Llewa/laml/MultipleRenderable$RenderableInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized resume(Llewa/laml/RendererController$IRenderable;)I
    .locals 1
    .parameter "r"

    .prologue
    .line 82
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Llewa/laml/MultipleRenderable;->setPause(Llewa/laml/RendererController$IRenderable;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llewa/laml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
