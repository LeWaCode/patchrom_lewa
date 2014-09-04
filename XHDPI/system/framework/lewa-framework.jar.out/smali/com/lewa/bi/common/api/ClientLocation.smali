.class public Lcom/lewa/bi/common/api/ClientLocation;
.super Ljava/lang/Object;
.source "ClientLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final JOINER:Lcom/lewa/guava/base/Joiner; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x2f

    invoke-static {v0}, Lcom/lewa/guava/base/Joiner;->on(C)Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/base/Joiner;->skipNulls()Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/api/ClientLocation;->JOINER:Lcom/lewa/guava/base/Joiner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lewa/bi/common/api/ClientLocation;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lewa/bi/common/api/ClientLocation;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lewa/bi/common/api/ClientLocation;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getFullLocation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 84
    sget-object v0, Lcom/lewa/bi/common/api/ClientLocation;->JOINER:Lcom/lewa/guava/base/Joiner;

    iget-object v1, p0, Lcom/lewa/bi/common/api/ClientLocation;->country:Ljava/lang/String;

    iget-object v2, p0, Lcom/lewa/bi/common/api/ClientLocation;->state:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lewa/bi/common/api/ClientLocation;->city:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lewa/bi/common/api/ClientLocation;->district:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/guava/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lewa/bi/common/api/ClientLocation;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lewa/bi/common/api/ClientLocation;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lewa/bi/common/api/ClientLocation;->city:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lewa/bi/common/api/ClientLocation;->country:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0
    .parameter "district"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lewa/bi/common/api/ClientLocation;->district:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lewa/bi/common/api/ClientLocation;->ip:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lewa/bi/common/api/ClientLocation;->state:Ljava/lang/String;

    .line 70
    return-void
.end method
