.class public final LWUPSYNC/GetConfigResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_configInfo:[B

.field static cache_configType:I

.field static cache_result:I


# instance fields
.field public configInfo:[B

.field public configType:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/GetConfigResp;->result:I

    iput v0, p0, LWUPSYNC/GetConfigResp;->configType:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetConfigResp;->configInfo:[B

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/GetConfigResp;->result:I

    iput v0, p0, LWUPSYNC/GetConfigResp;->configType:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetConfigResp;->configInfo:[B

    iput p1, p0, LWUPSYNC/GetConfigResp;->result:I

    iput p2, p0, LWUPSYNC/GetConfigResp;->configType:I

    iput-object p3, p0, LWUPSYNC/GetConfigResp;->configInfo:[B

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/GetConfigResp;->result:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetConfigResp;->result:I

    iget v0, p0, LWUPSYNC/GetConfigResp;->configType:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetConfigResp;->configType:I

    sget-object v0, LWUPSYNC/GetConfigResp;->cache_configInfo:[B

    if-nez v0, :cond_0

    new-array v0, v2, [B

    sput-object v0, LWUPSYNC/GetConfigResp;->cache_configInfo:[B

    aput-byte v1, v0, v1

    :cond_0
    sget-object v0, LWUPSYNC/GetConfigResp;->cache_configInfo:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetConfigResp;->configInfo:[B

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/GetConfigResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/GetConfigResp;->configType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/GetConfigResp;->configInfo:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    return-void
.end method
