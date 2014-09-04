.class public Llewa/lockscreen/view/TranslateAnimation;
.super Llewa/lockscreen/view/BaseAnimation;
.source "TranslateAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Translate"

.field public static final TAG:Ljava/lang/String; = "TranslateAnimation"


# instance fields
.field protected mCurrentX:I

.field protected mCurrentY:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 21
    const-string v0, "Translate"

    invoke-direct {p0, p1, v0}, Llewa/lockscreen/view/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Llewa/lockscreen/view/TranslateAnimation;->x:I

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Llewa/lockscreen/view/TranslateAnimation;->y:I

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 1
    .parameter "element"
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Llewa/lockscreen/view/TranslateAnimation;->x:I

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Llewa/lockscreen/view/TranslateAnimation;->y:I

    .line 18
    return-void
.end method


# virtual methods
.method public final getX()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Llewa/lockscreen/view/TranslateAnimation;->mCurrentX:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Llewa/lockscreen/view/TranslateAnimation;->mCurrentY:I

    return v0
.end method

.method protected onCreateItem()Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .locals 3

    .prologue
    .line 26
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 27
    .local v0, attrs:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "x"

    aput-object v2, v0, v1

    .line 28
    const/4 v1, 0x1

    const-string v2, "y"

    aput-object v2, v0, v1

    .line 29
    new-instance v1, Llewa/lockscreen/view/BaseAnimation$AnimationItem;

    invoke-direct {v1, p0, v0}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;-><init>(Llewa/lockscreen/view/BaseAnimation;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected onTick(Llewa/lockscreen/view/BaseAnimation$AnimationItem;Llewa/lockscreen/view/BaseAnimation$AnimationItem;F)V
    .locals 4
    .parameter "prefixAI"
    .parameter "suffixAI"
    .parameter "rate"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, prefixAIX:I
    if-nez p1, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 44
    :goto_0
    int-to-float v2, v0

    iget v3, p0, Llewa/lockscreen/view/TranslateAnimation;->x:I

    invoke-virtual {p2, v3}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Llewa/lockscreen/view/TranslateAnimation;->mCurrentX:I

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, prefixAIY:I
    if-nez p1, :cond_1

    .line 51
    const/4 v1, 0x0

    .line 56
    :goto_1
    int-to-float v2, v1

    iget v3, p0, Llewa/lockscreen/view/TranslateAnimation;->y:I

    invoke-virtual {p2, v3}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Llewa/lockscreen/view/TranslateAnimation;->mCurrentY:I

    .line 57
    return-void

    .line 41
    .end local v1           #prefixAIY:I
    :cond_0
    iget v2, p0, Llewa/lockscreen/view/TranslateAnimation;->x:I

    invoke-virtual {p1, v2}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v0

    goto :goto_0

    .line 53
    .restart local v1       #prefixAIY:I
    :cond_1
    iget v2, p0, Llewa/lockscreen/view/TranslateAnimation;->y:I

    invoke-virtual {p1, v2}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v1

    goto :goto_1
.end method
