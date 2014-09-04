.class public Llewa/widget/MagnifierPopupWindow;
.super Landroid/widget/PopupWindow;
.source "MagnifierPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/widget/MagnifierPopupWindow$MagnifierView;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMES:F = 1.2f

.field public static final LOG_TAG:Ljava/lang/String; = "MagnifierPopupWindow"

.field private static final MSG_HIDE_MAGNIFIER:I = 0x3

.field private static final MSG_REFRESH_MAGNIFIER:I = 0x4

.field private static final MSG_SHOW_MAGNIFIER:I = 0x2

.field private static final MSG_UPDATE_CACHE:I = 0x1

.field private static final REFRESH_DELAY:I = 0x3e8

.field private static TYPE_HIDDEN_NAV_CONSUMER:I = 0x0

.field private static final UPDATE_CACHE_DELAY:I = 0x50


# instance fields
.field private mAnimationEnter:Landroid/animation/AnimatorSet;

.field private mAnimationExit:Landroid/animation/AnimatorSet;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFingerOffset:I

.field mHandler:Landroid/os/Handler;

.field private mLocationX:I

.field private mLocationY:I

.field private mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

.field private mMaxLayer:I

.field private mToken:Landroid/os/IBinder;

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    const/16 v0, 0x7e6

    sput v0, Llewa/widget/MagnifierPopupWindow;->TYPE_HIDDEN_NAV_CONSUMER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "maxLayer"

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llewa/widget/MagnifierPopupWindow;-><init>(Landroid/content/Context;II)V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "maxLayer"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 271
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 233
    new-instance v2, Llewa/widget/MagnifierPopupWindow$1;

    invoke-direct {v2, p0}, Llewa/widget/MagnifierPopupWindow$1;-><init>(Llewa/widget/MagnifierPopupWindow;)V

    iput-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    .line 272
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 273
    iput p2, p0, Llewa/widget/MagnifierPopupWindow;->mMaxLayer:I

    .line 274
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mToken:Landroid/os/IBinder;

    .line 275
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;

    .line 276
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Llewa/widget/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 277
    new-instance v2, Llewa/widget/MagnifierPopupWindow$MagnifierView;

    const v3, 0x3f99999a

    invoke-direct {v2, p0, p1, v3}, Llewa/widget/MagnifierPopupWindow$MagnifierView;-><init>(Llewa/widget/MagnifierPopupWindow;Landroid/content/Context;F)V

    iput-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    .line 278
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v2, v4}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->setClickable(Z)V

    .line 279
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {p0, v2}, Llewa/widget/MagnifierPopupWindow;->setContentView(Landroid/view/View;)V

    .line 280
    invoke-virtual {p0, v4}, Llewa/widget/MagnifierPopupWindow;->setFocusable(Z)V

    .line 281
    invoke-virtual {p0, v4}, Llewa/widget/MagnifierPopupWindow;->setTouchable(Z)V

    .line 282
    invoke-virtual {p0, v4}, Llewa/widget/MagnifierPopupWindow;->setClippingEnabled(Z)V

    .line 283
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Llewa/widget/MagnifierPopupWindow;->setInputMethodMode(I)V

    .line 284
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Llewa/widget/MagnifierPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mAnimationEnter:Landroid/animation/AnimatorSet;

    .line 286
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mAnimationExit:Landroid/animation/AnimatorSet;

    .line 287
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mAnimationExit:Landroid/animation/AnimatorSet;

    new-instance v3, Llewa/widget/MagnifierPopupWindow$2;

    invoke-direct {v3, p0}, Llewa/widget/MagnifierPopupWindow$2;-><init>(Llewa/widget/MagnifierPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 317
    const-wide/16 v0, 0x1f4

    .line 318
    .local v0, duration:J
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mAnimationExit:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 319
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mAnimationEnter:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 320
    sget v2, Llewa/widget/MagnifierPopupWindow;->TYPE_HIDDEN_NAV_CONSUMER:I

    invoke-virtual {p0, v2}, Llewa/widget/MagnifierPopupWindow;->setWindowLayoutType(I)V

    .line 321
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Llewa/widget/MagnifierPopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 322
    return-void
.end method

.method static synthetic access$000(Llewa/widget/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Llewa/widget/MagnifierPopupWindow;->mX:I

    return v0
.end method

.method static synthetic access$100(Llewa/widget/MagnifierPopupWindow;)Llewa/widget/MagnifierPopupWindow$MagnifierView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    return-object v0
.end method

.method static synthetic access$1100(Llewa/widget/MagnifierPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Llewa/widget/MagnifierPopupWindow;->showMagnifier()V

    return-void
.end method

.method static synthetic access$1200(Llewa/widget/MagnifierPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Llewa/widget/MagnifierPopupWindow;->refreshMagnifier()V

    return-void
.end method

.method static synthetic access$200(Llewa/widget/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Llewa/widget/MagnifierPopupWindow;->mY:I

    return v0
.end method

.method static synthetic access$300(Llewa/widget/MagnifierPopupWindow;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow;->mAnimationExit:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$400(Llewa/widget/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Llewa/widget/MagnifierPopupWindow;->mLocationX:I

    return v0
.end method

.method static synthetic access$402(Llewa/widget/MagnifierPopupWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Llewa/widget/MagnifierPopupWindow;->mLocationX:I

    return p1
.end method

.method static synthetic access$500(Llewa/widget/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Llewa/widget/MagnifierPopupWindow;->mLocationY:I

    return v0
.end method

.method static synthetic access$502(Llewa/widget/MagnifierPopupWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Llewa/widget/MagnifierPopupWindow;->mLocationY:I

    return p1
.end method

.method static synthetic access$600(Llewa/widget/MagnifierPopupWindow;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$700(Llewa/widget/MagnifierPopupWindow;)Landroid/view/Display;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$800(Llewa/widget/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Llewa/widget/MagnifierPopupWindow;->mMaxLayer:I

    return v0
.end method

.method static synthetic access$900(Llewa/widget/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Llewa/widget/MagnifierPopupWindow;->mFingerOffset:I

    return v0
.end method

.method static synthetic access$902(Llewa/widget/MagnifierPopupWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Llewa/widget/MagnifierPopupWindow;->mFingerOffset:I

    return p1
.end method

.method private refreshMagnifier()V
    .locals 6

    .prologue
    .line 326
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Llewa/widget/MagnifierPopupWindow;->mX:I

    iget v3, p0, Llewa/widget/MagnifierPopupWindow;->mY:I

    iget v4, p0, Llewa/widget/MagnifierPopupWindow;->mX:I

    iget v5, p0, Llewa/widget/MagnifierPopupWindow;->mY:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->updateMagnifier(Landroid/graphics/Rect;)V

    .line 327
    return-void
.end method

.method private showMagnifier()V
    .locals 5

    .prologue
    .line 331
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Llewa/widget/MagnifierPopupWindow;->mX:I

    iget v2, p0, Llewa/widget/MagnifierPopupWindow;->mY:I

    iget v3, p0, Llewa/widget/MagnifierPopupWindow;->mX:I

    iget v4, p0, Llewa/widget/MagnifierPopupWindow;->mY:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Llewa/widget/MagnifierPopupWindow;->showMagnifier(Landroid/graphics/Rect;)V

    .line 332
    return-void
.end method

.method private showMagnifier(Landroid/graphics/Rect;)V
    .locals 7
    .parameter "clip"

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 336
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v2, p1}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->updateMagnifier(Landroid/graphics/Rect;)V

    .line 337
    invoke-virtual {p0}, Llewa/widget/MagnifierPopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v2, v5, v5}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->measure(II)V

    .line 340
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v2}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->updateCache()V

    .line 341
    invoke-virtual {p0, v3}, Llewa/widget/MagnifierPopupWindow;->setWidth(I)V

    .line 342
    invoke-virtual {p0, v3}, Llewa/widget/MagnifierPopupWindow;->setHeight(I)V

    .line 343
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x33

    invoke-virtual {p0, v2, v3, v5, v5}, Llewa/widget/MagnifierPopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 344
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    iget v3, p0, Llewa/widget/MagnifierPopupWindow;->mX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->setPivotX(F)V

    .line 345
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    iget v3, p0, Llewa/widget/MagnifierPopupWindow;->mY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->setPivotY(F)V

    .line 346
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    const-string v3, "scaleX"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 349
    .local v0, animation1:Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    const-string v3, "scaleY"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 352
    .local v1, animation2:Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mAnimationEnter:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 355
    iget-object v2, p0, Llewa/widget/MagnifierPopupWindow;->mAnimationEnter:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 357
    .end local v0           #animation1:Landroid/animation/ObjectAnimator;
    .end local v1           #animation2:Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 346
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 349
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 363
    return-void
.end method

.method public showMagnifier(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 367
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget v0, p0, Llewa/widget/MagnifierPopupWindow;->mX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    iget v0, p0, Llewa/widget/MagnifierPopupWindow;->mY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 370
    :cond_0
    iput p1, p0, Llewa/widget/MagnifierPopupWindow;->mX:I

    .line 371
    iput p2, p0, Llewa/widget/MagnifierPopupWindow;->mY:I

    .line 372
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 374
    :cond_1
    return-void
.end method

.method public updateCache()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->updateCache()V

    .line 379
    return-void
.end method
