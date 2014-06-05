.class public final LWUPSYNC/SMSSummary;
.super Lcom/qq/taf/jce/JceStruct;


# instance fields
.field public name:Ljava/lang/String;

.field public num:I

.field public number:Ljava/lang/String;

.field public sendTime:I

.field public summary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/SMSSummary;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/SMSSummary;->number:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/SMSSummary;->summary:Ljava/lang/String;

    iput v1, p0, LWUPSYNC/SMSSummary;->sendTime:I

    iput v1, p0, LWUPSYNC/SMSSummary;->num:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/SMSSummary;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/SMSSummary;->number:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/SMSSummary;->summary:Ljava/lang/String;

    iput v1, p0, LWUPSYNC/SMSSummary;->sendTime:I

    iput v1, p0, LWUPSYNC/SMSSummary;->num:I

    iput-object p1, p0, LWUPSYNC/SMSSummary;->name:Ljava/lang/String;

    iput-object p2, p0, LWUPSYNC/SMSSummary;->number:Ljava/lang/String;

    iput-object p3, p0, LWUPSYNC/SMSSummary;->summary:Ljava/lang/String;

    iput p4, p0, LWUPSYNC/SMSSummary;->sendTime:I

    iput p5, p0, LWUPSYNC/SMSSummary;->num:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/SMSSummary;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/SMSSummary;->number:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/SMSSummary;->summary:Ljava/lang/String;

    iget v0, p0, LWUPSYNC/SMSSummary;->sendTime:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/SMSSummary;->sendTime:I

    iget v0, p0, LWUPSYNC/SMSSummary;->num:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/SMSSummary;->num:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/SMSSummary;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/SMSSummary;->number:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/SMSSummary;->summary:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LWUPSYNC/SMSSummary;->sendTime:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/SMSSummary;->num:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
