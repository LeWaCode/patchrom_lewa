.class public Llewa/laml/animation/SourcesAnimation$Source;
.super Llewa/laml/animation/BaseAnimation$AnimationItem;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/animation/SourcesAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Source"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Source"


# instance fields
.field public mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V
    .locals 0
    .parameter "attrs"
    .parameter "root"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Llewa/laml/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V

    .line 23
    return-void
.end method


# virtual methods
.method public load(Lorg/w3c/dom/Element;)Llewa/laml/animation/BaseAnimation$AnimationItem;
    .locals 1
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 17
    const-string v0, "src"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    .line 18
    invoke-super {p0, p1}, Llewa/laml/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)Llewa/laml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    return-object v0
.end method
