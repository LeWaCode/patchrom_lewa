.class public Llewa/laml/elements/VariableElement;
.super Llewa/laml/elements/ScreenElement;
.source "VariableElement.java"


# static fields
.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Llewa/laml/animation/VariableAnimation;

.field private mConst:Z

.field private mExpression:Llewa/laml/data/Expression;

.field private mIsStringType:Z

.field private mNumberVar:Llewa/laml/util/IndexedNumberVariable;

.field private mOldNumberVar:Llewa/laml/util/IndexedNumberVariable;

.field private mOldStringVar:Llewa/laml/util/IndexedStringVariable;

.field private mOldValue:Ljava/lang/Double;

.field private mStringVar:Llewa/laml/util/IndexedStringVariable;

.field private mThreshold:D

.field private mTrigger:Llewa/laml/CommandTrigger;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 6
    .parameter "ele"
    .parameter "root"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 42
    const/4 v2, 0x0

    iput-object v2, p0, Llewa/laml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 43
    if-eqz p1, :cond_1

    .line 44
    const-string v2, "expression"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Llewa/laml/elements/VariableElement;->mExpression:Llewa/laml/data/Expression;

    .line 45
    const-string v2, "threshold"

    const/high16 v3, 0x3f80

    invoke-static {p1, v2, v3}, Llewa/laml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Llewa/laml/elements/VariableElement;->mThreshold:D

    .line 46
    const-string v2, "string"

    const-string v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Llewa/laml/elements/VariableElement;->mIsStringType:Z

    .line 47
    const-string v2, "const"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Llewa/laml/elements/VariableElement;->mConst:Z

    .line 49
    iget-boolean v2, p0, Llewa/laml/elements/VariableElement;->mIsStringType:Z

    if-eqz v2, :cond_2

    .line 50
    new-instance v2, Llewa/laml/util/IndexedStringVariable;

    iget-object v3, p0, Llewa/laml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v2, v3, v4}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v2, p0, Llewa/laml/elements/VariableElement;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    .line 51
    new-instance v2, Llewa/laml/util/IndexedStringVariable;

    iget-object v3, p0, Llewa/laml/elements/VariableElement;->mName:Ljava/lang/String;

    const-string v4, "old_value"

    invoke-virtual {p2}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v2, v3, v4, v5}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v2, p0, Llewa/laml/elements/VariableElement;->mOldStringVar:Llewa/laml/util/IndexedStringVariable;

    .line 58
    :goto_0
    const-string v2, "VariableAnimation"

    invoke-static {p1, v2}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 59
    .local v1, element:Lorg/w3c/dom/Element;
    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    new-instance v2, Llewa/laml/animation/VariableAnimation;

    invoke-direct {v2, v1, p2}, Llewa/laml/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v2, p0, Llewa/laml/elements/VariableElement;->mAnimation:Llewa/laml/animation/VariableAnimation;
    :try_end_0
    .catch Llewa/laml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_1
    invoke-static {p1, p2}, Llewa/laml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/CommandTrigger;

    move-result-object v2

    iput-object v2, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    .line 67
    .end local v1           #element:Lorg/w3c/dom/Element;
    :cond_1
    return-void

    .line 54
    :cond_2
    new-instance v2, Llewa/laml/util/IndexedNumberVariable;

    iget-object v3, p0, Llewa/laml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v2, v3, v4}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v2, p0, Llewa/laml/elements/VariableElement;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    .line 55
    new-instance v2, Llewa/laml/util/IndexedNumberVariable;

    iget-object v3, p0, Llewa/laml/elements/VariableElement;->mName:Ljava/lang/String;

    const-string v4, "old_value"

    invoke-virtual {p2}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v2, v3, v4, v5}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v2, p0, Llewa/laml/elements/VariableElement;->mOldNumberVar:Llewa/laml/util/IndexedNumberVariable;

    goto :goto_0

    .line 62
    .restart local v1       #element:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Llewa/laml/ScreenElementLoadException;
    invoke-virtual {v0}, Llewa/laml/ScreenElementLoadException;->printStackTrace()V

    goto :goto_1
.end method

.method private update()V
    .locals 8

    .prologue
    .line 70
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v4}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v3, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    .line 71
    .local v3, var:Llewa/laml/data/Variables;
    iget-boolean v4, p0, Llewa/laml/elements/VariableElement;->mIsStringType:Z

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mExpression:Llewa/laml/data/Expression;

    if-eqz v4, :cond_0

    .line 73
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mExpression:Llewa/laml/data/Expression;

    invoke-virtual {v4, v3}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, str:Ljava/lang/String;
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v4}, Llewa/laml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, oldStr:Ljava/lang/String;
    invoke-static {v1, v0}, Llewa/laml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mOldStringVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v4, v0}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v4, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v4}, Llewa/laml/CommandTrigger;->perform()V

    .line 101
    .end local v0           #oldStr:Ljava/lang/String;
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v2, 0x0

    .line 86
    .local v2, value:Ljava/lang/Double;
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mAnimation:Llewa/laml/animation/VariableAnimation;

    if-eqz v4, :cond_5

    .line 87
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mAnimation:Llewa/laml/animation/VariableAnimation;

    invoke-virtual {v4}, Llewa/laml/animation/VariableAnimation;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 91
    :cond_2
    :goto_1
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v4, v2}, Llewa/laml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 92
    if-eqz v2, :cond_0

    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v2, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    if-nez v4, :cond_3

    .line 94
    iput-object v2, p0, Llewa/laml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 95
    :cond_3
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mOldNumberVar:Llewa/laml/util/IndexedNumberVariable;

    iget-object v5, p0, Llewa/laml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 96
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Llewa/laml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Llewa/laml/elements/VariableElement;->mThreshold:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    .line 97
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v4}, Llewa/laml/CommandTrigger;->perform()V

    .line 98
    :cond_4
    iput-object v2, p0, Llewa/laml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    goto :goto_0

    .line 88
    :cond_5
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mExpression:Llewa/laml/data/Expression;

    if-eqz v4, :cond_2

    .line 89
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mExpression:Llewa/laml/data/Expression;

    invoke-virtual {v4, v3}, Llewa/laml/data/Expression;->isNull(Llewa/laml/data/Variables;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v2, 0x0

    :goto_2
    goto :goto_1

    :cond_6
    iget-object v4, p0, Llewa/laml/elements/VariableElement;->mExpression:Llewa/laml/data/Expression;

    invoke-virtual {v4, v3}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 104
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->finish()V

    .line 108
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->finish()V

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 111
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mAnimation:Llewa/laml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mAnimation:Llewa/laml/animation/VariableAnimation;

    invoke-virtual {v0}, Llewa/laml/animation/VariableAnimation;->init()V

    .line 116
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->init()V

    .line 118
    :cond_1
    invoke-direct {p0}, Llewa/laml/elements/VariableElement;->update()V

    .line 119
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->pause()V

    .line 123
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->pause()V

    .line 125
    :cond_0
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 128
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mAnimation:Llewa/laml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mAnimation:Llewa/laml/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Llewa/laml/animation/VariableAnimation;->reset(J)V

    .line 130
    :cond_0
    invoke-direct {p0}, Llewa/laml/elements/VariableElement;->update()V

    .line 131
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->resume()V

    .line 135
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->resume()V

    .line 137
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ScreenElement;->tick(J)V

    .line 141
    invoke-virtual {p0}, Llewa/laml/elements/VariableElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mAnimation:Llewa/laml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Llewa/laml/elements/VariableElement;->mAnimation:Llewa/laml/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Llewa/laml/animation/VariableAnimation;->tick(J)V

    .line 144
    :cond_0
    iget-boolean v0, p0, Llewa/laml/elements/VariableElement;->mConst:Z

    if-nez v0, :cond_1

    .line 145
    invoke-direct {p0}, Llewa/laml/elements/VariableElement;->update()V

    .line 148
    :cond_1
    return-void
.end method
