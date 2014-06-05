.class public final LWUPSYNC/ContSummary;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_type:I


# instance fields
.field public guid:I

.field public lastModify:I

.field public mobile:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/ContSummary;->guid:I

    iput v1, p0, LWUPSYNC/ContSummary;->lastModify:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/ContSummary;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/ContSummary;->mobile:Ljava/lang/String;

    iput v1, p0, LWUPSYNC/ContSummary;->type:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/ContSummary;->guid:I

    iput v1, p0, LWUPSYNC/ContSummary;->lastModify:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/ContSummary;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/ContSummary;->mobile:Ljava/lang/String;

    iput v1, p0, LWUPSYNC/ContSummary;->type:I

    iput p1, p0, LWUPSYNC/ContSummary;->guid:I

    iput p2, p0, LWUPSYNC/ContSummary;->lastModify:I

    iput-object p3, p0, LWUPSYNC/ContSummary;->name:Ljava/lang/String;

    iput-object p4, p0, LWUPSYNC/ContSummary;->mobile:Ljava/lang/String;

    iput p5, p0, LWUPSYNC/ContSummary;->type:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, LWUPSYNC/ContSummary;->guid:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/ContSummary;->guid:I

    iget v0, p0, LWUPSYNC/ContSummary;->lastModify:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/ContSummary;->lastModify:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/ContSummary;->name:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/ContSummary;->mobile:Ljava/lang/String;

    iget v0, p0, LWUPSYNC/ContSummary;->type:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/ContSummary;->type:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/ContSummary;->guid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/ContSummary;->lastModify:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/ContSummary;->name:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/ContSummary;->mobile:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LWUPSYNC/ContSummary;->type:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
