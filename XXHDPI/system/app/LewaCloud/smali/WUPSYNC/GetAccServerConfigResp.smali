.class public final LWUPSYNC/GetAccServerConfigResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_accServerList:Ljava/util/ArrayList;

.field static cache_result:I


# instance fields
.field public accServerList:Ljava/util/ArrayList;

.field public connectTime2G:I

.field public connectTime3G:I

.field public connectTimeWifi:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/GetAccServerConfigResp;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetAccServerConfigResp;->accServerList:Ljava/util/ArrayList;

    iput v1, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime2G:I

    iput v1, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime3G:I

    iput v1, p0, LWUPSYNC/GetAccServerConfigResp;->connectTimeWifi:I

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/GetAccServerConfigResp;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetAccServerConfigResp;->accServerList:Ljava/util/ArrayList;

    iput v1, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime2G:I

    iput v1, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime3G:I

    iput v1, p0, LWUPSYNC/GetAccServerConfigResp;->connectTimeWifi:I

    iput p1, p0, LWUPSYNC/GetAccServerConfigResp;->result:I

    iput-object p2, p0, LWUPSYNC/GetAccServerConfigResp;->accServerList:Ljava/util/ArrayList;

    iput p3, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime2G:I

    iput p4, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime3G:I

    iput p5, p0, LWUPSYNC/GetAccServerConfigResp;->connectTimeWifi:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/GetAccServerConfigResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetAccServerConfigResp;->result:I

    sget-object v0, LWUPSYNC/GetAccServerConfigResp;->cache_accServerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/GetAccServerConfigResp;->cache_accServerList:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/IpAndPort;

    invoke-direct {v0}, LWUPSYNC/IpAndPort;-><init>()V

    sget-object v1, LWUPSYNC/GetAccServerConfigResp;->cache_accServerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/GetAccServerConfigResp;->cache_accServerList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/GetAccServerConfigResp;->accServerList:Ljava/util/ArrayList;

    iget v0, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime2G:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime2G:I

    iget v0, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime3G:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime3G:I

    iget v0, p0, LWUPSYNC/GetAccServerConfigResp;->connectTimeWifi:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetAccServerConfigResp;->connectTimeWifi:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/GetAccServerConfigResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/GetAccServerConfigResp;->accServerList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget v0, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime2G:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/GetAccServerConfigResp;->connectTime3G:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/GetAccServerConfigResp;->connectTimeWifi:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
