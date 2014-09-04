.class public Llewa/widget/SpectrumVisualizer;
.super Landroid/widget/ImageView;
.source "SpectrumVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/widget/SpectrumVisualizer$SymmetryDotBar;,
        Llewa/widget/SpectrumVisualizer$DotBarDrawer;,
        Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;
    }
.end annotation


# static fields
.field private static final CONSIDER_SAMPLE_LENGTH:I = 0xa0

.field public static IS_LPA_DECODE:Z = false

.field private static final MAX_VALID_SAMPLE:I = 0x14

.field private static final RES_DEFAULT_SLIDING_DOT_BAR_ID:I = 0x9080185

.field private static final RES_DEFAULT_SLIDING_PANEL_ID:I = 0x9080184

.field private static final RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I = 0x9080186

.field private static final TAG:Ljava/lang/String; = "SpectrumVisualizer"

.field private static final VISUALIZATION_SAMPLE_LENGTH:I = 0x100


# instance fields
.field private INDEX_SCALE_FACTOR:F

.field private SAMPLE_SCALE_FACTOR:F

.field private VISUALIZE_DESC_HEIGHT:F

.field mAlphaWidthNum:I

.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field mCellSize:I

.field mDotbarHeight:I

.field private mDrawer:Llewa/widget/SpectrumVisualizer$DotBarDrawer;

.field private mEnableDrawing:Z

.field private mIsEnableUpdate:Z

.field private mIsNeedCareStreamActive:Z

.field private mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field mPaint:Landroid/graphics/Paint;

.field mPixels:[I

.field mPointData:[F

.field private mSampleBuf:[S

.field mShadowDotbarHeight:I

.field mShadowPixels:[I

.field private mSoftDrawEnabled:Z

.field private mVisualizationHeight:I

.field mVisualizationHeightNum:I

.field private mVisualizationWidth:I

.field mVisualizationWidthNum:I

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Llewa/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llewa/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llewa/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 89
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Llewa/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llewa/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 381
    new-instance v0, Llewa/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Llewa/widget/SpectrumVisualizer$1;-><init>(Llewa/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Llewa/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 103
    invoke-direct {p0, p1, p2}, Llewa/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 107
    iget-object v2, p0, Llewa/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    iget v2, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    iget v3, p0, Llewa/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    sub-int v0, v2, v3

    .line 110
    .local v0, end:I
    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 111
    iget-object v2, p0, Llewa/widget/SpectrumVisualizer;->mDrawer:Llewa/widget/SpectrumVisualizer$DotBarDrawer;

    invoke-interface {v2, p1, v1}, Llewa/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    :goto_1
    if-lez v1, :cond_1

    .line 114
    iget-object v2, p0, Llewa/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    mul-int/lit16 v3, v1, 0xff

    iget v4, p0, Llewa/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v2, p0, Llewa/widget/SpectrumVisualizer;->mDrawer:Llewa/widget/SpectrumVisualizer$DotBarDrawer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, p1, v3}, Llewa/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 116
    iget-object v2, p0, Llewa/widget/SpectrumVisualizer;->mDrawer:Llewa/widget/SpectrumVisualizer$DotBarDrawer;

    iget v3, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    sub-int/2addr v3, v1

    invoke-interface {v2, p1, v3}, Llewa/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 113
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 118
    :cond_1
    return-void
.end method

.method private drawToBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 121
    iget-object v0, p0, Llewa/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 122
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v1, p0, Llewa/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 123
    .local v1, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Llewa/widget/SpectrumVisualizer;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Llewa/widget/SpectrumVisualizer;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 124
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    const/4 v0, 0x0

    .line 127
    :cond_1
    if-nez v0, :cond_2

    .line 128
    invoke-virtual {p0}, Llewa/widget/SpectrumVisualizer;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Llewa/widget/SpectrumVisualizer;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    iput-object v0, p0, Llewa/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 130
    new-instance v1, Landroid/graphics/Canvas;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    iput-object v1, p0, Llewa/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 133
    :cond_2
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 134
    invoke-direct {p0, v1}, Llewa/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    .line 135
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 139
    const/4 v4, 0x0

    .line 140
    .local v4, panelDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 141
    .local v2, dotBarDrawble:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 142
    .local v6, shadowDotbarDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 143
    .local v7, symmetry:Z
    iput-boolean v8, p0, Llewa/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 144
    iput-boolean v8, p0, Llewa/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 145
    iput v10, p0, Llewa/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 146
    if-eqz p2, :cond_0

    .line 147
    sget-object v8, Lcom/lewa/internal/R$styleable;->SpectrumVisualizer:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    .local v0, a:Landroid/content/res/TypedArray;
    const v8, 0x901002c

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 149
    const v8, 0x901002b

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 150
    const v8, 0x901002d

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 151
    const v8, 0x9010030

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 152
    const v8, 0x901002a

    iget v9, p0, Llewa/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Llewa/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 153
    const v8, 0x901002e

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Llewa/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 154
    const v8, 0x901002f

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Llewa/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    if-nez v4, :cond_1

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x9080184

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 160
    :cond_1
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4           #panelDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 162
    .local v3, panelBm:Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x9080185

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 164
    :cond_2
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #dotBarDrawble:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 166
    .local v1, dotBar:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 167
    .local v5, shadowDotBar:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    .line 168
    if-nez v6, :cond_3

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x9080186

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_3
    move-object v8, v6

    .line 171
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 174
    :cond_4
    invoke-virtual {p0, v3, v1, v5}, Llewa/widget/SpectrumVisualizer;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 175
    return-void
.end method


# virtual methods
.method public enableDrawing(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 178
    iput-boolean p1, p0, Llewa/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 179
    return-void
.end method

.method public enableUpdate(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 183
    :try_start_0
    iget-boolean v1, p0, Llewa/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    if-eq v1, p1, :cond_1

    .line 184
    iput-boolean p1, p0, Llewa/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 185
    if-eqz p1, :cond_2

    iget-object v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v1, :cond_2

    .line 186
    sget-boolean v1, Llewa/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    if-eqz v1, :cond_0

    .line 187
    const-string v1, "SpectrumVisualizer"

    const-string v2, "lpa decode is on, can\'t enable"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    new-instance v1, Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 189
    iget-object v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    iget-object v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 191
    iget-object v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v2, p0, Llewa/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 193
    iget-object v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    if-nez p1, :cond_1

    iget-object v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 197
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 198
    iget-object v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->release()V

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "SpectrumVisualizer"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 204
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "SpectrumVisualizer"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 206
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "SpectrumVisualizer"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVisualHeight()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationHeight:I

    return v0
.end method

.method public getVisualWidth()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidth:I

    return v0
.end method

.method public isUpdateEnabled()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Llewa/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 226
    iget-boolean v0, p0, Llewa/widget/SpectrumVisualizer;->mEnableDrawing:Z

    if-eqz v0, :cond_0

    .line 227
    iget-boolean v0, p0, Llewa/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0}, Llewa/widget/SpectrumVisualizer;->drawToBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-direct {p0, p1}, Llewa/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setAlphaNum(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 236
    if-gtz p1, :cond_0

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 243
    :goto_0
    return-void

    .line 239
    :cond_0
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    .line 240
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 p1, v0, 0x2

    .line 241
    :cond_1
    iput p1, p0, Llewa/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    goto :goto_0
.end method

.method public setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "dotbar"
    .parameter "shadow"

    .prologue
    const/4 v2, 0x0

    .line 246
    iput p1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidth:I

    .line 247
    iput p2, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationHeight:I

    .line 248
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    .line 249
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 250
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le v0, v1, :cond_0

    .line 251
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationHeight:I

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 253
    :cond_0
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Llewa/widget/SpectrumVisualizer;->mPixels:[I

    .line 254
    iget-object v1, p0, Llewa/widget/SpectrumVisualizer;->mPixels:[I

    iget v3, p0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    iget v6, p0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    iget v7, p0, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    move-object v0, p3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 255
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidth:I

    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    div-int/2addr v0, v1

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 256
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    div-int/2addr v0, v1

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    .line 257
    const/high16 v0, 0x41a0

    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    .line 258
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    .line 259
    const/high16 v0, 0x3f80

    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    .line 260
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    new-array v0, v0, [F

    iput-object v0, p0, Llewa/widget/SpectrumVisualizer;->mPointData:[F

    .line 261
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    if-nez v0, :cond_1

    .line 262
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 264
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 265
    if-eqz p4, :cond_4

    .line 266
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 267
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le v0, v1, :cond_2

    .line 268
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationHeight:I

    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mDotbarHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Llewa/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 270
    :cond_2
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    if-ge v0, v1, :cond_3

    .line 271
    new-instance v0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {v0, p0}, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Llewa/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Llewa/widget/SpectrumVisualizer;->mDrawer:Llewa/widget/SpectrumVisualizer$DotBarDrawer;

    .line 280
    :goto_0
    return-void

    .line 273
    :cond_3
    iget v0, p0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    iget v1, p0, Llewa/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Llewa/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 274
    iget-object v1, p0, Llewa/widget/SpectrumVisualizer;->mShadowPixels:[I

    iget v3, p0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    iget v6, p0, Llewa/widget/SpectrumVisualizer;->mCellSize:I

    iget v7, p0, Llewa/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move-object v0, p4

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 275
    new-instance v0, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;

    invoke-direct {v0, p0}, Llewa/widget/SpectrumVisualizer$SymmetryDotBar;-><init>(Llewa/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Llewa/widget/SpectrumVisualizer;->mDrawer:Llewa/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_0

    .line 278
    :cond_4
    new-instance v0, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {v0, p0}, Llewa/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Llewa/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Llewa/widget/SpectrumVisualizer;->mDrawer:Llewa/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_0
.end method

.method public setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "panel"
    .parameter "dotbar"
    .parameter "shadow"

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Llewa/widget/SpectrumVisualizer;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Llewa/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 285
    return-void
.end method

.method public setSoftDrawEnabled(Z)V
    .locals 2
    .parameter "endabled"

    .prologue
    const/4 v1, 0x0

    .line 288
    iput-boolean p1, p0, Llewa/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 289
    if-nez p1, :cond_0

    iget-object v0, p0, Llewa/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Llewa/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 291
    iput-object v1, p0, Llewa/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 292
    iput-object v1, p0, Llewa/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 294
    :cond_0
    return-void
.end method

.method update([B)V
    .locals 15
    .parameter "fFtBuffer"

    .prologue
    .line 297
    iget-boolean v11, p0, Llewa/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    if-eqz v11, :cond_0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 298
    :cond_0
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Llewa/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 299
    if-eqz p1, :cond_7

    .line 300
    iget-object v8, p0, Llewa/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 301
    .local v8, sampleBuf:[S
    iget-object v11, p0, Llewa/widget/SpectrumVisualizer;->mSampleBuf:[S

    array-length v9, v11

    .line 302
    .local v9, sampleLen:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v9, :cond_2

    .line 303
    mul-int/lit8 v11, v5, 0x2

    aget-byte v0, p1, v11

    .line 304
    .local v0, a:I
    mul-int/lit8 v11, v5, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-byte v1, p1, v11

    .line 305
    .local v1, b:I
    mul-int v11, v0, v0

    mul-int v12, v1, v1

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v2, v11

    .line 306
    .local v2, c:I
    const/16 v11, 0x7fff

    if-lt v2, v11, :cond_1

    .line 307
    const/16 v2, 0x7fff

    .line 308
    :cond_1
    int-to-short v11, v2

    aput-short v11, v8, v5

    .line 302
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 311
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v2           #c:I
    :cond_2
    const/4 v10, 0x0

    .line 312
    .local v10, srcIdx:I
    const/4 v3, 0x0

    .line 313
    .local v3, count:I
    const/4 v5, 0x0

    .line 314
    :goto_1
    iget v11, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    if-ge v5, v11, :cond_6

    .line 315
    const/4 v6, 0x0

    .line 316
    .local v6, max:I
    :goto_2
    if-ge v3, v9, :cond_3

    .line 317
    aget-short v11, v8, v10

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 318
    add-int/lit8 v10, v10, 0x1

    .line 319
    iget v11, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    add-int/2addr v3, v11

    goto :goto_2

    .line 322
    :cond_3
    sub-int/2addr v3, v9

    .line 324
    const/4 v11, 0x1

    if-le v6, v11, :cond_4

    .line 325
    add-int/lit8 v11, v5, 0x2

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    iget v13, p0, Llewa/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    float-to-double v13, v13

    div-double/2addr v11, v13

    double-to-float v4, v11

    .line 326
    .local v4, f:F
    add-int/lit8 v11, v6, -0x1

    int-to-float v11, v11

    mul-float/2addr v11, v4

    mul-float v7, v4, v11

    .line 330
    .end local v4           #f:F
    .local v7, rawData:F
    :goto_3
    iget-object v12, p0, Llewa/widget/SpectrumVisualizer;->mPointData:[F

    const/high16 v11, 0x41a0

    cmpl-float v11, v7, v11

    if-lez v11, :cond_5

    iget v11, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v11, v11

    :goto_4
    iget v13, p0, Llewa/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v13, v13

    div-float/2addr v11, v13

    iget-object v13, p0, Llewa/widget/SpectrumVisualizer;->mPointData:[F

    aget v13, v13, v5

    iget v14, p0, Llewa/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    sub-float/2addr v13, v14

    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v12, v5

    .line 333
    add-int/lit8 v5, v5, 0x1

    .line 334
    goto :goto_1

    .line 328
    .end local v7           #rawData:F
    :cond_4
    const/4 v7, 0x0

    .restart local v7       #rawData:F
    goto :goto_3

    .line 330
    :cond_5
    iget v11, p0, Llewa/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    div-float v11, v7, v11

    goto :goto_4

    .line 335
    .end local v6           #max:I
    .end local v7           #rawData:F
    :cond_6
    invoke-virtual {p0}, Llewa/widget/SpectrumVisualizer;->invalidate()V

    .line 340
    .end local v3           #count:I
    .end local v5           #i:I
    .end local v8           #sampleBuf:[S
    .end local v9           #sampleLen:I
    .end local v10           #srcIdx:I
    :cond_7
    :goto_5
    return-void

    .line 338
    :cond_8
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Llewa/widget/SpectrumVisualizer;->enableDrawing(Z)V

    goto :goto_5
.end method
