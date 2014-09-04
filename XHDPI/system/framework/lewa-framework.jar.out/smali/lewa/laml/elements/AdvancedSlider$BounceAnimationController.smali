.class Llewa/laml/elements/AdvancedSlider$BounceAnimationController;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"

# interfaces
.implements Llewa/laml/elements/ITicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BounceAnimationController"
.end annotation


# static fields
.field private static final BOUNCE_THRESHOLD:I = 0x3


# instance fields
.field private mBounceAccelation:I

.field private mBounceAccelationExp:Llewa/laml/data/Expression;

.field private mBounceInitSpeed:I

.field private mBounceInitSpeedExp:Llewa/laml/data/Expression;

.field private mBounceProgress:Llewa/laml/util/IndexedNumberVariable;

.field private mBounceStartPointIndex:I

.field private mBounceStartTime:J

.field private mEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

.field private mPreDistance:J

.field private mStartX:F

.field private mStartY:F

.field private mTraveledDistance:D

.field final synthetic this$0:Llewa/laml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Llewa/laml/elements/AdvancedSlider;)V
    .locals 2
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 442
    return-void
.end method

.method synthetic constructor <init>(Llewa/laml/elements/AdvancedSlider;Llewa/laml/elements/AdvancedSlider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;-><init>(Llewa/laml/elements/AdvancedSlider;)V

    return-void
.end method

.method private getPoint(FFFFJ)Llewa/laml/util/Utils$Point;
    .locals 17
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "distance"

    .prologue
    .line 445
    new-instance v6, Llewa/laml/util/Utils$Point;

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    invoke-direct {v6, v12, v13, v14, v15}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    .line 446
    .local v6, pt1:Llewa/laml/util/Utils$Point;
    new-instance v7, Llewa/laml/util/Utils$Point;

    move/from16 v0, p3

    float-to-double v12, v0

    move/from16 v0, p4

    float-to-double v14, v0

    invoke-direct {v7, v12, v13, v14, v15}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    .line 447
    .local v7, pt2:Llewa/laml/util/Utils$Point;
    const/4 v12, 0x1

    invoke-static {v6, v7, v12}, Llewa/laml/util/Utils;->Dist(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)D

    move-result-wide v10

    .line 448
    .local v10, total:D
    move-wide/from16 v0, p5

    long-to-double v12, v0

    cmpl-double v12, v12, v10

    if-ltz v12, :cond_0

    .line 449
    const/4 v12, 0x0

    .line 454
    :goto_0
    return-object v12

    .line 451
    :cond_0
    move-wide/from16 v0, p5

    long-to-double v12, v0

    sub-double v12, v10, v12

    div-double v8, v12, v10

    .line 452
    .local v8, ratio:D
    iget-wide v12, v7, Llewa/laml/util/Utils$Point;->x:D

    iget-wide v14, v6, Llewa/laml/util/Utils$Point;->x:D

    sub-double/2addr v12, v14

    mul-double v2, v8, v12

    .line 453
    .local v2, dx:D
    iget-wide v12, v7, Llewa/laml/util/Utils$Point;->y:D

    iget-wide v14, v6, Llewa/laml/util/Utils$Point;->y:D

    sub-double/2addr v12, v14

    mul-double v4, v8, v12

    .line 454
    .local v4, dy:D
    new-instance v12, Llewa/laml/util/Utils$Point;

    iget-wide v13, v6, Llewa/laml/util/Utils$Point;->x:D

    add-double/2addr v13, v2

    iget-wide v15, v6, Llewa/laml/util/Utils$Point;->y:D

    add-double/2addr v15, v4

    invoke-direct/range {v12 .. v16}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    goto :goto_0
.end method

.method private startBounceAnimation(Llewa/laml/elements/AdvancedSlider$EndPoint;)V
    .locals 14
    .parameter "ep"

    .prologue
    .line 458
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeedExp:Llewa/laml/data/Expression;

    if-eqz v9, :cond_0

    .line 459
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v10, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeedExp:Llewa/laml/data/Expression;

    invoke-virtual {v9, v10}, Llewa/laml/elements/AdvancedSlider;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v9

    double-to-int v9, v9

    iput v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeed:I

    .line 461
    :cond_0
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelationExp:Llewa/laml/data/Expression;

    if-eqz v9, :cond_1

    .line 462
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v10, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelationExp:Llewa/laml/data/Expression;

    invoke-virtual {v9, v10}, Llewa/laml/elements/AdvancedSlider;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v9

    double-to-int v9, v9

    iput v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelation:I

    .line 464
    :cond_1
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 465
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 466
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;
    invoke-static {v9}, Llewa/laml/elements/AdvancedSlider;->access$400(Llewa/laml/elements/AdvancedSlider;)Llewa/laml/elements/AdvancedSlider$StartPoint;

    move-result-object v9

    invoke-virtual {v9}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getCurrentX()F

    move-result v9

    iput v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mStartX:F

    .line 467
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;
    invoke-static {v9}, Llewa/laml/elements/AdvancedSlider;->access$400(Llewa/laml/elements/AdvancedSlider;)Llewa/laml/elements/AdvancedSlider$StartPoint;

    move-result-object v9

    invoke-virtual {v9}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getCurrentY()F

    move-result v9

    iput v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mStartY:F

    .line 468
    const/4 v9, -0x1

    iput v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartPointIndex:I

    .line 469
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    .line 470
    new-instance v2, Llewa/laml/util/Utils$Point;

    iget v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mStartX:F

    float-to-double v9, v9

    iget v11, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mStartY:F

    float-to-double v11, v11

    invoke-direct {v2, v9, v10, v11, v12}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    .line 471
    .local v2, p0:Llewa/laml/util/Utils$Point;
    if-eqz p1, :cond_3

    #getter for: Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Llewa/laml/elements/AdvancedSlider$EndPoint;->access$300(Llewa/laml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 472
    #getter for: Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Llewa/laml/elements/AdvancedSlider$EndPoint;->access$300(Llewa/laml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v5

    .line 473
    .local v5, path:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/laml/elements/AdvancedSlider$Position;>;"
    const/4 v1, 0x1

    .local v1, i:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 474
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llewa/laml/elements/AdvancedSlider$Position;

    .line 475
    .local v7, pt1:Llewa/laml/elements/AdvancedSlider$Position;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Llewa/laml/elements/AdvancedSlider$Position;

    .line 476
    .local v8, pt2:Llewa/laml/elements/AdvancedSlider$Position;
    new-instance v3, Llewa/laml/util/Utils$Point;

    invoke-virtual {v7}, Llewa/laml/elements/AdvancedSlider$Position;->getX()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v7}, Llewa/laml/elements/AdvancedSlider$Position;->getY()F

    move-result v11

    float-to-double v11, v11

    invoke-direct {v3, v9, v10, v11, v12}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    .line 477
    .local v3, p1:Llewa/laml/util/Utils$Point;
    new-instance v4, Llewa/laml/util/Utils$Point;

    invoke-virtual {v8}, Llewa/laml/elements/AdvancedSlider$Position;->getX()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v8}, Llewa/laml/elements/AdvancedSlider$Position;->getY()F

    move-result v11

    float-to-double v11, v11

    invoke-direct {v4, v9, v10, v11, v12}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    .line 478
    .local v4, p2:Llewa/laml/util/Utils$Point;
    const/4 v9, 0x0

    invoke-static {v3, v4, v2, v9}, Llewa/laml/util/Utils;->pointProjectionOnSegment(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)Llewa/laml/util/Utils$Point;

    move-result-object v6

    .line 479
    .local v6, pt:Llewa/laml/util/Utils$Point;
    if-eqz v6, :cond_2

    .line 480
    add-int/lit8 v9, v1, -0x1

    iput v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartPointIndex:I

    .line 481
    iget-wide v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    const/4 v11, 0x1

    invoke-static {v3, v6, v11}, Llewa/laml/util/Utils;->Dist(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)D

    move-result-wide v11

    add-double/2addr v9, v11

    iput-wide v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    .line 473
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    :cond_2
    iget-wide v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    const/4 v11, 0x1

    invoke-static {v3, v4, v11}, Llewa/laml/util/Utils;->Dist(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)D

    move-result-wide v11

    add-double/2addr v9, v11

    iput-wide v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    goto :goto_1

    .line 487
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #p1:Llewa/laml/util/Utils$Point;
    .end local v4           #p2:Llewa/laml/util/Utils$Point;
    .end local v5           #path:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/laml/elements/AdvancedSlider$Position;>;"
    .end local v6           #pt:Llewa/laml/util/Utils$Point;
    .end local v7           #pt1:Llewa/laml/elements/AdvancedSlider$Position;
    .end local v8           #pt2:Llewa/laml/elements/AdvancedSlider$Position;
    :cond_3
    new-instance v9, Llewa/laml/util/Utils$Point;

    iget-object v10, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;
    invoke-static {v10}, Llewa/laml/elements/AdvancedSlider;->access$400(Llewa/laml/elements/AdvancedSlider;)Llewa/laml/elements/AdvancedSlider$StartPoint;

    move-result-object v10

    invoke-virtual {v10}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getX()F

    move-result v10

    float-to-double v10, v10

    iget-object v12, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;
    invoke-static {v12}, Llewa/laml/elements/AdvancedSlider;->access$400(Llewa/laml/elements/AdvancedSlider;)Llewa/laml/elements/AdvancedSlider$StartPoint;

    move-result-object v12

    invoke-virtual {v12}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getY()F

    move-result v12

    float-to-double v12, v12

    invoke-direct {v9, v10, v11, v12, v13}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    const/4 v10, 0x1

    invoke-static {v9, v2, v10}, Llewa/laml/util/Utils;->Dist(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)D

    move-result-wide v9

    iput-wide v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    .line 490
    :cond_4
    iget-wide v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    const-wide/high16 v11, 0x4008

    cmpg-double v9, v9, v11

    if-gez v9, :cond_5

    .line 491
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #calls: Llewa/laml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v9}, Llewa/laml/elements/AdvancedSlider;->access$500(Llewa/laml/elements/AdvancedSlider;)V

    .line 492
    const-wide/16 v9, -0x1

    iput-wide v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 498
    :goto_2
    return-void

    .line 494
    :cond_5
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v9, :cond_6

    .line 495
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Llewa/laml/util/IndexedNumberVariable;

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 496
    :cond_6
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v9}, Llewa/laml/elements/AdvancedSlider;->requestUpdate()V

    goto :goto_2
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 501
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 502
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Llewa/laml/util/IndexedNumberVariable;

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 504
    :cond_0
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter "node"

    .prologue
    .line 507
    const-string v0, "bounceInitSpeed"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeedExp:Llewa/laml/data/Expression;

    .line 508
    const-string v0, "bounceAcceleration"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelationExp:Llewa/laml/data/Expression;

    .line 509
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-boolean v0, v0, Llewa/laml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v1, v1, Llewa/laml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "bounce_progress"

    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v3}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Llewa/laml/util/IndexedNumberVariable;

    .line 512
    :cond_0
    return-void
.end method

.method public startCancelMoving(Llewa/laml/elements/AdvancedSlider$EndPoint;)V
    .locals 1
    .parameter "ep"

    .prologue
    .line 515
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeedExp:Llewa/laml/data/Expression;

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #calls: Llewa/laml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v0}, Llewa/laml/elements/AdvancedSlider;->access$500(Llewa/laml/elements/AdvancedSlider;)V

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-direct {p0, p1}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->startBounceAnimation(Llewa/laml/elements/AdvancedSlider$EndPoint;)V

    goto :goto_0
.end method

.method public tick(J)V
    .locals 26
    .parameter "currentTime"

    .prologue
    .line 523
    move-object/from16 v0, p0

    iget-wide v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v3, v3, v10

    if-ltz v3, :cond_1

    .line 524
    move-object/from16 v0, p0

    iget-wide v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v3, v3, v10

    if-nez v3, :cond_2

    .line 525
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 526
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mPreDistance:J

    .line 574
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v3}, Llewa/laml/elements/AdvancedSlider;->requestUpdate()V

    .line 575
    move-object/from16 v0, p0

    iget-wide v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    const-wide/16 v10, 0x0

    cmpl-double v3, v3, v10

    if-lez v3, :cond_1

    .line 576
    move-object/from16 v0, p0

    iget-wide v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mPreDistance:J

    long-to-double v3, v3

    move-object/from16 v0, p0

    iget-wide v10, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    div-double v18, v3, v10

    .line 577
    .local v18, progress:D
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v3, :cond_1

    .line 578
    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, v18, v3

    if-lez v3, :cond_0

    .line 579
    const-wide/high16 v18, 0x3ff0

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #calls: Llewa/laml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v3}, Llewa/laml/elements/AdvancedSlider;->access$500(Llewa/laml/elements/AdvancedSlider;)V

    .line 582
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Llewa/laml/util/IndexedNumberVariable;

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 586
    .end local v18           #progress:D
    :cond_1
    :goto_1
    return-void

    .line 528
    :cond_2
    move-object/from16 v0, p0

    iget-wide v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    sub-long v24, p1, v3

    .line 529
    .local v24, time:J
    move-object/from16 v0, p0

    iget v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeed:I

    int-to-long v3, v3

    mul-long v3, v3, v24

    const-wide/16 v10, 0x3e8

    div-long/2addr v3, v10

    move-object/from16 v0, p0

    iget v5, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelation:I

    int-to-long v10, v5

    mul-long v10, v10, v24

    mul-long v10, v10, v24

    const-wide/32 v12, 0x1e8480

    div-long/2addr v10, v12

    add-long v15, v3, v10

    .line 531
    .local v15, dist:J
    move-object/from16 v0, p0

    iget v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeed:I

    int-to-long v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelation:I

    int-to-long v10, v5

    mul-long v10, v10, v24

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long v22, v3, v10

    .line 532
    .local v22, speed:J
    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget-wide v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    const-wide/high16 v10, 0x4008

    cmpl-double v3, v3, v10

    if-ltz v3, :cond_8

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    #getter for: Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v3}, Llewa/laml/elements/AdvancedSlider$EndPoint;->access$300(Llewa/laml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 534
    const/16 v20, 0x0

    .line 535
    .local v20, pt:Llewa/laml/util/Utils$Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;
    invoke-static {v3}, Llewa/laml/elements/AdvancedSlider;->access$400(Llewa/laml/elements/AdvancedSlider;)Llewa/laml/elements/AdvancedSlider$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getCurrentX()F

    move-result v6

    .line 536
    .local v6, x2:F
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;
    invoke-static {v3}, Llewa/laml/elements/AdvancedSlider;->access$400(Llewa/laml/elements/AdvancedSlider;)Llewa/laml/elements/AdvancedSlider$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getCurrentY()F

    move-result v7

    .line 537
    .local v7, y2:F
    move-object/from16 v0, p0

    iget-wide v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mPreDistance:J

    sub-long v8, v15, v3

    .line 538
    .local v8, d:J
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartPointIndex:I

    move/from16 v17, v0

    .local v17, i:I
    :goto_2
    if-ltz v17, :cond_3

    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    #getter for: Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v3}, Llewa/laml/elements/AdvancedSlider$EndPoint;->access$300(Llewa/laml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Llewa/laml/elements/AdvancedSlider$Position;

    .line 540
    .local v21, pt1:Llewa/laml/elements/AdvancedSlider$Position;
    invoke-virtual/range {v21 .. v21}, Llewa/laml/elements/AdvancedSlider$Position;->getX()F

    move-result v4

    invoke-virtual/range {v21 .. v21}, Llewa/laml/elements/AdvancedSlider$Position;->getY()F

    move-result v5

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->getPoint(FFFFJ)Llewa/laml/util/Utils$Point;

    move-result-object v20

    .line 541
    if-nez v20, :cond_5

    .line 542
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartPointIndex:I

    .line 550
    .end local v21           #pt1:Llewa/laml/elements/AdvancedSlider$Position;
    :cond_3
    if-eqz v20, :cond_4

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    move-object/from16 v0, v20

    iget-wide v4, v0, Llewa/laml/util/Utils$Point;->x:D

    double-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v20

    iget-wide v10, v0, Llewa/laml/util/Utils$Point;->y:D

    double-to-int v5, v10

    int-to-float v5, v5

    #calls: Llewa/laml/elements/AdvancedSlider;->moveStartPoint(FF)V
    invoke-static {v3, v4, v5}, Llewa/laml/elements/AdvancedSlider;->access$600(Llewa/laml/elements/AdvancedSlider;FF)V

    .line 563
    .end local v6           #x2:F
    .end local v7           #y2:F
    .end local v8           #d:J
    .end local v17           #i:I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iput-wide v15, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mPreDistance:J

    goto/16 :goto_0

    .line 545
    .restart local v6       #x2:F
    .restart local v7       #y2:F
    .restart local v8       #d:J
    .restart local v17       #i:I
    .restart local v21       #pt1:Llewa/laml/elements/AdvancedSlider$Position;
    :cond_5
    invoke-virtual/range {v21 .. v21}, Llewa/laml/elements/AdvancedSlider$Position;->getX()F

    move-result v6

    .line 546
    invoke-virtual/range {v21 .. v21}, Llewa/laml/elements/AdvancedSlider$Position;->getY()F

    move-result v7

    .line 547
    long-to-double v3, v8

    new-instance v5, Llewa/laml/util/Utils$Point;

    invoke-virtual/range {v21 .. v21}, Llewa/laml/elements/AdvancedSlider$Position;->getX()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual/range {v21 .. v21}, Llewa/laml/elements/AdvancedSlider$Position;->getY()F

    move-result v12

    float-to-double v12, v12

    invoke-direct {v5, v10, v11, v12, v13}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    new-instance v10, Llewa/laml/util/Utils$Point;

    float-to-double v11, v6

    float-to-double v13, v7

    invoke-direct {v10, v11, v12, v13, v14}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    const/4 v11, 0x1

    invoke-static {v5, v10, v11}, Llewa/laml/util/Utils;->Dist(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)D

    move-result-wide v10

    sub-double/2addr v3, v10

    double-to-long v8, v3

    .line 538
    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    .line 554
    .end local v6           #x2:F
    .end local v7           #y2:F
    .end local v8           #d:J
    .end local v17           #i:I
    .end local v20           #pt:Llewa/laml/util/Utils$Point;
    .end local v21           #pt1:Llewa/laml/elements/AdvancedSlider$Position;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;
    invoke-static {v3}, Llewa/laml/elements/AdvancedSlider;->access$400(Llewa/laml/elements/AdvancedSlider;)Llewa/laml/elements/AdvancedSlider$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;
    invoke-static {v3}, Llewa/laml/elements/AdvancedSlider;->access$400(Llewa/laml/elements/AdvancedSlider;)Llewa/laml/elements/AdvancedSlider$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mStartX:F

    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mStartY:F

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->getPoint(FFFFJ)Llewa/laml/util/Utils$Point;

    move-result-object v20

    .line 556
    .restart local v20       #pt:Llewa/laml/util/Utils$Point;
    if-nez v20, :cond_7

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #calls: Llewa/laml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v3}, Llewa/laml/elements/AdvancedSlider;->access$500(Llewa/laml/elements/AdvancedSlider;)V

    .line 558
    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    iput-wide v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    goto :goto_3

    .line 560
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    move-object/from16 v0, v20

    iget-wide v4, v0, Llewa/laml/util/Utils$Point;->x:D

    double-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v20

    iget-wide v10, v0, Llewa/laml/util/Utils$Point;->y:D

    double-to-int v5, v10

    int-to-float v5, v5

    #calls: Llewa/laml/elements/AdvancedSlider;->moveStartPoint(FF)V
    invoke-static {v3, v4, v5}, Llewa/laml/elements/AdvancedSlider;->access$600(Llewa/laml/elements/AdvancedSlider;FF)V

    goto :goto_3

    .line 565
    .end local v20           #pt:Llewa/laml/util/Utils$Point;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->this$0:Llewa/laml/elements/AdvancedSlider;

    #calls: Llewa/laml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v3}, Llewa/laml/elements/AdvancedSlider;->access$500(Llewa/laml/elements/AdvancedSlider;)V

    .line 566
    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    iput-wide v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v3, :cond_1

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Llewa/laml/util/IndexedNumberVariable;

    const-wide/high16 v4, 0x3ff0

    invoke-virtual {v3, v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    goto/16 :goto_1
.end method
