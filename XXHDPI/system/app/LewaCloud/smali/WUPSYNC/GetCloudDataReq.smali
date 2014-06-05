.class public final LWUPSYNC/GetCloudDataReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_luidList:Ljava/util/ArrayList;

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public MaxCount:I

.field public imei:Ljava/lang/String;

.field public luidList:Ljava/util/ArrayList;

.field public protocolVersion:I

.field public timeStamp:I

.field public type:I

.field public userInfo:LWUPSYNC/AccInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v2, p0, LWUPSYNC/GetCloudDataReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetCloudDataReq;->imei:Ljava/lang/String;

    iput v1, p0, LWUPSYNC/GetCloudDataReq;->type:I

    iput v1, p0, LWUPSYNC/GetCloudDataReq;->MaxCount:I

    iput v1, p0, LWUPSYNC/GetCloudDataReq;->timeStamp:I

    iput-object v2, p0, LWUPSYNC/GetCloudDataReq;->luidList:Ljava/util/ArrayList;

    iput v1, p0, LWUPSYNC/GetCloudDataReq;->protocolVersion:I

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;Ljava/lang/String;IIILjava/util/ArrayList;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v2, p0, LWUPSYNC/GetCloudDataReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetCloudDataReq;->imei:Ljava/lang/String;

    iput v1, p0, LWUPSYNC/GetCloudDataReq;->type:I

    iput v1, p0, LWUPSYNC/GetCloudDataReq;->MaxCount:I

    iput v1, p0, LWUPSYNC/GetCloudDataReq;->timeStamp:I

    iput-object v2, p0, LWUPSYNC/GetCloudDataReq;->luidList:Ljava/util/ArrayList;

    iput v1, p0, LWUPSYNC/GetCloudDataReq;->protocolVersion:I

    iput-object p1, p0, LWUPSYNC/GetCloudDataReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, p0, LWUPSYNC/GetCloudDataReq;->imei:Ljava/lang/String;

    iput p3, p0, LWUPSYNC/GetCloudDataReq;->type:I

    iput p4, p0, LWUPSYNC/GetCloudDataReq;->MaxCount:I

    iput p5, p0, LWUPSYNC/GetCloudDataReq;->timeStamp:I

    iput-object p6, p0, LWUPSYNC/GetCloudDataReq;->luidList:Ljava/util/ArrayList;

    iput p7, p0, LWUPSYNC/GetCloudDataReq;->protocolVersion:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/GetCloudDataReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/GetCloudDataReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/GetCloudDataReq;->cache_userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/GetCloudDataReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetCloudDataReq;->imei:Ljava/lang/String;

    iget v0, p0, LWUPSYNC/GetCloudDataReq;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetCloudDataReq;->type:I

    iget v0, p0, LWUPSYNC/GetCloudDataReq;->MaxCount:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetCloudDataReq;->MaxCount:I

    iget v0, p0, LWUPSYNC/GetCloudDataReq;->timeStamp:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetCloudDataReq;->timeStamp:I

    sget-object v0, LWUPSYNC/GetCloudDataReq;->cache_luidList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/GetCloudDataReq;->cache_luidList:Ljava/util/ArrayList;

    const-string v0, ""

    sget-object v1, LWUPSYNC/GetCloudDataReq;->cache_luidList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LWUPSYNC/GetCloudDataReq;->cache_luidList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/GetCloudDataReq;->luidList:Ljava/util/ArrayList;

    iget v0, p0, LWUPSYNC/GetCloudDataReq;->protocolVersion:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetCloudDataReq;->protocolVersion:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/GetCloudDataReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/GetCloudDataReq;->imei:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LWUPSYNC/GetCloudDataReq;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/GetCloudDataReq;->MaxCount:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/GetCloudDataReq;->timeStamp:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/GetCloudDataReq;->luidList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/GetCloudDataReq;->luidList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget v0, p0, LWUPSYNC/GetCloudDataReq;->protocolVersion:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
