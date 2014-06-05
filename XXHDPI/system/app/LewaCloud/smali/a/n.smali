.class public final La/n;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field private static c:La/o;

.field private static d:[B


# instance fields
.field public a:La/o;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, La/n;->a:La/o;

    iput-object v0, p0, La/n;->b:[B

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, La/n;->c:La/o;

    if-nez v0, :cond_0

    new-instance v0, La/o;

    invoke-direct {v0}, La/o;-><init>()V

    sput-object v0, La/n;->c:La/o;

    :cond_0
    sget-object v0, La/n;->c:La/o;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, La/o;

    iput-object v0, p0, La/n;->a:La/o;

    sget-object v0, La/n;->d:[B

    if-nez v0, :cond_1

    new-array v0, v2, [B

    sput-object v0, La/n;->d:[B

    aput-byte v1, v0, v1

    :cond_1
    sget-object v0, La/n;->d:[B

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, La/n;->b:[B

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, La/n;->a:La/o;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, La/n;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, La/n;->b:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_0
    return-void
.end method
