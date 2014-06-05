.class public final LWUPSYNC/GetRecycleReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public imei:Ljava/lang/String;

.field public pageLimit:S

.field public timestamp:I

.field public userInfo:LWUPSYNC/AccInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetRecycleReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetRecycleReq;->imei:Ljava/lang/String;

    iput-short v1, p0, LWUPSYNC/GetRecycleReq;->pageLimit:S

    iput v1, p0, LWUPSYNC/GetRecycleReq;->timestamp:I

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;Ljava/lang/String;SI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetRecycleReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetRecycleReq;->imei:Ljava/lang/String;

    iput-short v1, p0, LWUPSYNC/GetRecycleReq;->pageLimit:S

    iput v1, p0, LWUPSYNC/GetRecycleReq;->timestamp:I

    iput-object p1, p0, LWUPSYNC/GetRecycleReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, p0, LWUPSYNC/GetRecycleReq;->imei:Ljava/lang/String;

    iput-short p3, p0, LWUPSYNC/GetRecycleReq;->pageLimit:S

    iput p4, p0, LWUPSYNC/GetRecycleReq;->timestamp:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/GetRecycleReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/GetRecycleReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/GetRecycleReq;->cache_userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/GetRecycleReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetRecycleReq;->imei:Ljava/lang/String;

    iget-short v0, p0, LWUPSYNC/GetRecycleReq;->pageLimit:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/GetRecycleReq;->pageLimit:S

    iget v0, p0, LWUPSYNC/GetRecycleReq;->timestamp:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetRecycleReq;->timestamp:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/GetRecycleReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/GetRecycleReq;->imei:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-short v0, p0, LWUPSYNC/GetRecycleReq;->pageLimit:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LWUPSYNC/GetRecycleReq;->timestamp:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
