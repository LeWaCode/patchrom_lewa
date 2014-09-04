.class final Lcom/lewa/guava/collect/CustomConcurrentHashMap;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleStrategy;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingImpl;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$ComputingStrategy;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 162
    invoke-static {p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap;->rehash(I)I

    move-result v0

    return v0
.end method

.method private static rehash(I)I
    .locals 2
    .parameter "h"

    .prologue
    .line 559
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 560
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 561
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 562
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 563
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 564
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method
