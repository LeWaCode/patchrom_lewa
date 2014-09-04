.class public Lcom/lewa/bi/common/data/collect/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final E6:I = 0xf4240

.field private static final JOINER:Lcom/lewa/guava/base/Joiner; = null

.field public static final MARS_LATITUDE_MAX:D = 54.0

.field public static final MARS_LATITUDE_MIN:D = 17.0

.field public static final MARS_LONGITUDE_MAX:D = 135.0

.field public static final MARS_LONGITUDE_MIN:D = 73.0

.field public static final WGS_LATITUDE_MAX:I = 0x5a

.field public static final WGS_LATITUDE_MIN:I = -0x5a

.field public static final WGS_LONGITUDE_MAX:I = 0xb4

.field public static final WGS_LONGITUDE_MIN:I = -0xb4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/lewa/bi/common/util/Joiners;->LIST_JOINER:Lcom/lewa/guava/base/Joiner;

    sput-object v0, Lcom/lewa/bi/common/data/collect/GeoPoint;->JOINER:Lcom/lewa/guava/base/Joiner;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1, p2, p3, p4}, Lcom/lewa/bi/common/data/collect/GeoPoint;->isValid(DD)Z

    move-result v0

    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/lewa/bi/common/data/collect/GeoPoint;->getE6Value(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->latitude:D

    .line 78
    invoke-direct {p0, p3, p4}, Lcom/lewa/bi/common/data/collect/GeoPoint;->getE6Value(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->longitude:D

    .line 79
    return-void
.end method

.method private getE6Value(D)D
    .locals 4
    .parameter "d"

    .prologue
    const-wide v2, 0x412e848000000000L

    .line 92
    mul-double v0, p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static isValid(DD)Z
    .locals 2
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 64
    const-wide v0, -0x3fa9800000000000L

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x4056800000000000L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide v0, -0x3f99800000000000L

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    const-wide v0, 0x4066800000000000L

    cmpg-double v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValid(Lcom/lewa/bi/common/data/collect/GeoPoint;)Z
    .locals 4
    .parameter "geoPoint"

    .prologue
    .line 69
    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->latitude:D

    iget-wide v2, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/lewa/bi/common/data/collect/GeoPoint;->isValid(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    const-wide v5, 0x412e848000000000L

    .line 83
    instance-of v2, p1, Lcom/lewa/bi/common/data/collect/GeoPoint;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/lewa/bi/common/data/collect/GeoPoint;

    .line 85
    .local v0, geoPoint:Lcom/lewa/bi/common/data/collect/GeoPoint;
    iget-wide v2, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->latitude:D

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iget-wide v3, v0, Lcom/lewa/bi/common/data/collect/GeoPoint;->latitude:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->longitude:D

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iget-wide v3, v0, Lcom/lewa/bi/common/data/collect/GeoPoint;->longitude:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 88
    .end local v0           #geoPoint:Lcom/lewa/bi/common/data/collect/GeoPoint;
    :cond_0
    return v1
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->latitude:D

    iget-wide v2, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->longitude:D

    add-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    sget-object v0, Lcom/lewa/bi/common/data/collect/GeoPoint;->JOINER:Lcom/lewa/guava/base/Joiner;

    iget-wide v1, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/lewa/bi/common/data/collect/GeoPoint;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/guava/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
