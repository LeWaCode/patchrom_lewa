.class public abstract Lcom/lewa/guava/collect/Sets$SetView;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 535
    .local p0, this:Lcom/lewa/guava/collect/Sets$SetView;,"Lcom/lewa/guava/collect/Sets$SetView<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/guava/collect/Sets$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 534
    .local p0, this:Lcom/lewa/guava/collect/Sets$SetView;,"Lcom/lewa/guava/collect/Sets$SetView<TE;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/Sets$SetView;-><init>()V

    return-void
.end method


# virtual methods
.method public copyInto(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/util/Set",
            "<TE;>;>(TS;)TS;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, this:Lcom/lewa/guava/collect/Sets$SetView;,"Lcom/lewa/guava/collect/Sets$SetView<TE;>;"
    .local p1, set:Ljava/util/Set;,"TS;"
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 561
    return-object p1
.end method

.method public immutableCopy()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 547
    .local p0, this:Lcom/lewa/guava/collect/Sets$SetView;,"Lcom/lewa/guava/collect/Sets$SetView<TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
