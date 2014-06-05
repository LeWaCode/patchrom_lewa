.class public final LWUPSYNC/GetConfResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_buf:[B

.field static cache_result:I


# instance fields
.field public buf:[B

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/GetConfResp;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetConfResp;->buf:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/GetConfResp;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetConfResp;->buf:[B

    iput p1, p0, LWUPSYNC/GetConfResp;->result:I

    iput-object p2, p0, LWUPSYNC/GetConfResp;->buf:[B

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, LWUPSYNC/GetConfResp;->result:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetConfResp;->result:I

    sget-object v0, LWUPSYNC/GetConfResp;->cache_buf:[B

    if-nez v0, :cond_0

    new-array v0, v2, [B

    sput-object v0, LWUPSYNC/GetConfResp;->cache_buf:[B

    aput-byte v1, v0, v1

    :cond_0
    sget-object v0, LWUPSYNC/GetConfResp;->cache_buf:[B

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetConfResp;->buf:[B

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/GetConfResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/GetConfResp;->buf:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/GetConfResp;->buf:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_0
    return-void
.end method
