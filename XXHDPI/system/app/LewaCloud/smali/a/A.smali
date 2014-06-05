.class public final La/A;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field private static b:La/J;


# instance fields
.field public a:La/J;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/A;->a:La/J;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    sget-object v0, La/A;->b:La/J;

    if-nez v0, :cond_0

    new-instance v0, La/J;

    invoke-direct {v0}, La/J;-><init>()V

    sput-object v0, La/A;->b:La/J;

    :cond_0
    sget-object v0, La/A;->b:La/J;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, La/J;

    iput-object v0, p0, La/A;->a:La/J;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, La/A;->a:La/J;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    return-void
.end method
