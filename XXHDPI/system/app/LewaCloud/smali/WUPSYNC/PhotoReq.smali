.class public final LWUPSYNC/PhotoReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_devInfo:LWUPSYNC/DevInf;

.field static cache_photoList:Ljava/util/ArrayList;

.field static cache_photoSpec:LWUPSYNC/PhotoSpec;

.field static cache_syncType:I

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public devInfo:LWUPSYNC/DevInf;

.field public photoList:Ljava/util/ArrayList;

.field public photoSpec:LWUPSYNC/PhotoSpec;

.field public syncType:I

.field public userInfo:LWUPSYNC/AccInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;LWUPSYNC/DevInf;LWUPSYNC/PhotoSpec;Ljava/util/ArrayList;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    iput-object p1, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    iput-object p3, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    iput-object p4, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    iput p5, p0, LWUPSYNC/PhotoReq;->syncType:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/PhotoReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/PhotoReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/PhotoReq;->cache_userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    sget-object v0, LWUPSYNC/PhotoReq;->cache_devInfo:LWUPSYNC/DevInf;

    if-nez v0, :cond_1

    new-instance v0, LWUPSYNC/DevInf;

    invoke-direct {v0}, LWUPSYNC/DevInf;-><init>()V

    sput-object v0, LWUPSYNC/PhotoReq;->cache_devInfo:LWUPSYNC/DevInf;

    :cond_1
    sget-object v0, LWUPSYNC/PhotoReq;->cache_devInfo:LWUPSYNC/DevInf;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/DevInf;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    sget-object v0, LWUPSYNC/PhotoReq;->cache_photoSpec:LWUPSYNC/PhotoSpec;

    if-nez v0, :cond_2

    new-instance v0, LWUPSYNC/PhotoSpec;

    invoke-direct {v0}, LWUPSYNC/PhotoSpec;-><init>()V

    sput-object v0, LWUPSYNC/PhotoReq;->cache_photoSpec:LWUPSYNC/PhotoSpec;

    :cond_2
    sget-object v0, LWUPSYNC/PhotoReq;->cache_photoSpec:LWUPSYNC/PhotoSpec;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/PhotoSpec;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    sget-object v0, LWUPSYNC/PhotoReq;->cache_photoList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/PhotoReq;->cache_photoList:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/PhotoItem;

    invoke-direct {v0}, LWUPSYNC/PhotoItem;-><init>()V

    sget-object v1, LWUPSYNC/PhotoReq;->cache_photoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, LWUPSYNC/PhotoReq;->cache_photoList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    iget v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
