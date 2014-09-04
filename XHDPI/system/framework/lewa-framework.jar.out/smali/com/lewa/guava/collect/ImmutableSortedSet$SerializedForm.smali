.class Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableSortedSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field final elements:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "elements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 695
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm;,"Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm<TE;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm;->comparator:Ljava/util/Comparator;

    .line 697
    iput-object p2, p0, Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm;->elements:[Ljava/lang/Object;

    .line 698
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 702
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm;,"Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm<TE;>;"
    new-instance v1, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm;->elements:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->build()Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method
