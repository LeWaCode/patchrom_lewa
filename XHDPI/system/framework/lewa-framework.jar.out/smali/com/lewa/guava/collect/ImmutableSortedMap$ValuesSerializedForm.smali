.class Lcom/lewa/guava/collect/ImmutableSortedMap$ValuesSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValuesSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final map:Lcom/lewa/guava/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$ValuesSerializedForm;,"Lcom/lewa/guava/collect/ImmutableSortedMap$ValuesSerializedForm<TV;>;"
    .local p1, map:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<*TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$ValuesSerializedForm;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    .line 603
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 605
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$ValuesSerializedForm;,"Lcom/lewa/guava/collect/ImmutableSortedMap$ValuesSerializedForm<TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$ValuesSerializedForm;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->values()Lcom/lewa/guava/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
