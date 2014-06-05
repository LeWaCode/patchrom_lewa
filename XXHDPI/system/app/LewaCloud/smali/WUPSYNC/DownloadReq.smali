.class public final LWUPSYNC/DownloadReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_mapList:Ljava/util/ArrayList;


# instance fields
.field public mapList:Ljava/util/ArrayList;

.field public seqId:S

.field public sid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/DownloadReq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/DownloadReq;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DownloadReq;->sid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, LWUPSYNC/DownloadReq;->seqId:S

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/DownloadReq;->mapList:Ljava/util/ArrayList;

    iget-object v0, p0, LWUPSYNC/DownloadReq;->sid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LWUPSYNC/DownloadReq;->setSid(Ljava/lang/String;)V

    iget-short v0, p0, LWUPSYNC/DownloadReq;->seqId:S

    invoke-virtual {p0, v0}, LWUPSYNC/DownloadReq;->setSeqId(S)V

    iget-object v0, p0, LWUPSYNC/DownloadReq;->mapList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/DownloadReq;->setMapList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DownloadReq;->sid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, LWUPSYNC/DownloadReq;->seqId:S

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/DownloadReq;->mapList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, LWUPSYNC/DownloadReq;->setSid(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LWUPSYNC/DownloadReq;->setSeqId(S)V

    invoke-virtual {p0, p3}, LWUPSYNC/DownloadReq;->setMapList(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.DownloadReq"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, LWUPSYNC/DownloadReq;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LWUPSYNC/DownloadReq;->sid:Ljava/lang/String;

    const-string v2, "sid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LWUPSYNC/DownloadReq;->seqId:S

    const-string v2, "seqId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/DownloadReq;->mapList:Ljava/util/ArrayList;

    const-string v2, "mapList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/DownloadReq;

    iget-object v0, p0, LWUPSYNC/DownloadReq;->sid:Ljava/lang/String;

    iget-object v1, p1, LWUPSYNC/DownloadReq;->sid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LWUPSYNC/DownloadReq;->seqId:S

    iget-short v1, p1, LWUPSYNC/DownloadReq;->seqId:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/DownloadReq;->mapList:Ljava/util/ArrayList;

    iget-object v1, p1, LWUPSYNC/DownloadReq;->mapList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMapList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LWUPSYNC/DownloadReq;->mapList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSeqId()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/DownloadReq;->seqId:S

    return v0
.end method

.method public final getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWUPSYNC/DownloadReq;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/DownloadReq;->sid:Ljava/lang/String;

    iget-short v0, p0, LWUPSYNC/DownloadReq;->seqId:S

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/DownloadReq;->seqId:S

    sget-object v0, LWUPSYNC/DownloadReq;->cache_mapList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/DownloadReq;->cache_mapList:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/MapItem;

    invoke-direct {v0}, LWUPSYNC/MapItem;-><init>()V

    sget-object v1, LWUPSYNC/DownloadReq;->cache_mapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/DownloadReq;->cache_mapList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/DownloadReq;->setMapList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setMapList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/DownloadReq;->mapList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSeqId(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/DownloadReq;->seqId:S

    return-void
.end method

.method public final setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/DownloadReq;->sid:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/DownloadReq;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-short v0, p0, LWUPSYNC/DownloadReq;->seqId:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-object v0, p0, LWUPSYNC/DownloadReq;->mapList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/DownloadReq;->mapList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    return-void
.end method
