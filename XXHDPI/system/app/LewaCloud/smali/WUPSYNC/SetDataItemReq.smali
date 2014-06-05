.class public final LWUPSYNC/SetDataItemReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_guidlist:Ljava/util/ArrayList;

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public flag:S

.field public guidlist:Ljava/util/ArrayList;

.field public imei:Ljava/lang/String;

.field public protocolVersion:I

.field public userInfo:LWUPSYNC/AccInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v2, p0, LWUPSYNC/SetDataItemReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/SetDataItemReq;->imei:Ljava/lang/String;

    iput-object v2, p0, LWUPSYNC/SetDataItemReq;->guidlist:Ljava/util/ArrayList;

    iput-short v1, p0, LWUPSYNC/SetDataItemReq;->flag:S

    iput v1, p0, LWUPSYNC/SetDataItemReq;->protocolVersion:I

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;Ljava/lang/String;Ljava/util/ArrayList;SI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v2, p0, LWUPSYNC/SetDataItemReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/SetDataItemReq;->imei:Ljava/lang/String;

    iput-object v2, p0, LWUPSYNC/SetDataItemReq;->guidlist:Ljava/util/ArrayList;

    iput-short v1, p0, LWUPSYNC/SetDataItemReq;->flag:S

    iput v1, p0, LWUPSYNC/SetDataItemReq;->protocolVersion:I

    iput-object p1, p0, LWUPSYNC/SetDataItemReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, p0, LWUPSYNC/SetDataItemReq;->imei:Ljava/lang/String;

    iput-object p3, p0, LWUPSYNC/SetDataItemReq;->guidlist:Ljava/util/ArrayList;

    iput-short p4, p0, LWUPSYNC/SetDataItemReq;->flag:S

    iput p5, p0, LWUPSYNC/SetDataItemReq;->protocolVersion:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/SetDataItemReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/SetDataItemReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/SetDataItemReq;->cache_userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/SetDataItemReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/SetDataItemReq;->imei:Ljava/lang/String;

    sget-object v0, LWUPSYNC/SetDataItemReq;->cache_guidlist:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/SetDataItemReq;->cache_guidlist:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, LWUPSYNC/SetDataItemReq;->cache_guidlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LWUPSYNC/SetDataItemReq;->cache_guidlist:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/SetDataItemReq;->guidlist:Ljava/util/ArrayList;

    iget-short v0, p0, LWUPSYNC/SetDataItemReq;->flag:S

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/SetDataItemReq;->flag:S

    iget v0, p0, LWUPSYNC/SetDataItemReq;->protocolVersion:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/SetDataItemReq;->protocolVersion:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/SetDataItemReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/SetDataItemReq;->imei:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/SetDataItemReq;->guidlist:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget-short v0, p0, LWUPSYNC/SetDataItemReq;->flag:S

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LWUPSYNC/SetDataItemReq;->protocolVersion:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
