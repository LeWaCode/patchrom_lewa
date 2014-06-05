.class public final LWUPSYNC/RollBackVersionReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_devInfo:LWUPSYNC/DevInf;

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public devInfo:LWUPSYNC/DevInf;

.field public userInfo:LWUPSYNC/AccInfo;

.field public verID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LWUPSYNC/RollBackVersionReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/RollBackVersionReq;->devInfo:LWUPSYNC/DevInf;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/RollBackVersionReq;->verID:I

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;LWUPSYNC/DevInf;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LWUPSYNC/RollBackVersionReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/RollBackVersionReq;->devInfo:LWUPSYNC/DevInf;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/RollBackVersionReq;->verID:I

    iput-object p1, p0, LWUPSYNC/RollBackVersionReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, p0, LWUPSYNC/RollBackVersionReq;->devInfo:LWUPSYNC/DevInf;

    iput p3, p0, LWUPSYNC/RollBackVersionReq;->verID:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/RollBackVersionReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/RollBackVersionReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/RollBackVersionReq;->cache_userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/RollBackVersionReq;->userInfo:LWUPSYNC/AccInfo;

    sget-object v0, LWUPSYNC/RollBackVersionReq;->cache_devInfo:LWUPSYNC/DevInf;

    if-nez v0, :cond_1

    new-instance v0, LWUPSYNC/DevInf;

    invoke-direct {v0}, LWUPSYNC/DevInf;-><init>()V

    sput-object v0, LWUPSYNC/RollBackVersionReq;->cache_devInfo:LWUPSYNC/DevInf;

    :cond_1
    sget-object v0, LWUPSYNC/RollBackVersionReq;->cache_devInfo:LWUPSYNC/DevInf;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/DevInf;

    iput-object v0, p0, LWUPSYNC/RollBackVersionReq;->devInfo:LWUPSYNC/DevInf;

    iget v0, p0, LWUPSYNC/RollBackVersionReq;->verID:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/RollBackVersionReq;->verID:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/RollBackVersionReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/RollBackVersionReq;->devInfo:LWUPSYNC/DevInf;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LWUPSYNC/RollBackVersionReq;->verID:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
