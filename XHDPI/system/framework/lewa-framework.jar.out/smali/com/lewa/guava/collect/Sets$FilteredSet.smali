.class Lcom/lewa/guava/collect/Sets$FilteredSet;
.super Lcom/lewa/guava/collect/Collections2$FilteredCollection;
.source "Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Collections2$FilteredCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/lewa/guava/base/Predicate;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p0, this:Lcom/lewa/guava/collect/Sets$FilteredSet;,"Lcom/lewa/guava/collect/Sets$FilteredSet<TE;>;"
    .local p1, unfiltered:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p2, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lcom/lewa/guava/base/Predicate;)V

    .line 748
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 751
    .local p0, this:Lcom/lewa/guava/collect/Sets$FilteredSet;,"Lcom/lewa/guava/collect/Sets$FilteredSet<TE;>;"
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Collections2;->setEquals(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 755
    .local p0, this:Lcom/lewa/guava/collect/Sets$FilteredSet;,"Lcom/lewa/guava/collect/Sets$FilteredSet<TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
