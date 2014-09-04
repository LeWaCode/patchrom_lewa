.class public Llewa/laml/RendererController;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Llewa/laml/FramerateTokenList$FramerateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/RendererController$Listener;,
        Llewa/laml/RendererController$IRenderable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"

.field private static final MAX_MSG_COUNT:I = 0x5


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:I

.field private mFramerateTokenList:Llewa/laml/FramerateTokenList;

.field protected mGlobal:Z

.field private mInited:Z

.field private mLastUpdateSystemTime:J

.field private mListener:Llewa/laml/RendererController$Listener;

.field private mLock:Ljava/lang/Object;

.field private mMsgQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mPendingRender:Z

.field protected mRenderThread:Llewa/laml/RenderThread;

.field private mSelfPaused:Z

.field private mShouldUpdate:Z

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method public constructor <init>(Llewa/laml/RendererController$Listener;)V
    .locals 2
    .parameter "l"

    .prologue
    const/high16 v1, -0x4080

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const v0, 0x7fffffff

    iput v0, p0, Llewa/laml/RendererController;->mFrameTime:I

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/laml/RendererController;->mLock:Ljava/lang/Object;

    .line 44
    iput v1, p0, Llewa/laml/RendererController;->mTouchX:F

    .line 46
    iput v1, p0, Llewa/laml/RendererController;->mTouchY:F

    .line 49
    invoke-virtual {p0, p1}, Llewa/laml/RendererController;->setListener(Llewa/laml/RendererController$Listener;)V

    .line 50
    new-instance v0, Llewa/laml/FramerateTokenList;

    invoke-direct {v0, p0}, Llewa/laml/FramerateTokenList;-><init>(Llewa/laml/FramerateTokenList$FramerateChangeListener;)V

    iput-object v0, p0, Llewa/laml/RendererController;->mFramerateTokenList:Llewa/laml/FramerateTokenList;

    .line 51
    return-void
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Llewa/laml/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 54
    iget-object v0, p0, Llewa/laml/RendererController;->mFramerateTokenList:Llewa/laml/FramerateTokenList;

    invoke-virtual {v0, p1}, Llewa/laml/FramerateTokenList;->createToken(Ljava/lang/String;)Llewa/laml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doRender()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/RendererController;->mPendingRender:Z

    .line 60
    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    invoke-interface {v0}, Llewa/laml/RendererController$Listener;->doRender()V

    .line 62
    :cond_0
    return-void
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/RendererController;->mPendingRender:Z

    .line 66
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->signal()V

    .line 68
    :cond_0
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Llewa/laml/RendererController;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_1
    :try_start_1
    iget-object v1, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    invoke-interface {v1}, Llewa/laml/RendererController$Listener;->finish()V

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Llewa/laml/RendererController;->mInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 71
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCurFramerate()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Llewa/laml/RendererController;->mCurFramerate:F

    return v0
.end method

.method public getFrameTime()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Llewa/laml/RendererController;->mFrameTime:I

    return v0
.end method

.method public getFramerate()F
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Llewa/laml/RendererController;->mFramerateTokenList:Llewa/laml/FramerateTokenList;

    invoke-virtual {v0}, Llewa/laml/FramerateTokenList;->getFramerate()F

    move-result v0

    return v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Llewa/laml/RendererController;->mLastUpdateSystemTime:J

    return-wide v0
.end method

.method public declared-synchronized getMessage()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llewa/laml/RendererController;->mMsgQueue:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Llewa/laml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasInited()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Llewa/laml/RendererController;->mInited:Z

    return v0
.end method

.method public declared-synchronized hasMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Llewa/laml/RendererController;->mMsgQueue:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Llewa/laml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 3

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Llewa/laml/RendererController;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_1
    :try_start_1
    iget-object v1, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    invoke-interface {v1}, Llewa/laml/RendererController$Listener;->init()V

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Llewa/laml/RendererController;->mInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isSelfPaused()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Llewa/laml/RendererController;->mSelfPaused:Z

    return v0
.end method

.method public onFrameRateChage(FF)V
    .locals 1
    .parameter "old"
    .parameter "cur"

    .prologue
    .line 129
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->signal()V

    .line 131
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 134
    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    invoke-interface {v0, p1}, Llewa/laml/RendererController$Listener;->onTouch(Landroid/view/MotionEvent;)V

    .line 136
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Llewa/laml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Llewa/laml/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Llewa/laml/RendererController;->mPaused:Z

    .line 143
    iget-boolean v0, p0, Llewa/laml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    invoke-interface {v0}, Llewa/laml/RendererController$Listener;->pause()V

    .line 145
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/RendererController;->mPendingRender:Z

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pendingRender()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Llewa/laml/RendererController;->mPendingRender:Z

    return v0
.end method

.method public declared-synchronized postMessage(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llewa/laml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Llewa/laml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Llewa/laml/RendererController;->mTouchX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Llewa/laml/RendererController;->mTouchY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 159
    :cond_1
    iget-object v0, p0, Llewa/laml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Llewa/laml/RendererController;->mTouchX:F

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Llewa/laml/RendererController;->mTouchY:F

    .line 164
    :cond_2
    iget-object v0, p0, Llewa/laml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    .line 165
    iget-object v0, p0, Llewa/laml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 167
    :cond_3
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_4
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/RendererController;->mShouldUpdate:Z

    .line 173
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->signal()V

    .line 175
    :cond_0
    iget-boolean v0, p0, Llewa/laml/RendererController;->mGlobal:Z

    if-eqz v0, :cond_1

    .line 176
    iput-boolean v1, p0, Llewa/laml/RendererController;->mSelfPaused:Z

    .line 177
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    invoke-virtual {v0, v1}, Llewa/laml/RenderThread;->setPaused(Z)V

    .line 179
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-boolean v0, p0, Llewa/laml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Llewa/laml/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Llewa/laml/RendererController;->mPaused:Z

    .line 186
    iget-boolean v0, p0, Llewa/laml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    invoke-interface {v0}, Llewa/laml/RendererController$Listener;->resume()V

    .line 188
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iput-boolean v2, p0, Llewa/laml/RendererController;->mPendingRender:Z

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public selfPause()V
    .locals 2

    .prologue
    .line 193
    iget-boolean v0, p0, Llewa/laml/RendererController;->mInited:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llewa/laml/RendererController;->mSelfPaused:Z

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Llewa/laml/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-boolean v0, p0, Llewa/laml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_2

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/RendererController;->mSelfPaused:Z

    .line 198
    iget-boolean v0, p0, Llewa/laml/RendererController;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    invoke-interface {v0}, Llewa/laml/RendererController$Listener;->pause()V

    .line 202
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/RendererController;->mPendingRender:Z

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public selfResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-boolean v0, p0, Llewa/laml/RendererController;->mInited:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llewa/laml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Llewa/laml/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-boolean v0, p0, Llewa/laml/RendererController;->mSelfPaused:Z

    if-eqz v0, :cond_2

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/RendererController;->mSelfPaused:Z

    .line 212
    iget-boolean v0, p0, Llewa/laml/RendererController;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    invoke-interface {v0}, Llewa/laml/RendererController$Listener;->resume()V

    .line 215
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->signal()V

    .line 218
    iget-object v0, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    invoke-virtual {v0, v2}, Llewa/laml/RenderThread;->setPaused(Z)V

    .line 220
    :cond_3
    iput-boolean v2, p0, Llewa/laml/RendererController;->mPendingRender:Z

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCurFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 224
    iput p1, p0, Llewa/laml/RendererController;->mCurFramerate:F

    .line 225
    return-void
.end method

.method public setFrameTime(I)V
    .locals 0
    .parameter "frameTime"

    .prologue
    .line 228
    iput p1, p0, Llewa/laml/RendererController;->mFrameTime:I

    .line 229
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 232
    iput-wide p1, p0, Llewa/laml/RendererController;->mLastUpdateSystemTime:J

    .line 233
    return-void
.end method

.method public setListener(Llewa/laml/RendererController$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 236
    iput-object p1, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    .line 237
    return-void
.end method

.method public setRenderThread(Llewa/laml/RenderThread;)V
    .locals 1
    .parameter "renderThread"

    .prologue
    .line 240
    iput-object p1, p0, Llewa/laml/RendererController;->mRenderThread:Llewa/laml/RenderThread;

    .line 241
    invoke-static {p1}, Llewa/laml/RenderThread;->isGlobal(Llewa/laml/RenderThread;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/laml/RendererController;->mGlobal:Z

    .line 242
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Llewa/laml/RendererController;->mShouldUpdate:Z

    return v0
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/RendererController;->mShouldUpdate:Z

    .line 251
    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    invoke-interface {v0, p1, p2}, Llewa/laml/RendererController$Listener;->tick(J)V

    .line 253
    :cond_0
    return-void
.end method

.method public updateFramerate(J)J
    .locals 4
    .parameter "time"

    .prologue
    .line 257
    iget-object v2, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    if-eqz v2, :cond_2

    .line 258
    iget-object v2, p0, Llewa/laml/RendererController;->mListener:Llewa/laml/RendererController$Listener;

    invoke-interface {v2, p1, p2}, Llewa/laml/RendererController$Listener;->updateFramerate(J)J

    move-result-wide v0

    .line 259
    .local v0, nextUpdateInterval:J
    iget-boolean v2, p0, Llewa/laml/RendererController;->mGlobal:Z

    if-eqz v2, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Llewa/laml/RendererController;->mShouldUpdate:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Llewa/laml/RendererController;->mInited:Z

    if-nez v2, :cond_1

    .line 260
    :cond_0
    const-wide/16 v0, 0x1e

    .line 265
    :cond_1
    :goto_0
    return-wide v0

    .line 263
    .end local v0           #nextUpdateInterval:J
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    .restart local v0       #nextUpdateInterval:J
    goto :goto_0
.end method
