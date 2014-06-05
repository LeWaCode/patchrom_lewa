.class public final LWUPSYNC/GetCloudDataResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_contList:Ljava/util/ArrayList;

.field static cache_result:I


# instance fields
.field public contList:Ljava/util/ArrayList;

.field public result:I

.field public timeStamp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/GetCloudDataResp;->result:I

    iput v0, p0, LWUPSYNC/GetCloudDataResp;->timeStamp:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetCloudDataResp;->contList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/GetCloudDataResp;->result:I

    iput v0, p0, LWUPSYNC/GetCloudDataResp;->timeStamp:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GetCloudDataResp;->contList:Ljava/util/ArrayList;

    iput p1, p0, LWUPSYNC/GetCloudDataResp;->result:I

    iput p2, p0, LWUPSYNC/GetCloudDataResp;->timeStamp:I

    iput-object p3, p0, LWUPSYNC/GetCloudDataResp;->contList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, LWUPSYNC/GetCloudDataResp;->result:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetCloudDataResp;->result:I

    iget v0, p0, LWUPSYNC/GetCloudDataResp;->timeStamp:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetCloudDataResp;->timeStamp:I

    sget-object v0, LWUPSYNC/GetCloudDataResp;->cache_contList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/GetCloudDataResp;->cache_contList:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/ContSummary;

    invoke-direct {v0}, LWUPSYNC/ContSummary;-><init>()V

    sget-object v1, LWUPSYNC/GetCloudDataResp;->cache_contList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/GetCloudDataResp;->cache_contList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/GetCloudDataResp;->contList:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/GetCloudDataResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/GetCloudDataResp;->timeStamp:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/GetCloudDataResp;->contList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/GetCloudDataResp;->contList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    return-void
.end method
