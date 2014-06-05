.class public final LWUPSYNC/Action;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_action:I

.field static cache_data:[B

.field static cache_groupList:Ljava/util/ArrayList;


# instance fields
.field public action:I

.field public aid:S

.field public data:[B

.field public groupList:Ljava/util/ArrayList;

.field public guid:Ljava/lang/String;

.field public luid:Ljava/lang/String;

.field public photoMd5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LWUPSYNC/Action;->aid:S

    iput v0, p0, LWUPSYNC/Action;->action:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/Action;->data:[B

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(SILjava/lang/String;[BLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LWUPSYNC/Action;->aid:S

    iput v0, p0, LWUPSYNC/Action;->action:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/Action;->data:[B

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    iput-short p1, p0, LWUPSYNC/Action;->aid:S

    iput p2, p0, LWUPSYNC/Action;->action:I

    iput-object p3, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    iput-object p4, p0, LWUPSYNC/Action;->data:[B

    iput-object p5, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    iput-object p6, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    iput-object p7, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, LWUPSYNC/Action;->aid:S

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/Action;->aid:S

    iget v0, p0, LWUPSYNC/Action;->action:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/Action;->action:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    sget-object v0, LWUPSYNC/Action;->cache_data:[B

    if-nez v0, :cond_0

    new-array v0, v1, [B

    sput-object v0, LWUPSYNC/Action;->cache_data:[B

    aput-byte v2, v0, v2

    :cond_0
    sget-object v0, LWUPSYNC/Action;->cache_data:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/Action;->data:[B

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    sget-object v0, LWUPSYNC/Action;->cache_groupList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/Action;->cache_groupList:Ljava/util/ArrayList;

    const-string v0, ""

    sget-object v1, LWUPSYNC/Action;->cache_groupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LWUPSYNC/Action;->cache_groupList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-short v0, p0, LWUPSYNC/Action;->aid:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LWUPSYNC/Action;->action:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/Action;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/Action;->data:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_0
    iget-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_2
    iget-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method
