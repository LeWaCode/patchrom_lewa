.class public Llewa/laml/RendererCore;
.super Ljava/lang/Object;
.source "RendererCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/RendererCore$OnReleaseListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCore"


# instance fields
.field private mCleaned:Z

.field private mListener:Llewa/laml/SingleRootListener;

.field private mMultipleRenderable:Llewa/laml/MultipleRenderable;

.field private mOnReleaseListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Llewa/laml/RendererCore$OnReleaseListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z

.field private mRendererController:Llewa/laml/RendererController;

.field private mRoot:Llewa/laml/ScreenElementRoot;

.field private mThread:Llewa/laml/RenderThread;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Llewa/laml/MultipleRenderable;

    invoke-direct {v0}, Llewa/laml/MultipleRenderable;-><init>()V

    iput-object v0, p0, Llewa/laml/RendererCore;->mMultipleRenderable:Llewa/laml/MultipleRenderable;

    .line 34
    invoke-direct {p0, p1}, Llewa/laml/RendererCore;->attach(Llewa/laml/ScreenElementRoot;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Llewa/laml/ScreenElementRoot;Llewa/laml/RenderThread;)V
    .locals 1
    .parameter "root"
    .parameter "t"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Llewa/laml/MultipleRenderable;

    invoke-direct {v0}, Llewa/laml/MultipleRenderable;-><init>()V

    iput-object v0, p0, Llewa/laml/RendererCore;->mMultipleRenderable:Llewa/laml/MultipleRenderable;

    .line 38
    invoke-direct {p0, p1, p2}, Llewa/laml/RendererCore;->attach(Llewa/laml/ScreenElementRoot;Llewa/laml/RenderThread;)V

    .line 39
    return-void
.end method

.method private attach(Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Llewa/laml/RenderThread;->globalThread(Z)Llewa/laml/RenderThread;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Llewa/laml/RendererCore;->attach(Llewa/laml/ScreenElementRoot;Llewa/laml/RenderThread;)V

    .line 43
    return-void
.end method

.method private attach(Llewa/laml/ScreenElementRoot;Llewa/laml/RenderThread;)V
    .locals 3
    .parameter "root"
    .parameter "t"

    .prologue
    .line 46
    iput-object p2, p0, Llewa/laml/RendererCore;->mThread:Llewa/laml/RenderThread;

    .line 47
    iput-object p1, p0, Llewa/laml/RendererCore;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 48
    new-instance v0, Llewa/laml/SingleRootListener;

    iget-object v1, p0, Llewa/laml/RendererCore;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v2, p0, Llewa/laml/RendererCore;->mMultipleRenderable:Llewa/laml/MultipleRenderable;

    invoke-direct {v0, v1, v2}, Llewa/laml/SingleRootListener;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/RendererController$IRenderable;)V

    iput-object v0, p0, Llewa/laml/RendererCore;->mListener:Llewa/laml/SingleRootListener;

    .line 49
    new-instance v0, Llewa/laml/RendererController;

    iget-object v1, p0, Llewa/laml/RendererCore;->mListener:Llewa/laml/SingleRootListener;

    invoke-direct {v0, v1}, Llewa/laml/RendererController;-><init>(Llewa/laml/RendererController$Listener;)V

    iput-object v0, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    .line 50
    iget-object v0, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->selfPause()V

    .line 51
    iget-object v0, p0, Llewa/laml/RendererCore;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v1, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->setRenderController(Llewa/laml/RendererController;)V

    .line 52
    iget-object v0, p0, Llewa/laml/RendererCore;->mThread:Llewa/laml/RenderThread;

    iget-object v1, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0, v1}, Llewa/laml/RenderThread;->addRendererController(Llewa/laml/RendererController;)V

    .line 53
    return-void
.end method

.method public static create(Landroid/content/Context;Llewa/laml/ResourceLoader;)Llewa/laml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "loader"

    .prologue
    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, p1, v0}, Llewa/laml/RendererCore;->create(Landroid/content/Context;Llewa/laml/ResourceLoader;Landroid/os/Handler;)Llewa/laml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Llewa/laml/ResourceLoader;Landroid/os/Handler;)Llewa/laml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "h"

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-static {v0}, Llewa/laml/RenderThread;->globalThread(Z)Llewa/laml/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Llewa/laml/RendererCore;->create(Landroid/content/Context;Llewa/laml/ResourceLoader;Llewa/laml/RenderThread;Landroid/os/Handler;)Llewa/laml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Llewa/laml/ResourceLoader;Llewa/laml/RenderThread;)Llewa/laml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "t"

    .prologue
    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, p1, p2, v0}, Llewa/laml/RendererCore;->create(Landroid/content/Context;Llewa/laml/ResourceLoader;Llewa/laml/RenderThread;Landroid/os/Handler;)Llewa/laml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Llewa/laml/ResourceLoader;Llewa/laml/RenderThread;Landroid/os/Handler;)Llewa/laml/RendererCore;
    .locals 8
    .parameter "context"
    .parameter "loader"
    .parameter "t"
    .parameter "h"

    .prologue
    .line 69
    new-instance v0, Llewa/laml/LifecycleResourceManager;

    const-wide/32 v2, 0x2255100

    const-wide/32 v4, 0x36ee80

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Llewa/laml/LifecycleResourceManager;-><init>(Llewa/laml/ResourceLoader;JJ)V

    .line 71
    .local v0, rm:Llewa/laml/LifecycleResourceManager;
    new-instance v6, Llewa/laml/ScreenContext;

    invoke-direct {v6, p0, v0, p3}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Landroid/os/Handler;)V

    .line 72
    .local v6, mElementContext:Llewa/laml/ScreenContext;
    new-instance v7, Llewa/laml/ScreenElementRoot;

    invoke-direct {v7, v6}, Llewa/laml/ScreenElementRoot;-><init>(Llewa/laml/ScreenContext;)V

    .line 73
    .local v7, root:Llewa/laml/ScreenElementRoot;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Llewa/laml/ScreenElementRoot;->setDefaultFramerate(F)V

    .line 74
    invoke-virtual {v7}, Llewa/laml/ScreenElementRoot;->load()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Llewa/laml/RendererCore;

    invoke-direct {v1, v7, p2}, Llewa/laml/RendererCore;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/RenderThread;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createFromZipFile(Landroid/content/Context;Ljava/lang/String;)Llewa/laml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, p1, v0}, Llewa/laml/RendererCore;->createFromZipFile(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Llewa/laml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static createFromZipFile(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Llewa/laml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "path"
    .parameter "h"

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-static {v0}, Llewa/laml/RenderThread;->globalThread(Z)Llewa/laml/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Llewa/laml/RendererCore;->createFromZipFile(Landroid/content/Context;Ljava/lang/String;Llewa/laml/RenderThread;Landroid/os/Handler;)Llewa/laml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static createFromZipFile(Landroid/content/Context;Ljava/lang/String;Llewa/laml/RenderThread;)Llewa/laml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "path"
    .parameter "t"

    .prologue
    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, p1, p2, v0}, Llewa/laml/RendererCore;->createFromZipFile(Landroid/content/Context;Ljava/lang/String;Llewa/laml/RenderThread;Landroid/os/Handler;)Llewa/laml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static createFromZipFile(Landroid/content/Context;Ljava/lang/String;Llewa/laml/RenderThread;Landroid/os/Handler;)Llewa/laml/RendererCore;
    .locals 3
    .parameter "context"
    .parameter "path"
    .parameter "t"
    .parameter "h"

    .prologue
    .line 91
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 92
    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Llewa/laml/util/ZipResourceLoader;

    invoke-direct {v1, p1}, Llewa/laml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Llewa/laml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Llewa/laml/ResourceLoader;

    move-result-object v0

    .line 95
    .local v0, loader:Llewa/laml/ResourceLoader;
    invoke-static {p0, v0, p2, p3}, Llewa/laml/RendererCore;->create(Landroid/content/Context;Llewa/laml/ResourceLoader;Llewa/laml/RenderThread;Landroid/os/Handler;)Llewa/laml/RendererCore;

    move-result-object v1

    .line 97
    .end local v0           #loader:Llewa/laml/ResourceLoader;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 99
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method


# virtual methods
.method public declared-synchronized addRenderable(Llewa/laml/RendererController$IRenderable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Llewa/laml/RendererCore;->mCleaned:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Llewa/laml/RendererCore;->mMultipleRenderable:Llewa/laml/MultipleRenderable;

    invoke-virtual {v0, p1}, Llewa/laml/MultipleRenderable;->add(Llewa/laml/RendererController$IRenderable;)V

    .line 105
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llewa/laml/RendererCore;->mMultipleRenderable:Llewa/laml/MultipleRenderable;

    invoke-virtual {v2}, Llewa/laml/MultipleRenderable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->selfResume()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/RendererCore;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/RendererCore;->mCleaned:Z

    .line 113
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Llewa/laml/RendererCore;->mRoot:Llewa/laml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Llewa/laml/RendererCore;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0, v3}, Llewa/laml/ScreenElementRoot;->setRenderController(Llewa/laml/RendererController;)V

    .line 116
    iput-object v3, p0, Llewa/laml/RendererCore;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 119
    :cond_0
    iget-object v0, p0, Llewa/laml/RendererCore;->mThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Llewa/laml/RendererCore;->mThread:Llewa/laml/RenderThread;

    iget-object v1, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0, v1}, Llewa/laml/RenderThread;->removeRendererController(Llewa/laml/RendererController;)V

    .line 121
    iget-object v0, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->finish()V

    .line 122
    iput-object v3, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    .line 123
    iput-object v3, p0, Llewa/laml/RendererCore;->mThread:Llewa/laml/RenderThread;

    .line 125
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Llewa/laml/RendererCore;->cleanUp()V

    .line 129
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 130
    return-void
.end method

.method public getFramerate()F
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->getFramerate()F

    move-result v0

    return v0
.end method

.method public getRoot()Llewa/laml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Llewa/laml/RendererCore;->mRoot:Llewa/laml/ScreenElementRoot;

    return-object v0
.end method

.method public declared-synchronized pauseRenderable(Llewa/laml/RendererController$IRenderable;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Llewa/laml/RendererCore;->mCleaned:Z

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Llewa/laml/RendererCore;->mMultipleRenderable:Llewa/laml/MultipleRenderable;

    invoke-virtual {v1, p1}, Llewa/laml/MultipleRenderable;->pause(Llewa/laml/RendererController$IRenderable;)I

    move-result v0

    .line 139
    .local v0, active:I
    if-nez v0, :cond_0

    .line 140
    const-string v1, "RendererCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "self pause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v1}, Llewa/laml/RendererController;->selfPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v0           #active:I
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeRenderable(Llewa/laml/RendererController$IRenderable;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Llewa/laml/RendererCore;->mCleaned:Z

    if-nez v1, :cond_1

    .line 148
    iget-object v1, p0, Llewa/laml/RendererCore;->mMultipleRenderable:Llewa/laml/MultipleRenderable;

    invoke-virtual {v1, p1}, Llewa/laml/MultipleRenderable;->remove(Llewa/laml/RendererController$IRenderable;)V

    .line 149
    const-string v1, "RendererCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Llewa/laml/RendererCore;->mMultipleRenderable:Llewa/laml/MultipleRenderable;

    invoke-virtual {v3}, Llewa/laml/MultipleRenderable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Llewa/laml/RendererCore;->mMultipleRenderable:Llewa/laml/MultipleRenderable;

    invoke-virtual {v1}, Llewa/laml/MultipleRenderable;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v1}, Llewa/laml/RendererController;->selfPause()V

    .line 152
    iget-boolean v1, p0, Llewa/laml/RendererCore;->mReleased:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Llewa/laml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Llewa/laml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/RendererCore$OnReleaseListener;

    .line 154
    .local v0, listener:Llewa/laml/RendererCore$OnReleaseListener;
    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p0}, Llewa/laml/RendererCore$OnReleaseListener;->OnRendererCoreReleased(Llewa/laml/RendererCore;)V

    .line 157
    .end local v0           #listener:Llewa/laml/RendererCore$OnReleaseListener;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llewa/laml/RendererCore;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_1
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 167
    iget-boolean v0, p0, Llewa/laml/RendererCore;->mCleaned:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llewa/laml/RendererCore;->mThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Llewa/laml/RendererCore;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Llewa/laml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 170
    :cond_0
    return-void
.end method

.method public declared-synchronized resumeRenderable(Llewa/laml/RendererController$IRenderable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Llewa/laml/RendererCore;->mCleaned:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Llewa/laml/RendererCore;->mMultipleRenderable:Llewa/laml/MultipleRenderable;

    invoke-virtual {v0, p1}, Llewa/laml/MultipleRenderable;->resume(Llewa/laml/RendererController$IRenderable;)I

    .line 175
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "self resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Llewa/laml/RendererCore;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->selfResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnReleaseListener(Llewa/laml/RendererCore$OnReleaseListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llewa/laml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    .line 182
    return-void
.end method
