.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Ljava/util/Map;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/StringBuilder;


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

    const-string v1, "/.qqpim/map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->getInternalDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/qqpim/map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a([B)I
    .locals 3

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x100

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileReader;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->getFileReader(Ljava/io/File;)Ljava/io/FileReader;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0xff

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, -0x100

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x18

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save2File"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "MapModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "writeToFile() t = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "MapModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "openFile() e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->getBufferedReader(Ljava/io/File;)Ljava/io/BufferedReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    const-string v3, "MapModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "save2File"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    throw v1

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "MapModel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delFile() file : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/util/HashMap;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_contact"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    if-nez v2, :cond_1

    :try_start_1
    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    if-nez v4, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_6
    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    new-instance v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    invoke-direct {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    :goto_3
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    iput v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    :goto_4
    const/4 v6, 0x2

    aget-object v6, v4, v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    :goto_5
    const/4 v6, 0x3

    aget-object v6, v4, v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    :goto_6
    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_7
    :try_start_7
    const-string v4, "MapModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readContactMapFromFileOld()"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x0

    :try_start_9
    aget-object v6, v4, v6

    iput-object v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_8
    if-eqz v3, :cond_7

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_8
    :goto_9
    throw v0

    :cond_9
    const/4 v6, 0x1

    :try_start_b
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    goto :goto_4

    :cond_a
    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    goto :goto_5

    :cond_b
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    const/4 v6, 0x3

    aget-object v6, v4, v6

    iput-object v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_6

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_8

    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_7

    :catch_6
    move-exception v1

    move-object v3, v0

    goto :goto_7
.end method

.method private f()Ljava/util/Map;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    if-nez v2, :cond_1

    :try_start_1
    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileReader;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "MapModel"

    const-string v3, "getContactMap strmap == null"

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v3, v2

    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7

    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    if-nez v4, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_6
    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    new-instance v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    invoke-direct {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    :goto_3
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    iput v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    :goto_4
    const/4 v6, 0x2

    aget-object v6, v4, v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->c:Ljava/lang/String;

    :goto_5
    const/4 v6, 0x3

    aget-object v6, v4, v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    :goto_6
    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_7
    :try_start_7
    const-string v4, "MapModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readGroupMapFromFileOld()"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x0

    :try_start_9
    aget-object v6, v4, v6

    iput-object v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_8
    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_8
    :goto_9
    throw v0

    :cond_9
    const/4 v6, 0x1

    :try_start_b
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    goto :goto_4

    :cond_a
    const/4 v6, 0x2

    aget-object v6, v4, v6

    iput-object v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->c:Ljava/lang/String;

    goto :goto_5

    :cond_b
    const/4 v6, 0x3

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_6

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_8

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_8

    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_7

    :catch_6
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    goto :goto_7

    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_7
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 13

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a:Ljava/util/HashMap;

    if-nez v0, :cond_6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_contact_1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v2

    sget-object v4, Lcom/tencent/qqpim/sdk/interfaces/a;->E:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v4

    :cond_1
    if-nez v4, :cond_4

    :try_start_1
    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->E:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a:Ljava/util/HashMap;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a:Ljava/util/HashMap;

    const/4 v0, 0x4

    new-array v7, v0, [B

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-virtual {v4, v7, v0, v2}, Ljava/io/FileInputStream;->read([BII)I

    move v0, v1

    :cond_5
    const/4 v2, 0x0

    const/4 v5, 0x4

    invoke-virtual {v4, v7, v2, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_7

    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a:Ljava/util/HashMap;

    goto :goto_0

    :cond_7
    :try_start_5
    invoke-static {v7}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a([B)I

    move-result v2

    new-array v5, v2, [B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v2

    new-instance v9, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v9, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;-><init>()V

    move v5, v1

    :goto_2
    if-ge v5, v10, :cond_5

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v11, 0xa

    if-ne v6, v11, :cond_9

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v0, v3

    :cond_8
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    iput-object v0, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v8, v2, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v2, v0

    move v0, v1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v11, 0x9

    if-ne v6, v11, :cond_f

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "null"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move-object v6, v3

    :cond_a
    packed-switch v0, :pswitch_data_0

    :goto_4
    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {v8, v6, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_0
    iput-object v6, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v4

    :goto_5
    :try_start_6
    const-string v2, "MapModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readContactMapFromFile()"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_b

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_b
    :goto_6
    move-object v0, v3

    goto/16 :goto_0

    :pswitch_1
    if-nez v6, :cond_d

    const/4 v6, 0x0

    :try_start_8
    iput v6, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v4, :cond_c

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_c
    :goto_8
    throw v0

    :cond_d
    :try_start_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    goto :goto_4

    :pswitch_2
    if-nez v6, :cond_e

    const-wide/16 v11, 0x0

    iput-wide v11, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    goto :goto_4

    :cond_e
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    goto :goto_4

    :cond_f
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_synckey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "MapModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveSyncKey() e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 9

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_contact_1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b(Ljava/lang/String;)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a(I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->E:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_contact"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_contact"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->E:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_6
    :try_start_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    iget-object v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    const-string v6, "null\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    const-string v6, "null\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget-wide v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    const-string v6, "null\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget-object v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-boolean v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    if-nez v5, :cond_c

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    const-string v5, "null\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v0, v2, 0x1

    const/16 v2, 0x64

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v2, v3

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    const-string v2, "MapModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateContactMap() e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_9
    :try_start_7
    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_a

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_a
    :goto_6
    throw v0

    :cond_b
    :try_start_9
    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_c
    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_5

    :catch_4
    move-exception v1

    goto :goto_6

    :cond_d
    move v2, v0

    goto/16 :goto_1
.end method

.method public final b()Ljava/util/Map;
    .locals 13

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b:Ljava/util/Map;

    if-nez v0, :cond_6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_group_1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v2

    sget-object v4, Lcom/tencent/qqpim/sdk/interfaces/a;->E:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v4

    :cond_1
    if-nez v4, :cond_4

    :try_start_1
    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->F:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MapModel"

    const-string v1, "getContactMap strmap == null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v7, v0, [B

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-virtual {v4, v7, v0, v2}, Ljava/io/FileInputStream;->read([BII)I

    move v0, v1

    :cond_5
    const/4 v2, 0x0

    const/4 v5, 0x4

    invoke-virtual {v4, v7, v2, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_7

    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b:Ljava/util/Map;

    goto :goto_0

    :cond_7
    :try_start_5
    invoke-static {v7}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a([B)I

    move-result v2

    new-array v5, v2, [B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v2

    new-instance v9, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v9, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;-><init>()V

    move v5, v1

    :goto_2
    if-ge v5, v10, :cond_5

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v11, 0xa

    if-ne v6, v11, :cond_c

    const/4 v6, 0x3

    if-eq v0, v6, :cond_8

    move v0, v1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    move-object v0, v3

    :cond_a
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    iget-object v0, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b:Ljava/util/Map;

    iget-object v6, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v8, v2, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v2, v0

    move v0, v1

    goto :goto_3

    :cond_c
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v11, 0x9

    if-ne v6, v11, :cond_10

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "null"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    move-object v6, v3

    :cond_d
    packed-switch v0, :pswitch_data_0

    :goto_4
    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {v8, v6, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_0
    iput-object v6, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v4

    :goto_5
    :try_start_6
    const-string v2, "MapModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readGroupMapFromFile()"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_e

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_e
    :goto_6
    move-object v0, v3

    goto/16 :goto_0

    :pswitch_1
    :try_start_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v4, :cond_f

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_f
    :goto_8
    throw v0

    :pswitch_2
    :try_start_a
    iput-object v6, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->c:Ljava/lang/String;

    goto :goto_4

    :cond_10
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Ljava/util/Map;)V
    .locals 7

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_group_1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->b(Ljava/lang/String;)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a(I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->a(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->F:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_group"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_group"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->F:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    const-string v4, "null\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    const-string v4, "null\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->c:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    const-string v4, "null\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget-wide v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    const-string v3, "null\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    const-string v2, "MapModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateGroupMap() t = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_7
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    :goto_5
    throw v0

    :cond_7
    :try_start_9
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_9
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->f:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public final c()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_contact_1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_contact_1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_contact"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_group_1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_group_1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_group"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_synckey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
