.class public Lcom/tencent/qqpim/sdk/accesslayer/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private final g:Ljava/util/Queue;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->c:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->d:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->e:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->f:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->j()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2ee0 -> :sswitch_2
        0x36b0 -> :sswitch_1
        0x3a98 -> :sswitch_4
        0x3e80 -> :sswitch_3
        0x4e20 -> :sswitch_2
        0x5208 -> :sswitch_2
        0x55f0 -> :sswitch_2
        0x80eb -> :sswitch_4
    .end sparse-switch
.end method

.method public static a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;)La/s;
    .locals 5

    const/4 v0, 0x1

    new-instance v1, La/s;

    invoke-direct {v1}, La/s;-><init>()V

    if-eqz p0, :cond_1

    new-instance v2, La/a;

    invoke-direct {v2}, La/a;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->t()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, La/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->u()I

    move-result v3

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->a()I

    move-result v4

    if-ne v3, v4, :cond_2

    :cond_0
    :goto_0
    iput v0, v2, La/a;->b:I

    iput-object v2, v1, La/s;->e:La/a;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, La/s;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->b()B

    move-result v0

    iput-byte v0, v1, La/s;->c:B

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, La/s;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->c()B

    move-result v0

    iput-byte v0, v1, La/s;->d:B

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->u()I

    move-result v3

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->a()I

    move-result v4

    if-ne v3, v4, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->u()I

    move-result v3

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->a()I

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->u()I

    move-result v3

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->a()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;

    invoke-direct {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;

    invoke-direct {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;

    invoke-direct {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/e;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(La/u;[B)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "DhwPackageHelper"

    const-string v2, "getCommandPackage() p = null"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, La/u;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "DhwPackageHelper"

    const-string v2, "getCommandPackage() bytes = null"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    iget-object v1, p0, La/u;->a:La/s;

    iget v1, v1, La/s;->a:I

    if-nez v1, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    :cond_2
    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    iget-object v3, p0, La/u;->a:La/s;

    iget v3, v3, La/s;->a:I

    invoke-direct {v1, v3, v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;-><init>(I[BLcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->getBufferedReader(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getBytesFromBase64Str(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->b([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LocalSyncFileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readContentFromFile():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    const-string v3, "LocalSyncFileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readContentFromFile()"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "LocalSyncFileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readContentFromFile():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "LocalSyncFileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readContentFromFile():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9

    const/4 v2, 0x0

    const-string v0, "android.content.pm.PackageParser"

    const-string v1, "android.content.res.AssetManager"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "ANDROID_LAB"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pkgParser:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v5}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/io/File;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/util/DisplayMetrics;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const-string v7, "parsePackage"

    invoke-virtual {v0, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "applicationInfo"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    const-string v3, "ANDROID_LAB"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pkg:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const-string v6, "addAssetPath"

    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const-class v6, Landroid/content/res/Resources;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    const-string v5, "ANDROID_LAB"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "label="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v5, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    const-string v0, "property"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    :goto_1
    if-lt v2, v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    aget-object v4, v0, v2

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyWithTrim(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/accesslayer/a;->c(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;

    move-result-object v4

    if-eqz v4, :cond_3

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setBackupFilePath(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v0, p1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Ljava/util/List;Ljava/io/File;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/io/File;Ljava/lang/String;Z)Ljava/util/List;
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    aget-object v2, v1, v0

    invoke-static {p0, v2, p2, p3}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Ljava/util/List;Ljava/io/File;Ljava/lang/String;Z)Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_4

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v0, ""

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static a(Ljava/util/Queue;)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gez v0, :cond_2

    :cond_0
    const-string v0, "DhwConnectStrategy"

    const-string v1, "srv list empty"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    if-eqz v0, :cond_3

    const-string v2, "DhwConnectStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "printSrvList addr:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " port:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/a;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_0
    move v0, v3

    :goto_0
    if-eqz p0, :cond_d

    if-eqz v0, :cond_c

    const-string v1, ""

    const-string v2, ""

    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    if-eqz v2, :cond_2

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v3

    :goto_2
    return v0

    :cond_3
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCOUNTTYPE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v8}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCOUNTNAME"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v0, v8}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    :goto_3
    invoke-interface {p0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v4

    :goto_4
    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_2

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v6, v0

    if-ne v6, v8, :cond_7

    aget-object v6, v0, v3

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    aget-object v6, v0, v4

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_4

    :cond_9
    aget-object v6, v0, v3

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    aget-object v6, v0, v4

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_4

    :cond_a
    aget-object v6, v0, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_4

    :cond_b
    move v0, v4

    goto/16 :goto_2

    :cond_c
    move v0, v3

    goto/16 :goto_2

    :cond_d
    move v0, v4

    goto/16 :goto_2

    :cond_e
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_3

    :cond_f
    move v0, v4

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyWithTrim(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyWithTrim(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_3
    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v5

    :goto_4
    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    :goto_5
    throw v0

    :catch_1
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/qqpim/sdk/sync/datasync/b;Ljava/util/ArrayList;I)[B
    .locals 8

    const/16 v7, 0x280

    const/16 v6, 0x100

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getLanguageID()S

    move-result v5

    invoke-direct/range {v0 .. v5}, LWUPSYNC/AccInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    new-instance v1, LWUPSYNC/PhotoReq;

    invoke-direct {v1}, LWUPSYNC/PhotoReq;-><init>()V

    iput-object p2, v1, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    iput-object v0, v1, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    new-instance v0, LWUPSYNC/DevInf;

    invoke-direct {v0}, LWUPSYNC/DevInf;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LWUPSYNC/DevInf;->imei:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getImsi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LWUPSYNC/DevInf;->imsi:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getManufaturer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LWUPSYNC/DevInf;->manufactor:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getModel()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LWUPSYNC/DevInf;->model:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LWUPSYNC/DevInf;->system:Ljava/lang/String;

    iput-object v0, v1, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    new-instance v0, LWUPSYNC/PhotoSpec;

    invoke-direct {v0}, LWUPSYNC/PhotoSpec;-><init>()V

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionLargerOrEquals4_0()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-short v7, v0, LWUPSYNC/PhotoSpec;->height:S

    iput-short v7, v0, LWUPSYNC/PhotoSpec;->wide:S

    :goto_0
    iput-object v0, v1, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    iput p3, v1, LWUPSYNC/PhotoReq;->syncType:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iput-short v6, v0, LWUPSYNC/PhotoSpec;->height:S

    iput-short v6, v0, LWUPSYNC/PhotoSpec;->wide:S

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v2, "wupsync"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v2, "photoReq"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v2, "req"

    invoke-virtual {v0, v2, v1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->encrypt([B)[B

    move-result-object v0

    goto :goto_1
.end method

.method public static a(IILjava/util/List;)[Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    div-int v3, v1, p0

    rem-int v0, v1, p0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    add-int/2addr v0, v3

    if-eq p1, v0, :cond_3

    move v0, p0

    :goto_2
    new-array v1, v0, [Ljava/lang/String;

    add-int/lit8 v0, p1, -0x1

    mul-int/2addr v0, p0

    array-length v3, v1

    add-int v5, v0, v3

    const-string v3, "SMSUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "getIDListByPage,ids.length="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "lengthbegin="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",end="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    :goto_3
    if-lt v4, v5, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    rem-int v0, v1, p0

    if-nez v0, :cond_4

    move v0, p0

    goto :goto_2

    :cond_4
    rem-int v0, v1, p0

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    add-int/lit8 v0, v4, 0x1

    move v2, v3

    move v4, v0

    goto :goto_3
.end method

.method public static b(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, p0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne v1, p0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v4, v1

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/qqpim/sdk/accesslayer/a;->b(Ljava/lang/String;)Z

    :cond_2
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "LocalSyncFileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delAllFiles filepath="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x8

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyWithTrim(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v2, v3

    if-eqz v2, :cond_0

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_3

    move v2, v1

    :goto_1
    const/4 v5, 0x2

    if-gt v2, v5, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setVersion(I)V

    :goto_2
    if-ge v1, v4, :cond_0

    aget-object v2, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TIME"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setTimeStamp(J)V

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VERSION"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const-string v5, "CONTACT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setContactCount(I)V

    goto :goto_3

    :cond_6
    const-string v5, "SMS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setSmsCount(I)V

    goto :goto_3

    :cond_7
    const-string v5, "CALLLOG"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setCalllogCount(I)V

    goto :goto_3

    :cond_8
    const-string v5, "SOFTWARE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setSoftwareCount(I)V

    goto :goto_3
.end method

.method public static e()Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/sdk/interfaces/a;->b:Lcom/tencent/qqpim/sdk/interfaces/a;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tencent/qqpim/sdk/interfaces/a;->c:Lcom/tencent/qqpim/sdk/interfaces/a;

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v3}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getBytesFromBase64Str(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->getSubKeyFromIMEI()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->decryptBytesToString([B[B)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getBytesFromBase64Str(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->getSubKeyFromIMEI()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->decryptBytesToString([B[B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    array-length v4, v3

    array-length v5, v2

    if-ne v4, v5, :cond_0

    if-lez v4, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    aget-object v5, v3, v0

    aget-object v6, v2, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ";"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static f()[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 2

    const/16 v0, 0x10

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "SMSUtil"

    const-string v1, "getSMSIDs begin"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    sget-object v3, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    const-string v3, "SMSUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSMSIDs end, time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static h()Z
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/SDCardUtil;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i()S
    .locals 6

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v2, 0x1

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    move v0, v3

    goto :goto_0

    :pswitch_2
    move v0, v3

    goto :goto_0

    :pswitch_3
    move v0, v3

    goto :goto_0

    :pswitch_4
    move v0, v4

    goto :goto_0

    :pswitch_5
    move v0, v4

    goto :goto_0

    :pswitch_6
    move v0, v4

    goto :goto_0

    :pswitch_7
    move v0, v4

    goto :goto_0

    :pswitch_8
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private j()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->c:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->d:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->e:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x36b0

    const/16 v5, 0x1f90

    const/16 v2, 0xf

    const/4 v0, 0x0

    iput v2, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->f:I

    const-string v1, "DhwConnectStrategy"

    const-string v3, "initSrvListFromConfig"

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->a()V

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "DhwConnectStrategy"

    const-string v1, "initDefaultSrvList"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/libs/netengine/c;->a()Lcom/tencent/qqpim/sdk/libs/netengine/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/b;->a()I

    move-result v0

    if-nez v0, :cond_7

    iput v5, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->d:I

    iput v6, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->e:I

    :goto_1
    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->isDebugServer()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "119.147.8.117"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->a:Ljava/lang/String;

    iput-object v7, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->b:Ljava/lang/String;

    iput-object v7, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->c:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->c:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->d:I

    iget v4, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->e:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    invoke-direct {v5, v0, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;-><init>(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    invoke-direct {v5, v0, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    invoke-interface {v0, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    invoke-interface {v5, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    invoke-direct {v0, v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    invoke-direct {v0, v2, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Ljava/util/Queue;)V

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez v3, :cond_6

    move v0, v2

    :goto_4
    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->f:I

    const-string v2, "DhwConnectStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initSrvListFromConfig conntime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/NetTypeUtil;->getNetType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->f()I

    move-result v0

    goto :goto_4

    :pswitch_0
    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->f()I

    move-result v0

    goto :goto_4

    :pswitch_1
    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->d()I

    move-result v0

    goto :goto_4

    :pswitch_2
    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->e()I

    move-result v0

    goto :goto_4

    :cond_7
    iput v6, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->d:I

    iput v5, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->e:I

    goto/16 :goto_1

    :cond_8
    packed-switch v0, :pswitch_data_1

    const-string v0, "14.17.19.169"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->a:Ljava/lang/String;

    const-string v0, "120.196.210.24"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->b:Ljava/lang/String;

    const-string v0, "112.90.140.218"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->c:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_3
    const-string v0, "120.196.210.24"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->a:Ljava/lang/String;

    const-string v0, "14.17.19.169"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->b:Ljava/lang/String;

    const-string v0, "112.90.140.218"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->c:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "14.17.19.169"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->a:Ljava/lang/String;

    const-string v0, "120.196.210.24"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->b:Ljava/lang/String;

    const-string v0, "112.90.140.218"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->c:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_5
    const-string v0, "112.90.140.218"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->a:Ljava/lang/String;

    const-string v0, "14.17.19.169"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->b:Ljava/lang/String;

    const-string v0, "120.196.210.24"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->c:Ljava/lang/String;

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->j()V

    return-void
.end method

.method public c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/a;->f:I

    return v0
.end method
