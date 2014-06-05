.class public final LWUPSYNC/GetRecordNumReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_needGetNumList:Ljava/util/ArrayList;

.field static cache_platform:I

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public imei:Ljava/lang/String;

.field public needGetNumList:Ljava/util/ArrayList;

.field public platform:I

.field public userInfo:LWUPSYNC/AccInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LWUPSYNC/GetRecordNumReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/GetRecordNumReq;->platform:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetRecordNumReq;->imei:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/GetRecordNumReq;->needGetNumList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LWUPSYNC/GetRecordNumReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/GetRecordNumReq;->platform:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetRecordNumReq;->imei:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/GetRecordNumReq;->needGetNumList:Ljava/util/ArrayList;

    iput-object p1, p0, LWUPSYNC/GetRecordNumReq;->userInfo:LWUPSYNC/AccInfo;

    iput p2, p0, LWUPSYNC/GetRecordNumReq;->platform:I

    iput-object p3, p0, LWUPSYNC/GetRecordNumReq;->imei:Ljava/lang/String;

    iput-object p4, p0, LWUPSYNC/GetRecordNumReq;->needGetNumList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/GetRecordNumReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/GetRecordNumReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/GetRecordNumReq;->cache_userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/GetRecordNumReq;->userInfo:LWUPSYNC/AccInfo;

    iget v0, p0, LWUPSYNC/GetRecordNumReq;->platform:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetRecordNumReq;->platform:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetRecordNumReq;->imei:Ljava/lang/String;

    sget-object v0, LWUPSYNC/GetRecordNumReq;->cache_needGetNumList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/GetRecordNumReq;->cache_needGetNumList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, LWUPSYNC/GetRecordNumReq;->cache_needGetNumList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LWUPSYNC/GetRecordNumReq;->cache_needGetNumList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/GetRecordNumReq;->needGetNumList:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/GetRecordNumReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LWUPSYNC/GetRecordNumReq;->platform:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/GetRecordNumReq;->imei:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/GetRecordNumReq;->needGetNumList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    return-void
.end method
