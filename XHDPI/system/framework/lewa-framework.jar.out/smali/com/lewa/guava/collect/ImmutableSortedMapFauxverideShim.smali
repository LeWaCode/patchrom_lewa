.class abstract Lcom/lewa/guava/collect/ImmutableSortedMapFauxverideShim;
.super Lcom/lewa/guava/collect/ImmutableMap;
.source "ImmutableSortedMapFauxverideShim.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMapFauxverideShim;,"Lcom/lewa/guava/collect/ImmutableSortedMapFauxverideShim<TK;TV;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableMap;-><init>()V

    return-void
.end method

.method public static builder()Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Object;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Object;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    .local p6, k4:Ljava/lang/Object;,"TK;"
    .local p7, v4:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Object;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    .local p6, k4:Ljava/lang/Object;,"TK;"
    .local p7, v4:Ljava/lang/Object;,"TV;"
    .local p8, k5:Ljava/lang/Object;,"TK;"
    .local p9, v5:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
