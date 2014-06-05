.class public final La/z;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field private static d:La/J;


# instance fields
.field public a:I

.field public b:La/J;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/z;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, La/z;->b:La/J;

    const-string v0, ""

    iput-object v0, p0, La/z;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, La/z;->a:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, La/z;->a:I

    sget-object v0, La/z;->d:La/J;

    if-nez v0, :cond_0

    new-instance v0, La/J;

    invoke-direct {v0}, La/J;-><init>()V

    sput-object v0, La/z;->d:La/J;

    :cond_0
    sget-object v0, La/z;->d:La/J;

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, La/J;

    iput-object v0, p0, La/z;->b:La/J;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/z;->c:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, La/z;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, La/z;->b:La/J;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, La/z;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/z;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
