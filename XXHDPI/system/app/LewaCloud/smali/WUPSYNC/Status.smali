.class public final LWUPSYNC/Status;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_extmsg:[B


# instance fields
.field public aid:S

.field public extmsg:[B

.field public result:S


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LWUPSYNC/Status;->aid:S

    iput-short v0, p0, LWUPSYNC/Status;->result:S

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    return-void
.end method

.method public constructor <init>(SS[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LWUPSYNC/Status;->aid:S

    iput-short v0, p0, LWUPSYNC/Status;->result:S

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    iput-short p1, p0, LWUPSYNC/Status;->aid:S

    iput-short p2, p0, LWUPSYNC/Status;->result:S

    iput-object p3, p0, LWUPSYNC/Status;->extmsg:[B

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, LWUPSYNC/Status;->aid:S

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/Status;->aid:S

    iget-short v0, p0, LWUPSYNC/Status;->result:S

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/Status;->result:S

    sget-object v0, LWUPSYNC/Status;->cache_extmsg:[B

    if-nez v0, :cond_0

    new-array v0, v1, [B

    sput-object v0, LWUPSYNC/Status;->cache_extmsg:[B

    aput-byte v2, v0, v2

    :cond_0
    sget-object v0, LWUPSYNC/Status;->cache_extmsg:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-short v0, p0, LWUPSYNC/Status;->aid:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/Status;->result:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_0
    return-void
.end method
