.class public final LWUPSYNC/AccSecurityMdfReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_action:I

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public action:I

.field public backupMobile:Ljava/lang/String;

.field public bindMobile:Ljava/lang/String;

.field public secLevel:B

.field public userInfo:LWUPSYNC/AccInfo;

.field public verifyCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->userInfo:LWUPSYNC/AccInfo;

    iput v1, p0, LWUPSYNC/AccSecurityMdfReq;->action:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->bindMobile:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->verifyCode:Ljava/lang/String;

    iput-byte v1, p0, LWUPSYNC/AccSecurityMdfReq;->secLevel:B

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->backupMobile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;ILjava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->userInfo:LWUPSYNC/AccInfo;

    iput v1, p0, LWUPSYNC/AccSecurityMdfReq;->action:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->bindMobile:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->verifyCode:Ljava/lang/String;

    iput-byte v1, p0, LWUPSYNC/AccSecurityMdfReq;->secLevel:B

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->backupMobile:Ljava/lang/String;

    iput-object p1, p0, LWUPSYNC/AccSecurityMdfReq;->userInfo:LWUPSYNC/AccInfo;

    iput p2, p0, LWUPSYNC/AccSecurityMdfReq;->action:I

    iput-object p3, p0, LWUPSYNC/AccSecurityMdfReq;->bindMobile:Ljava/lang/String;

    iput-object p4, p0, LWUPSYNC/AccSecurityMdfReq;->verifyCode:Ljava/lang/String;

    iput-byte p5, p0, LWUPSYNC/AccSecurityMdfReq;->secLevel:B

    iput-object p6, p0, LWUPSYNC/AccSecurityMdfReq;->backupMobile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LWUPSYNC/AccSecurityMdfReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/AccSecurityMdfReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/AccSecurityMdfReq;->cache_userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->userInfo:LWUPSYNC/AccInfo;

    iget v0, p0, LWUPSYNC/AccSecurityMdfReq;->action:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/AccSecurityMdfReq;->action:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->bindMobile:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->verifyCode:Ljava/lang/String;

    iget-byte v0, p0, LWUPSYNC/AccSecurityMdfReq;->secLevel:B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LWUPSYNC/AccSecurityMdfReq;->secLevel:B

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->backupMobile:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LWUPSYNC/AccSecurityMdfReq;->action:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->bindMobile:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->verifyCode:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-byte v0, p0, LWUPSYNC/AccSecurityMdfReq;->secLevel:B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->backupMobile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/AccSecurityMdfReq;->backupMobile:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
