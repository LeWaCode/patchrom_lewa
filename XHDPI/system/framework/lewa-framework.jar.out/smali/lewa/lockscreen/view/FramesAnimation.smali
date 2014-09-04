.class public Llewa/lockscreen/view/FramesAnimation;
.super Llewa/lockscreen/view/TranslateAnimation;
.source "FramesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/view/FramesAnimation$Frame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FramesAnimation"


# instance fields
.field private mCurrentBitmap:Ljava/lang/String;


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
    .line 13
    const-string v0, "Frame"

    invoke-direct {p0, p1, v0}, Llewa/lockscreen/view/TranslateAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Llewa/lockscreen/view/FramesAnimation;->mCurrentBitmap:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreateItem()Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .locals 3

    .prologue
    .line 18
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 19
    .local v0, attrs:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "x"

    aput-object v2, v0, v1

    .line 20
    const/4 v1, 0x1

    const-string v2, "y"

    aput-object v2, v0, v1

    .line 21
    new-instance v1, Llewa/lockscreen/view/FramesAnimation$Frame;

    invoke-direct {v1, p0, v0}, Llewa/lockscreen/view/FramesAnimation$Frame;-><init>(Llewa/lockscreen/view/FramesAnimation;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected onTick(Llewa/lockscreen/view/BaseAnimation$AnimationItem;Llewa/lockscreen/view/BaseAnimation$AnimationItem;F)V
    .locals 1
    .parameter "prefixAI"
    .parameter "suffixAI"
    .parameter "rate"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v0

    iput v0, p0, Llewa/lockscreen/view/FramesAnimation;->mCurrentX:I

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->get(I)I

    move-result v0

    iput v0, p0, Llewa/lockscreen/view/FramesAnimation;->mCurrentY:I

    .line 28
    check-cast p2, Llewa/lockscreen/view/FramesAnimation$Frame;

    .end local p2
    iget-object v0, p2, Llewa/lockscreen/view/FramesAnimation$Frame;->mSrc:Ljava/lang/String;

    iput-object v0, p0, Llewa/lockscreen/view/FramesAnimation;->mCurrentBitmap:Ljava/lang/String;

    .line 29
    return-void
.end method
