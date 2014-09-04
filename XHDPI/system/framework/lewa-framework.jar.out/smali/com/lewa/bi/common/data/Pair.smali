.class public Lcom/lewa/bi/common/data/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field

.field public final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT2;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/lewa/bi/common/data/Pair;,"Lcom/lewa/bi/common/data/Pair<TT1;TT2;>;"
    .local p1, left:Ljava/lang/Object;,"TT1;"
    .local p2, right:Ljava/lang/Object;,"TT2;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lewa/bi/common/data/Pair;->left:Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Lcom/lewa/bi/common/data/Pair;->right:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/bi/common/data/Pair;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(TT1;TT2;)",
            "Lcom/lewa/bi/common/data/Pair",
            "<TT1;TT2;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, left:Ljava/lang/Object;,"TT1;"
    .local p1, right:Ljava/lang/Object;,"TT2;"
    new-instance v0, Lcom/lewa/bi/common/data/Pair;

    invoke-direct {v0, p0, p1}, Lcom/lewa/bi/common/data/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/lewa/bi/common/data/Pair;,"Lcom/lewa/bi/common/data/Pair<TT1;TT2;>;"
    const/4 v1, 0x0

    .line 35
    instance-of v2, p1, Lcom/lewa/bi/common/data/Pair;

    if-nez v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/lewa/bi/common/data/Pair;

    .line 39
    .local v0, that:Lcom/lewa/bi/common/data/Pair;,"Lcom/lewa/bi/common/data/Pair<**>;"
    iget-object v2, p0, Lcom/lewa/bi/common/data/Pair;->left:Ljava/lang/Object;

    iget-object v3, v0, Lcom/lewa/bi/common/data/Pair;->left:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/lewa/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lewa/bi/common/data/Pair;->right:Ljava/lang/Object;

    iget-object v3, v0, Lcom/lewa/bi/common/data/Pair;->right:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/lewa/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 44
    .local p0, this:Lcom/lewa/bi/common/data/Pair;,"Lcom/lewa/bi/common/data/Pair<TT1;TT2;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lewa/bi/common/data/Pair;->left:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lewa/bi/common/data/Pair;->right:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lewa/guava/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    .local p0, this:Lcom/lewa/bi/common/data/Pair;,"Lcom/lewa/bi/common/data/Pair<TT1;TT2;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/Pair;->left:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/Pair;->right:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
