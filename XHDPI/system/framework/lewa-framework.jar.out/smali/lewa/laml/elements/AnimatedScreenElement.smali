.class public abstract Llewa/laml/elements/AnimatedScreenElement;
.super Llewa/laml/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# instance fields
.field private mActualXVar:Llewa/laml/util/IndexedNumberVariable;

.field private mActualYVar:Llewa/laml/util/IndexedNumberVariable;

.field protected mAni:Llewa/laml/animation/AnimatedElement;

.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPivotZ:Llewa/laml/data/Expression;

.field private mRotationX:Llewa/laml/data/Expression;

.field private mRotationY:Llewa/laml/data/Expression;

.field private mRotationZ:Llewa/laml/data/Expression;

.field private mScaleExpression:Llewa/laml/data/Expression;

.field private mScaleXExpression:Llewa/laml/data/Expression;

.field private mScaleYExpression:Llewa/laml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 5
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Llewa/laml/animation/AnimatedElement;

    invoke-direct {v0, p1, p2}, Llewa/laml/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    .line 46
    iget-boolean v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_x"

    invoke-virtual {p0}, Llewa/laml/elements/AnimatedScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mActualXVar:Llewa/laml/util/IndexedNumberVariable;

    .line 48
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_y"

    invoke-virtual {p0}, Llewa/laml/elements/AnimatedScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mActualYVar:Llewa/laml/util/IndexedNumberVariable;

    .line 51
    :cond_0
    const-string v0, "scale"

    invoke-direct {p0, p1, v0, v4}, Llewa/laml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mScaleExpression:Llewa/laml/data/Expression;

    .line 52
    const-string v0, "scaleX"

    invoke-direct {p0, p1, v0, v4}, Llewa/laml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mScaleXExpression:Llewa/laml/data/Expression;

    .line 53
    const-string v0, "scaleY"

    invoke-direct {p0, p1, v0, v4}, Llewa/laml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mScaleYExpression:Llewa/laml/data/Expression;

    .line 54
    const-string v0, "angleX"

    const-string v1, "rotationX"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mRotationX:Llewa/laml/data/Expression;

    .line 55
    const-string v0, "angleY"

    const-string v1, "rotationY"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mRotationY:Llewa/laml/data/Expression;

    .line 56
    const-string v0, "angleZ"

    const-string v1, "rotationZ"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mRotationZ:Llewa/laml/data/Expression;

    .line 57
    const-string v0, "centerZ"

    const-string v1, "pivotZ"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mPivotZ:Llewa/laml/data/Expression;

    .line 58
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mRotationX:Llewa/laml/data/Expression;

    if-nez v0, :cond_1

    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mRotationY:Llewa/laml/data/Expression;

    if-nez v0, :cond_1

    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mRotationZ:Llewa/laml/data/Expression;

    if-eqz v0, :cond_2

    .line 59
    :cond_1
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 61
    :cond_2
    return-void
.end method

.method private createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;
    .locals 2
    .parameter "node"
    .parameter "name"
    .parameter "compatibleName"

    .prologue
    .line 64
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    .line 65
    .local v0, exp:Llewa/laml/data/Expression;
    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    .line 68
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAlpha()I
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v1}, Llewa/laml/animation/AnimatedElement;->getAlpha()I

    move-result v0

    .line 73
    .local v0, a:I
    iget-object v1, p0, Llewa/laml/elements/AnimatedScreenElement;->mParent:Llewa/laml/elements/ElementGroup;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Llewa/laml/elements/AnimatedScreenElement;->mParent:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v1}, Llewa/laml/elements/ElementGroup;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Llewa/laml/util/Utils;->mixAlpha(II)I

    move-result v0

    .line 75
    .end local v0           #a:I
    :cond_0
    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getLeft()F
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Llewa/laml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Llewa/laml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getMaxHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getMaxWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getOffsetX()F
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getOffsetX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getOffsetY()F
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getOffsetY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getPivotX()F
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getPivotX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getPivotY()F
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getPivotY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getRotationAngle()F

    move-result v0

    return v0
.end method

.method protected getTop()F
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Llewa/laml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    invoke-virtual {p0}, Llewa/laml/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->init()V

    .line 132
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0}, Llewa/laml/animation/AnimatedElement;->init()V

    .line 133
    return-void
.end method

.method protected isVisibleInner()Z
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llewa/laml/elements/AnimatedScreenElement;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "c"

    .prologue
    .line 140
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/AnimatedScreenElement;->updateVisibility()V

    .line 141
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 142
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/AnimatedScreenElement;->getLeft()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/AnimatedScreenElement;->getPivotX()F

    move-result v13

    add-float v1, v12, v13

    .line 143
    .local v1, pivotX:F
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/AnimatedScreenElement;->getTop()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/AnimatedScreenElement;->getPivotY()F

    move-result v13

    add-float v2, v12, v13

    .line 144
    .local v2, pivotY:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 145
    .local v4, sc:I
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/AnimatedScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v8

    .line 146
    .local v8, var:Llewa/laml/data/Variables;
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    if-eqz v12, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v12}, Landroid/graphics/Camera;->save()V

    .line 150
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mRotationX:Llewa/laml/data/Expression;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mRotationX:Llewa/laml/data/Expression;

    invoke-virtual {v12, v8}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v12

    double-to-float v9, v12

    .line 151
    .local v9, x:F
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mRotationY:Llewa/laml/data/Expression;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mRotationY:Llewa/laml/data/Expression;

    invoke-virtual {v12, v8}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v12

    double-to-float v10, v12

    .line 152
    .local v10, y:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mRotationZ:Llewa/laml/data/Expression;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mRotationZ:Llewa/laml/data/Expression;

    invoke-virtual {v12, v8}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v12

    double-to-float v11, v12

    .line 153
    .local v11, z:F
    :goto_2
    const/4 v12, 0x0

    cmpl-float v12, v9, v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    cmpl-float v12, v10, v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-eqz v12, :cond_2

    .line 154
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v12, v9, v10, v11}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mPivotZ:Llewa/laml/data/Expression;

    if-eqz v12, :cond_1

    .line 156
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Llewa/laml/elements/AnimatedScreenElement;->mPivotZ:Llewa/laml/data/Expression;

    invoke-virtual {v15, v8}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v15

    double-to-float v15, v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/graphics/Camera;->translate(FFF)V

    .line 157
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v13}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    neg-float v13, v1

    neg-float v14, v2

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v12}, Landroid/graphics/Camera;->restore()V

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 165
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v11           #z:F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/AnimatedScreenElement;->getRotation()F

    move-result v3

    .line 166
    .local v3, rotation:F
    const/4 v12, 0x0

    cmpl-float v12, v3, v12

    if-eqz v12, :cond_3

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 171
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mScaleExpression:Llewa/laml/data/Expression;

    if-eqz v12, :cond_9

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mScaleExpression:Llewa/laml/data/Expression;

    invoke-virtual {v12, v8}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v12

    double-to-float v5, v12

    .line 173
    .local v5, scale:F
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5, v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 186
    .end local v5           #scale:F
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p1}, Llewa/laml/elements/AnimatedScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 187
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 189
    .end local v1           #pivotX:F
    .end local v2           #pivotY:F
    .end local v3           #rotation:F
    .end local v4           #sc:I
    .end local v8           #var:Llewa/laml/data/Variables;
    :cond_5
    return-void

    .line 150
    .restart local v1       #pivotX:F
    .restart local v2       #pivotY:F
    .restart local v4       #sc:I
    .restart local v8       #var:Llewa/laml/data/Variables;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 151
    .restart local v9       #x:F
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 152
    .restart local v10       #y:F
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 175
    .end local v9           #x:F
    .end local v10           #y:F
    .restart local v3       #rotation:F
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mScaleXExpression:Llewa/laml/data/Expression;

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mScaleYExpression:Llewa/laml/data/Expression;

    if-eqz v12, :cond_4

    .line 176
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mScaleXExpression:Llewa/laml/data/Expression;

    if-nez v12, :cond_c

    const/high16 v6, 0x3f80

    .line 178
    .local v6, scaleX:F
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mScaleYExpression:Llewa/laml/data/Expression;

    if-nez v12, :cond_d

    const/high16 v7, 0x3f80

    .line 180
    .local v7, scaleY:F
    :goto_5
    const/4 v12, 0x0

    cmpl-float v12, v6, v12

    if-nez v12, :cond_b

    const/4 v12, 0x0

    cmpl-float v12, v7, v12

    if-eqz v12, :cond_4

    .line 181
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v6, v7, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_3

    .line 176
    .end local v6           #scaleX:F
    .end local v7           #scaleY:F
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mScaleXExpression:Llewa/laml/data/Expression;

    invoke-virtual {v12, v8}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v12

    double-to-float v6, v12

    goto :goto_4

    .line 178
    .restart local v6       #scaleX:F
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/laml/elements/AnimatedScreenElement;->mScaleYExpression:Llewa/laml/data/Expression;

    invoke-virtual {v12, v8}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v12

    double-to-float v7, v12

    goto :goto_5
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ScreenElement;->reset(J)V

    .line 193
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Llewa/laml/animation/AnimatedElement;->reset(J)V

    .line 194
    invoke-virtual {p0}, Llewa/laml/elements/AnimatedScreenElement;->updateVisibility()V

    .line 195
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ScreenElement;->tick(J)V

    .line 199
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Llewa/laml/animation/AnimatedElement;->tick(J)V

    .line 200
    iget-boolean v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mActualXVar:Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v1}, Llewa/laml/animation/AnimatedElement;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 202
    iget-object v0, p0, Llewa/laml/elements/AnimatedScreenElement;->mActualYVar:Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AnimatedScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v1}, Llewa/laml/animation/AnimatedElement;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 204
    :cond_0
    return-void
.end method
