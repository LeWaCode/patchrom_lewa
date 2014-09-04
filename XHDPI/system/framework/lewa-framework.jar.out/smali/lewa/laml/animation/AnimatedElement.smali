.class public Llewa/laml/animation/AnimatedElement;
.super Ljava/lang/Object;
.source "AnimatedElement.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AnimatedElement"


# instance fields
.field private mAlignAbsolute:Z

.field private mAlphaExpression:Llewa/laml/data/Expression;

.field private mAlphas:Llewa/laml/animation/AlphaAnimation;

.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/animation/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field protected mBaseXExpression:Llewa/laml/data/Expression;

.field protected mBaseYExpression:Llewa/laml/data/Expression;

.field protected mCenterXExpression:Llewa/laml/data/Expression;

.field protected mCenterYExpression:Llewa/laml/data/Expression;

.field protected mHeightExpression:Llewa/laml/data/Expression;

.field private mPositions:Llewa/laml/animation/PositionAnimation;

.field private mRoot:Llewa/laml/ScreenElementRoot;

.field protected mRotationExpression:Llewa/laml/data/Expression;

.field private mRotations:Llewa/laml/animation/RotationAnimation;

.field private mSizes:Llewa/laml/animation/SizeAnimation;

.field private mSources:Llewa/laml/animation/SourcesAnimation;

.field private mSrcFormatter:Llewa/laml/util/TextFormatter;

.field protected mSrcIdExpression:Llewa/laml/data/Expression;

.field protected mWidthExpression:Llewa/laml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    .line 56
    iput-object p2, p0, Llewa/laml/animation/AnimatedElement;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 57
    invoke-virtual {p0, p1}, Llewa/laml/animation/AnimatedElement;->load(Lorg/w3c/dom/Element;)V

    .line 58
    return-void
.end method

.method private createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;
    .locals 2
    .parameter "node"
    .parameter "name"
    .parameter "compatibleName"

    .prologue
    .line 61
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    .line 62
    .local v0, exp:Llewa/laml/data/Expression;
    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    .line 64
    :cond_0
    return-object v0
.end method

.method private getContext()Llewa/laml/ScreenContext;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method private loadAlphaAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v1, "AlphaAnimation"

    invoke-static {p1, v1}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 73
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Llewa/laml/animation/AlphaAnimation;

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Llewa/laml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v1, p0, Llewa/laml/animation/AnimatedElement;->mAlphas:Llewa/laml/animation/AlphaAnimation;

    .line 75
    iget-object v1, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mAlphas:Llewa/laml/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    return-void
.end method

.method private loadPositionAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v1, "PositionAnimation"

    invoke-static {p1, v1}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 81
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Llewa/laml/animation/PositionAnimation;

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Llewa/laml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v1, p0, Llewa/laml/animation/AnimatedElement;->mPositions:Llewa/laml/animation/PositionAnimation;

    .line 83
    iget-object v1, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mPositions:Llewa/laml/animation/PositionAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void
.end method

.method private loadRotationAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v1, "RotationAnimation"

    invoke-static {p1, v1}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 89
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 90
    new-instance v1, Llewa/laml/animation/RotationAnimation;

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Llewa/laml/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v1, p0, Llewa/laml/animation/AnimatedElement;->mRotations:Llewa/laml/animation/RotationAnimation;

    .line 91
    iget-object v1, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mRotations:Llewa/laml/animation/RotationAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    return-void
.end method

.method private loadSizeAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v1, "SizeAnimation"

    invoke-static {p1, v1}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 97
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 98
    new-instance v1, Llewa/laml/animation/SizeAnimation;

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Llewa/laml/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v1, p0, Llewa/laml/animation/AnimatedElement;->mSizes:Llewa/laml/animation/SizeAnimation;

    .line 99
    iget-object v1, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mSizes:Llewa/laml/animation/SizeAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    return-void
.end method

.method private loadSourceAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 104
    const-string v1, "SourcesAnimation"

    invoke-static {p1, v1}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 105
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Llewa/laml/animation/SourcesAnimation;

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Llewa/laml/animation/SourcesAnimation;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v1, p0, Llewa/laml/animation/AnimatedElement;->mSources:Llewa/laml/animation/SourcesAnimation;

    .line 107
    iget-object v1, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mSources:Llewa/laml/animation/SourcesAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 5

    .prologue
    const/16 v2, 0xff

    .line 112
    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mAlphaExpression:Llewa/laml/data/Expression;

    if-eqz v3, :cond_0

    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mAlphaExpression:Llewa/laml/data/Expression;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v3, v4}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v3

    double-to-int v0, v3

    .line 114
    .local v0, alpha:I
    :goto_0
    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mAlphas:Llewa/laml/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mAlphas:Llewa/laml/animation/AlphaAnimation;

    invoke-virtual {v2}, Llewa/laml/animation/AlphaAnimation;->getAlpha()I

    move-result v1

    .line 115
    .local v1, alpha1:I
    :goto_1
    invoke-static {v0, v1}, Llewa/laml/util/Utils;->mixAlpha(II)I

    move-result v2

    return v2

    .end local v0           #alpha:I
    .end local v1           #alpha1:I
    :cond_0
    move v0, v2

    .line 112
    goto :goto_0

    .restart local v0       #alpha:I
    :cond_1
    move v1, v2

    .line 114
    goto :goto_1
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mSizes:Llewa/laml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mSizes:Llewa/laml/animation/SizeAnimation;

    invoke-virtual {v0}, Llewa/laml/animation/SizeAnimation;->getHeight()D

    move-result-wide v0

    double-to-float v0, v0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mHeightExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mHeightExpression:Llewa/laml/data/Expression;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010

    goto :goto_1
.end method

.method public getMaxHeight()F
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mSizes:Llewa/laml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mSizes:Llewa/laml/animation/SizeAnimation;

    invoke-virtual {v0}, Llewa/laml/animation/SizeAnimation;->getMaxHeight()D

    move-result-wide v0

    double-to-float v0, v0

    .line 128
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mHeightExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mHeightExpression:Llewa/laml/data/Expression;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010

    goto :goto_1
.end method

.method public getMaxWidth()F
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mSizes:Llewa/laml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mSizes:Llewa/laml/animation/SizeAnimation;

    invoke-virtual {v0}, Llewa/laml/animation/SizeAnimation;->getMaxWidth()D

    move-result-wide v0

    double-to-float v0, v0

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mWidthExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mWidthExpression:Llewa/laml/data/Expression;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010

    goto :goto_1
.end method

.method public getOffsetX()F
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, x:F
    iget-object v1, p0, Llewa/laml/animation/AnimatedElement;->mPositions:Llewa/laml/animation/PositionAnimation;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Llewa/laml/animation/AnimatedElement;->mPositions:Llewa/laml/animation/PositionAnimation;

    invoke-virtual {v1}, Llewa/laml/animation/PositionAnimation;->getX()D

    move-result-wide v1

    double-to-float v0, v1

    .line 199
    :cond_0
    return v0
.end method

.method public getOffsetY()F
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, y:F
    iget-object v1, p0, Llewa/laml/animation/AnimatedElement;->mPositions:Llewa/laml/animation/PositionAnimation;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Llewa/laml/animation/AnimatedElement;->mPositions:Llewa/laml/animation/PositionAnimation;

    invoke-virtual {v1}, Llewa/laml/animation/PositionAnimation;->getY()D

    move-result-wide v1

    double-to-float v0, v1

    .line 206
    :cond_0
    return v0
.end method

.method public getPivotX()F
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mCenterXExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mCenterXExpression:Llewa/laml/data/Expression;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPivotY()F
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mCenterYExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mCenterYExpression:Llewa/laml/data/Expression;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRotationAngle()F
    .locals 5

    .prologue
    .line 150
    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mRotationExpression:Llewa/laml/data/Expression;

    if-eqz v3, :cond_0

    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mRotationExpression:Llewa/laml/data/Expression;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v3, v4}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    .line 152
    .local v0, angle:D
    :goto_0
    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mRotations:Llewa/laml/animation/RotationAnimation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mRotations:Llewa/laml/animation/RotationAnimation;

    invoke-virtual {v3}, Llewa/laml/animation/RotationAnimation;->getAngle()F

    move-result v2

    .line 153
    .local v2, f:F
    :goto_1
    float-to-double v3, v2

    add-double/2addr v3, v0

    double-to-float v3, v3

    return v3

    .line 150
    .end local v0           #angle:D
    .end local v2           #f:F
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 152
    .restart local v0       #angle:D
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSrc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mSrcFormatter:Llewa/laml/util/TextFormatter;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v3, v4}, Llewa/laml/util/TextFormatter;->getText(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, src:Ljava/lang/String;
    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mSources:Llewa/laml/animation/SourcesAnimation;

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mSources:Llewa/laml/animation/SourcesAnimation;

    invoke-virtual {v3}, Llewa/laml/animation/SourcesAnimation;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 161
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mSrcIdExpression:Llewa/laml/data/Expression;

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Llewa/laml/animation/AnimatedElement;->mSrcIdExpression:Llewa/laml/data/Expression;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v3, v4}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v3

    double-to-long v0, v3

    .line 163
    .local v0, id:J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Llewa/laml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .end local v0           #id:J
    :cond_1
    return-object v2
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mSizes:Llewa/laml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mSizes:Llewa/laml/animation/SizeAnimation;

    invoke-virtual {v0}, Llewa/laml/animation/SizeAnimation;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    .line 171
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mWidthExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llewa/laml/animation/AnimatedElement;->mWidthExpression:Llewa/laml/data/Expression;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010

    goto :goto_1
.end method

.method public getX()F
    .locals 4

    .prologue
    .line 176
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mBaseXExpression:Llewa/laml/data/Expression;

    if-eqz v2, :cond_2

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mBaseXExpression:Llewa/laml/data/Expression;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v2, v3}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    .line 178
    .local v0, x:D
    :goto_0
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mSources:Llewa/laml/animation/SourcesAnimation;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mSources:Llewa/laml/animation/SourcesAnimation;

    invoke-virtual {v2}, Llewa/laml/animation/SourcesAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 180
    :cond_0
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mPositions:Llewa/laml/animation/PositionAnimation;

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mPositions:Llewa/laml/animation/PositionAnimation;

    invoke-virtual {v2}, Llewa/laml/animation/PositionAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 182
    :cond_1
    double-to-float v2, v0

    return v2

    .line 176
    .end local v0           #x:D
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getY()F
    .locals 4

    .prologue
    .line 186
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mBaseYExpression:Llewa/laml/data/Expression;

    if-eqz v2, :cond_2

    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mBaseYExpression:Llewa/laml/data/Expression;

    invoke-direct {p0}, Llewa/laml/animation/AnimatedElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v2, v3}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    .line 188
    .local v0, y:D
    :goto_0
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mSources:Llewa/laml/animation/SourcesAnimation;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mSources:Llewa/laml/animation/SourcesAnimation;

    invoke-virtual {v2}, Llewa/laml/animation/SourcesAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 190
    :cond_0
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mPositions:Llewa/laml/animation/PositionAnimation;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mPositions:Llewa/laml/animation/PositionAnimation;

    invoke-virtual {v2}, Llewa/laml/animation/PositionAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 192
    :cond_1
    double-to-float v2, v0

    return v2

    .line 186
    .end local v0           #y:D
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 210
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 211
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/animation/BaseAnimation;

    invoke-virtual {v2}, Llewa/laml/animation/BaseAnimation;->init()V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method public isAlignAbsolute()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Llewa/laml/animation/AnimatedElement;->mAlignAbsolute:Z

    return v0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 221
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Llewa/laml/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    const-string v0, "x"

    const-string v1, "left"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/animation/AnimatedElement;->mBaseXExpression:Llewa/laml/data/Expression;

    .line 227
    const-string v0, "y"

    const-string v1, "top"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/animation/AnimatedElement;->mBaseYExpression:Llewa/laml/data/Expression;

    .line 228
    const-string v0, "w"

    const-string v1, "width"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/animation/AnimatedElement;->mWidthExpression:Llewa/laml/data/Expression;

    .line 229
    const-string v0, "h"

    const-string v1, "height"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/animation/AnimatedElement;->mHeightExpression:Llewa/laml/data/Expression;

    .line 230
    const-string v0, "angle"

    const-string v1, "rotation"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/animation/AnimatedElement;->mRotationExpression:Llewa/laml/data/Expression;

    .line 231
    const-string v0, "centerX"

    const-string v1, "pivotX"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/animation/AnimatedElement;->mCenterXExpression:Llewa/laml/data/Expression;

    .line 232
    const-string v0, "centerY"

    const-string v1, "pivotY"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/animation/AnimatedElement;->mCenterYExpression:Llewa/laml/data/Expression;

    .line 233
    const-string v0, "srcid"

    invoke-direct {p0, p1, v0, v2}, Llewa/laml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/animation/AnimatedElement;->mSrcIdExpression:Llewa/laml/data/Expression;

    .line 234
    const-string v0, "alpha"

    invoke-direct {p0, p1, v0, v2}, Llewa/laml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/animation/AnimatedElement;->mAlphaExpression:Llewa/laml/data/Expression;

    .line 235
    const-string v1, "src"

    const-string v2, "srcFormat"

    const-string v3, "srcParas"

    const-string v4, "srcExp"

    const-string v5, "srcFormatExp"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llewa/laml/util/TextFormatter;->fromElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/util/TextFormatter;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/animation/AnimatedElement;->mSrcFormatter:Llewa/laml/util/TextFormatter;

    .line 237
    const-string v0, "align"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, align:Ljava/lang/String;
    const-string v0, "absolute"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/animation/AnimatedElement;->mAlignAbsolute:Z

    .line 240
    :cond_1
    invoke-direct {p0, p1}, Llewa/laml/animation/AnimatedElement;->loadSourceAnimations(Lorg/w3c/dom/Element;)V

    .line 241
    invoke-direct {p0, p1}, Llewa/laml/animation/AnimatedElement;->loadPositionAnimations(Lorg/w3c/dom/Element;)V

    .line 242
    invoke-direct {p0, p1}, Llewa/laml/animation/AnimatedElement;->loadRotationAnimations(Lorg/w3c/dom/Element;)V

    .line 243
    invoke-direct {p0, p1}, Llewa/laml/animation/AnimatedElement;->loadSizeAnimations(Lorg/w3c/dom/Element;)V

    .line 244
    invoke-direct {p0, p1}, Llewa/laml/animation/AnimatedElement;->loadAlphaAnimations(Lorg/w3c/dom/Element;)V

    .line 245
    return-void
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 248
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 249
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 250
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Llewa/laml/animation/BaseAnimation;->reset(J)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 255
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 256
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 257
    iget-object v2, p0, Llewa/laml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Llewa/laml/animation/BaseAnimation;->tick(J)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method
