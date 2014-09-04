.class public abstract Llewa/laml/elements/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/elements/ScreenElement$1;,
        Llewa/laml/elements/ScreenElement$AlignV;,
        Llewa/laml/elements/ScreenElement$Align;
    }
.end annotation


# static fields
.field public static final ACTUAL_H:Ljava/lang/String; = "actual_h"

.field public static final ACTUAL_W:Ljava/lang/String; = "actual_w"

.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1


# instance fields
.field private mActualHeightVar:Llewa/laml/util/IndexedNumberVariable;

.field private mActualWidthVar:Llewa/laml/util/IndexedNumberVariable;

.field protected mAlign:Llewa/laml/elements/ScreenElement$Align;

.field protected mAlignV:Llewa/laml/elements/ScreenElement$AlignV;

.field protected mCategory:Ljava/lang/String;

.field protected mFramerateToken:Llewa/laml/FramerateTokenList$FramerateToken;

.field protected mHasName:Z

.field private mInitShow:Z

.field private mIsVisible:Z

.field protected mName:Ljava/lang/String;

.field protected mParent:Llewa/laml/elements/ElementGroup;

.field protected mRoot:Llewa/laml/ScreenElementRoot;

.field private mShow:Z

.field private mVisibilityExpression:Llewa/laml/data/Expression;

.field private mVisibilityVar:Llewa/laml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "root"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v3, p0, Llewa/laml/elements/ScreenElement;->mInitShow:Z

    .line 51
    iput-boolean v3, p0, Llewa/laml/elements/ScreenElement;->mIsVisible:Z

    .line 59
    iput-boolean v3, p0, Llewa/laml/elements/ScreenElement;->mShow:Z

    .line 66
    iput-object p2, p0, Llewa/laml/elements/ScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 67
    if-eqz p1, :cond_1

    .line 68
    sget-object v2, Llewa/laml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llewa/laml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    .line 69
    sget-object v2, Llewa/laml/util/Task;->TAG_NAME:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llewa/laml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Llewa/laml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Llewa/laml/elements/ScreenElement;->mHasName:Z

    .line 71
    const-string v2, "visibility"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, vis:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    iput-boolean v4, p0, Llewa/laml/elements/ScreenElement;->mInitShow:Z

    .line 83
    :cond_0
    :goto_1
    const-string v2, "align"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, align:Ljava/lang/String;
    const-string v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    sget-object v2, Llewa/laml/elements/ScreenElement$Align;->RIGHT:Llewa/laml/elements/ScreenElement$Align;

    iput-object v2, p0, Llewa/laml/elements/ScreenElement;->mAlign:Llewa/laml/elements/ScreenElement$Align;

    .line 94
    :goto_2
    const-string v2, "alignV"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v2, "bottom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 96
    sget-object v2, Llewa/laml/elements/ScreenElement$AlignV;->BOTTOM:Llewa/laml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Llewa/laml/elements/ScreenElement;->mAlignV:Llewa/laml/elements/ScreenElement$AlignV;

    .line 105
    .end local v0           #align:Ljava/lang/String;
    .end local v1           #vis:Ljava/lang/String;
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v2, v4

    .line 70
    goto :goto_0

    .line 76
    .restart local v1       #vis:Ljava/lang/String;
    :cond_3
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    iput-boolean v3, p0, Llewa/laml/elements/ScreenElement;->mInitShow:Z

    goto :goto_1

    .line 79
    :cond_4
    invoke-static {v1}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Llewa/laml/elements/ScreenElement;->mVisibilityExpression:Llewa/laml/data/Expression;

    goto :goto_1

    .line 86
    .restart local v0       #align:Ljava/lang/String;
    :cond_5
    const-string v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 87
    sget-object v2, Llewa/laml/elements/ScreenElement$Align;->LEFT:Llewa/laml/elements/ScreenElement$Align;

    iput-object v2, p0, Llewa/laml/elements/ScreenElement;->mAlign:Llewa/laml/elements/ScreenElement$Align;

    goto :goto_2

    .line 88
    :cond_6
    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 89
    sget-object v2, Llewa/laml/elements/ScreenElement$Align;->CENTER:Llewa/laml/elements/ScreenElement$Align;

    iput-object v2, p0, Llewa/laml/elements/ScreenElement;->mAlign:Llewa/laml/elements/ScreenElement$Align;

    goto :goto_2

    .line 91
    :cond_7
    sget-object v2, Llewa/laml/elements/ScreenElement$Align;->LEFT:Llewa/laml/elements/ScreenElement$Align;

    iput-object v2, p0, Llewa/laml/elements/ScreenElement;->mAlign:Llewa/laml/elements/ScreenElement$Align;

    goto :goto_2

    .line 97
    :cond_8
    const-string v2, "top"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 98
    sget-object v2, Llewa/laml/elements/ScreenElement$AlignV;->TOP:Llewa/laml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Llewa/laml/elements/ScreenElement;->mAlignV:Llewa/laml/elements/ScreenElement$AlignV;

    goto :goto_3

    .line 99
    :cond_9
    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 100
    sget-object v2, Llewa/laml/elements/ScreenElement$AlignV;->CENTER:Llewa/laml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Llewa/laml/elements/ScreenElement;->mAlignV:Llewa/laml/elements/ScreenElement$AlignV;

    goto :goto_3

    .line 102
    :cond_a
    sget-object v2, Llewa/laml/elements/ScreenElement$AlignV;->TOP:Llewa/laml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Llewa/laml/elements/ScreenElement;->mAlignV:Llewa/laml/elements/ScreenElement$AlignV;

    goto :goto_3
.end method

.method private setVisibilityVar(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 108
    iget-boolean v0, p0, Llewa/laml/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mVisibilityVar:Llewa/laml/util/IndexedNumberVariable;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "visibility"

    iget-object v3, p0, Llewa/laml/elements/ScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v3}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/ScreenElement;->mVisibilityVar:Llewa/laml/util/IndexedNumberVariable;

    .line 112
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/ScreenElement;->mVisibilityVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz p1, :cond_2

    const-wide/high16 v0, 0x3ff0

    :goto_0
    invoke-virtual {v2, v0, v1}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 114
    :cond_1
    return-void

    .line 112
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected descale(F)F
    .locals 1
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getScale()F

    move-result v0

    div-float v0, p1, v0

    return v0
.end method

.method public abstract doRender(Landroid/graphics/Canvas;)V
.end method

.method protected evaluate(Llewa/laml/data/Expression;)D
    .locals 2
    .parameter "exp"

    .prologue
    .line 123
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v0

    invoke-virtual {p1, v0}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    goto :goto_0
.end method

.method protected evaluateStr(Llewa/laml/data/Expression;)Ljava/lang/String;
    .locals 1
    .parameter "exp"

    .prologue
    .line 127
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v0

    invoke-virtual {p1, v0}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 131
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public getContext()Llewa/laml/ScreenContext;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected getFramerate()F
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mFramerateToken:Llewa/laml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mFramerateToken:Llewa/laml/FramerateTokenList$FramerateToken;

    invoke-virtual {v0}, Llewa/laml/FramerateTokenList$FramerateToken;->getFramerate()F

    move-result v0

    goto :goto_0
.end method

.method protected getLeft(FF)F
    .locals 3
    .parameter "pos"
    .parameter "width"

    .prologue
    .line 146
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 147
    move v0, p1

    .line 148
    .local v0, x:F
    sget-object v1, Llewa/laml/elements/ScreenElement$1;->$SwitchMap$lewa$laml$elements$ScreenElement$Align:[I

    iget-object v2, p0, Llewa/laml/elements/ScreenElement;->mAlign:Llewa/laml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Llewa/laml/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 160
    .end local v0           #x:F
    :goto_0
    :pswitch_0
    return v0

    .line 152
    .restart local v0       #x:F
    :pswitch_1
    const/high16 v1, 0x4000

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    .line 153
    goto :goto_0

    .line 155
    :pswitch_2
    sub-float/2addr v0, p2

    goto :goto_0

    .end local v0           #x:F
    :cond_0
    move v0, p1

    .line 160
    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getNotifierManager()Llewa/laml/NotifierManager;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Llewa/laml/NotifierManager;->getInstance(Landroid/content/Context;)Llewa/laml/NotifierManager;

    move-result-object v0

    return-object v0
.end method

.method protected getTop(FF)F
    .locals 3
    .parameter "pos"
    .parameter "height"

    .prologue
    .line 172
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 173
    move v0, p1

    .line 174
    .local v0, y:F
    sget-object v1, Llewa/laml/elements/ScreenElement$1;->$SwitchMap$lewa$laml$elements$ScreenElement$AlignV:[I

    iget-object v2, p0, Llewa/laml/elements/ScreenElement;->mAlignV:Llewa/laml/elements/ScreenElement$AlignV;

    invoke-virtual {v2}, Llewa/laml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 186
    .end local v0           #y:F
    :goto_0
    :pswitch_0
    return v0

    .line 178
    .restart local v0       #y:F
    :pswitch_1
    const/high16 v1, 0x4000

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    .line 179
    goto :goto_0

    .line 181
    :pswitch_2
    sub-float/2addr v0, p2

    goto :goto_0

    .end local v0           #y:F
    :cond_0
    move v0, p1

    .line 186
    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVariables()Llewa/laml/data/Variables;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Llewa/laml/elements/ScreenElement;->mInitShow:Z

    iput-boolean v0, p0, Llewa/laml/elements/ScreenElement;->mShow:Z

    .line 195
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->updateVisibility()V

    .line 196
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->isVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Llewa/laml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/elements/ScreenElement;->mFramerateToken:Llewa/laml/FramerateTokenList$FramerateToken;

    .line 198
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Llewa/laml/elements/ScreenElement;->mIsVisible:Z

    return v0
.end method

.method protected isVisibleInner()Z
    .locals 4

    .prologue
    .line 205
    iget-boolean v0, p0, Llewa/laml/elements/ScreenElement;->mShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mVisibilityExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mVisibilityExpression:Llewa/laml/data/Expression;

    iget-object v1, p0, Llewa/laml/elements/ScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChange(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Llewa/laml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 216
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 222
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->updateVisibility()V

    .line 223
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Llewa/laml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 225
    :cond_0
    return-void
.end method

.method protected requestFramerate(F)V
    .locals 2
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 228
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    .line 229
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mFramerateToken:Llewa/laml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_0

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/ScreenContext;->createToken(Ljava/lang/String;)Llewa/laml/FramerateTokenList$FramerateToken;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/ScreenElement;->mFramerateToken:Llewa/laml/FramerateTokenList$FramerateToken;

    .line 232
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mFramerateToken:Llewa/laml/FramerateTokenList$FramerateToken;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mFramerateToken:Llewa/laml/FramerateTokenList$FramerateToken;

    invoke-virtual {v0, p1}, Llewa/laml/FramerateTokenList$FramerateToken;->requestFramerate(F)V

    .line 236
    :cond_1
    return-void
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->requestUpdate()V

    .line 240
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 244
    .local v0, elapsedRealtime:J
    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/ScreenElement;->reset(J)V

    .line 245
    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/ScreenElement;->tick(J)V

    .line 246
    return-void
.end method

.method public reset(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 249
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 252
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->updateVisibility()V

    .line 253
    return-void
.end method

.method protected scale(D)F
    .locals 2
    .parameter "v"

    .prologue
    .line 256
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-float v0, v0

    return v0
.end method

.method protected setActualHeight(D)V
    .locals 4
    .parameter "value"

    .prologue
    .line 260
    iget-boolean v0, p0, Llewa/laml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mActualHeightVar:Llewa/laml/util/IndexedNumberVariable;

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_h"

    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/ScreenElement;->mActualHeightVar:Llewa/laml/util/IndexedNumberVariable;

    .line 266
    :cond_1
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mActualHeightVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method

.method protected setActualWidth(D)V
    .locals 4
    .parameter "value"

    .prologue
    .line 270
    iget-boolean v0, p0, Llewa/laml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mActualWidthVar:Llewa/laml/util/IndexedNumberVariable;

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_w"

    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/ScreenElement;->mActualWidthVar:Llewa/laml/util/IndexedNumberVariable;

    .line 276
    :cond_1
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mActualWidthVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method

.method public setParent(Llewa/laml/elements/ElementGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 280
    iput-object p1, p0, Llewa/laml/elements/ScreenElement;->mParent:Llewa/laml/elements/ElementGroup;

    .line 281
    return-void
.end method

.method public show(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 284
    iput-boolean p1, p0, Llewa/laml/elements/ScreenElement;->mShow:Z

    .line 285
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->updateVisibility()V

    .line 286
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 289
    iget-object v0, p0, Llewa/laml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0, p2}, Llewa/laml/elements/ScreenElement;->show(Z)V

    .line 291
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 0
    .parameter "currentTime"

    .prologue
    .line 294
    return-void
.end method

.method protected updateVisibility()V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Llewa/laml/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    .line 299
    .local v0, v:Z
    iget-boolean v1, p0, Llewa/laml/elements/ScreenElement;->mIsVisible:Z

    if-eq v1, v0, :cond_0

    .line 300
    iput-boolean v0, p0, Llewa/laml/elements/ScreenElement;->mIsVisible:Z

    .line 301
    iget-boolean v1, p0, Llewa/laml/elements/ScreenElement;->mIsVisible:Z

    invoke-virtual {p0, v1}, Llewa/laml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 303
    :cond_0
    return-void
.end method
