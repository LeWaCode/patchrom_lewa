.class Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;
.super Ljava/lang/Object;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPoint"
.end annotation


# instance fields
.field protected hasUnlockedState:Z

.field private mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

.field protected mCurrentX:I

.field protected mCurrentY:I

.field private mHeight:I

.field protected mNormalSound:Ljava/lang/String;

.field protected mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

.field protected mPressedSound:Ljava/lang/String;

.field protected mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

.field protected mReachedSound:Ljava/lang/String;

.field protected mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

.field private mState:Llewa/lockscreen/UnlockerScreenElement$State;

.field protected mUnlockedSound:Ljava/lang/String;

.field protected mUnlockedStateElements:Llewa/lockscreen/view/ElementGroup;

.field private mWidth:I

.field protected mX:I

.field protected mY:I

.field final synthetic this$0:Llewa/lockscreen/UnlockerScreenElement;


# direct methods
.method public constructor <init>(Llewa/lockscreen/UnlockerScreenElement;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "element"
    .parameter "nodeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 410
    iput-object p1, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->hasUnlockedState:Z

    .line 411
    sget-object v0, Llewa/lockscreen/UnlockerScreenElement$State;->Invalid:Llewa/lockscreen/UnlockerScreenElement$State;

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mState:Llewa/lockscreen/UnlockerScreenElement$State;

    .line 413
    invoke-virtual {p0, p2, p3}, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 415
    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;
    invoke-static {p1}, Llewa/lockscreen/UnlockerScreenElement;->access$1100(Llewa/lockscreen/UnlockerScreenElement;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "move_x"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;
    invoke-static {p1}, Llewa/lockscreen/UnlockerScreenElement;->access$1200(Llewa/lockscreen/UnlockerScreenElement;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "move_y"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;
    invoke-static {p1}, Llewa/lockscreen/UnlockerScreenElement;->access$1300(Llewa/lockscreen/UnlockerScreenElement;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "move_dist"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;
    .locals 2
    .parameter "name"

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, screenElement:Llewa/lockscreen/view/ScreenElement;
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v1, p1}, Llewa/lockscreen/view/ElementGroup;->findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 553
    :goto_0
    return-object v1

    .line 539
    :cond_0
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v1, p1}, Llewa/lockscreen/view/ElementGroup;->findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 542
    goto :goto_0

    .line 546
    :cond_1
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v1, :cond_2

    .line 547
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v1, p1}, Llewa/lockscreen/view/ElementGroup;->findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 549
    goto :goto_0

    .line 553
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentX()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentX:I

    return v0
.end method

.method public getCurrentY()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentY:I

    return v0
.end method

.method public getHasUnlockedState()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->hasUnlockedState:Z

    return v0
.end method

.method public getState()Llewa/lockscreen/UnlockerScreenElement$State;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mState:Llewa/lockscreen/UnlockerScreenElement$State;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mY:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 512
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mX:I

    iput v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentX:I

    .line 513
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mY:I

    iput v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentY:I

    .line 514
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    const/4 v1, 0x0

    #setter for: Llewa/lockscreen/UnlockerScreenElement;->mUnlock:Z
    invoke-static {v0, v1}, Llewa/lockscreen/UnlockerScreenElement;->access$2602(Llewa/lockscreen/UnlockerScreenElement;Z)Z

    .line 515
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #calls: Llewa/lockscreen/UnlockerScreenElement;->resetState()V
    invoke-static {v0}, Llewa/lockscreen/UnlockerScreenElement;->access$2800(Llewa/lockscreen/UnlockerScreenElement;)V

    .line 516
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->init()V

    .line 519
    :cond_0
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->init()V

    .line 522
    :cond_1
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->init()V

    .line 526
    :cond_2
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 9
    .parameter "element"
    .parameter "nodeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 422
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "wrong node name"

    invoke-static {v4, v5}, Llewa/lockscreen/view/Utils;->asserts(ZLjava/lang/String;)V

    .line 424
    const-string v4, "normalSound"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalSound:Ljava/lang/String;

    .line 425
    const-string v4, "pressedSound"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedSound:Ljava/lang/String;

    .line 426
    const-string v4, "reachedSound"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedSound:Ljava/lang/String;

    .line 427
    const-string v4, "unlockedSound"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mUnlockedSound:Ljava/lang/String;

    .line 430
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v4}, Llewa/lockscreen/UnlockerScreenElement;->access$1400(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v4

    const-string v5, "x"

    const-string v6, "x"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v4}, Llewa/lockscreen/UnlockerScreenElement;->access$1500(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v4

    const-string v5, "x"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    iput v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mX:I

    .line 433
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v4}, Llewa/lockscreen/UnlockerScreenElement;->access$1600(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v4

    const-string v5, "y"

    const-string v6, "y"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v4}, Llewa/lockscreen/UnlockerScreenElement;->access$1700(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v4

    const-string v5, "y"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    iput v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mY:I

    .line 436
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v4}, Llewa/lockscreen/UnlockerScreenElement;->access$1800(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v4

    const-string v5, "w"

    const-string v6, "w"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v4}, Llewa/lockscreen/UnlockerScreenElement;->access$1900(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v4

    const-string v5, "w"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    iput v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mWidth:I

    .line 439
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v4}, Llewa/lockscreen/UnlockerScreenElement;->access$2000(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v4

    const-string v5, "h"

    const-string v6, "h"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v4}, Llewa/lockscreen/UnlockerScreenElement;->access$2100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v4

    const-string v5, "h"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    iput v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mHeight:I

    .line 442
    const-string v4, "NormalState"

    invoke-static {p1, v4}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 443
    .local v0, normalState:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 444
    new-instance v4, Llewa/lockscreen/view/ElementGroup;

    iget-object v5, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;
    invoke-static {v5}, Llewa/lockscreen/UnlockerScreenElement;->access$2200(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/ScreenContext;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Llewa/lockscreen/view/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    iput-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    .line 447
    :cond_0
    const-string v4, "PressedState"

    invoke-static {p1, v4}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 448
    .local v1, pressedState:Lorg/w3c/dom/Element;
    if-eqz v1, :cond_1

    .line 449
    new-instance v4, Llewa/lockscreen/view/ElementGroup;

    iget-object v5, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;
    invoke-static {v5}, Llewa/lockscreen/UnlockerScreenElement;->access$2300(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/ScreenContext;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Llewa/lockscreen/view/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    iput-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    .line 452
    :cond_1
    const-string v4, "UnlockedState"

    invoke-static {p1, v4}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 453
    .local v3, unlockedState:Lorg/w3c/dom/Element;
    if-eqz v3, :cond_2

    .line 454
    new-instance v4, Llewa/lockscreen/view/ElementGroup;

    iget-object v5, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;
    invoke-static {v5}, Llewa/lockscreen/UnlockerScreenElement;->access$2400(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/ScreenContext;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Llewa/lockscreen/view/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    iput-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mUnlockedStateElements:Llewa/lockscreen/view/ElementGroup;

    .line 455
    const/4 v4, 0x1

    iput-boolean v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->hasUnlockedState:Z

    .line 458
    :cond_2
    iget-boolean v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->hasUnlockedState:Z

    if-nez v4, :cond_3

    .line 459
    const-string v4, "ReachedState"

    invoke-static {p1, v4}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 460
    .local v2, reachedState:Lorg/w3c/dom/Element;
    if-eqz v2, :cond_3

    .line 461
    new-instance v4, Llewa/lockscreen/view/ElementGroup;

    iget-object v5, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;
    invoke-static {v5}, Llewa/lockscreen/UnlockerScreenElement;->access$2500(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/ScreenContext;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Llewa/lockscreen/view/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    iput-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    .line 465
    .end local v2           #reachedState:Lorg/w3c/dom/Element;
    :cond_3
    sget-object v4, Llewa/lockscreen/UnlockerScreenElement$State;->Normal:Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {p0, v4}, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 466
    return-void
.end method

.method public moveTo(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 582
    iput p1, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentX:I

    .line 583
    iput p2, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentY:I

    .line 584
    return-void
.end method

.method protected onStateChange(Llewa/lockscreen/UnlockerScreenElement$State;Llewa/lockscreen/UnlockerScreenElement$State;)V
    .locals 0
    .parameter "mState"
    .parameter "state"

    .prologue
    .line 588
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->pause()V

    .line 595
    :cond_0
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->pause()V

    .line 598
    :cond_1
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->pause()V

    .line 601
    :cond_2
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 606
    .local v0, count:I
    invoke-virtual {p0}, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->getCurrentX()I

    move-result v3

    invoke-virtual {p0}, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->getX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 607
    .local v1, delatX:F
    invoke-virtual {p0}, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->getCurrentY()I

    move-result v3

    invoke-virtual {p0}, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->getY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 608
    .local v2, delatY:F
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 610
    iget-object v3, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v3, :cond_0

    .line 611
    iget-object v3, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v3, p1}, Llewa/lockscreen/view/ElementGroup;->render(Landroid/graphics/Canvas;)V

    .line 614
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 615
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->resume()V

    .line 622
    :cond_0
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->resume()V

    .line 625
    :cond_1
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->resume()V

    .line 628
    :cond_2
    return-void
.end method

.method public setState(Llewa/lockscreen/UnlockerScreenElement$State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 469
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mState:Llewa/lockscreen/UnlockerScreenElement$State;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mUnlock:Z
    invoke-static {v0}, Llewa/lockscreen/UnlockerScreenElement;->access$2600(Llewa/lockscreen/UnlockerScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iput-object p1, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mState:Llewa/lockscreen/UnlockerScreenElement$State;

    .line 473
    sget-object v0, Llewa/lockscreen/UnlockerScreenElement$1;->$SwitchMap$lewa$lockscreen$UnlockerScreenElement$State:[I

    invoke-virtual {p1}, Llewa/lockscreen/UnlockerScreenElement$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 507
    :goto_1
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mState:Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {p0, v0, p1}, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->onStateChange(Llewa/lockscreen/UnlockerScreenElement$State;Llewa/lockscreen/UnlockerScreenElement$State;)V

    goto :goto_0

    .line 475
    :pswitch_0
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mPressed:Z
    invoke-static {v0}, Llewa/lockscreen/UnlockerScreenElement;->access$2700(Llewa/lockscreen/UnlockerScreenElement;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 476
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->init()V

    .line 478
    :cond_2
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    goto :goto_1

    .line 481
    :pswitch_1
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->init()V

    .line 483
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    goto :goto_1

    .line 485
    :cond_3
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    goto :goto_1

    .line 489
    :pswitch_2
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_4

    .line 490
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    goto :goto_1

    .line 491
    :cond_4
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_5

    .line 492
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    goto :goto_1

    .line 494
    :cond_5
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    goto :goto_1

    .line 498
    :pswitch_3
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mUnlockedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_6

    .line 499
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mUnlockedStateElements:Llewa/lockscreen/view/ElementGroup;

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    goto :goto_1

    .line 501
    :cond_6
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    goto :goto_1

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "isShow"

    .prologue
    .line 632
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/lockscreen/view/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 635
    :cond_0
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/lockscreen/view/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 638
    :cond_1
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/lockscreen/view/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 641
    :cond_2
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 644
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/lockscreen/view/ElementGroup;->tick(J)V

    .line 647
    :cond_0
    return-void
.end method

.method public touched(II)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    .line 651
    invoke-virtual {p0}, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->getX()I

    move-result v2

    .line 652
    .local v2, mx:I
    invoke-virtual {p0}, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->getY()I

    move-result v4

    .line 653
    .local v4, my:I
    iget v7, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 654
    .local v1, mw:I
    iget v7, p0, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;->mHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 656
    .local v0, mh:I
    if-ge p1, v2, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v6

    .line 660
    :cond_1
    add-int v3, v2, v1

    .line 662
    .local v3, mx_1:I
    if-gt p1, v3, :cond_0

    if-lt p2, v4, :cond_0

    .line 666
    add-int v5, v4, v0

    .line 668
    .local v5, my_1:I
    if-gt p2, v5, :cond_0

    .line 672
    const/4 v6, 0x1

    goto :goto_0
.end method
