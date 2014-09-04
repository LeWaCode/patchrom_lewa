.class public Llewa/laml/animation/RotationAnimation;
.super Llewa/laml/animation/BaseAnimation;
.source "RotationAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Rotation"

.field public static final TAG_NAME:Ljava/lang/String; = "RotationAnimation"


# instance fields
.field private mCurrentAngle:F


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
    .line 18
    const-string v0, "Rotation"

    invoke-direct {p0, p1, v0, p2}, Llewa/laml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final getAngle()F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Llewa/laml/animation/RotationAnimation;->mCurrentAngle:F

    return v0
.end method

.method protected onCreateItem()Llewa/laml/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Llewa/laml/animation/BaseAnimation$AnimationItem;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "angle"

    aput-object v3, v1, v2

    iget-object v2, p0, Llewa/laml/animation/RotationAnimation;->mRoot:Llewa/laml/ScreenElementRoot;

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

    .line 34
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 35
    const/4 v2, 0x0

    iput v2, p0, Llewa/laml/animation/RotationAnimation;->mCurrentAngle:F

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    .line 39
    .local v0, a1:D
    :goto_1
    invoke-virtual {p2, v2}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    sub-double/2addr v2, v0

    float-to-double v4, p3

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p0, Llewa/laml/animation/RotationAnimation;->mCurrentAngle:F

    goto :goto_0

    .line 38
    .end local v0           #a1:D
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
