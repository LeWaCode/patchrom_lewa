.class public Llewa/laml/AdvancedView;
.super Landroid/view/View;
.source "AdvancedView.java"

# interfaces
.implements Llewa/laml/RendererController$IRenderable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdvancedView"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field private mListener:Llewa/laml/SingleRootListener;

.field private mLoggedHardwareRender:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mPaused:Z

.field protected mRendererController:Llewa/laml/RendererController;

.field protected mRoot:Llewa/laml/ScreenElementRoot;

.field private mThread:Llewa/laml/RenderThread;

.field private mUseExternalRenderThread:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Llewa/laml/ScreenElementRoot;)V
    .locals 2
    .parameter "context"
    .parameter "root"

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean v0, p0, Llewa/laml/AdvancedView;->mPaused:Z

    .line 36
    invoke-virtual {p0, v0}, Llewa/laml/AdvancedView;->setFocusable(Z)V

    .line 37
    invoke-virtual {p0, v0}, Llewa/laml/AdvancedView;->setFocusableInTouchMode(Z)V

    .line 38
    iput-object p2, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 39
    new-instance v0, Llewa/laml/SingleRootListener;

    iget-object v1, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Llewa/laml/SingleRootListener;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/RendererController$IRenderable;)V

    iput-object v0, p0, Llewa/laml/AdvancedView;->mListener:Llewa/laml/SingleRootListener;

    .line 40
    new-instance v0, Llewa/laml/RendererController;

    iget-object v1, p0, Llewa/laml/AdvancedView;->mListener:Llewa/laml/SingleRootListener;

    invoke-direct {v0, v1}, Llewa/laml/RendererController;-><init>(Llewa/laml/RendererController$Listener;)V

    iput-object v0, p0, Llewa/laml/AdvancedView;->mRendererController:Llewa/laml/RendererController;

    .line 41
    iget-object v0, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v1, p0, Llewa/laml/AdvancedView;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->setRenderController(Llewa/laml/RendererController;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ScreenElementRoot;Llewa/laml/RenderThread;)V
    .locals 2
    .parameter "context"
    .parameter "root"
    .parameter "t"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Llewa/laml/AdvancedView;-><init>(Landroid/content/Context;Llewa/laml/ScreenElementRoot;)V

    .line 46
    if-eqz p3, :cond_0

    .line 47
    iget-object v0, p0, Llewa/laml/AdvancedView;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->init()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/AdvancedView;->mUseExternalRenderThread:Z

    .line 49
    iput-object p3, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    .line 50
    iget-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    iget-object v1, p0, Llewa/laml/AdvancedView;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0, v1}, Llewa/laml/RenderThread;->addRendererController(Llewa/laml/RendererController;)V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llewa/laml/AdvancedView;->cleanUp(Z)V

    .line 56
    return-void
.end method

.method public cleanUp(Z)V
    .locals 2
    .parameter "keepResource"

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Llewa/laml/ScreenElementRoot;->setKeepResource(Z)V

    .line 60
    invoke-virtual {p0, v1}, Llewa/laml/AdvancedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    iget-object v0, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->setRenderController(Llewa/laml/RendererController;)V

    .line 62
    iget-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_1

    .line 63
    iget-boolean v0, p0, Llewa/laml/AdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->setStop()V

    .line 65
    :cond_0
    iget-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    iget-object v1, p0, Llewa/laml/AdvancedView;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0, v1}, Llewa/laml/RenderThread;->removeRendererController(Llewa/laml/RendererController;)V

    .line 66
    iget-object v0, p0, Llewa/laml/AdvancedView;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->finish()V

    .line 68
    :cond_1
    return-void
.end method

.method public doRender()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Llewa/laml/AdvancedView;->postInvalidate()V

    .line 72
    return-void
.end method

.method public final getRoot()Llewa/laml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 88
    iget-boolean v0, p0, Llewa/laml/AdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Llewa/laml/RenderThread;

    iget-object v1, p0, Llewa/laml/AdvancedView;->mRendererController:Llewa/laml/RendererController;

    invoke-direct {v0, v1}, Llewa/laml/RenderThread;-><init>(Llewa/laml/RendererController;)V

    iput-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    .line 90
    iget-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    iget-boolean v1, p0, Llewa/laml/AdvancedView;->mPaused:Z

    invoke-virtual {v0, v1}, Llewa/laml/RenderThread;->setPaused(Z)V

    .line 91
    iget-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->start()V

    .line 93
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 97
    iget-object v1, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    invoke-virtual {v1}, Llewa/laml/RenderThread;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-boolean v1, p0, Llewa/laml/AdvancedView;->mLoggedHardwareRender:Z

    if-nez v1, :cond_2

    .line 101
    const-string v1, "AdvancedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canvas hardware render: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Llewa/laml/AdvancedView;->mLoggedHardwareRender:Z

    .line 106
    :cond_2
    :try_start_0
    iget-object v1, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Llewa/laml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AdvancedView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "AdvancedView"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 115
    const-string v0, "view_width"

    iget-object v1, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    sub-int v2, p4, p2

    int-to-double v2, v2

    iget-object v4, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v4}, Llewa/laml/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 117
    const-string v0, "view_height"

    iget-object v1, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    sub-int v2, p5, p3

    int-to-double v2, v2

    iget-object v4, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v4}, Llewa/laml/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 119
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 122
    iput-boolean v1, p0, Llewa/laml/AdvancedView;->mPaused:Z

    .line 123
    iget-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_1

    .line 124
    iget-boolean v0, p0, Llewa/laml/AdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    invoke-virtual {v0, v1}, Llewa/laml/RenderThread;->setPaused(Z)V

    .line 126
    :cond_0
    iget-object v0, p0, Llewa/laml/AdvancedView;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->selfPause()V

    .line 128
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Llewa/laml/AdvancedView;->mPaused:Z

    .line 132
    iget-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_1

    .line 133
    iget-boolean v0, p0, Llewa/laml/AdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Llewa/laml/AdvancedView;->mThread:Llewa/laml/RenderThread;

    invoke-virtual {v0, v1}, Llewa/laml/RenderThread;->setPaused(Z)V

    .line 135
    :cond_0
    iget-object v0, p0, Llewa/laml/AdvancedView;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->selfResume()V

    .line 137
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v2, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-lez v2, :cond_1

    .line 142
    const-string v2, "AdvancedView"

    const-string v3, "touch point index > 1, ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 146
    :cond_1
    iget-object v1, p0, Llewa/laml/AdvancedView;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 147
    .local v0, b:Z
    iget-boolean v1, p0, Llewa/laml/AdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_2

    .line 148
    invoke-virtual {p0}, Llewa/laml/AdvancedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 149
    iput-boolean v0, p0, Llewa/laml/AdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    .line 152
    :cond_2
    iget-object v1, p0, Llewa/laml/AdvancedView;->mRendererController:Llewa/laml/RendererController;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Llewa/laml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    .line 153
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    if-nez p1, :cond_1

    .line 161
    invoke-virtual {p0}, Llewa/laml/AdvancedView;->onResume()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Llewa/laml/AdvancedView;->onPause()V

    goto :goto_0
.end method
