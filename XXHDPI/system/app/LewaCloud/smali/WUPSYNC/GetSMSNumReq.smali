.class public final LWUPSYNC/GetSMSNumReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_needGetNumTimeList:Ljava/util/ArrayList;

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public guid:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public needGetNumTimeList:Ljava/util/ArrayList;

.field public userInfo:LWUPSYNC/AccInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LWUPSYNC/GetSMSNumReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetSMSNumReq;->imei:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/GetSMSNumReq;->needGetNumTimeList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetSMSNumReq;->guid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LWUPSYNC/GetSMSNumReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetSMSNumReq;->imei:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/GetSMSNumReq;->needGetNumTimeList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetSMSNumReq;->guid:Ljava/lang/String;

    iput-object p1, p0, LWUPSYNC/GetSMSNumReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, p0, LWUPSYNC/GetSMSNumReq;->imei:Ljava/lang/String;

    iput-object p3, p0, LWUPSYNC/GetSMSNumReq;->needGetNumTimeList:Ljava/util/ArrayList;

    iput-object p4, p0, LWUPSYNC/GetSMSNumReq;->guid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/GetSMSNumReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/GetSMSNumReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/GetSMSNumReq;->cache_userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/GetSMSNumReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetSMSNumReq;->imei:Ljava/lang/String;

    sget-object v0, LWUPSYNC/GetSMSNumReq;->cache_needGetNumTimeList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/GetSMSNumReq;->cache_needGetNumTimeList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, LWUPSYNC/GetSMSNumReq;->cache_needGetNumTimeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LWUPSYNC/GetSMSNumReq;->cache_needGetNumTimeList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/GetSMSNumReq;->needGetNumTimeList:Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetSMSNumReq;->guid:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/GetSMSNumReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/GetSMSNumReq;->imei:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/GetSMSNumReq;->needGetNumTimeList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget-object v0, p0, LWUPSYNC/GetSMSNumReq;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/GetSMSNumReq;->guid:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
