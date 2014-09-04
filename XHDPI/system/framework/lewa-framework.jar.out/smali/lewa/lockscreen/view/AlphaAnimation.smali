.class public Llewa/lockscreen/view/AlphaAnimation;
.super Llewa/lockscreen/view/BaseAnimation;
.source "AlphaAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final TAG:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private a:I

.field private mCurrentAlpha:I


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
    .line 15
    const-string v0, "Alpha"

    invoke-direct {p0, p1, v0}, Llewa/lockscreen/view/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Llewa/lockscreen/view/AlphaAnimation;->a:I

    .line 16
    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Llewa/lockscreen/view/AlphaAnimation;->mCurrentAlpha:I

    return v0
.end method

.method protected onCreateItem()Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .locals 3

    .prologue
    .line 20
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 21
    .local v0, attrs:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "a"

    aput-object v2, v0, v1

    .line 22
    new-instance v1, Llewa/lockscreen/view/BaseAnimation$AnimationItem;

    invoke-direct {v1, p0, v0}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;-><init>(Llewa/lockscreen/view/BaseAnimation;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected onTick(Llewa/lockscreen/view/BaseAnimation$AnimationItem;Llewa/lockscreen/view/BaseAnimation$AnimationItem;F)V
    .locals 3
    .parameter "prefixAI"
    .parameter "suffixAI"
    .parameter "rate"

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, prefixAIAlpha:I
    if-nez p1, :cond_0

    .line 30
    const/16 v0, 0xff

    .line 35
    :goto_0
    int-to-float v1, v0

    iget v2, p0, Llewa/lockscreen/view/AlphaAnimation;->a:I

    invoke-virtual {p2, v2}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Llewa/lockscreen/view/AlphaAnimation;->mCurrentAlpha:I

    .line 36
    return-void

    .line 32
    :cond_0
    iget v1, p0, Llewa/lockscreen/view/AlphaAnimation;->a:I

    invoke-virtual {p1, v1}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v0

    goto :goto_0
.end method
