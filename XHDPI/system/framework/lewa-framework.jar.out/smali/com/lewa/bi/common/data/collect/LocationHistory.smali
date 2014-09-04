.class public Lcom/lewa/bi/common/data/collect/LocationHistory;
.super Ljava/lang/Object;
.source "LocationHistory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private geoPoint:Lcom/lewa/bi/common/data/collect/GeoPoint;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "geo"
    .end annotation
.end field

.field private timestamp:J
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeoPoint()Lcom/lewa/bi/common/data/collect/GeoPoint;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/LocationHistory;->geoPoint:Lcom/lewa/bi/common/data/collect/GeoPoint;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/LocationHistory;->timestamp:J

    return-wide v0
.end method

.method public setGeoPoint(Lcom/lewa/bi/common/data/collect/GeoPoint;)V
    .locals 0
    .parameter "geoPoint"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/LocationHistory;->geoPoint:Lcom/lewa/bi/common/data/collect/GeoPoint;

    .line 35
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/lewa/bi/common/data/collect/LocationHistory;->timestamp:J

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/LocationHistory;->geoPoint:Lcom/lewa/bi/common/data/collect/GeoPoint;

    invoke-virtual {v0}, Lcom/lewa/bi/common/data/collect/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
