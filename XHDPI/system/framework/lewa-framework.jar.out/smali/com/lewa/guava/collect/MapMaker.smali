.class public final Lcom/lewa/guava/collect/MapMaker;
.super Ljava/lang/Object;
.source "MapMaker.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/MapMaker$StrongValueReference;,
        Lcom/lewa/guava/collect/MapMaker$SoftValueReference;,
        Lcom/lewa/guava/collect/MapMaker$WeakValueReference;,
        Lcom/lewa/guava/collect/MapMaker$LinkedWeakEntry;,
        Lcom/lewa/guava/collect/MapMaker$WeakEntry;,
        Lcom/lewa/guava/collect/MapMaker$LinkedSoftEntry;,
        Lcom/lewa/guava/collect/MapMaker$SoftEntry;,
        Lcom/lewa/guava/collect/MapMaker$LinkedStrongEntry;,
        Lcom/lewa/guava/collect/MapMaker$StrongEntry;,
        Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,
        Lcom/lewa/guava/collect/MapMaker$QueueHolder;,
        Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;,
        Lcom/lewa/guava/collect/MapMaker$NullOutputExceptionReference;,
        Lcom/lewa/guava/collect/MapMaker$ValueReference;,
        Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,
        Lcom/lewa/guava/collect/MapMaker$Strength;
    }
.end annotation


# static fields
.field private static final COMPUTING:Lcom/lewa/guava/collect/MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/MapMaker$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final builder:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

.field private expirationNanos:J

.field private keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

.field private useCustomMap:Z

.field private valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 806
    new-instance v0, Lcom/lewa/guava/collect/MapMaker$1;

    invoke-direct {v0}, Lcom/lewa/guava/collect/MapMaker$1;-><init>()V

    sput-object v0, Lcom/lewa/guava/collect/MapMaker;->COMPUTING:Lcom/lewa/guava/collect/MapMaker$ValueReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    sget-object v0, Lcom/lewa/guava/collect/MapMaker$Strength;->STRONG:Lcom/lewa/guava/collect/MapMaker$Strength;

    iput-object v0, p0, Lcom/lewa/guava/collect/MapMaker;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    .line 132
    sget-object v0, Lcom/lewa/guava/collect/MapMaker$Strength;->STRONG:Lcom/lewa/guava/collect/MapMaker$Strength;

    iput-object v0, p0, Lcom/lewa/guava/collect/MapMaker;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lewa/guava/collect/MapMaker;->expirationNanos:J

    .line 135
    new-instance v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

    invoke-direct {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;-><init>()V

    iput-object v0, p0, Lcom/lewa/guava/collect/MapMaker;->builder:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

    .line 142
    return-void
.end method

.method static synthetic access$100(Lcom/lewa/guava/collect/MapMaker;)Lcom/lewa/guava/collect/MapMaker$Strength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lewa/guava/collect/MapMaker;)Lcom/lewa/guava/collect/MapMaker$Strength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lewa/guava/collect/MapMaker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/lewa/guava/collect/MapMaker;->expirationNanos:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/lewa/guava/collect/MapMaker;)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker;->builder:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

    return-object v0
.end method

.method static synthetic access$500()Lcom/lewa/guava/collect/MapMaker$ValueReference;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/lewa/guava/collect/MapMaker;->COMPUTING:Lcom/lewa/guava/collect/MapMaker$ValueReference;

    return-object v0
.end method

.method static synthetic access$600()Lcom/lewa/guava/collect/MapMaker$ValueReference;
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/lewa/guava/collect/MapMaker;->computing()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v0

    return-object v0
.end method

.method private static computing()Lcom/lewa/guava/collect/MapMaker$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 826
    sget-object v0, Lcom/lewa/guava/collect/MapMaker;->COMPUTING:Lcom/lewa/guava/collect/MapMaker$ValueReference;

    return-object v0
.end method

.method private setKeyStrength(Lcom/lewa/guava/collect/MapMaker$Strength;)Lcom/lewa/guava/collect/MapMaker;
    .locals 3
    .parameter "strength"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    sget-object v1, Lcom/lewa/guava/collect/MapMaker$Strength;->STRONG:Lcom/lewa/guava/collect/MapMaker$Strength;

    if-eq v0, v1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key strength was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/guava/collect/MapMaker;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iput-object p1, p0, Lcom/lewa/guava/collect/MapMaker;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lewa/guava/collect/MapMaker;->useCustomMap:Z

    .line 228
    return-object p0
.end method

.method private setValueStrength(Lcom/lewa/guava/collect/MapMaker$Strength;)Lcom/lewa/guava/collect/MapMaker;
    .locals 3
    .parameter "strength"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    sget-object v1, Lcom/lewa/guava/collect/MapMaker$Strength;->STRONG:Lcom/lewa/guava/collect/MapMaker$Strength;

    if-eq v0, v1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value strength was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/guava/collect/MapMaker;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iput-object p1, p0, Lcom/lewa/guava/collect/MapMaker;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lewa/guava/collect/MapMaker;->useCustomMap:Z

    .line 284
    return-object p0
.end method


# virtual methods
.method public concurrencyLevel(I)Lcom/lewa/guava/collect/MapMaker;
    .locals 1
    .parameter "concurrencyLevel"
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "java.util.concurrent.ConcurrentHashMap concurrencyLevel"
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker;->builder:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

    .line 180
    return-object p0
.end method

.method public expiration(JLjava/util/concurrent/TimeUnit;)Lcom/lewa/guava/collect/MapMaker;
    .locals 4
    .parameter "duration"
    .parameter "unit"

    .prologue
    const-wide/16 v2, 0x0

    .line 298
    iget-wide v0, p0, Lcom/lewa/guava/collect/MapMaker;->expirationNanos:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expiration time of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lewa/guava/collect/MapMaker;->expirationNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ns was already set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lewa/guava/collect/MapMaker;->expirationNanos:J

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lewa/guava/collect/MapMaker;->useCustomMap:Z

    .line 307
    return-object p0
.end method

.method public initialCapacity(I)Lcom/lewa/guava/collect/MapMaker;
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker;->builder:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->initialCapacity(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

    .line 156
    return-object p0
.end method

.method public makeComputingMap(Lcom/lewa/guava/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, computingFunction:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TK;+TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;-><init>(Lcom/lewa/guava/collect/MapMaker;Lcom/lewa/guava/base/Function;)V

    iget-object v0, v0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/lewa/guava/collect/MapMaker;->useCustomMap:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;-><init>(Lcom/lewa/guava/collect/MapMaker;)V

    iget-object v0, v0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/lewa/guava/collect/MapMaker;->builder:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

    invoke-virtual {v1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->getInitialCapacity()I

    move-result v1

    const/high16 v2, 0x3f40

    iget-object v3, p0, Lcom/lewa/guava/collect/MapMaker;->builder:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

    invoke-virtual {v3}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->getConcurrencyLevel()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    goto :goto_0
.end method

.method public softKeys()Lcom/lewa/guava/collect/MapMaker;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lcom/lewa/guava/collect/MapMaker$Strength;->SOFT:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/lewa/guava/collect/MapMaker;->setKeyStrength(Lcom/lewa/guava/collect/MapMaker$Strength;)Lcom/lewa/guava/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public softValues()Lcom/lewa/guava/collect/MapMaker;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/lewa/guava/collect/MapMaker$Strength;->SOFT:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/lewa/guava/collect/MapMaker;->setValueStrength(Lcom/lewa/guava/collect/MapMaker$Strength;)Lcom/lewa/guava/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakKeys()Lcom/lewa/guava/collect/MapMaker;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .prologue
    .line 199
    sget-object v0, Lcom/lewa/guava/collect/MapMaker$Strength;->WEAK:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/lewa/guava/collect/MapMaker;->setKeyStrength(Lcom/lewa/guava/collect/MapMaker$Strength;)Lcom/lewa/guava/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lcom/lewa/guava/collect/MapMaker;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .prologue
    .line 251
    sget-object v0, Lcom/lewa/guava/collect/MapMaker$Strength;->WEAK:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/lewa/guava/collect/MapMaker;->setValueStrength(Lcom/lewa/guava/collect/MapMaker$Strength;)Lcom/lewa/guava/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
