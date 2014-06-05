.class public final LWUPSYNC/GetUserIdentityResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_result:I


# instance fields
.field public hasPimPwd:Z

.field public needCheckPim:Z

.field public r2:Ljava/lang/String;

.field public result:I

.field public t3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/GetUserIdentityResp;->result:I

    iput-boolean v1, p0, LWUPSYNC/GetUserIdentityResp;->hasPimPwd:Z

    iput-boolean v1, p0, LWUPSYNC/GetUserIdentityResp;->needCheckPim:Z

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetUserIdentityResp;->r2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetUserIdentityResp;->t3:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/GetUserIdentityResp;->result:I

    iput-boolean v1, p0, LWUPSYNC/GetUserIdentityResp;->hasPimPwd:Z

    iput-boolean v1, p0, LWUPSYNC/GetUserIdentityResp;->needCheckPim:Z

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetUserIdentityResp;->r2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GetUserIdentityResp;->t3:Ljava/lang/String;

    iput p1, p0, LWUPSYNC/GetUserIdentityResp;->result:I

    iput-boolean p2, p0, LWUPSYNC/GetUserIdentityResp;->hasPimPwd:Z

    iput-boolean p3, p0, LWUPSYNC/GetUserIdentityResp;->needCheckPim:Z

    iput-object p4, p0, LWUPSYNC/GetUserIdentityResp;->r2:Ljava/lang/String;

    iput-object p5, p0, LWUPSYNC/GetUserIdentityResp;->t3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/GetUserIdentityResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/GetUserIdentityResp;->result:I

    iget-boolean v0, p0, LWUPSYNC/GetUserIdentityResp;->hasPimPwd:Z

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, LWUPSYNC/GetUserIdentityResp;->hasPimPwd:Z

    iget-boolean v0, p0, LWUPSYNC/GetUserIdentityResp;->needCheckPim:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, LWUPSYNC/GetUserIdentityResp;->needCheckPim:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetUserIdentityResp;->r2:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GetUserIdentityResp;->t3:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/GetUserIdentityResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-boolean v0, p0, LWUPSYNC/GetUserIdentityResp;->hasPimPwd:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    iget-boolean v0, p0, LWUPSYNC/GetUserIdentityResp;->needCheckPim:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    iget-object v0, p0, LWUPSYNC/GetUserIdentityResp;->r2:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/GetUserIdentityResp;->t3:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    return-void
.end method
