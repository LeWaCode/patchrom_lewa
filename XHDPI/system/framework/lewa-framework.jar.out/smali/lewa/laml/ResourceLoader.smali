.class public abstract Llewa/laml/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# static fields
.field private static final IMAGES_FOLDER_NAME:Ljava/lang/String; = "images"

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceLoader"

.field protected static final MANIFEST_FILE_NAME:Ljava/lang/String; = "manifest.xml"


# instance fields
.field protected mLanguageCountrySuffix:Ljava/lang/String;

.field protected mLanguageSuffix:Ljava/lang/String;

.field protected mManifestName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "manifest.xml"

    iput-object v0, p0, Llewa/laml/ResourceLoader;->mManifestName:Ljava/lang/String;

    return-void
.end method

.method private getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"
    .parameter "folder"

    .prologue
    .line 38
    iget-object v1, p0, Llewa/laml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llewa/laml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0, v0}, Llewa/laml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    iget-object v1, p0, Llewa/laml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llewa/laml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .restart local v0       #path:Ljava/lang/String;
    invoke-virtual {p0, v0}, Llewa/laml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    .end local v0           #path:Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .restart local v0       #path:Ljava/lang/String;
    invoke-virtual {p0, v0}, Llewa/laml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    .end local v0           #path:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Llewa/laml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 54
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 55
    goto :goto_0
.end method


# virtual methods
.method public getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Llewa/laml/ResourceManager$BitmapInfo;
    .locals 8
    .parameter "src"
    .parameter "opts"

    .prologue
    const/4 v5, 0x0

    .line 59
    const-string v6, "images"

    invoke-direct {p0, p1, v6}, Llewa/laml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 62
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v4}, Llewa/laml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 63
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 64
    .local v3, padding:Landroid/graphics/Rect;
    invoke-static {v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 65
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 73
    if-eqz v2, :cond_0

    .line 75
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 80
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #padding:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v5

    .line 67
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #padding:Landroid/graphics/Rect;
    :cond_1
    :try_start_2
    new-instance v6, Llewa/laml/ResourceManager$BitmapInfo;

    invoke-direct {v6, v0, v3}, Llewa/laml/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    if-eqz v2, :cond_2

    .line 75
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_1
    move-object v5, v6

    .line 77
    goto :goto_0

    .line 68
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #padding:Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v6, "ResourceLoader"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    if-eqz v2, :cond_0

    .line 75
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v6

    goto :goto_0

    .line 70
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 71
    .local v1, e:Ljava/lang/Exception;
    :try_start_6
    const-string v6, "ResourceLoader"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 73
    if-eqz v2, :cond_0

    .line 75
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 76
    :catch_3
    move-exception v6

    goto :goto_0

    .line 73
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    .line 75
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 77
    :cond_3
    :goto_2
    throw v5

    .line 76
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #padding:Landroid/graphics/Rect;
    :catch_4
    move-exception v6

    goto :goto_0

    :catch_5
    move-exception v5

    goto :goto_1

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #padding:Landroid/graphics/Rect;
    :catch_6
    move-exception v6

    goto :goto_2
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 12
    .parameter "src"

    .prologue
    const/4 v8, 0x0

    .line 84
    const/16 v0, 0x1000

    .line 85
    .local v0, COUNT:I
    const/4 v3, 0x0

    .line 87
    .local v3, is:Ljava/io/InputStream;
    const/4 v9, 0x1

    :try_start_0
    new-array v4, v9, [J

    .line 88
    .local v4, length:[J
    invoke-virtual {p0, p1, v4}, Llewa/laml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 89
    if-nez v3, :cond_2

    .line 106
    if-eqz v3, :cond_0

    .line 108
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    move-object v5, v8

    .line 112
    .end local v4           #length:[J
    :cond_1
    :goto_1
    return-object v5

    .line 91
    .restart local v4       #length:[J
    :cond_2
    :try_start_2
    new-instance v5, Landroid/os/MemoryFile;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-wide v10, v4, v10

    long-to-int v10, v10

    invoke-direct {v5, v9, v10}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 92
    .local v5, mf:Landroid/os/MemoryFile;
    invoke-virtual {v5}, Landroid/os/MemoryFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 94
    .local v6, os:Ljava/io/OutputStream;
    const/16 v9, 0x1000

    new-array v1, v9, [B

    .line 95
    .local v1, buffer:[B
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, read:I
    if-lez v7, :cond_4

    .line 96
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 101
    .end local v1           #buffer:[B
    .end local v4           #length:[J
    .end local v5           #mf:Landroid/os/MemoryFile;
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v7           #read:I
    :catch_0
    move-exception v2

    .line 102
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v9, "ResourceLoader"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    if-eqz v3, :cond_3

    .line 108
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    :goto_3
    move-object v5, v8

    .line 112
    goto :goto_1

    .line 98
    .restart local v1       #buffer:[B
    .restart local v4       #length:[J
    .restart local v5       #mf:Landroid/os/MemoryFile;
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v7       #read:I
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 99
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 106
    if-eqz v3, :cond_1

    .line 108
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 109
    :catch_1
    move-exception v8

    goto :goto_1

    .line 103
    .end local v1           #buffer:[B
    .end local v4           #length:[J
    .end local v5           #mf:Landroid/os/MemoryFile;
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v7           #read:I
    :catch_2
    move-exception v2

    .line 104
    .local v2, e:Ljava/lang/Exception;
    :try_start_7
    const-string v9, "ResourceLoader"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 106
    if-eqz v3, :cond_3

    .line 108
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 109
    :catch_3
    move-exception v9

    goto :goto_3

    .line 106
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_5

    .line 108
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 110
    :cond_5
    :goto_4
    throw v8

    .line 109
    .restart local v4       #length:[J
    :catch_4
    move-exception v9

    goto :goto_0

    .end local v4           #length:[J
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v9

    goto :goto_3

    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_6
    move-exception v9

    goto :goto_4
.end method

.method protected final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "path"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Llewa/laml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 5

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, manifestName:Ljava/lang/String;
    iget-object v3, p0, Llewa/laml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    iget-object v3, p0, Llewa/laml/ResourceLoader;->mManifestName:Ljava/lang/String;

    iget-object v4, p0, Llewa/laml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v3, v4}, Llewa/laml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {p0, v2}, Llewa/laml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 128
    :cond_0
    if-nez v2, :cond_1

    iget-object v3, p0, Llewa/laml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    iget-object v3, p0, Llewa/laml/ResourceLoader;->mManifestName:Ljava/lang/String;

    iget-object v4, p0, Llewa/laml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v3, v4}, Llewa/laml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {p0, v2}, Llewa/laml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    const/4 v2, 0x0

    .line 134
    :cond_1
    if-nez v2, :cond_2

    .line 135
    iget-object v2, p0, Llewa/laml/ResourceLoader;->mManifestName:Ljava/lang/String;

    .line 137
    :cond_2
    const/4 v1, 0x0

    .line 139
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v2}, Llewa/laml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_4

    .line 141
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 148
    if-eqz v1, :cond_3

    .line 150
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 154
    :cond_3
    :goto_0
    return-object v3

    .line 148
    :cond_4
    if-eqz v1, :cond_5

    .line 150
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 154
    :cond_5
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "ResourceLoader"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    if-eqz v1, :cond_5

    .line 150
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 151
    :catch_1
    move-exception v3

    goto :goto_1

    .line 145
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v3, "ResourceLoader"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    if-eqz v1, :cond_5

    .line 150
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 151
    :catch_3
    move-exception v3

    goto :goto_1

    .line 148
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_6

    .line 150
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 152
    :cond_6
    :goto_2
    throw v3

    .line 151
    :catch_4
    move-exception v4

    goto :goto_0

    :catch_5
    move-exception v3

    goto :goto_1

    :catch_6
    move-exception v4

    goto :goto_2
.end method

.method protected abstract resourceExists(Ljava/lang/String;)Z
.end method

.method public setLocal(Ljava/util/Locale;)Llewa/laml/ResourceLoader;
    .locals 2
    .parameter "locale"

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Llewa/laml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    iget-object v1, p0, Llewa/laml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 167
    :cond_0
    return-object p0
.end method
