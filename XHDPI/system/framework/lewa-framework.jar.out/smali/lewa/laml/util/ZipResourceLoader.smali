.class public Llewa/laml/util/ZipResourceLoader;
.super Llewa/laml/ResourceLoader;
.source "ZipResourceLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZipResourceLoader"


# instance fields
.field private mInnerPath:Ljava/lang/String;

.field private mResourcePath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "zipPath"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0, v0}, Llewa/laml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "zipPath"
    .parameter "innerPath"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llewa/laml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "zipPath"
    .parameter "innerPath"
    .parameter "manifestName"

    .prologue
    .line 30
    invoke-direct {p0}, Llewa/laml/ResourceLoader;-><init>()V

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "empty zip path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    iput-object p1, p0, Llewa/laml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 34
    if-nez p2, :cond_1

    .line 35
    const-string p2, ""

    .line 36
    :cond_1
    iput-object p2, p0, Llewa/laml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    .line 37
    if-eqz p3, :cond_2

    .line 38
    iput-object p3, p0, Llewa/laml/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    .line 40
    :cond_2
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Llewa/laml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Llewa/laml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ZipResourceLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to init zip file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Llewa/laml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Llewa/laml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Llewa/laml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 54
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 55
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 4
    .parameter "path"
    .parameter "size"

    .prologue
    .line 58
    iget-object v1, p0, Llewa/laml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 60
    :try_start_0
    iget-object v1, p0, Llewa/laml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llewa/laml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 61
    .local v0, entry:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1

    .line 62
    if-eqz p2, :cond_0

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 64
    :cond_0
    iget-object v1, p0, Llewa/laml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v1

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resourceExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 73
    iget-object v0, p0, Llewa/laml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Llewa/laml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llewa/laml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Llewa/laml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    return-object v0
.end method
