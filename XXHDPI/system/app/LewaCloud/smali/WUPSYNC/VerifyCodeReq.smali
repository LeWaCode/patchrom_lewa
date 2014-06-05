.class public final LWUPSYNC/VerifyCodeReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_fun:I

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public fun:I

.field public mobile:Ljava/lang/String;

.field public userInfo:LWUPSYNC/AccInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/VerifyCodeReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/VerifyCodeReq;->mobile:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/VerifyCodeReq;->fun:I

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/VerifyCodeReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/VerifyCodeReq;->mobile:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/VerifyCodeReq;->fun:I

    iput-object p1, p0, LWUPSYNC/VerifyCodeReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, p0, LWUPSYNC/VerifyCodeReq;->mobile:Ljava/lang/String;

    iput p3, p0, LWUPSYNC/VerifyCodeReq;->fun:I

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/VerifyCodeReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/VerifyCodeReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/VerifyCodeReq;->cache_userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/VerifyCodeReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/VerifyCodeReq;->mobile:Ljava/lang/String;

    iget v0, p0, LWUPSYNC/VerifyCodeReq;->fun:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/VerifyCodeReq;->fun:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/VerifyCodeReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/VerifyCodeReq;->mobile:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LWUPSYNC/VerifyCodeReq;->fun:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
