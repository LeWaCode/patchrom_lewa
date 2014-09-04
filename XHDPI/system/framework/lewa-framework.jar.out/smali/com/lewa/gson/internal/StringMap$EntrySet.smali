.class final Lcom/lewa/gson/internal/StringMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "StringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/internal/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/gson/internal/StringMap;


# direct methods
.method private constructor <init>(Lcom/lewa/gson/internal/StringMap;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    .local p0, this:Lcom/lewa/gson/internal/StringMap$EntrySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.EntrySet;"
    iput-object p1, p0, Lcom/lewa/gson/internal/StringMap$EntrySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/gson/internal/StringMap;Lcom/lewa/gson/internal/StringMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 450
    .local p0, this:Lcom/lewa/gson/internal/StringMap$EntrySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/lewa/gson/internal/StringMap$EntrySet;-><init>(Lcom/lewa/gson/internal/StringMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 481
    .local p0, this:Lcom/lewa/gson/internal/StringMap$EntrySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.EntrySet;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$EntrySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/lewa/gson/internal/StringMap;->clear()V

    .line 482
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/lewa/gson/internal/StringMap$EntrySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 460
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 463
    check-cast v0, Ljava/util/Map$Entry;

    .line 464
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/lewa/gson/internal/StringMap$EntrySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lewa/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 465
    .local v1, mappedValue:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, this:Lcom/lewa/gson/internal/StringMap$EntrySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.EntrySet;"
    new-instance v0, Lcom/lewa/gson/internal/StringMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/lewa/gson/internal/StringMap$EntrySet$1;-><init>(Lcom/lewa/gson/internal/StringMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 469
    .local p0, this:Lcom/lewa/gson/internal/StringMap$EntrySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 470
    const/4 v1, 0x0

    .line 473
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 472
    check-cast v0, Ljava/util/Map$Entry;

    .line 473
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/lewa/gson/internal/StringMap$EntrySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    #calls: Lcom/lewa/gson/internal/StringMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3}, Lcom/lewa/gson/internal/StringMap;->access$600(Lcom/lewa/gson/internal/StringMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 477
    .local p0, this:Lcom/lewa/gson/internal/StringMap$EntrySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.EntrySet;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$EntrySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    #getter for: Lcom/lewa/gson/internal/StringMap;->size:I
    invoke-static {v0}, Lcom/lewa/gson/internal/StringMap;->access$500(Lcom/lewa/gson/internal/StringMap;)I

    move-result v0

    return v0
.end method
