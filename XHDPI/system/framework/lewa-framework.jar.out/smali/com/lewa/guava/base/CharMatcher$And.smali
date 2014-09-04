.class Lcom/lewa/guava/base/CharMatcher$And;
.super Lcom/lewa/guava/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "And"
.end annotation


# instance fields
.field components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/guava/base/CharMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/guava/base/CharMatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, components:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/guava/base/CharMatcher;>;"
    invoke-direct {p0}, Lcom/lewa/guava/base/CharMatcher;-><init>()V

    .line 596
    iput-object p1, p0, Lcom/lewa/guava/base/CharMatcher$And;->components:Ljava/util/List;

    .line 597
    return-void
.end method


# virtual methods
.method public and(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;
    .locals 2
    .parameter "other"

    .prologue
    .line 609
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/guava/base/CharMatcher$And;->components:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 610
    .local v0, newComponents:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/guava/base/CharMatcher;>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v1, Lcom/lewa/guava/base/CharMatcher$And;

    invoke-direct {v1, v0}, Lcom/lewa/guava/base/CharMatcher$And;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 592
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/lewa/guava/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 600
    iget-object v2, p0, Lcom/lewa/guava/base/CharMatcher$And;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/guava/base/CharMatcher;

    .line 601
    .local v1, matcher:Lcom/lewa/guava/base/CharMatcher;
    invoke-virtual {v1, p1}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 602
    const/4 v2, 0x0

    .line 605
    .end local v1           #matcher:Lcom/lewa/guava/base/CharMatcher;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
