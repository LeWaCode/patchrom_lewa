.class public Llewa/laml/animation/PositionAnimation;
.super Llewa/laml/animation/BaseAnimation;
.source "PositionAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Position"

.field public static final TAG_NAME:Ljava/lang/String; = "PositionAnimation"


# instance fields
.field protected mCurrentX:D

.field protected mCurrentY:D

.field protected mDelayX:D

.field protected mDelayY:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V
    .locals 3
    .parameter "node"
    .parameter "tagName"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Llewa/laml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V

    .line 26
    invoke-virtual {p0, v1}, Llewa/laml/animation/PositionAnimation;->getItem(I)Llewa/laml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    .line 27
    .local v0, ai:Llewa/laml/animation/BaseAnimation$AnimationItem;
    invoke-virtual {v0, v1}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    iput-wide v1, p0, Llewa/laml/animation/PositionAnimation;->mDelayX:D

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    iput-wide v1, p0, Llewa/laml/animation/PositionAnimation;->mDelayY:D

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 3
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, "Position"

    invoke-direct {p0, p1, v0, p2}, Llewa/laml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V

    .line 34
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PositionAnimation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong tag name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/laml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final getX()D
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Llewa/laml/animation/PositionAnimation;->mCurrentX:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Llewa/laml/animation/PositionAnimation;->mCurrentY:D

    return-wide v0
.end method

.method protected onCreateItem()Llewa/laml/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Llewa/laml/animation/BaseAnimation$AnimationItem;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "x"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "y"

    aput-object v3, v1, v2

    iget-object v2, p0, Llewa/laml/animation/PositionAnimation;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v0, v1, v2}, Llewa/laml/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V

    return-object v0
.end method

.method protected onTick(Llewa/laml/animation/BaseAnimation$AnimationItem;Llewa/laml/animation/BaseAnimation$AnimationItem;F)V
    .locals 9
    .parameter "item1"
    .parameter "item2"
    .parameter "ratio"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 55
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 68
    :goto_0
    return-void

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1, v4}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    .line 61
    .local v0, x1:D
    invoke-virtual {p1, v8}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    .line 66
    .local v2, y1:D
    :goto_1
    invoke-virtual {p2, v4}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    sub-double/2addr v4, v0

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v0

    iput-wide v4, p0, Llewa/laml/animation/PositionAnimation;->mCurrentX:D

    .line 67
    invoke-virtual {p2, v8}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    sub-double/2addr v4, v2

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    iput-wide v4, p0, Llewa/laml/animation/PositionAnimation;->mCurrentY:D

    goto :goto_0

    .line 63
    .end local v0           #x1:D
    .end local v2           #y1:D
    :cond_1
    const-wide/16 v0, 0x0

    .line 64
    .restart local v0       #x1:D
    const-wide/16 v2, 0x0

    .restart local v2       #y1:D
    goto :goto_1
.end method

.method public reset(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Llewa/laml/animation/BaseAnimation;->reset(J)V

    .line 73
    iget-wide v0, p0, Llewa/laml/animation/PositionAnimation;->mDelayX:D

    iput-wide v0, p0, Llewa/laml/animation/PositionAnimation;->mCurrentX:D

    .line 74
    iget-wide v0, p0, Llewa/laml/animation/PositionAnimation;->mDelayY:D

    iput-wide v0, p0, Llewa/laml/animation/PositionAnimation;->mCurrentY:D

    .line 75
    return-void
.end method
