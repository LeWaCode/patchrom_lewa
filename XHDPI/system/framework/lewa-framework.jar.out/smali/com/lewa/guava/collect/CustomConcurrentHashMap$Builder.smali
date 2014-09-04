.class final Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final UNSET_CONCURRENCY_LEVEL:I = -0x1

.field private static final UNSET_INITIAL_CAPACITY:I = -0x1


# instance fields
.field concurrencyLevel:I

.field initialCapacity:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    .line 178
    iput v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    return-void
.end method


# virtual methods
.method public buildComputingMap(Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/lewa/guava/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingStrategy",
            "<TK;TV;TE;>;",
            "Lcom/lewa/guava/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingStrategy;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingStrategy<TK;TV;TE;>;"
    .local p2, computer:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TK;+TV;>;"
    if-nez p1, :cond_0

    .line 287
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    if-nez p2, :cond_1

    .line 290
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "computer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    new-instance v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingImpl;

    invoke-direct {v0, p1, p0, p2}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingImpl;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;Lcom/lewa/guava/base/Function;)V

    return-object v0
.end method

.method public buildMap(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy",
            "<TK;TV;TE;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, p1, p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;
    .locals 3
    .parameter "concurrencyLevel"

    .prologue
    .line 217
    iget v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "concurrency level was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-gtz p1, :cond_1

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 224
    :cond_1
    iput p1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    .line 225
    return-object p0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    goto :goto_0
.end method

.method getInitialCapacity()I
    .locals 2

    .prologue
    .line 297
    iget v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    goto :goto_0
.end method

.method public initialCapacity(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;
    .locals 3
    .parameter "initialCapacity"

    .prologue
    .line 189
    iget v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial capacity was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    if-gez p1, :cond_1

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 196
    :cond_1
    iput p1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    .line 197
    return-object p0
.end method
