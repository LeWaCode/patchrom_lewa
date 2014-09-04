.class Llewa/widget/LewaToast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "LewaToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/LewaToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# instance fields
.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 338
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 310
    new-instance v1, Llewa/widget/LewaToast$TN$1;

    invoke-direct {v1, p0}, Llewa/widget/LewaToast$TN$1;-><init>(Llewa/widget/LewaToast$TN;)V

    iput-object v1, p0, Llewa/widget/LewaToast$TN;->mShow:Ljava/lang/Runnable;

    .line 316
    new-instance v1, Llewa/widget/LewaToast$TN$2;

    invoke-direct {v1, p0}, Llewa/widget/LewaToast$TN$2;-><init>(Llewa/widget/LewaToast$TN;)V

    iput-object v1, p0, Llewa/widget/LewaToast$TN;->mHide:Ljava/lang/Runnable;

    .line 324
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Llewa/widget/LewaToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 325
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Llewa/widget/LewaToast$TN;->mHandler:Landroid/os/Handler;

    .line 327
    const/16 v1, 0x51

    iput v1, p0, Llewa/widget/LewaToast$TN;->mGravity:I

    .line 341
    iget-object v0, p0, Llewa/widget/LewaToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 342
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 343
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 344
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 347
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 348
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 349
    const/16 v1, 0x7d6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 350
    const-string v1, "LewaToast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 409
    iget-object v2, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 411
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    :goto_0
    return-void

    .line 416
    :cond_0
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 418
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v2, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v2, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 421
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Llewa/widget/LewaToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 435
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    .line 437
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 372
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    iget-object v4, p0, Llewa/widget/LewaToast$TN;->mNextView:Landroid/view/View;

    if-eq v3, v4, :cond_4

    .line 374
    invoke-virtual {p0}, Llewa/widget/LewaToast$TN;->handleHide()V

    .line 375
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mNextView:Landroid/view/View;

    iput-object v3, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    .line 376
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 377
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 380
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 382
    :cond_0
    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Llewa/widget/LewaToast$TN;->mWM:Landroid/view/WindowManager;

    .line 385
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 386
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, p0, Llewa/widget/LewaToast$TN;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 387
    .local v2, gravity:I
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 388
    and-int/lit8 v3, v2, 0x7

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 389
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 391
    :cond_1
    and-int/lit8 v3, v2, 0x70

    const/16 v4, 0x70

    if-ne v3, v4, :cond_2

    .line 392
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 394
    :cond_2
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Llewa/widget/LewaToast$TN;->mX:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 395
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Llewa/widget/LewaToast$TN;->mY:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 396
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Llewa/widget/LewaToast$TN;->mVerticalMargin:F

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 397
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Llewa/widget/LewaToast$TN;->mHorizontalMargin:F

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 398
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 400
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 403
    :cond_3
    iget-object v3, p0, Llewa/widget/LewaToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Llewa/widget/LewaToast$TN;->mView:Landroid/view/View;

    iget-object v5, p0, Llewa/widget/LewaToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-direct {p0}, Llewa/widget/LewaToast$TN;->trySendAccessibilityEvent()V

    .line 406
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #gravity:I
    :cond_4
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Llewa/widget/LewaToast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llewa/widget/LewaToast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Llewa/widget/LewaToast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llewa/widget/LewaToast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method
