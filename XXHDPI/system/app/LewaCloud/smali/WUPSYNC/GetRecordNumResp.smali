.class public final LWUPSYNC/GetRecordNumResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_result:I

.field static cache_serverStat:Ljava/util/ArrayList;


# instance fields
.field public msg:Ljava/lang/String;

.field public result:I

.field public serverStat:Ljava/util/ArrayList;

.field public supportURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/GetRecordNumResp;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetRecordNumResp;->serverStat:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetRecordNumResp;->supportURL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetRecordNumResp;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/GetRecordNumResp;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetRecordNumResp;->serverStat:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetRecordNumResp;->supportURL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetRecordNumResp;->msg:Ljava/lang/String;

    iput p1, p0, LWUPSYNC/GetRecordNumResp;->result:I

    iput-object p2, p0, LWUPSYNC/GetRecordNumResp;->serverStat:Ljava/util/ArrayList;

    iput-object p3, p0, LWUPSYNC/GetRecordNumResp;->supportURL:Ljava/lang/String;

    iput-object p4, p0, LWUPSYNC/GetRecordNumResp;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/GetRecordNumResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetRecordNumResp;->result:I

    sget-object v0, LWUPSYNC/GetRecordNumResp;->cache_serverStat:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/GetRecordNumResp;->cache_serverStat:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/DBStatus;

    invoke-direct {v0}, LWUPSYNC/DBStatus;-><init>()V

    sget-object v1, LWUPSYNC/GetRecordNumResp;->cache_serverStat:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/GetRecordNumResp;->cache_serverStat:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/GetRecordNumResp;->serverStat:Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetRecordNumResp;->supportURL:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetRecordNumResp;->msg:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/GetRecordNumResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/GetRecordNumResp;->serverStat:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget-object v0, p0, LWUPSYNC/GetRecordNumResp;->supportURL:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/GetRecordNumResp;->msg:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    return-void
.end method
