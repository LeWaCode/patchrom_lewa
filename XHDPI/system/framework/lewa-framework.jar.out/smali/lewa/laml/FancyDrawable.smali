.class public Llewa/laml/FancyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FancyDrawable.java"

# interfaces
.implements Llewa/laml/RendererController$IRenderable;


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FancyDrawable"

.field private static final RENDER_TIMEOUT:I = 0x64

.field private static final SELF_WAKEUP:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mInvalidateSelf:Ljava/lang/Runnable;

.field private mPauseLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRendererCore:Llewa/laml/RendererCore;

.field private mScale:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Llewa/laml/RendererCore;)V
    .locals 2
    .parameter "rc"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Llewa/laml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/laml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/FancyDrawable;->mPaused:Z

    .line 45
    new-instance v0, Llewa/laml/FancyDrawable$1;

    invoke-direct {v0, p0}, Llewa/laml/FancyDrawable$1;-><init>(Llewa/laml/FancyDrawable;)V

    iput-object v0, p0, Llewa/laml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Llewa/laml/FancyDrawable$2;

    invoke-direct {v0, p0}, Llewa/laml/FancyDrawable$2;-><init>(Llewa/laml/FancyDrawable;)V

    iput-object v0, p0, Llewa/laml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 58
    invoke-direct {p0, p1}, Llewa/laml/FancyDrawable;->init(Llewa/laml/RendererCore;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Llewa/laml/ScreenElementRoot;Llewa/laml/RenderThread;)V
    .locals 2
    .parameter "root"
    .parameter "t"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Llewa/laml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/laml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/FancyDrawable;->mPaused:Z

    .line 45
    new-instance v0, Llewa/laml/FancyDrawable$1;

    invoke-direct {v0, p0}, Llewa/laml/FancyDrawable$1;-><init>(Llewa/laml/FancyDrawable;)V

    iput-object v0, p0, Llewa/laml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Llewa/laml/FancyDrawable$2;

    invoke-direct {v0, p0}, Llewa/laml/FancyDrawable$2;-><init>(Llewa/laml/FancyDrawable;)V

    iput-object v0, p0, Llewa/laml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 62
    invoke-direct {p0, p1, p2}, Llewa/laml/FancyDrawable;->init(Llewa/laml/ScreenElementRoot;Llewa/laml/RenderThread;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Llewa/laml/FancyDrawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Llewa/laml/FancyDrawable;->doPause()V

    return-void
.end method

.method private doPause()V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Llewa/laml/FancyDrawable;->mPaused:Z

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Llewa/laml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-boolean v0, p0, Llewa/laml/FancyDrawable;->mPaused:Z

    if-nez v0, :cond_1

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/FancyDrawable;->mPaused:Z

    .line 73
    iget-object v0, p0, Llewa/laml/FancyDrawable;->mRendererCore:Llewa/laml/RendererCore;

    invoke-virtual {v0, p0}, Llewa/laml/RendererCore;->pauseRenderable(Llewa/laml/RendererController$IRenderable;)V

    .line 75
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doResume()V
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Llewa/laml/FancyDrawable;->mPaused:Z

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Llewa/laml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-boolean v0, p0, Llewa/laml/FancyDrawable;->mPaused:Z

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/FancyDrawable;->mPaused:Z

    .line 86
    iget-object v0, p0, Llewa/laml/FancyDrawable;->mRendererCore:Llewa/laml/RendererCore;

    invoke-virtual {v0, p0}, Llewa/laml/RendererCore;->resumeRenderable(Llewa/laml/RendererController$IRenderable;)V

    .line 88
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;)Llewa/laml/FancyDrawable;
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Llewa/laml/RenderThread;->globalThread(Z)Llewa/laml/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0}, Llewa/laml/FancyDrawable;->fromZipFile(Landroid/content/Context;Ljava/lang/String;Llewa/laml/RenderThread;)Llewa/laml/FancyDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;Llewa/laml/RenderThread;)Llewa/laml/FancyDrawable;
    .locals 2
    .parameter "context"
    .parameter "path"
    .parameter "t"

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Llewa/laml/RendererCore;->createFromZipFile(Landroid/content/Context;Ljava/lang/String;Llewa/laml/RenderThread;)Llewa/laml/RendererCore;

    move-result-object v0

    .line 105
    .local v0, rc:Llewa/laml/RendererCore;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Llewa/laml/FancyDrawable;

    invoke-direct {v1, v0}, Llewa/laml/FancyDrawable;-><init>(Llewa/laml/RendererCore;)V

    goto :goto_0
.end method

.method private init(Llewa/laml/RendererCore;)V
    .locals 2
    .parameter "rc"

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Llewa/laml/FancyDrawable;->mRendererCore:Llewa/laml/RendererCore;

    .line 113
    iget-object v0, p0, Llewa/laml/FancyDrawable;->mRendererCore:Llewa/laml/RendererCore;

    invoke-virtual {v0, p0}, Llewa/laml/RendererCore;->addRenderable(Llewa/laml/RendererController$IRenderable;)V

    .line 114
    iget-object v0, p0, Llewa/laml/FancyDrawable;->mRendererCore:Llewa/laml/RendererCore;

    invoke-virtual {v0}, Llewa/laml/RendererCore;->getRoot()Llewa/laml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Llewa/laml/FancyDrawable;->mRendererCore:Llewa/laml/RendererCore;

    invoke-virtual {v1}, Llewa/laml/RendererCore;->getRoot()Llewa/laml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Llewa/laml/FancyDrawable;->setIntrinsicSize(II)V

    .line 116
    iget-object v0, p0, Llewa/laml/FancyDrawable;->mRendererCore:Llewa/laml/RendererCore;

    invoke-virtual {v0}, Llewa/laml/RendererCore;->getRoot()Llewa/laml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getScale()F

    move-result v0

    iput v0, p0, Llewa/laml/FancyDrawable;->mScale:F

    .line 117
    return-void
.end method

.method private init(Llewa/laml/ScreenElementRoot;Llewa/laml/RenderThread;)V
    .locals 1
    .parameter "root"
    .parameter "t"

    .prologue
    .line 122
    new-instance v0, Llewa/laml/RendererCore;

    invoke-direct {v0, p1, p2}, Llewa/laml/RendererCore;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/RenderThread;)V

    invoke-direct {p0, v0}, Llewa/laml/FancyDrawable;->init(Llewa/laml/RendererCore;)V

    .line 123
    return-void
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 126
    const-string v0, "FancyDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Llewa/laml/FancyDrawable;->mRendererCore:Llewa/laml/RendererCore;

    invoke-virtual {v0, p0}, Llewa/laml/RendererCore;->removeRenderable(Llewa/laml/RendererController$IRenderable;)V

    .line 133
    return-void
.end method

.method public doRender()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Llewa/laml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llewa/laml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 136
    iget-object v4, p0, Llewa/laml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Llewa/laml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    invoke-direct {p0}, Llewa/laml/FancyDrawable;->doResume()V

    .line 139
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 140
    .local v3, sa:I
    invoke-virtual {p0}, Llewa/laml/FancyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 141
    .local v2, rect:Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-eqz v4, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-eqz v4, :cond_0

    .line 142
    const/high16 v4, 0x4000

    iget v5, p0, Llewa/laml/FancyDrawable;->mScale:F

    mul-float v0, v4, v5

    .line 143
    .local v0, div:F
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    iget v4, p0, Llewa/laml/FancyDrawable;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Llewa/laml/FancyDrawable;->mIntrinsicWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Llewa/laml/FancyDrawable;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Llewa/laml/FancyDrawable;->mIntrinsicHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Llewa/laml/FancyDrawable;->mWidth:I

    iget v7, p0, Llewa/laml/FancyDrawable;->mIntrinsicWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v0

    iget v7, p0, Llewa/laml/FancyDrawable;->mHeight:I

    iget v8, p0, Llewa/laml/FancyDrawable;->mIntrinsicHeight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 150
    .end local v0           #div:F
    :goto_0
    iget-object v4, p0, Llewa/laml/FancyDrawable;->mRendererCore:Llewa/laml/RendererCore;

    invoke-virtual {v4, p1}, Llewa/laml/RendererCore;->render(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 159
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #sa:I
    :goto_1
    return-void

    .line 148
    .restart local v2       #rect:Landroid/graphics/Rect;
    .restart local v3       #sa:I
    :cond_0
    iget v4, p0, Llewa/laml/FancyDrawable;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Llewa/laml/FancyDrawable;->mIntrinsicWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Llewa/laml/FancyDrawable;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Llewa/laml/FancyDrawable;->mIntrinsicHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 154
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #sa:I
    :catch_0
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "FancyDrawable"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "FancyDrawable"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Llewa/laml/FancyDrawable;->cleanUp()V

    .line 178
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 179
    return-void
.end method

.method public declared-synchronized getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Llewa/laml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Llewa/laml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    invoke-direct {p0}, Llewa/laml/FancyDrawable;->doResume()V

    .line 166
    iget v2, p0, Llewa/laml/FancyDrawable;->mWidth:I

    if-lt v2, v4, :cond_0

    iget v2, p0, Llewa/laml/FancyDrawable;->mHeight:I

    if-ge v2, v4, :cond_1

    .line 167
    :cond_0
    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    iput v2, p0, Llewa/laml/FancyDrawable;->mWidth:I

    .line 168
    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    iput v2, p0, Llewa/laml/FancyDrawable;->mHeight:I

    .line 170
    :cond_1
    iget v2, p0, Llewa/laml/FancyDrawable;->mWidth:I

    iget v3, p0, Llewa/laml/FancyDrawable;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Llewa/laml/FancyDrawable;->mRendererCore:Llewa/laml/RendererCore;

    invoke-virtual {v2, v1}, Llewa/laml/RendererCore;->render(Landroid/graphics/Canvas;)V

    .line 173
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 164
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Llewa/laml/FancyDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Llewa/laml/FancyDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 194
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    sub-int v0, p3, p1

    iput v0, p0, Llewa/laml/FancyDrawable;->mWidth:I

    .line 199
    sub-int v0, p4, p2

    iput v0, p0, Llewa/laml/FancyDrawable;->mHeight:I

    .line 200
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 203
    return-void
.end method

.method public setIntrinsicSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 206
    iput p1, p0, Llewa/laml/FancyDrawable;->mIntrinsicWidth:I

    .line 207
    iput p2, p0, Llewa/laml/FancyDrawable;->mIntrinsicHeight:I

    .line 208
    return-void
.end method
