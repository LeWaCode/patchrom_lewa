.class public final LWUPSYNC/GetConfigReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_configType:I

.field static cache_infoReport:[B

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public configType:I

.field public infoReport:[B

.field public userInfo:LWUPSYNC/AccInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LWUPSYNC/GetConfigReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/GetConfigReq;->configType:I

    iput-object v1, p0, LWUPSYNC/GetConfigReq;->infoReport:[B

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;I[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LWUPSYNC/GetConfigReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/GetConfigReq;->configType:I

    iput-object v1, p0, LWUPSYNC/GetConfigReq;->infoReport:[B

    iput-object p1, p0, LWUPSYNC/GetConfigReq;->userInfo:LWUPSYNC/AccInfo;

    iput p2, p0, LWUPSYNC/GetConfigReq;->configType:I

    iput-object p3, p0, LWUPSYNC/GetConfigReq;->infoReport:[B

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/GetConfigReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/GetConfigReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/GetConfigReq;->cache_userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/GetConfigReq;->userInfo:LWUPSYNC/AccInfo;

    iget v0, p0, LWUPSYNC/GetConfigReq;->configType:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetConfigReq;->configType:I

    sget-object v0, LWUPSYNC/GetConfigReq;->cache_infoReport:[B

    if-nez v0, :cond_1

    new-array v0, v2, [B

    sput-object v0, LWUPSYNC/GetConfigReq;->cache_infoReport:[B

    aput-byte v1, v0, v1

    :cond_1
    sget-object v0, LWUPSYNC/GetConfigReq;->cache_infoReport:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetConfigReq;->infoReport:[B

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/GetConfigReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LWUPSYNC/GetConfigReq;->configType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/GetConfigReq;->infoReport:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    return-void
.end method
