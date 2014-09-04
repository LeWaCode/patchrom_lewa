.class Lcom/lewa/guava/collect/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method static isInstance(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "obj"
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "Class.isInstance"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static newArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "length"
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "Array.newInstance(Class, int)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)[TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method static newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, reference:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 137
    .local v1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 138
    .local v0, result:[Ljava/lang/Object;,"[TT;"
    return-object v0
.end method

.method static subList(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "List.subList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static tryWeakKeys(Lcom/lewa/guava/collect/MapMaker;)Lcom/lewa/guava/collect/MapMaker;
    .locals 1
    .parameter "mapMaker"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/lewa/guava/collect/MapMaker;->weakKeys()Lcom/lewa/guava/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method static unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0
    .parameter "src"
    .parameter "srcPos"
    .parameter "dest"
    .parameter "destPos"
    .parameter "length"

    .prologue
    .line 109
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    return-void
.end method
