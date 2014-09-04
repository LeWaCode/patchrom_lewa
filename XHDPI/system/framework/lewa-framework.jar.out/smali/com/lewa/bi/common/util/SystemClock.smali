.class public Lcom/lewa/bi/common/util/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/lewa/bi/common/util/Clock;


# static fields
.field private static instance:Lcom/lewa/bi/common/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/lewa/bi/common/util/SystemClock;

    invoke-direct {v0}, Lcom/lewa/bi/common/util/SystemClock;-><init>()V

    sput-object v0, Lcom/lewa/bi/common/util/SystemClock;->instance:Lcom/lewa/bi/common/util/Clock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static currentTimeMillis()J
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/lewa/bi/common/util/SystemClock;->instance:Lcom/lewa/bi/common/util/Clock;

    invoke-interface {v0}, Lcom/lewa/bi/common/util/Clock;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/lewa/bi/common/util/Clock;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/lewa/bi/common/util/SystemClock;->instance:Lcom/lewa/bi/common/util/Clock;

    return-object v0
.end method

.method public static reset()V
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/lewa/bi/common/util/SystemClock;

    invoke-direct {v0}, Lcom/lewa/bi/common/util/SystemClock;-><init>()V

    sput-object v0, Lcom/lewa/bi/common/util/SystemClock;->instance:Lcom/lewa/bi/common/util/Clock;

    .line 31
    return-void
.end method

.method public static setInstance(Lcom/lewa/bi/common/util/Clock;)V
    .locals 0
    .parameter "instance"
    .annotation build Lcom/lewa/guava/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sput-object p0, Lcom/lewa/bi/common/util/SystemClock;->instance:Lcom/lewa/bi/common/util/Clock;

    .line 37
    return-void
.end method


# virtual methods
.method public now()J
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
