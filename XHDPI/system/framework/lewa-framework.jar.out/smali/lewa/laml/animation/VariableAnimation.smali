.class public Llewa/laml/animation/VariableAnimation;
.super Llewa/laml/animation/BaseAnimation;
.source "VariableAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "AniFrame"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableAnimation"


# instance fields
.field private mCurrentValue:D

.field private mDelayValue:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 2
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    const-string v0, "AniFrame"

    invoke-direct {p0, p1, v0, p2}, Llewa/laml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V

    .line 21
    invoke-virtual {p0, v1}, Llewa/laml/animation/VariableAnimation;->getItem(I)Llewa/laml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Llewa/laml/animation/VariableAnimation;->mDelayValue:D

    .line 22
    return-void
.end method


# virtual methods
.method public final getValue()D
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Llewa/laml/animation/VariableAnimation;->mCurrentValue:D

    return-wide v0
.end method

.method protected onCreateItem()Llewa/laml/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 30
    new-instance v0, Llewa/laml/animation/BaseAnimation$AnimationItem;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "value"

    aput-object v3, v1, v2

    iget-object v2, p0, Llewa/laml/animation/VariableAnimation;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v0, v1, v2}, Llewa/laml/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V

    return-object v0
.end method

.method protected onTick(Llewa/laml/animation/BaseAnimation$AnimationItem;Llewa/laml/animation/BaseAnimation$AnimationItem;F)V
    .locals 6
    .parameter "item1"
    .parameter "item2"
    .parameter "ratio"

    .prologue
    const/4 v2, 0x0

    .line 37
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    .line 40
    .local v0, a1:D
    :goto_1
    invoke-virtual {p2, v2}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    sub-double/2addr v2, v0

    float-to-double v4, p3

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    iput-wide v2, p0, Llewa/laml/animation/VariableAnimation;->mCurrentValue:D

    goto :goto_0

    .line 39
    .end local v0           #a1:D
    :cond_1
    invoke-virtual {p1, v2}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_1
.end method

.method public reset(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Llewa/laml/animation/BaseAnimation;->reset(J)V

    .line 46
    iget-wide v0, p0, Llewa/laml/animation/VariableAnimation;->mDelayValue:D

    iput-wide v0, p0, Llewa/laml/animation/VariableAnimation;->mCurrentValue:D

    .line 47
    return-void
.end method
