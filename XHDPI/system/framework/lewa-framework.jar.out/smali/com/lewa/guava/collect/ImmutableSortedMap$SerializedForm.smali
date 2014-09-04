.class Lcom/lewa/guava/collect/ImmutableSortedMap$SerializedForm;
.super Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/ImmutableSortedMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, sortedMap:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<**>;"
    invoke-direct {p0, p1}, Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;-><init>(Lcom/lewa/guava/collect/ImmutableMap;)V

    .line 712
    invoke-virtual {p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    .line 713
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 715
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    .line 716
    .local v0, builder:Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/ImmutableSortedMap$SerializedForm;->createMap(Lcom/lewa/guava/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
