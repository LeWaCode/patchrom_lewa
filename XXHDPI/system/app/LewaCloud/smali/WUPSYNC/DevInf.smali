.class public final LWUPSYNC/DevInf;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_platform:I

.field static cache_pushToken:Ljava/util/ArrayList;


# instance fields
.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public language:B

.field public manufactor:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public nettype:S

.field public platform:I

.field public product:S

.field public pushToken:Ljava/util/ArrayList;

.field public sdkVersion:S

.field public system:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DevInf;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DevInf;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DevInf;->manufactor:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DevInf;->model:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DevInf;->system:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/DevInf;->pushToken:Ljava/util/ArrayList;

    iput-short v1, p0, LWUPSYNC/DevInf;->nettype:S

    iput-byte v1, p0, LWUPSYNC/DevInf;->language:B

    iput-short v1, p0, LWUPSYNC/DevInf;->product:S

    iput-short v1, p0, LWUPSYNC/DevInf;->sdkVersion:S

    iput v1, p0, LWUPSYNC/DevInf;->platform:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;SBSSI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DevInf;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DevInf;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DevInf;->manufactor:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DevInf;->model:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/DevInf;->system:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/DevInf;->pushToken:Ljava/util/ArrayList;

    iput-short v1, p0, LWUPSYNC/DevInf;->nettype:S

    iput-byte v1, p0, LWUPSYNC/DevInf;->language:B

    iput-short v1, p0, LWUPSYNC/DevInf;->product:S

    iput-short v1, p0, LWUPSYNC/DevInf;->sdkVersion:S

    iput v1, p0, LWUPSYNC/DevInf;->platform:I

    iput-object p1, p0, LWUPSYNC/DevInf;->imei:Ljava/lang/String;

    iput-object p2, p0, LWUPSYNC/DevInf;->imsi:Ljava/lang/String;

    iput-object p3, p0, LWUPSYNC/DevInf;->manufactor:Ljava/lang/String;

    iput-object p4, p0, LWUPSYNC/DevInf;->model:Ljava/lang/String;

    iput-object p5, p0, LWUPSYNC/DevInf;->system:Ljava/lang/String;

    iput-object p6, p0, LWUPSYNC/DevInf;->pushToken:Ljava/util/ArrayList;

    iput-short p7, p0, LWUPSYNC/DevInf;->nettype:S

    iput-byte p8, p0, LWUPSYNC/DevInf;->language:B

    iput-short p9, p0, LWUPSYNC/DevInf;->product:S

    iput-short p10, p0, LWUPSYNC/DevInf;->sdkVersion:S

    iput p11, p0, LWUPSYNC/DevInf;->platform:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/DevInf;->imei:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/DevInf;->imsi:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/DevInf;->manufactor:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/DevInf;->model:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/DevInf;->system:Ljava/lang/String;

    sget-object v0, LWUPSYNC/DevInf;->cache_pushToken:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/DevInf;->cache_pushToken:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, LWUPSYNC/DevInf;->cache_pushToken:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/DevInf;->cache_pushToken:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/DevInf;->pushToken:Ljava/util/ArrayList;

    iget-short v0, p0, LWUPSYNC/DevInf;->nettype:S

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/DevInf;->nettype:S

    iget-byte v0, p0, LWUPSYNC/DevInf;->language:B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LWUPSYNC/DevInf;->language:B

    iget-short v0, p0, LWUPSYNC/DevInf;->product:S

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/DevInf;->product:S

    iget-short v0, p0, LWUPSYNC/DevInf;->sdkVersion:S

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/DevInf;->sdkVersion:S

    iget v0, p0, LWUPSYNC/DevInf;->platform:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/DevInf;->platform:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/DevInf;->imei:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/DevInf;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/DevInf;->imsi:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LWUPSYNC/DevInf;->manufactor:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LWUPSYNC/DevInf;->manufactor:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LWUPSYNC/DevInf;->model:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LWUPSYNC/DevInf;->model:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LWUPSYNC/DevInf;->system:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LWUPSYNC/DevInf;->system:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, LWUPSYNC/DevInf;->pushToken:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, LWUPSYNC/DevInf;->pushToken:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_4
    iget-short v0, p0, LWUPSYNC/DevInf;->nettype:S

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-byte v0, p0, LWUPSYNC/DevInf;->language:B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget-short v0, p0, LWUPSYNC/DevInf;->product:S

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/DevInf;->sdkVersion:S

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LWUPSYNC/DevInf;->platform:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
