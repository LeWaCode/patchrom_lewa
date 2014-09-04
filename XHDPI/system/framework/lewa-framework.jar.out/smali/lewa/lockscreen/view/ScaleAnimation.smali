.class public Llewa/lockscreen/view/ScaleAnimation;
.super Llewa/lockscreen/view/BaseAnimation;
.source "ScaleAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Scale"

.field public static final TAG:Ljava/lang/String; = "ScaleAnimation"


# instance fields
.field private mCurrentH:I

.field private mCurrentW:I

.field private mMaxH:I

.field private mMaxW:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 18
    const-string v5, "Scale"

    invoke-direct {p0, p1, v5}, Llewa/lockscreen/view/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 20
    iget-object v5, p0, Llewa/lockscreen/view/ScaleAnimation;->mAnimationItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 21
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 22
    iget-object v5, p0, Llewa/lockscreen/view/ScaleAnimation;->mAnimationItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;

    .line 23
    .local v0, animationItem:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v4

    .line 25
    .local v4, w:I
    iget v5, p0, Llewa/lockscreen/view/ScaleAnimation;->mMaxW:I

    if-le v4, v5, :cond_0

    .line 26
    iput v4, p0, Llewa/lockscreen/view/ScaleAnimation;->mMaxW:I

    .line 29
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v1

    .line 30
    .local v1, h:I
    iget v5, p0, Llewa/lockscreen/view/ScaleAnimation;->mMaxH:I

    if-le v1, v5, :cond_1

    .line 31
    iput v1, p0, Llewa/lockscreen/view/ScaleAnimation;->mMaxH:I

    .line 21
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v0           #animationItem:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .end local v1           #h:I
    .end local v4           #w:I
    :cond_2
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Llewa/lockscreen/view/ScaleAnimation;->mCurrentH:I

    return v0
.end method

.method public final getMaxHeight()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Llewa/lockscreen/view/ScaleAnimation;->mMaxH:I

    return v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Llewa/lockscreen/view/ScaleAnimation;->mMaxW:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Llewa/lockscreen/view/ScaleAnimation;->mCurrentW:I

    return v0
.end method

.method protected onCreateItem()Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .locals 3

    .prologue
    .line 39
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 40
    .local v0, attrs:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "w"

    aput-object v2, v0, v1

    .line 41
    const/4 v1, 0x1

    const-string v2, "h"

    aput-object v2, v0, v1

    .line 42
    new-instance v1, Llewa/lockscreen/view/BaseAnimation$AnimationItem;

    invoke-direct {v1, p0, v0}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;-><init>(Llewa/lockscreen/view/BaseAnimation;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected onTick(Llewa/lockscreen/view/BaseAnimation$AnimationItem;Llewa/lockscreen/view/BaseAnimation$AnimationItem;F)V
    .locals 5
    .parameter "prefixAI"
    .parameter "suffixAI"
    .parameter "rate"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, prefixAIW:I
    const/4 v0, 0x0

    .line 50
    .local v0, prefixAIH:I
    if-nez p1, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 56
    :goto_0
    int-to-float v2, v1

    invoke-virtual {p2, v3}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Llewa/lockscreen/view/ScaleAnimation;->mCurrentW:I

    .line 58
    if-nez p1, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 64
    :goto_1
    int-to-float v2, v0

    invoke-virtual {p2, v4}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Llewa/lockscreen/view/ScaleAnimation;->mCurrentH:I

    .line 66
    return-void

    .line 53
    :cond_0
    invoke-virtual {p1, v3}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1, v4}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v0

    goto :goto_1
.end method
