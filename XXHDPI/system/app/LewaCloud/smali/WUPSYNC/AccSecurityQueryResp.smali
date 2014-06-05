.class public final LWUPSYNC/AccSecurityQueryResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_result:I


# instance fields
.field public backupMobile:Ljava/lang/String;

.field public bindMobile:Ljava/lang/String;

.field public result:I

.field public secLevel:B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/AccSecurityQueryResp;->result:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccSecurityQueryResp;->bindMobile:Ljava/lang/String;

    iput-byte v1, p0, LWUPSYNC/AccSecurityQueryResp;->secLevel:B

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccSecurityQueryResp;->backupMobile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;BLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/AccSecurityQueryResp;->result:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccSecurityQueryResp;->bindMobile:Ljava/lang/String;

    iput-byte v1, p0, LWUPSYNC/AccSecurityQueryResp;->secLevel:B

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccSecurityQueryResp;->backupMobile:Ljava/lang/String;

    iput p1, p0, LWUPSYNC/AccSecurityQueryResp;->result:I

    iput-object p2, p0, LWUPSYNC/AccSecurityQueryResp;->bindMobile:Ljava/lang/String;

    iput-byte p3, p0, LWUPSYNC/AccSecurityQueryResp;->secLevel:B

    iput-object p4, p0, LWUPSYNC/AccSecurityQueryResp;->backupMobile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/AccSecurityQueryResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/AccSecurityQueryResp;->result:I

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/AccSecurityQueryResp;->bindMobile:Ljava/lang/String;

    iget-byte v0, p0, LWUPSYNC/AccSecurityQueryResp;->secLevel:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LWUPSYNC/AccSecurityQueryResp;->secLevel:B

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/AccSecurityQueryResp;->backupMobile:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/AccSecurityQueryResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/AccSecurityQueryResp;->bindMobile:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-byte v0, p0, LWUPSYNC/AccSecurityQueryResp;->secLevel:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget-object v0, p0, LWUPSYNC/AccSecurityQueryResp;->backupMobile:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    return-void
.end method
