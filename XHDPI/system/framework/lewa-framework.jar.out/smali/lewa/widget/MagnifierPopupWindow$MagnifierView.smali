.class Llewa/widget/MagnifierPopupWindow$MagnifierView;
.super Landroid/view/View;
.source "MagnifierPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/MagnifierPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/widget/MagnifierPopupWindow$MagnifierView$UpdateHandler;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDstRect:Landroid/graphics/Rect;

.field private mFilterDrawable:Landroid/graphics/drawable/Drawable;

.field private mFrontDrawable:Landroid/graphics/drawable/Drawable;

.field private mLastDegree:F

.field private mMagHeight:I

.field private mMagWidth:I

.field private mSrcHeight:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcWidth:I

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Llewa/widget/MagnifierPopupWindow;


# direct methods
.method public constructor <init>(Llewa/widget/MagnifierPopupWindow;Landroid/content/Context;F)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "times"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    iput-object p1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    .line 179
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    .line 183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    .line 184
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mLastDegree:F

    .line 186
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UpdateMagnifier"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mUpdateThread:Landroid/os/HandlerThread;

    .line 187
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 188
    new-instance v0, Llewa/widget/MagnifierPopupWindow$MagnifierView$UpdateHandler;

    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Llewa/widget/MagnifierPopupWindow$MagnifierView$UpdateHandler;-><init>(Llewa/widget/MagnifierPopupWindow$MagnifierView;Landroid/os/Looper;)V

    iput-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mUpdateHandler:Landroid/os/Handler;

    .line 189
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 191
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 192
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90800a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mFilterDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90800a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mFilterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mMagWidth:I

    .line 195
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mFilterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mMagHeight:I

    .line 196
    iget v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mMagWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcWidth:I

    .line 197
    iget v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mMagHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcHeight:I

    .line 198
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    iget v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mMagWidth:I

    iget v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mMagHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 199
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    #setter for: Llewa/widget/MagnifierPopupWindow;->mFingerOffset:I
    invoke-static {p1, v0}, Llewa/widget/MagnifierPopupWindow;->access$902(Llewa/widget/MagnifierPopupWindow;I)I

    .line 200
    return-void
.end method

.method static synthetic access$1000(Llewa/widget/MagnifierPopupWindow$MagnifierView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->refresh()V

    return-void
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 45
    :pswitch_0
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 48
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 51
    :pswitch_2
    const/high16 v0, 0x4387

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refresh()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 58
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Llewa/widget/MagnifierPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    iget-object v0, v0, Llewa/widget/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mUpdateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 68
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    invoke-virtual {v2}, Llewa/widget/MagnifierPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;
    invoke-static {v2}, Llewa/widget/MagnifierPopupWindow;->access$100(Llewa/widget/MagnifierPopupWindow;)Llewa/widget/MagnifierPopupWindow$MagnifierView;

    move-result-object v2

    iget-object v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mX:I
    invoke-static {v3}, Llewa/widget/MagnifierPopupWindow;->access$000(Llewa/widget/MagnifierPopupWindow;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->setPivotX(F)V

    .line 72
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;
    invoke-static {v2}, Llewa/widget/MagnifierPopupWindow;->access$100(Llewa/widget/MagnifierPopupWindow;)Llewa/widget/MagnifierPopupWindow$MagnifierView;

    move-result-object v2

    iget-object v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mY:I
    invoke-static {v3}, Llewa/widget/MagnifierPopupWindow;->access$200(Llewa/widget/MagnifierPopupWindow;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->setPivotY(F)V

    .line 73
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;
    invoke-static {v2}, Llewa/widget/MagnifierPopupWindow;->access$100(Llewa/widget/MagnifierPopupWindow;)Llewa/widget/MagnifierPopupWindow$MagnifierView;

    move-result-object v2

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 76
    .local v0, animation1:Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;
    invoke-static {v2}, Llewa/widget/MagnifierPopupWindow;->access$100(Llewa/widget/MagnifierPopupWindow;)Llewa/widget/MagnifierPopupWindow$MagnifierView;

    move-result-object v2

    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 79
    .local v1, animation2:Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mAnimationExit:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Llewa/widget/MagnifierPopupWindow;->access$300(Llewa/widget/MagnifierPopupWindow;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v5, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 82
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mAnimationExit:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Llewa/widget/MagnifierPopupWindow;->access$300(Llewa/widget/MagnifierPopupWindow;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 84
    .end local v0           #animation1:Landroid/animation/ObjectAnimator;
    .end local v1           #animation2:Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 73
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 76
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 88
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mLocationX:I
    invoke-static {v0}, Llewa/widget/MagnifierPopupWindow;->access$400(Llewa/widget/MagnifierPopupWindow;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mLocationY:I
    invoke-static {v1}, Llewa/widget/MagnifierPopupWindow;->access$500(Llewa/widget/MagnifierPopupWindow;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mFilterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 93
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mFilterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 96
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 103
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;
    invoke-static {v0}, Llewa/widget/MagnifierPopupWindow;->access$700(Llewa/widget/MagnifierPopupWindow;)Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Llewa/widget/MagnifierPopupWindow;->access$600(Llewa/widget/MagnifierPopupWindow;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Llewa/widget/MagnifierPopupWindow;->access$600(Llewa/widget/MagnifierPopupWindow;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Llewa/widget/MagnifierPopupWindow;->access$600(Llewa/widget/MagnifierPopupWindow;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->setMeasuredDimension(II)V

    .line 105
    return-void
.end method

.method takeScreenshot()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x4000

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 109
    const-wide/16 v6, 0x2

    const-string v8, "Magnifier"

    invoke-static {v6, v7, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 110
    iget-object v6, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;
    invoke-static {v6}, Llewa/widget/MagnifierPopupWindow;->access$700(Llewa/widget/MagnifierPopupWindow;)Landroid/view/Display;

    move-result-object v6

    iget-object v7, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v7}, Llewa/widget/MagnifierPopupWindow;->access$600(Llewa/widget/MagnifierPopupWindow;)Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    const/4 v6, 0x2

    new-array v4, v6, [F

    .line 112
    .local v4, dims:[F
    iget-object v6, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v6}, Llewa/widget/MagnifierPopupWindow;->access$600(Llewa/widget/MagnifierPopupWindow;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    aput v6, v4, v9

    .line 113
    iget-object v6, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v6}, Llewa/widget/MagnifierPopupWindow;->access$600(Llewa/widget/MagnifierPopupWindow;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    aput v6, v4, v10

    .line 114
    iget-object v6, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;
    invoke-static {v6}, Llewa/widget/MagnifierPopupWindow;->access$700(Llewa/widget/MagnifierPopupWindow;)Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-direct {p0, v6}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->getDegreesForRotation(I)F

    move-result v3

    .line 116
    .local v3, degrees:F
    cmpl-float v6, v3, v11

    if-lez v6, :cond_2

    .line 117
    const/4 v5, 0x1

    .line 120
    .local v5, requiresRotation:Z
    :goto_0
    if-eqz v5, :cond_0

    .line 122
    iget-object v6, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 123
    iget-object v6, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 124
    iget-object v6, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 125
    aget v6, v4, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v4, v9

    .line 126
    aget v6, v4, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v4, v10

    .line 128
    :cond_0
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    .line 129
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v6, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mLastDegree:F

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_1

    .line 131
    iget-object v6, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v6}, Llewa/widget/MagnifierPopupWindow;->access$600(Llewa/widget/MagnifierPopupWindow;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v7}, Llewa/widget/MagnifierPopupWindow;->access$600(Llewa/widget/MagnifierPopupWindow;)Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    iput v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mLastDegree:F

    .line 134
    :cond_1
    aget v6, v4, v9

    float-to-int v6, v6

    aget v7, v4, v10

    float-to-int v7, v7

    iget-object v8, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mMaxLayer:I
    invoke-static {v8}, Llewa/widget/MagnifierPopupWindow;->access$800(Llewa/widget/MagnifierPopupWindow;)I

    move-result v8

    invoke-static {v6, v7, v9, v8}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    .local v1, bitmap1:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_3

    .line 137
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .local v2, c:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 140
    aget v6, v4, v9

    neg-float v6, v6

    div-float/2addr v6, v12

    aget v7, v4, v10

    neg-float v7, v7

    div-float/2addr v7, v12

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    invoke-virtual {v2, v1, v11, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    .end local v2           #c:Landroid/graphics/Canvas;
    :goto_1
    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 150
    iput-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    .line 151
    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 152
    return-void

    .line 119
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmap1:Landroid/graphics/Bitmap;
    .end local v5           #requiresRotation:Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #requiresRotation:Z
    goto/16 :goto_0

    .line 146
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap1:Landroid/graphics/Bitmap;
    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public updateCache()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 156
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mUpdateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    return-void
.end method

.method updateMagnifier(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 162
    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mMagWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    #setter for: Llewa/widget/MagnifierPopupWindow;->mLocationX:I
    invoke-static {v1, v2}, Llewa/widget/MagnifierPopupWindow;->access$402(Llewa/widget/MagnifierPopupWindow;I)I

    .line 163
    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mMagHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mFingerOffset:I
    invoke-static {v3}, Llewa/widget/MagnifierPopupWindow;->access$900(Llewa/widget/MagnifierPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mFingerOffset:I
    invoke-static {v3}, Llewa/widget/MagnifierPopupWindow;->access$900(Llewa/widget/MagnifierPopupWindow;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    #setter for: Llewa/widget/MagnifierPopupWindow;->mLocationY:I
    invoke-static {v1, v2}, Llewa/widget/MagnifierPopupWindow;->access$502(Llewa/widget/MagnifierPopupWindow;I)I

    .line 164
    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 165
    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 166
    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mLocationY:I
    invoke-static {v1}, Llewa/widget/MagnifierPopupWindow;->access$500(Llewa/widget/MagnifierPopupWindow;)I

    move-result v1

    if-gez v1, :cond_0

    .line 168
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    .line 169
    .local v0, rect1:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mLocationY:I
    invoke-static {v2}, Llewa/widget/MagnifierPopupWindow;->access$500(Llewa/widget/MagnifierPopupWindow;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 171
    .end local v0           #rect1:Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 172
    iget-object v1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView;->mSrcHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 173
    invoke-virtual {p0}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->invalidate()V

    .line 174
    return-void
.end method
