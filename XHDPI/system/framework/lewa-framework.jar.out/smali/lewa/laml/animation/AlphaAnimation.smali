.class public Llewa/laml/animation/AlphaAnimation;
.super Llewa/laml/animation/BaseAnimation;
.source "AlphaAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final LOG_TAG:Ljava/lang/String; = "AlphaAnimation"

.field public static final TAG_NAME:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private mCurrentAlpha:I

.field private mDelayValue:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V
    .locals 5
    .parameter "node"
    .parameter "tagName"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Llewa/laml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V

    .line 27
    const/16 v3, 0xff

    iput v3, p0, Llewa/laml/animation/AlphaAnimation;->mCurrentAlpha:I

    .line 28
    const-string v3, "delayValue"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, delayValue:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Llewa/laml/animation/AlphaAnimation;->mDelayValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v3, "AlphaAnimation"

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_0
    invoke-virtual {p0, v4}, Llewa/laml/animation/AlphaAnimation;->getItem(I)Llewa/laml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    .line 37
    .local v0, ai:Llewa/laml/animation/BaseAnimation$AnimationItem;
    invoke-virtual {v0, v4}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Llewa/laml/animation/AlphaAnimation;->mDelayValue:I

    goto :goto_0
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
    .line 42
    const-string v0, "Alpha"

    invoke-direct {p0, p1, v0, p2}, Llewa/laml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V

    .line 43
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlphaAnimation"

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

    .line 45
    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Llewa/laml/animation/AlphaAnimation;->mCurrentAlpha:I

    return v0
.end method

.method protected onCreateItem()Llewa/laml/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Llewa/laml/animation/BaseAnimation$AnimationItem;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v1, v2

    iget-object v2, p0, Llewa/laml/animation/AlphaAnimation;->mRoot:Llewa/laml/ScreenElementRoot;

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

    .line 60
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    if-nez p1, :cond_1

    const-wide v0, 0x406fe00000000000L

    .line 63
    .local v0, a1:D
    :goto_1
    invoke-virtual {p2, v2}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    sub-double/2addr v2, v0

    float-to-double v4, p3

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Llewa/laml/animation/AlphaAnimation;->mCurrentAlpha:I

    goto :goto_0

    .line 62
    .end local v0           #a1:D
    :cond_1
    invoke-virtual {p1, v2}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_1
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Llewa/laml/animation/BaseAnimation;->reset(J)V

    .line 69
    iget v0, p0, Llewa/laml/animation/AlphaAnimation;->mDelayValue:I

    iput v0, p0, Llewa/laml/animation/AlphaAnimation;->mCurrentAlpha:I

    .line 70
    return-void
.end method
