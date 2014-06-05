.class public final La/L;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field private static c:La/M;


# instance fields
.field public a:La/M;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/L;->a:La/M;

    const/4 v0, 0x0

    iput v0, p0, La/L;->b:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, La/L;->c:La/M;

    if-nez v0, :cond_0

    new-instance v0, La/M;

    invoke-direct {v0}, La/M;-><init>()V

    sput-object v0, La/L;->c:La/M;

    :cond_0
    sget-object v0, La/L;->c:La/M;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, La/M;

    iput-object v0, p0, La/L;->a:La/M;

    iget v0, p0, La/L;->b:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, La/L;->b:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, La/L;->a:La/M;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, La/L;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
