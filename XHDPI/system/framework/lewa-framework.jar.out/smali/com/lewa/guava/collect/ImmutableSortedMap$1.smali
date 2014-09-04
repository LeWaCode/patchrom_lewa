.class final Lcom/lewa/guava/collect/ImmutableSortedMap$1;
.super Ljava/lang/Object;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/ImmutableSortedMap;->sortEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map$Entry",
        "<**>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$1;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/ImmutableSortedMap$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/util/Map$Entry",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, entry1:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .local p2, entry2:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$1;->val$comparator:Ljava/util/Comparator;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lewa/guava/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
