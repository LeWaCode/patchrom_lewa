.class public final LWUPSYNC/VersionInfo;
.super Lcom/qq/taf/jce/JceStruct;


# instance fields
.field public contactCount:I

.field public groupCount:I

.field public id:I

.field public imei:Ljava/lang/String;

.field public manufactor:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public timestamp:I

.field public type:S


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/VersionInfo;->id:I

    iput v1, p0, LWUPSYNC/VersionInfo;->timestamp:I

    iput-short v1, p0, LWUPSYNC/VersionInfo;->type:S

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/VersionInfo;->manufactor:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/VersionInfo;->model:Ljava/lang/String;

    iput v1, p0, LWUPSYNC/VersionInfo;->contactCount:I

    iput v1, p0, LWUPSYNC/VersionInfo;->groupCount:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/VersionInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IISLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/VersionInfo;->id:I

    iput v1, p0, LWUPSYNC/VersionInfo;->timestamp:I

    iput-short v1, p0, LWUPSYNC/VersionInfo;->type:S

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/VersionInfo;->manufactor:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/VersionInfo;->model:Ljava/lang/String;

    iput v1, p0, LWUPSYNC/VersionInfo;->contactCount:I

    iput v1, p0, LWUPSYNC/VersionInfo;->groupCount:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/VersionInfo;->imei:Ljava/lang/String;

    iput p1, p0, LWUPSYNC/VersionInfo;->id:I

    iput p2, p0, LWUPSYNC/VersionInfo;->timestamp:I

    iput-short p3, p0, LWUPSYNC/VersionInfo;->type:S

    iput-object p4, p0, LWUPSYNC/VersionInfo;->manufactor:Ljava/lang/String;

    iput-object p5, p0, LWUPSYNC/VersionInfo;->model:Ljava/lang/String;

    iput p6, p0, LWUPSYNC/VersionInfo;->contactCount:I

    iput p7, p0, LWUPSYNC/VersionInfo;->groupCount:I

    iput-object p8, p0, LWUPSYNC/VersionInfo;->imei:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/VersionInfo;->id:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/VersionInfo;->id:I

    iget v0, p0, LWUPSYNC/VersionInfo;->timestamp:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/VersionInfo;->timestamp:I

    iget-short v0, p0, LWUPSYNC/VersionInfo;->type:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/VersionInfo;->type:S

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/VersionInfo;->manufactor:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/VersionInfo;->model:Ljava/lang/String;

    iget v0, p0, LWUPSYNC/VersionInfo;->contactCount:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/VersionInfo;->contactCount:I

    iget v0, p0, LWUPSYNC/VersionInfo;->groupCount:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/VersionInfo;->groupCount:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/VersionInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/VersionInfo;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/VersionInfo;->timestamp:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-short v0, p0, LWUPSYNC/VersionInfo;->type:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-object v0, p0, LWUPSYNC/VersionInfo;->manufactor:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/VersionInfo;->model:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LWUPSYNC/VersionInfo;->contactCount:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/VersionInfo;->groupCount:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/VersionInfo;->imei:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/VersionInfo;->imei:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
