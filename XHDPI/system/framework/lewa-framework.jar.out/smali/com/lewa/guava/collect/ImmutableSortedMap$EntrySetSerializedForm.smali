.class Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySetSerializedForm;
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
    name = "EntrySetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
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
            "<TK;TV;>;"
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
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySetSerializedForm;,"Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySetSerializedForm<TK;TV;>;"
    .local p1, map:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySetSerializedForm;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    .line 526
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 528
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySetSerializedForm;,"Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySetSerializedForm<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySetSerializedForm;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->entrySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
