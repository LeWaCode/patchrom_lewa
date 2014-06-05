.class public final LWUPSYNC/PhotoResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_needDownload:Ljava/util/ArrayList;

.field static cache_needUpload:Ljava/util/ArrayList;

.field static cache_result:I


# instance fields
.field public needDownload:Ljava/util/ArrayList;

.field public needUpload:Ljava/util/ArrayList;

.field public pkgSize:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/PhotoResp;->result:I

    iput-object v1, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    iput-object v1, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    iput v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/PhotoResp;->result:I

    iput-object v1, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    iput-object v1, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    iput v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    iput p1, p0, LWUPSYNC/PhotoResp;->result:I

    iput-object p2, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    iput-object p3, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    iput p4, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, LWUPSYNC/PhotoResp;->result:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/PhotoResp;->result:I

    sget-object v0, LWUPSYNC/PhotoResp;->cache_needUpload:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/PhotoResp;->cache_needUpload:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/PhotoItem;

    invoke-direct {v0}, LWUPSYNC/PhotoItem;-><init>()V

    sget-object v1, LWUPSYNC/PhotoResp;->cache_needUpload:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/PhotoResp;->cache_needUpload:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    sget-object v0, LWUPSYNC/PhotoResp;->cache_needDownload:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/PhotoResp;->cache_needDownload:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/PhotoItem;

    invoke-direct {v0}, LWUPSYNC/PhotoItem;-><init>()V

    sget-object v1, LWUPSYNC/PhotoResp;->cache_needDownload:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LWUPSYNC/PhotoResp;->cache_needDownload:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    iget v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/PhotoResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget-object v0, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_1
    iget v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
