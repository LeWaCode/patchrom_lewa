.class public abstract Lcom/tencent/qqpim/sdk/apps/localsync/a/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:J

.field public static e:Z


# instance fields
.field protected f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

.field protected g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

.field protected h:I

.field private i:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/qqpim/backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/qqpim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->b:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->d:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->i:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->h:I

    return-void
.end method

.method private static a(Ljava/util/LinkedList;ILjava/lang/String;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;IIZ)I
    .locals 7

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    move v4, v0

    move v1, v0

    :goto_1
    if-lt v4, v5, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->encryptBytes([B[B)[B

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v6, v0

    invoke-static {v6}, Lcom/tencent/wscl/TextUtil;->intToFourByte(I)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    if-eqz p6, :cond_4

    add-int v1, v0, p4

    invoke-interface {p3, p1, v1, p5}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProgressChange(III)V

    :cond_3
    :goto_2
    sget-boolean v1, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v1, :cond_7

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    const/4 v1, -0x2

    goto :goto_0

    :cond_4
    add-int v1, v0, p4

    add-int v6, v5, p4

    :try_start_5
    invoke-interface {p3, p1, v1, v6}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProgressChange(III)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v3

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_5
    move v1, v2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_6
    move v0, v1

    :cond_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_8

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_8
    :goto_7
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method protected static a(Ljava/util/List;I)Ljava/util/LinkedList;
    .locals 6

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move v2, v3

    :goto_1
    if-lt v2, v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-virtual {v4, v0}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeVcard4LocalSync(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method protected static a([Lcom/tencent/qqpim/sdk/interfaces/IEntity;I)Ljava/util/LinkedList;
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p1}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v3

    array-length v4, p0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, p0, v2

    invoke-virtual {v3, v5}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeVcard4LocalSync(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    aput-object v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final a([B)[B
    .locals 1

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->encryptBytes([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->decryptBytesToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected final a(Ljava/util/LinkedList;ILjava/lang/String;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;I)I
    .locals 7

    const/16 v5, 0x64

    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a(Ljava/util/LinkedList;ILjava/lang/String;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;IIZ)I

    move-result v0

    return v0
.end method

.method protected final a(Ljava/util/LinkedList;ILjava/lang/String;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;II)I
    .locals 7

    const/4 v1, 0x1

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a(Ljava/util/LinkedList;ILjava/lang/String;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;IIZ)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;IIJI)V
    .locals 10

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p4

    move/from16 v4, p7

    move-object v5, p2

    move v6, p1

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;-><init>(Lcom/tencent/qqpim/sdk/apps/localsync/a/e;IIILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;IJ)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v9, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->i:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;IIJI)V
    .locals 10

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/f;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p7

    move-object v5, p2

    move v6, p1

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/tencent/qqpim/sdk/apps/localsync/a/f;-><init>(Lcom/tencent/qqpim/sdk/apps/localsync/a/e;IIILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;IJ)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v9, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->i:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final b()V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->h:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
