.class public Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

.field private b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

.field private c:La/G;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e:I

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->g:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a([B)[B
    .locals 2

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->zip([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private d(I)La/u;
    .locals 3

    new-instance v0, La/u;

    invoke-direct {v0}, La/u;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, La/s;->g:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e:I

    iput v2, v1, La/s;->a:I

    const/16 v2, 0xc

    iput v2, v1, La/s;->b:I

    iput p1, v1, La/s;->i:I

    iput-object v1, v0, La/u;->a:La/s;

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, v0, La/u;->b:[B

    return-object v0
.end method

.method private e(I)La/u;
    .locals 3

    new-instance v0, La/u;

    invoke-direct {v0}, La/u;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, La/s;->g:Ljava/lang/String;

    const/16 v2, 0xd

    iput v2, v1, La/s;->b:I

    iput p1, v1, La/s;->i:I

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e:I

    iput v2, v1, La/s;->a:I

    iput-object v1, v0, La/u;->a:La/s;

    new-instance v1, La/g;

    invoke-direct {v1}, La/g;-><init>()V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->g:Ljava/util/ArrayList;

    iput-object v2, v1, La/g;->a:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {v1}, La/g;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a([B)[B

    move-result-object v1

    iput-object v1, v0, La/u;->b:[B

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d:I

    return-void
.end method

.method public a(La/u;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, La/u;->a:La/s;

    iget v1, v0, La/s;->b:I

    iget-object v2, p1, La/u;->b:[B

    if-eqz v2, :cond_0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->unZip([B)[B

    move-result-object v0

    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v0, La/z;

    invoke-direct {v0}, La/z;-><init>()V

    invoke-virtual {v0, v1}, La/z;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v1, v0, La/z;->b:La/J;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    iget v3, v0, La/z;->a:I

    iget v1, v1, La/J;->a:I

    iget-object v0, v0, La/z;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->a(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    const/16 v2, 0x3eb

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->i(I)V

    const-string v1, "SignalingProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unPackageSCReConnet() error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->g()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->unZip([B)[B

    move-result-object v0

    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v0, La/x;

    invoke-direct {v0}, La/x;-><init>()V

    invoke-virtual {v0, v1}, La/x;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    iget v2, v0, La/x;->a:I

    iget-object v0, v0, La/x;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SignalingProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unPackageSCGetClientMapRet() error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v3, v0, La/s;->g:Ljava/lang/String;

    :try_start_2
    iput-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->unZip([B)[B

    move-result-object v0

    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v2, La/E;

    invoke-direct {v2}, La/E;-><init>()V

    invoke-virtual {v2, v1}, La/E;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v0, v2, La/E;->c:La/v;

    if-eqz v0, :cond_2

    iget v4, v0, La/v;->a:I

    iget v5, v0, La/v;->b:I

    iget v6, v0, La/v;->c:I

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    iget v1, v2, La/E;->a:I

    iget v2, v2, La/E;->b:I

    invoke-interface/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->a(IILjava/lang/String;III)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    const/16 v2, 0x3ec

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->i(I)V

    const-string v1, "SignalingProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unPackageSCSyncInit() error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    iget v0, v0, La/s;->i:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->f(I)V

    goto/16 :goto_0

    :sswitch_4
    iget v0, v0, La/s;->i:I

    :try_start_3
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->unZip([B)[B

    move-result-object v1

    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v1, La/C;

    invoke-direct {v1}, La/C;-><init>()V

    invoke-virtual {v1, v2}, La/C;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    iget v3, v1, La/C;->a:I

    iget v4, v1, La/C;->b:I

    iget-object v1, v1, La/C;->c:Ljava/util/ArrayList;

    invoke-interface {v2, v0, v3, v4, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->a(IIILjava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    const/16 v2, 0x3f4

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->i(I)V

    const-string v1, "SignalingProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleSCStreamDataEndRet() error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    :try_start_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->unZip([B)[B

    move-result-object v0

    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v0, La/D;

    invoke-direct {v0}, La/D;-><init>()V

    invoke-virtual {v0, v1}, La/D;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v1, v0, La/D;->a:La/M;

    new-instance v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;-><init>()V

    iget v3, v0, La/D;->b:I

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->h(I)V

    iget v3, v0, La/D;->c:I

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->i(I)V

    iget v3, v0, La/D;->d:I

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->j(I)V

    iget v3, v0, La/D;->e:I

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->k(I)V

    iget v3, v0, La/D;->f:I

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->l(I)V

    iget v3, v0, La/D;->g:I

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->m(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server log add="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, La/D;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mod="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, La/D;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " del="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, La/D;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, La/D;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " invalid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, La/D;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fail="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, La/D;->e:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SignalingProcessor"

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    iget-object v1, v1, La/M;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->a(Ljava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    const/16 v2, 0x3ed

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->i(I)V

    const-string v1, "SignalingProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unPackageSCSyncEnd() error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    iget v0, v0, La/s;->i:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->g()V

    goto/16 :goto_0

    :sswitch_7
    :try_start_5
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->unZip([B)[B

    move-result-object v0

    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v0, La/A;

    invoke-direct {v0}, La/A;-><init>()V

    invoke-virtual {v0, v1}, La/A;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v0, v0, La/A;->a:La/J;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    iget v0, v0, La/J;->a:I

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->e(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    const/16 v2, 0x3f1

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->i(I)V

    const-string v1, "SignalingProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unPackageSCResetStream() error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->h()V

    goto/16 :goto_0

    :sswitch_9
    :try_start_6
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->unZip([B)[B

    move-result-object v0

    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v0, La/y;

    invoke-direct {v0}, La/y;-><init>()V

    invoke-virtual {v0, v1}, La/y;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v0, v0, La/y;->a:La/J;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    iget v0, v0, La/J;->a:I

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->g(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    const/16 v2, 0x3f0

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->i(I)V

    const-string v1, "SignalingProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unPackageSCGetStuffRet() error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    :try_start_7
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->g()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->unZip([B)[B

    move-result-object v0

    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v0, La/B;

    invoke-direct {v0}, La/B;-><init>()V

    invoke-virtual {v0, v1}, La/B;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    iget v2, v0, La/B;->a:I

    iget-object v0, v0, La/B;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->h(I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    const/16 v2, 0x7d1

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->i(I)V

    const-string v1, "SignalingProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unPackageSCServerAbnormal() error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v5, v6

    move v4, v6

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_5
        0x3f0 -> :sswitch_9
        0x3f1 -> :sswitch_7
        0x3f3 -> :sswitch_8
        0x3f4 -> :sswitch_4
        0x3f5 -> :sswitch_3
        0x3f6 -> :sswitch_6
        0x3f9 -> :sswitch_1
        0x7d1 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    if-nez v0, :cond_0

    new-instance v0, La/G;

    invoke-direct {v0}, La/G;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->d()S

    move-result v1

    iput-short v1, v0, La/G;->e:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    iput-short v2, v0, La/G;->r:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    iput-short v2, v0, La/G;->s:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->m()I

    move-result v1

    iput v1, v0, La/G;->q:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    iput-short v2, v0, La/G;->t:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->a()I

    move-result v1

    iput v1, v0, La/G;->a:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->f()S

    move-result v1

    iput-short v1, v0, La/G;->g:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->b()I

    move-result v1

    iput v1, v0, La/G;->b:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, La/G;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, La/G;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->e()S

    move-result v1

    iput-short v1, v0, La/G;->f:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, La/G;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    iput-short v2, v0, La/G;->k:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    iput v2, v0, La/G;->m:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    iput-short v2, v0, La/G;->l:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    iput v2, v0, La/G;->c:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->h()S

    move-result v1

    iput-short v1, v0, La/G;->i:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->g()S

    move-result v1

    iput-short v1, v0, La/G;->h:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->i()S

    move-result v1

    iput-short v1, v0, La/G;->j:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->c()S

    move-result v1

    iput-short v1, v0, La/G;->d:S

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->n()S

    move-result v1

    iput v1, v0, La/G;->u:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->o()S

    move-result v1

    iput v1, v0, La/G;->v:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->p()S

    move-result v1

    iput v1, v0, La/G;->w:I

    :cond_1
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e:I

    return-void
.end method

.method public c(I)La/u;
    .locals 14

    const/4 v0, 0x0

    const/16 v6, 0x3ee

    const/4 v13, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v1, La/u;

    invoke-direct {v1}, La/u;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;

    move-result-object v2

    const-string v3, ""

    iput-object v3, v2, La/s;->g:Ljava/lang/String;

    const/16 v3, 0x11

    iput v3, v2, La/s;->b:I

    iput v6, v2, La/s;->i:I

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->e()[B

    move-result-object v3

    iput-object v3, v2, La/s;->j:[B

    iget v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e:I

    iput v3, v2, La/s;->a:I

    new-instance v3, La/c;

    invoke-direct {v3}, La/c;-><init>()V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->s()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, La/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->q()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, La/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->p()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/accesslayer/a;->b(I)I

    move-result v4

    iput v4, v3, La/c;->c:I

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->x()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa2

    iput v4, v3, La/c;->d:I

    :goto_1
    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->y()I

    move-result v4

    iput v4, v3, La/c;->e:I

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->z()I

    move-result v4

    iput v4, v3, La/c;->f:I

    invoke-virtual {v3}, La/c;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->zip([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->g()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v2, v1, La/u;->a:La/s;

    iput-object v3, v1, La/u;->b:[B

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/16 v4, 0xa1

    iput v4, v3, La/c;->d:I

    goto :goto_1

    :pswitch_2
    new-instance v1, La/u;

    invoke-direct {v1}, La/u;-><init>()V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;

    move-result-object v3

    const-string v4, ""

    iput-object v4, v3, La/s;->g:Ljava/lang/String;

    const/16 v4, 0x12

    iput v4, v3, La/s;->b:I

    iput v6, v3, La/s;->i:I

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->e()[B

    move-result-object v4

    iput-object v4, v3, La/s;->j:[B

    iget v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e:I

    iput v4, v3, La/s;->a:I

    new-instance v4, La/d;

    invoke-direct {v4}, La/d;-><init>()V

    iput v2, v4, La/d;->a:I

    invoke-virtual {v4}, La/d;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->zip([B)[B

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->g()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v3, v1, La/u;->a:La/s;

    iput-object v2, v1, La/u;->b:[B

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_3
    new-instance v3, La/u;

    invoke-direct {v3}, La/u;-><init>()V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;

    move-result-object v4

    const-string v5, ""

    iput-object v5, v4, La/s;->g:Ljava/lang/String;

    iput v13, v4, La/s;->b:I

    iput v6, v4, La/s;->i:I

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->e()[B

    move-result-object v5

    iput-object v5, v4, La/s;->j:[B

    iget v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e:I

    iput v5, v4, La/s;->a:I

    new-instance v5, La/L;

    invoke-direct {v5}, La/L;-><init>()V

    new-instance v6, La/M;

    invoke-direct {v6}, La/M;-><init>()V

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->q()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, La/M;->a:Ljava/lang/String;

    iput-object v6, v5, La/L;->a:La/M;

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->r()I

    move-result v6

    iput v6, v5, La/L;->b:I

    new-instance v6, La/w;

    invoke-direct {v6}, La/w;-><init>()V

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->v()S

    move-result v7

    iput v7, v6, La/w;->a:I

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->w()S

    move-result v7

    iput v7, v6, La/w;->b:I

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    const/4 v7, 0x0

    iput v7, v6, La/w;->c:I

    new-instance v7, La/O;

    invoke-direct {v7}, La/O;-><init>()V

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, La/O;->c:J

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->i()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, La/O;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->m()S

    move-result v8

    iput-short v8, v7, La/O;->h:S

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->h()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, La/O;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->j()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, La/O;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->k()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, La/O;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->p()I

    move-result v8

    invoke-static {v8}, Lcom/tencent/qqpim/sdk/accesslayer/a;->b(I)I

    move-result v8

    iput v8, v7, La/O;->k:I

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->o()I

    move-result v8

    iput v8, v7, La/O;->j:I

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->n()S

    move-result v8

    iput-short v8, v7, La/O;->i:S

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->l()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, La/O;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    iput-object v0, v7, La/O;->g:Ljava/util/ArrayList;

    iput-short v2, v7, La/O;->m:S

    iput v1, v7, La/O;->l:I

    new-instance v8, La/k;

    invoke-direct {v8}, La/k;-><init>()V

    iput-object v5, v8, La/k;->a:La/L;

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->s()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, La/k;->b:Ljava/lang/String;

    iput-object v6, v8, La/k;->c:La/w;

    iput-object v7, v8, La/k;->d:La/O;

    iput v2, v8, La/k;->f:I

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->B()I

    move-result v5

    if-ne v5, v2, :cond_2

    new-instance v5, La/K;

    invoke-direct {v5}, La/K;-><init>()V

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->C()I

    move-result v6

    iput v6, v5, La/K;->a:I

    invoke-virtual {v5}, La/K;->toByteArray()[B

    move-result-object v5

    iput-object v5, v8, La/k;->e:[B

    :cond_2
    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->B()I

    move-result v5

    if-ne v5, v13, :cond_4

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->A()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v6, La/N;

    invoke-direct {v6}, La/N;-><init>()V

    invoke-virtual {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->c()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v7, v9

    iput v7, v6, La/N;->b:I

    invoke-virtual {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->a()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v6, La/N;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->b()I

    move-result v5

    if-nez v5, :cond_5

    move v1, v2

    :cond_3
    :goto_2
    iput v1, v6, La/N;->a:I

    invoke-virtual {v6}, La/N;->toByteArray()[B

    move-result-object v1

    iput-object v1, v8, La/k;->e:[B

    iput v13, v8, La/k;->f:I

    :cond_4
    invoke-virtual {v8}, La/k;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a([B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v4, v3, La/u;->a:La/s;

    iput-object v1, v3, La/u;->b:[B

    move-object v0, v3

    goto/16 :goto_0

    :cond_5
    if-ne v5, v1, :cond_6

    const/4 v1, 0x3

    goto :goto_2

    :cond_6
    if-eq v5, v2, :cond_3

    move v1, v2

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d(I)La/u;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d(I)La/u;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d(I)La/u;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    invoke-direct {p0, v13}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d(I)La/u;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    const/16 v0, 0x3ef

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d(I)La/u;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e(I)La/u;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e(I)La/u;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e(I)La/u;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    invoke-direct {p0, v13}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e(I)La/u;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, La/u;

    invoke-direct {v0}, La/u;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, La/s;->g:Ljava/lang/String;

    const/4 v2, 0x5

    iput v2, v1, La/s;->b:I

    iput v6, v1, La/s;->i:I

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e:I

    iput v2, v1, La/s;->a:I

    new-instance v2, La/i;

    invoke-direct {v2}, La/i;-><init>()V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    iput-object v3, v2, La/i;->a:La/G;

    invoke-virtual {v2}, La/i;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a([B)[B

    move-result-object v2

    iput-object v1, v0, La/u;->a:La/s;

    iput-object v2, v0, La/u;->b:[B

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, La/u;

    invoke-direct {v0}, La/u;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, La/s;->g:Ljava/lang/String;

    const/16 v2, 0xe

    iput v2, v1, La/s;->b:I

    const/16 v2, 0x3ed

    iput v2, v1, La/s;->i:I

    new-instance v2, La/h;

    invoke-direct {v2}, La/h;-><init>()V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->c:La/G;

    iput-object v3, v2, La/h;->a:La/G;

    invoke-virtual {v2}, La/h;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a([B)[B

    move-result-object v2

    iput-object v1, v0, La/u;->a:La/s;

    iput-object v2, v0, La/u;->b:[B

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->m()I

    move-result v1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d:I

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d:I

    :goto_3
    const-string v2, "SignalingProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getReConnetPackage() mReceiveSeqNo = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " netLatesSeqNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, La/u;

    invoke-direct {v1}, La/u;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;

    move-result-object v2

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, La/s;->g:Ljava/lang/String;

    const/4 v3, 0x3

    iput v3, v2, La/s;->b:I

    const/16 v3, 0x3ed

    iput v3, v2, La/s;->i:I

    new-instance v3, La/f;

    invoke-direct {v3}, La/f;-><init>()V

    new-instance v4, La/J;

    invoke-direct {v4}, La/J;-><init>()V

    iput v0, v4, La/J;->a:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->p()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->b(I)I

    move-result v0

    iput v0, v3, La/f;->b:I

    iput-object v4, v3, La/f;->a:La/J;

    invoke-virtual {v3}, La/f;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a([B)[B

    move-result-object v0

    iput-object v2, v1, La/u;->a:La/s;

    iput-object v0, v1, La/u;->b:[B

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_3

    :pswitch_10
    new-instance v0, La/u;

    invoke-direct {v0}, La/u;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, La/s;->g:Ljava/lang/String;

    const/16 v3, 0x8

    iput v3, v1, La/s;->b:I

    const/16 v3, 0x3ed

    iput v3, v1, La/s;->i:I

    iput-object v1, v0, La/u;->a:La/s;

    new-array v1, v2, [B

    iput-object v1, v0, La/u;->b:[B

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/a;->m()I

    move-result v0

    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d:I

    if-lt v1, v0, :cond_8

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->d:I

    :cond_8
    const-string v1, "SignalingProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCSGetStuffRetPackage:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, La/u;

    invoke-direct {v1}, La/u;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;

    move-result-object v2

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, La/s;->g:Ljava/lang/String;

    const/16 v3, 0xb

    iput v3, v2, La/s;->b:I

    const/16 v3, 0x3ed

    iput v3, v2, La/s;->i:I

    new-instance v3, La/e;

    invoke-direct {v3}, La/e;-><init>()V

    new-instance v4, La/J;

    invoke-direct {v4}, La/J;-><init>()V

    iput v0, v4, La/J;->a:I

    iput-object v4, v3, La/e;->a:La/J;

    invoke-virtual {v3}, La/e;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a([B)[B

    move-result-object v0

    iput-object v2, v1, La/u;->a:La/s;

    iput-object v0, v1, La/u;->b:[B

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, La/u;

    invoke-direct {v0}, La/u;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, La/s;->g:Ljava/lang/String;

    const/16 v3, 0x10

    iput v3, v1, La/s;->b:I

    iput v6, v1, La/s;->i:I

    iget v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->e:I

    iput v3, v1, La/s;->a:I

    new-instance v3, La/j;

    invoke-direct {v3}, La/j;-><init>()V

    iput v2, v3, La/j;->a:I

    invoke-virtual {v3}, La/j;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/b;->a([B)[B

    move-result-object v2

    iput-object v1, v0, La/u;->a:La/s;

    iput-object v2, v0, La/u;->b:[B

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method
