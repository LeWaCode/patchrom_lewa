.class public final La/p;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field private static c:[B

.field private static d:La/b;


# instance fields
.field public a:[B

.field public b:La/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, La/p;->a:[B

    iput-object v0, p0, La/p;->b:La/b;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, La/p;->c:[B

    if-nez v0, :cond_0

    new-array v0, v2, [B

    sput-object v0, La/p;->c:[B

    aput-byte v1, v0, v1

    :cond_0
    sget-object v0, La/p;->c:[B

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, La/p;->a:[B

    sget-object v0, La/p;->d:La/b;

    if-nez v0, :cond_1

    new-instance v0, La/b;

    invoke-direct {v0}, La/b;-><init>()V

    sput-object v0, La/p;->d:La/b;

    :cond_1
    sget-object v0, La/p;->d:La/b;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, La/b;

    iput-object v0, p0, La/p;->b:La/b;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, La/p;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, La/p;->a:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_0
    iget-object v0, p0, La/p;->b:La/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/p;->b:La/b;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    :cond_1
    return-void
.end method
