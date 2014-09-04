.class public Llewa/lockscreen/view/FramesAnimation$Frame;
.super Llewa/lockscreen/view/BaseAnimation$AnimationItem;
.source "FramesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/FramesAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Frame"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Frame"


# instance fields
.field public mSrc:Ljava/lang/String;

.field final synthetic this$0:Llewa/lockscreen/view/FramesAnimation;


# direct methods
.method public constructor <init>(Llewa/lockscreen/view/FramesAnimation;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "attrs"

    .prologue
    .line 40
    iput-object p1, p0, Llewa/lockscreen/view/FramesAnimation$Frame;->this$0:Llewa/lockscreen/view/FramesAnimation;

    .line 42
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;-><init>(Llewa/lockscreen/view/BaseAnimation;[Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public load(Lorg/w3c/dom/Element;)Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .locals 1
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "src"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/FramesAnimation$Frame;->mSrc:Ljava/lang/String;

    .line 48
    invoke-super {p0, p1}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)Llewa/lockscreen/view/BaseAnimation$AnimationItem;

    move-result-object v0

    return-object v0
.end method
