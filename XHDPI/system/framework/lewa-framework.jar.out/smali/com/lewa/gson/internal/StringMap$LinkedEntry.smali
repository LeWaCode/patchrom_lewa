.class Lcom/lewa/gson/internal/StringMap$LinkedEntry;
.super Ljava/lang/Object;
.source "StringMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/internal/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinkedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/String;

.field next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    .local p0, this:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    const/4 v1, 0x0

    .line 297
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/lewa/gson/internal/StringMap$LinkedEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;ILcom/lewa/gson/internal/StringMap$LinkedEntry;Lcom/lewa/gson/internal/StringMap$LinkedEntry;Lcom/lewa/gson/internal/StringMap$LinkedEntry;)V

    .line 298
    iput-object p0, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iput-object p0, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 299
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;ILcom/lewa/gson/internal/StringMap$LinkedEntry;Lcom/lewa/gson/internal/StringMap$LinkedEntry;Lcom/lewa/gson/internal/StringMap$LinkedEntry;)V
    .locals 0
    .parameter "key"
    .parameter
    .parameter "hash"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;I",
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;",
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;",
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, this:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p4, next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    .local p5, nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    .local p6, prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    .line 304
    iput-object p2, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    .line 305
    iput p3, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->hash:I

    .line 306
    iput-object p4, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 307
    iput-object p5, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 308
    iput-object p6, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 309
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    const/4 v2, 0x0

    .line 326
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 329
    check-cast v0, Ljava/util/Map$Entry;

    .line 330
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 331
    .local v1, eValue:Ljava/lang/Object;
    iget-object v3, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    if-nez v3, :cond_2

    if-nez v1, :cond_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    .local p0, this:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    invoke-virtual {p0}, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    .local p0, this:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, this:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .local p0, this:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, this:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    .line 321
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    .line 322
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    .local p0, this:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
