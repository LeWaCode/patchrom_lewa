.class public final LWUPSYNC/PhotoSpec;
.super Lcom/qq/taf/jce/JceStruct;


# instance fields
.field public height:S

.field public size:I

.field public wide:S


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LWUPSYNC/PhotoSpec;->height:S

    iput-short v0, p0, LWUPSYNC/PhotoSpec;->wide:S

    iput v0, p0, LWUPSYNC/PhotoSpec;->size:I

    return-void
.end method

.method public constructor <init>(SSI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LWUPSYNC/PhotoSpec;->height:S

    iput-short v0, p0, LWUPSYNC/PhotoSpec;->wide:S

    iput v0, p0, LWUPSYNC/PhotoSpec;->size:I

    iput-short p1, p0, LWUPSYNC/PhotoSpec;->height:S

    iput-short p2, p0, LWUPSYNC/PhotoSpec;->wide:S

    iput p3, p0, LWUPSYNC/PhotoSpec;->size:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-short v0, p0, LWUPSYNC/PhotoSpec;->height:S

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/PhotoSpec;->height:S

    iget-short v0, p0, LWUPSYNC/PhotoSpec;->wide:S

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/PhotoSpec;->wide:S

    iget v0, p0, LWUPSYNC/PhotoSpec;->size:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/PhotoSpec;->size:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-short v0, p0, LWUPSYNC/PhotoSpec;->height:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/PhotoSpec;->wide:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LWUPSYNC/PhotoSpec;->size:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
