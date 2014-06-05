.class public final La/k;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field private static g:La/L;

.field private static h:La/w;

.field private static i:La/O;

.field private static j:[B


# instance fields
.field public a:La/L;

.field public b:Ljava/lang/String;

.field public c:La/w;

.field public d:La/O;

.field public e:[B

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, La/k;->a:La/L;

    const-string v0, ""

    iput-object v0, p0, La/k;->b:Ljava/lang/String;

    iput-object v1, p0, La/k;->c:La/w;

    iput-object v1, p0, La/k;->d:La/O;

    iput-object v1, p0, La/k;->e:[B

    const/4 v0, 0x0

    iput v0, p0, La/k;->f:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, La/k;->g:La/L;

    if-nez v0, :cond_0

    new-instance v0, La/L;

    invoke-direct {v0}, La/L;-><init>()V

    sput-object v0, La/k;->g:La/L;

    :cond_0
    sget-object v0, La/k;->g:La/L;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, La/L;

    iput-object v0, p0, La/k;->a:La/L;

    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/k;->b:Ljava/lang/String;

    sget-object v0, La/k;->h:La/w;

    if-nez v0, :cond_1

    new-instance v0, La/w;

    invoke-direct {v0}, La/w;-><init>()V

    sput-object v0, La/k;->h:La/w;

    :cond_1
    sget-object v0, La/k;->h:La/w;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, La/w;

    iput-object v0, p0, La/k;->c:La/w;

    sget-object v0, La/k;->i:La/O;

    if-nez v0, :cond_2

    new-instance v0, La/O;

    invoke-direct {v0}, La/O;-><init>()V

    sput-object v0, La/k;->i:La/O;

    :cond_2
    sget-object v0, La/k;->i:La/O;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, La/O;

    iput-object v0, p0, La/k;->d:La/O;

    sget-object v0, La/k;->j:[B

    if-nez v0, :cond_3

    new-array v0, v3, [B

    sput-object v0, La/k;->j:[B

    aput-byte v2, v0, v2

    :cond_3
    sget-object v0, La/k;->j:[B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, La/k;->e:[B

    iget v0, p0, La/k;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, La/k;->f:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, La/k;->a:La/L;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, La/k;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, La/k;->c:La/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/k;->c:La/w;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    :cond_0
    iget-object v0, p0, La/k;->d:La/O;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/k;->d:La/O;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    :cond_1
    iget-object v0, p0, La/k;->e:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, La/k;->e:[B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_2
    iget v0, p0, La/k;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
