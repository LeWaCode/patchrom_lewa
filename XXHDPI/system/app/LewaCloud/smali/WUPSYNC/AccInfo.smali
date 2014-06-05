.class public final LWUPSYNC/AccInfo;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_accType:I


# instance fields
.field public LC:Ljava/lang/String;

.field public acc:Ljava/lang/String;

.field public accType:I

.field public language:S

.field public loginKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/AccInfo;->accType:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccInfo;->acc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccInfo;->loginKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccInfo;->LC:Ljava/lang/String;

    iput-short v1, p0, LWUPSYNC/AccInfo;->language:S

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/AccInfo;->accType:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccInfo;->acc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccInfo;->loginKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccInfo;->LC:Ljava/lang/String;

    iput-short v1, p0, LWUPSYNC/AccInfo;->language:S

    iput p1, p0, LWUPSYNC/AccInfo;->accType:I

    iput-object p2, p0, LWUPSYNC/AccInfo;->acc:Ljava/lang/String;

    iput-object p3, p0, LWUPSYNC/AccInfo;->loginKey:Ljava/lang/String;

    iput-object p4, p0, LWUPSYNC/AccInfo;->LC:Ljava/lang/String;

    iput-short p5, p0, LWUPSYNC/AccInfo;->language:S

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, LWUPSYNC/AccInfo;->accType:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/AccInfo;->accType:I

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/AccInfo;->acc:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/AccInfo;->loginKey:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/AccInfo;->LC:Ljava/lang/String;

    iget-short v0, p0, LWUPSYNC/AccInfo;->language:S

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/AccInfo;->language:S

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/AccInfo;->accType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/AccInfo;->acc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/AccInfo;->loginKey:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/AccInfo;->LC:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-short v0, p0, LWUPSYNC/AccInfo;->language:S

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    return-void
.end method
