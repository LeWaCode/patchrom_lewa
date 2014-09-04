.class public Llewa/laml/animation/SourcesAnimation;
.super Llewa/laml/animation/PositionAnimation;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/animation/SourcesAnimation$Source;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SourcesAnimation"


# instance fields
.field private mCurrentBitmap:Ljava/lang/String;


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
    .line 31
    const-string v0, "Source"

    invoke-direct {p0, p1, v0, p2}, Llewa/laml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llewa/laml/animation/SourcesAnimation;->mCurrentBitmap:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreateItem()Llewa/laml/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Llewa/laml/animation/SourcesAnimation$Source;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "x"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "y"

    aput-object v3, v1, v2

    iget-object v2, p0, Llewa/laml/animation/SourcesAnimation;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v0, v1, v2}, Llewa/laml/animation/SourcesAnimation$Source;-><init>([Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V

    return-object v0
.end method

.method protected onTick(Llewa/laml/animation/BaseAnimation$AnimationItem;Llewa/laml/animation/BaseAnimation$AnimationItem;F)V
    .locals 2
    .parameter "item1"
    .parameter "item2"
    .parameter "ratio"

    .prologue
    const-wide/16 v0, 0x0

    .line 47
    if-nez p2, :cond_0

    .line 48
    iput-wide v0, p0, Llewa/laml/animation/SourcesAnimation;->mCurrentX:D

    .line 49
    iput-wide v0, p0, Llewa/laml/animation/SourcesAnimation;->mCurrentY:D

    .line 55
    .end local p2
    :goto_0
    return-void

    .line 51
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Llewa/laml/animation/SourcesAnimation;->mCurrentX:D

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Llewa/laml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Llewa/laml/animation/SourcesAnimation;->mCurrentY:D

    .line 53
    check-cast p2, Llewa/laml/animation/SourcesAnimation$Source;

    .end local p2
    iget-object v0, p2, Llewa/laml/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    iput-object v0, p0, Llewa/laml/animation/SourcesAnimation;->mCurrentBitmap:Ljava/lang/String;

    goto :goto_0
.end method
