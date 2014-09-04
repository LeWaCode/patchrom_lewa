.class final Lcom/lewa/guava/collect/ImmutableAsList;
.super Lcom/lewa/guava/collect/RegularImmutableList;
.source "ImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/ImmutableAsList$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/RegularImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient collection:Lcom/lewa/guava/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;Lcom/lewa/guava/collect/ImmutableCollection;)V
    .locals 2
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/lewa/guava/collect/ImmutableAsList;,"Lcom/lewa/guava/collect/ImmutableAsList<TE;>;"
    .local p2, collection:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 67
    iput-object p2, p0, Lcom/lewa/guava/collect/ImmutableAsList;->collection:Lcom/lewa/guava/collect/ImmutableCollection;

    .line 68
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/lewa/guava/collect/ImmutableAsList;,"Lcom/lewa/guava/collect/ImmutableAsList<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 73
    .local p0, this:Lcom/lewa/guava/collect/ImmutableAsList;,"Lcom/lewa/guava/collect/ImmutableAsList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableAsList;->collection:Lcom/lewa/guava/collect/ImmutableCollection;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 96
    .local p0, this:Lcom/lewa/guava/collect/ImmutableAsList;,"Lcom/lewa/guava/collect/ImmutableAsList<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableAsList$SerializedForm;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableAsList;->collection:Lcom/lewa/guava/collect/ImmutableCollection;

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableAsList$SerializedForm;-><init>(Lcom/lewa/guava/collect/ImmutableCollection;)V

    return-object v0
.end method
