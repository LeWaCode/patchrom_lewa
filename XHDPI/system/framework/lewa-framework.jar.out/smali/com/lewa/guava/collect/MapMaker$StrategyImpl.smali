.class Lcom/lewa/guava/collect/MapMaker$StrategyImpl;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrategyImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/MapMaker$StrategyImpl$Fields;,
        Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingStrategy",
        "<TK;TV;",
        "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final expirationNanos:J

.field internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

.field final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/MapMaker;)V
    .locals 2
    .parameter "maker"

    .prologue
    .line 503
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    #getter for: Lcom/lewa/guava/collect/MapMaker;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/lewa/guava/collect/MapMaker;->access$100(Lcom/lewa/guava/collect/MapMaker;)Lcom/lewa/guava/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    .line 505
    #getter for: Lcom/lewa/guava/collect/MapMaker;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/lewa/guava/collect/MapMaker;->access$200(Lcom/lewa/guava/collect/MapMaker;)Lcom/lewa/guava/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    .line 506
    #getter for: Lcom/lewa/guava/collect/MapMaker;->expirationNanos:J
    invoke-static {p1}, Lcom/lewa/guava/collect/MapMaker;->access$300(Lcom/lewa/guava/collect/MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->expirationNanos:J

    .line 508
    #getter for: Lcom/lewa/guava/collect/MapMaker;->builder:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;
    invoke-static {p1}, Lcom/lewa/guava/collect/MapMaker;->access$400(Lcom/lewa/guava/collect/MapMaker;)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->buildMap(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 509
    return-void
.end method

.method constructor <init>(Lcom/lewa/guava/collect/MapMaker;Lcom/lewa/guava/base/Function;)V
    .locals 2
    .parameter "maker"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker;",
            "Lcom/lewa/guava/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p2, computer:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    #getter for: Lcom/lewa/guava/collect/MapMaker;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/lewa/guava/collect/MapMaker;->access$100(Lcom/lewa/guava/collect/MapMaker;)Lcom/lewa/guava/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    .line 514
    #getter for: Lcom/lewa/guava/collect/MapMaker;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/lewa/guava/collect/MapMaker;->access$200(Lcom/lewa/guava/collect/MapMaker;)Lcom/lewa/guava/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    .line 515
    #getter for: Lcom/lewa/guava/collect/MapMaker;->expirationNanos:J
    invoke-static {p1}, Lcom/lewa/guava/collect/MapMaker;->access$300(Lcom/lewa/guava/collect/MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->expirationNanos:J

    .line 517
    #getter for: Lcom/lewa/guava/collect/MapMaker;->builder:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;
    invoke-static {p1}, Lcom/lewa/guava/collect/MapMaker;->access$400(Lcom/lewa/guava/collect/MapMaker;)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->buildComputingMap(Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/lewa/guava/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 518
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 777
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    :try_start_0
    sget-object v1, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$Fields;->keyStrength:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 778
    sget-object v1, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$Fields;->valueStrength:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 779
    sget-object v1, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$Fields;->expirationNanos:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 780
    sget-object v1, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$Fields;->internals:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 781
    sget-object v1, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$Fields;->map:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    return-void

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 739
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 740
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 741
    iget-wide v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 747
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 748
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 749
    return-void
.end method


# virtual methods
.method public compute(Ljava/lang/Object;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/base/Function;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/lewa/guava/base/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p3, computer:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TK;+TV;>;"
    :try_start_0
    invoke-interface {p3, p1}, Lcom/lewa/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lewa/guava/collect/ComputationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 638
    .local v3, value:Ljava/lang/Object;,"TV;"
    if-nez v3, :cond_0

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, message:Ljava/lang/String;
    new-instance v4, Lcom/lewa/guava/collect/MapMaker$NullOutputExceptionReference;

    invoke-direct {v4, v1}, Lcom/lewa/guava/collect/MapMaker$NullOutputExceptionReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v4}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ValueReference;)V

    .line 643
    new-instance v4, Lcom/lewa/guava/collect/NullOutputException;

    invoke-direct {v4, v1}, Lcom/lewa/guava/collect/NullOutputException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 626
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;,"TV;"
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Lcom/lewa/guava/collect/ComputationException;
    new-instance v4, Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ComputationException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v4}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ValueReference;)V

    .line 631
    throw v0

    .line 632
    .end local v0           #e:Lcom/lewa/guava/collect/ComputationException;
    :catch_1
    move-exception v2

    .line 633
    .local v2, t:Ljava/lang/Throwable;
    new-instance v4, Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;

    invoke-direct {v4, v2}, Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v4}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ValueReference;)V

    .line 635
    new-instance v4, Lcom/lewa/guava/collect/ComputationException;

    invoke-direct {v4, v2}, Lcom/lewa/guava/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 645
    .end local v2           #t:Ljava/lang/Throwable;
    .restart local v3       #value:Ljava/lang/Object;,"TV;"
    :cond_0
    invoke-virtual {p0, p2, v3}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->setValue(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)V

    .line 647
    return-object v3
.end method

.method public bridge synthetic compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/lewa/guava/base/Function;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 495
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p2, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->compute(Ljava/lang/Object;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/base/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copyEntry(Ljava/lang/Object;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, original:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p3, newNext:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p2}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v2

    .line 580
    .local v2, valueReference:Lcom/lewa/guava/collect/MapMaker$ValueReference;,"Lcom/lewa/guava/collect/MapMaker$ValueReference<TK;TV;>;"
    invoke-static {}, Lcom/lewa/guava/collect/MapMaker;->access$500()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 581
    invoke-interface {p2}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getHash()I

    move-result v3

    invoke-virtual {p0, p1, v3, p3}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    .line 583
    .local v0, newEntry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    new-instance v3, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;

    invoke-direct {v3, p0, p2, v0}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/lewa/guava/collect/MapMaker$StrategyImpl;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)V

    invoke-interface {v0, v3}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->setValueReference(Lcom/lewa/guava/collect/MapMaker$ValueReference;)V

    move-object v1, v0

    .line 590
    .end local v0           #newEntry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local v1, newEntry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    :goto_0
    return-object v1

    .line 587
    .end local v1           #newEntry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    :cond_0
    invoke-interface {p2}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getHash()I

    move-result v3

    invoke-virtual {p0, p1, v3, p3}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    .line 589
    .restart local v0       #newEntry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {v2, v0}, Lcom/lewa/guava/collect/MapMaker$ValueReference;->copyFor(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->setValueReference(Lcom/lewa/guava/collect/MapMaker$ValueReference;)V

    move-object v1, v0

    .line 590
    .end local v0           #newEntry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .restart local v1       #newEntry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    goto :goto_0
.end method

.method public bridge synthetic copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 495
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p2, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .end local p2
    check-cast p3, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->copyEntry(Ljava/lang/Object;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, a:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/guava/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, a:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/guava/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHash(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getHash()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHash(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 495
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->getHash(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)I

    move-result v0

    return v0
.end method

.method public getKey(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 495
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->getKey(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 724
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getNext()Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 495
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->getNext(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 617
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v0

    .line 618
    .local v0, valueReference:Lcom/lewa/guava/collect/MapMaker$ValueReference;,"Lcom/lewa/guava/collect/MapMaker$ValueReference<TK;TV;>;"
    invoke-interface {v0}, Lcom/lewa/guava/collect/MapMaker$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 495
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->getValue(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashKey(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 561
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/MapMaker$Strength;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public newEntry(Ljava/lang/Object;ILcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .locals 2
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, next:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    iget-object v1, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/lewa/guava/collect/MapMaker$Strength;->newEntry(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 495
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p3, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 539
    .local v0, keyReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TK;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 540
    .local v1, valueReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TV;>;"
    sget-object v2, Lcom/lewa/guava/collect/ExpirationTimer;->instance:Ljava/util/Timer;

    new-instance v3, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$1;-><init>(Lcom/lewa/guava/collect/MapMaker$StrategyImpl;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 550
    return-void
.end method

.method public setInternals(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 729
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals<TK;TV;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;>;"
    iput-object p1, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;

    .line 730
    return-void
.end method

.method public setValue(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/guava/collect/MapMaker$Strength;->referenceValue(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ValueReference;)V

    .line 523
    iget-wide v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->expirationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 524
    invoke-interface {p1}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 526
    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 495
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->setValue(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)V

    return-void
.end method

.method setValueReference(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ValueReference;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/lewa/guava/collect/MapMaker$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p2, valueReference:Lcom/lewa/guava/collect/MapMaker$ValueReference;,"Lcom/lewa/guava/collect/MapMaker$ValueReference<TK;TV;>;"
    invoke-interface {p1}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v1

    invoke-static {}, Lcom/lewa/guava/collect/MapMaker;->access$500()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 657
    .local v0, notifyOthers:Z
    :goto_0
    invoke-interface {p1, p2}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->setValueReference(Lcom/lewa/guava/collect/MapMaker$ValueReference;)V

    .line 658
    if-eqz v0, :cond_0

    .line 659
    monitor-enter p1

    .line 660
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 661
    monitor-exit p1

    .line 663
    :cond_0
    return-void

    .line 656
    .end local v0           #notifyOthers:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 661
    .restart local v0       #notifyOthers:Z
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForValue(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 600
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v0

    .line 601
    .local v0, valueReference:Lcom/lewa/guava/collect/MapMaker$ValueReference;,"Lcom/lewa/guava/collect/MapMaker$ValueReference<TK;TV;>;"
    invoke-static {}, Lcom/lewa/guava/collect/MapMaker;->access$500()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 602
    monitor-enter p1

    .line 604
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v0

    invoke-static {}, Lcom/lewa/guava/collect/MapMaker;->access$500()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 605
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    :cond_1
    invoke-interface {v0}, Lcom/lewa/guava/collect/MapMaker$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic waitForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 495
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->waitForValue(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
