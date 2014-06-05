.class public final LWUPSYNC/DBStatus;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_dataType:I


# instance fields
.field public addCount:I

.field public dataType:I

.field public delCount:I

.field public mdfCount:I

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/DBStatus;->dataType:I

    iput v0, p0, LWUPSYNC/DBStatus;->totalCount:I

    iput v0, p0, LWUPSYNC/DBStatus;->addCount:I

    iput v0, p0, LWUPSYNC/DBStatus;->mdfCount:I

    iput v0, p0, LWUPSYNC/DBStatus;->delCount:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/DBStatus;->dataType:I

    iput v0, p0, LWUPSYNC/DBStatus;->totalCount:I

    iput v0, p0, LWUPSYNC/DBStatus;->addCount:I

    iput v0, p0, LWUPSYNC/DBStatus;->mdfCount:I

    iput v0, p0, LWUPSYNC/DBStatus;->delCount:I

    iput p1, p0, LWUPSYNC/DBStatus;->dataType:I

    iput p2, p0, LWUPSYNC/DBStatus;->totalCount:I

    iput p3, p0, LWUPSYNC/DBStatus;->addCount:I

    iput p4, p0, LWUPSYNC/DBStatus;->mdfCount:I

    iput p5, p0, LWUPSYNC/DBStatus;->delCount:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/DBStatus;->dataType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/DBStatus;->dataType:I

    iget v0, p0, LWUPSYNC/DBStatus;->totalCount:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/DBStatus;->totalCount:I

    iget v0, p0, LWUPSYNC/DBStatus;->addCount:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/DBStatus;->addCount:I

    iget v0, p0, LWUPSYNC/DBStatus;->mdfCount:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/DBStatus;->mdfCount:I

    iget v0, p0, LWUPSYNC/DBStatus;->delCount:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/DBStatus;->delCount:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/DBStatus;->dataType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/DBStatus;->totalCount:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/DBStatus;->addCount:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/DBStatus;->mdfCount:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/DBStatus;->delCount:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
