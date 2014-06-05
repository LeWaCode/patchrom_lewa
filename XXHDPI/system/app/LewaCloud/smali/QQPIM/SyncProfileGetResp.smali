.class public final LQQPIM/SyncProfileGetResp;
.super Lcom/qq/taf/jce/JceStruct;


# instance fields
.field public lastTime:J

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SyncProfileGetResp;->result:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/SyncProfileGetResp;->lastTime:J

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LQQPIM/SyncProfileGetResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SyncProfileGetResp;->result:I

    iget-wide v0, p0, LQQPIM/SyncProfileGetResp;->lastTime:J

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, LQQPIM/SyncProfileGetResp;->lastTime:J

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget v0, p0, LQQPIM/SyncProfileGetResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-wide v0, p0, LQQPIM/SyncProfileGetResp;->lastTime:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    return-void
.end method
