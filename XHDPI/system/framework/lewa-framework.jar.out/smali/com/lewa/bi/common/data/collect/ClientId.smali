.class public Lcom/lewa/bi/common/data/collect/ClientId;
.super Lcom/lewa/bi/common/data/TimeBasedId;
.source "ClientId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/bi/common/data/TimeBasedId;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lewa/bi/common/data/collect/ClientId;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lewa/bi/common/data/TimeBasedId;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lewa/bi/common/data/TimeBasedId;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/lewa/bi/common/data/collect/ClientId;)I
    .locals 1
    .parameter "that"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/lewa/bi/common/data/collect/ClientId;->compareTimestamp(Lcom/lewa/bi/common/data/TimeBasedId;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/lewa/bi/common/data/collect/ClientId;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/bi/common/data/collect/ClientId;->compareTo(Lcom/lewa/bi/common/data/collect/ClientId;)I

    move-result v0

    return v0
.end method
