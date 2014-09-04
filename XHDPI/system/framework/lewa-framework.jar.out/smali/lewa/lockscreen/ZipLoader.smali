.class public Llewa/lockscreen/ZipLoader;
.super Llewa/lockscreen/LockScreenResourceLoader;
.source "ZipLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZipLoader"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Llewa/lockscreen/LockScreenResourceLoader;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "imageName"

    .prologue
    const/4 v5, 0x0

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 45
    .local v3, zipFile:Ljava/util/zip/ZipFile;
    const/4 v2, 0x0

    .line 47
    .local v2, zipEntry:Ljava/util/zip/ZipEntry;
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 48
    .local v1, rect:Landroid/graphics/Rect;
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-static {}, Llewa/lockscreen/ZipLoader;->getLockscreenFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 49
    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .local v4, zipFile:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "face/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v2

    .line 50
    if-nez v2, :cond_3

    .line 59
    if-eqz v0, :cond_0

    .line 60
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 61
    const/4 v0, 0x0

    .line 63
    :cond_0
    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    .line 65
    const/4 v2, 0x0

    .line 67
    :cond_1
    if-eqz v4, :cond_b

    .line 68
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    const/4 v3, 0x0

    .line 74
    .end local v1           #rect:Landroid/graphics/Rect;
    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v3       #zipFile:Ljava/util/zip/ZipFile;
    :cond_2
    :goto_0
    return-object v5

    .line 71
    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #rect:Landroid/graphics/Rect;
    .restart local v4       #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v3       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 53
    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v4       #zipFile:Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 55
    invoke-static {}, Llewa/lockscreen/ZipLoader;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    invoke-static {v0, v1, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v5

    .line 59
    if-eqz v0, :cond_4

    .line 60
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 61
    const/4 v0, 0x0

    .line 63
    :cond_4
    if-eqz v2, :cond_5

    .line 64
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    .line 65
    const/4 v2, 0x0

    .line 67
    :cond_5
    if-eqz v4, :cond_b

    .line 68
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 69
    const/4 v3, 0x0

    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v3       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 71
    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v4       #zipFile:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v6

    move-object v3, v4

    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v3       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 56
    .end local v1           #rect:Landroid/graphics/Rect;
    :catch_2
    move-exception v6

    .line 59
    :goto_1
    if-eqz v0, :cond_6

    .line 60
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 61
    const/4 v0, 0x0

    .line 63
    :cond_6
    if-eqz v2, :cond_7

    .line 64
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    .line 65
    const/4 v2, 0x0

    .line 67
    :cond_7
    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 69
    const/4 v3, 0x0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v5

    .line 59
    :goto_2
    if-eqz v0, :cond_8

    .line 60
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 61
    const/4 v0, 0x0

    .line 63
    :cond_8
    if-eqz v2, :cond_9

    .line 64
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    .line 65
    const/4 v2, 0x0

    .line 67
    :cond_9
    if-eqz v3, :cond_a

    .line 68
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 69
    const/4 v3, 0x0

    .line 72
    :cond_a
    :goto_3
    throw v5

    .line 71
    :catch_3
    move-exception v6

    goto :goto_3

    .line 58
    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #rect:Landroid/graphics/Rect;
    .restart local v4       #zipFile:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v3       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 71
    .end local v1           #rect:Landroid/graphics/Rect;
    :catch_4
    move-exception v6

    goto :goto_0

    .line 56
    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #rect:Landroid/graphics/Rect;
    .restart local v4       #zipFile:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v6

    move-object v3, v4

    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v3       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_1

    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v4       #zipFile:Ljava/util/zip/ZipFile;
    :cond_b
    move-object v3, v4

    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v3       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_0
.end method

.method protected getConfigFileName()Ljava/lang/String;
    .locals 9

    .prologue
    .line 113
    const-string v2, "main.xml"

    .line 114
    .local v2, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 115
    .local v5, zipentry:Ljava/util/zip/ZipEntry;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, locale:Ljava/lang/String;
    iget-object v7, p0, Llewa/lockscreen/ZipLoader;->context:Landroid/content/Context;

    invoke-static {v7}, Llewa/lockscreen/ZipLoader;->getSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    .line 118
    .local v4, point:Landroid/graphics/Point;
    if-eqz v4, :cond_0

    .line 120
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Llewa/lockscreen/ZipLoader;->getLockscreenFile()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, file:Ljava/io/File;
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 122
    .local v6, zipfile:Ljava/util/zip/ZipFile;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "main_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "face/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 128
    if-nez v5, :cond_0

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "main_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "face/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 134
    if-nez v5, :cond_0

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "main_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "face/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 140
    if-nez v5, :cond_0

    .line 141
    const-string v2, "main.xml"
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    .end local v1           #file:Ljava/io/File;
    .end local v6           #zipfile:Ljava/util/zip/ZipFile;
    :cond_0
    :goto_0
    return-object v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/util/zip/ZipException;
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0           #e:Ljava/util/zip/ZipException;
    :catch_1
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 8
    .parameter "fileName"

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-virtual {p0, p1}, Llewa/lockscreen/ZipLoader;->getLockscreenFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 80
    .local v2, inputStream:Ljava/io/InputStream;
    if-nez v2, :cond_1

    move-object v3, v5

    .line 107
    :cond_0
    :goto_0
    return-object v3

    .line 84
    :cond_1
    :try_start_0
    new-instance v3, Landroid/os/MemoryFile;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 85
    .local v3, memoryFile:Landroid/os/MemoryFile;
    const/high16 v6, 0x1

    new-array v0, v6, [B

    .line 86
    .local v0, buffer:[B
    const/4 v4, -0x1

    .line 87
    .local v4, temp:I
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 88
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4, v4}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    .end local v0           #buffer:[B
    .end local v3           #memoryFile:Landroid/os/MemoryFile;
    .end local v4           #temp:I
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    if-eqz v2, :cond_2

    .line 100
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 101
    const/4 v2, 0x0

    :cond_2
    :goto_2
    move-object v3, v5

    .line 107
    goto :goto_0

    .line 90
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    .restart local v3       #memoryFile:Landroid/os/MemoryFile;
    .restart local v4       #temp:I
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Landroid/os/MemoryFile;->length()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v6

    if-gtz v6, :cond_5

    .line 99
    if-eqz v2, :cond_4

    .line 100
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 101
    const/4 v2, 0x0

    :cond_4
    :goto_3
    move-object v3, v5

    .line 105
    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    .line 104
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 99
    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    if-eqz v2, :cond_0

    .line 100
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 101
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    :catch_2
    move-exception v1

    .line 104
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v0           #buffer:[B
    .end local v3           #memoryFile:Landroid/os/MemoryFile;
    .end local v4           #temp:I
    :catch_3
    move-exception v1

    .line 104
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 98
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 99
    if-eqz v2, :cond_6

    .line 100
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 101
    const/4 v2, 0x0

    .line 105
    :cond_6
    :goto_4
    throw v5

    .line 103
    :catch_4
    move-exception v1

    .line 104
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public getLockscreenFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "fileName"

    .prologue
    .line 261
    const/4 v3, 0x0

    .line 263
    .local v3, zipfile:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Llewa/lockscreen/ZipLoader;->getLockscreenFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, file:Ljava/io/File;
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v3           #zipfile:Ljava/util/zip/ZipFile;
    .local v4, zipfile:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "face/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 266
    .local v2, zipentry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v3, v4

    .line 281
    .end local v1           #file:Ljava/io/File;
    .end local v2           #zipentry:Ljava/util/zip/ZipEntry;
    .end local v4           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v3       #zipfile:Ljava/util/zip/ZipFile;
    :goto_0
    return-object v5

    .end local v3           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #zipentry:Ljava/util/zip/ZipEntry;
    .restart local v4       #zipfile:Ljava/util/zip/ZipFile;
    :cond_0
    move-object v3, v4

    .end local v1           #file:Ljava/io/File;
    .end local v2           #zipentry:Ljava/util/zip/ZipEntry;
    .end local v4           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v3       #zipfile:Ljava/util/zip/ZipFile;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 270
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #zipfile:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v3       #zipfile:Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 28

    .prologue
    .line 155
    const/4 v15, 0x0

    .line 156
    .local v15, inputstream:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 157
    .local v13, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 159
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 160
    .local v8, documentbuilderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 161
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 162
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 164
    .local v7, documentbuilder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    const-string v25, "/data/system/advance"

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, advance:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 167
    const-string v25, "rm -rvf /data/system/advance"

    invoke-static/range {v25 .. v25}, Llewa/lockscreen/view/Utils;->runShellBat(Ljava/lang/String;)Z

    .line 170
    :cond_0
    new-instance v16, Ljava/io/File;

    const-string v25, "/data/system/face/main.xml"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v16, main:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    move-result-wide v17

    .line 173
    .local v17, mainFileLastModifyTime:J
    const-wide/16 v20, -0x1

    .line 174
    .local v20, zipMainFileLastModifyTime:J
    const/16 v23, 0x0

    .line 177
    .local v23, zipfile:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v12, Ljava/io/File;

    invoke-static {}, Llewa/lockscreen/ZipLoader;->getLockscreenFile()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v12, file:Ljava/io/File;
    new-instance v24, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    .line 179
    .end local v23           #zipfile:Ljava/util/zip/ZipFile;
    .local v24, zipfile:Ljava/util/zip/ZipFile;
    :try_start_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "face/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Llewa/lockscreen/ZipLoader;->getConfigFileName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    .line 181
    .local v22, zipentry:Ljava/util/zip/ZipEntry;
    if-eqz v22, :cond_1

    .line 182
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getTime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v20

    :cond_1
    move-object/from16 v23, v24

    .line 198
    .end local v12           #file:Ljava/io/File;
    .end local v22           #zipentry:Ljava/util/zip/ZipEntry;
    .end local v24           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v23       #zipfile:Ljava/util/zip/ZipFile;
    :goto_0
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_2

    cmp-long v25, v17, v20

    if-eqz v25, :cond_e

    .line 199
    :cond_2
    new-instance v11, Ljava/io/File;

    const-string v25, "/data/system/face"

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v11, face:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_3

    .line 201
    const-string v25, "ZipLoader"

    const-string v26, "create face dir"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 203
    const-string v25, "755"

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Llewa/os/FileUtilities;->setPermissions(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    :cond_3
    invoke-virtual/range {p0 .. p0}, Llewa/lockscreen/ZipLoader;->getConfigFileName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Llewa/lockscreen/ZipLoader;->getLockscreenFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v15

    .line 207
    if-nez v15, :cond_c

    .line 208
    const/4 v10, 0x0

    .line 238
    if-eqz v3, :cond_4

    .line 239
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 240
    const/4 v3, 0x0

    .line 242
    :cond_4
    if-eqz v13, :cond_5

    .line 243
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 244
    const/4 v13, 0x0

    .line 246
    :cond_5
    if-eqz v15, :cond_6

    .line 247
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 248
    const/4 v15, 0x0

    .line 254
    .end local v2           #advance:Ljava/io/File;
    .end local v7           #documentbuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #documentbuilderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11           #face:Ljava/io/File;
    .end local v16           #main:Ljava/io/File;
    .end local v17           #mainFileLastModifyTime:J
    .end local v20           #zipMainFileLastModifyTime:J
    .end local v23           #zipfile:Ljava/util/zip/ZipFile;
    :cond_6
    :goto_1
    return-object v10

    .line 184
    .restart local v2       #advance:Ljava/io/File;
    .restart local v7       #documentbuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8       #documentbuilderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v16       #main:Ljava/io/File;
    .restart local v17       #mainFileLastModifyTime:J
    .restart local v20       #zipMainFileLastModifyTime:J
    .restart local v23       #zipfile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v9

    .line 185
    .local v9, e:Ljava/util/zip/ZipException;
    :goto_2
    :try_start_5
    invoke-virtual {v9}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    goto :goto_0

    .line 229
    .end local v2           #advance:Ljava/io/File;
    .end local v7           #documentbuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #documentbuilderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9           #e:Ljava/util/zip/ZipException;
    .end local v16           #main:Ljava/io/File;
    .end local v17           #mainFileLastModifyTime:J
    .end local v20           #zipMainFileLastModifyTime:J
    .end local v23           #zipfile:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v9

    .line 230
    .local v9, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_6
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 238
    if-eqz v3, :cond_7

    .line 239
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 240
    const/4 v3, 0x0

    .line 242
    :cond_7
    if-eqz v13, :cond_8

    .line 243
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 244
    const/4 v13, 0x0

    .line 246
    :cond_8
    if-eqz v15, :cond_9

    .line 247
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 248
    const/4 v15, 0x0

    .line 254
    .end local v9           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_9
    :goto_4
    const/4 v10, 0x0

    goto :goto_1

    .line 186
    .restart local v2       #advance:Ljava/io/File;
    .restart local v7       #documentbuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8       #documentbuilderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v16       #main:Ljava/io/File;
    .restart local v17       #mainFileLastModifyTime:J
    .restart local v20       #zipMainFileLastModifyTime:J
    .restart local v23       #zipfile:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v9

    .line 187
    .local v9, e:Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_0

    .line 231
    .end local v2           #advance:Ljava/io/File;
    .end local v7           #documentbuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #documentbuilderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9           #e:Ljava/io/IOException;
    .end local v16           #main:Ljava/io/File;
    .end local v17           #mainFileLastModifyTime:J
    .end local v20           #zipMainFileLastModifyTime:J
    .end local v23           #zipfile:Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v9

    .line 232
    .local v9, e:Lorg/xml/sax/SAXException;
    :goto_6
    :try_start_9
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 238
    if-eqz v3, :cond_a

    .line 239
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 240
    const/4 v3, 0x0

    .line 242
    :cond_a
    if-eqz v13, :cond_b

    .line 243
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 244
    const/4 v13, 0x0

    .line 246
    :cond_b
    if-eqz v15, :cond_9

    .line 247
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 248
    const/4 v15, 0x0

    goto :goto_4

    .line 250
    .end local v9           #e:Lorg/xml/sax/SAXException;
    .restart local v2       #advance:Ljava/io/File;
    .restart local v7       #documentbuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8       #documentbuilderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11       #face:Ljava/io/File;
    .restart local v16       #main:Ljava/io/File;
    .restart local v17       #mainFileLastModifyTime:J
    .restart local v20       #zipMainFileLastModifyTime:J
    .restart local v23       #zipfile:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v9

    .line 251
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 211
    .end local v9           #e:Ljava/io/IOException;
    :cond_c
    :try_start_b
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 212
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .local v14, fos:Ljava/io/FileOutputStream;
    const/16 v25, 0x2800

    :try_start_c
    move/from16 v0, v25

    new-array v5, v0, [B

    .line 213
    .local v5, buffer:[B
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_11
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    .line 214
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .local v4, bis:Ljava/io/BufferedInputStream;
    const/16 v19, -0x1

    .line 215
    .local v19, temp:I
    :goto_7
    :try_start_d
    invoke-virtual {v4, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v19

    const/16 v25, -0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 216
    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_7

    .line 229
    :catch_5
    move-exception v9

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 218
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :cond_d
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v13, v14

    .line 221
    .end local v5           #buffer:[B
    .end local v11           #face:Ljava/io/File;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .end local v19           #temp:I
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :cond_e
    :try_start_e
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 222
    .local v6, document:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->normalize()V

    .line 223
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    .line 225
    .local v10, element:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "Lockscreen"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    move-result v25

    if-eqz v25, :cond_11

    .line 238
    if-eqz v3, :cond_f

    .line 239
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 240
    const/4 v3, 0x0

    .line 242
    :cond_f
    if-eqz v13, :cond_10

    .line 243
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 244
    const/4 v13, 0x0

    .line 246
    :cond_10
    if-eqz v15, :cond_6

    .line 247
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 248
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 250
    :catch_6
    move-exception v9

    .line 251
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 238
    .end local v9           #e:Ljava/io/IOException;
    :cond_11
    if-eqz v3, :cond_12

    .line 239
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 240
    const/4 v3, 0x0

    .line 242
    :cond_12
    if-eqz v13, :cond_13

    .line 243
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 244
    const/4 v13, 0x0

    .line 246
    :cond_13
    if-eqz v15, :cond_9

    .line 247
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 248
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 250
    :catch_7
    move-exception v9

    .line 251
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 250
    .end local v2           #advance:Ljava/io/File;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v7           #documentbuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #documentbuilderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #element:Lorg/w3c/dom/Element;
    .end local v16           #main:Ljava/io/File;
    .end local v17           #mainFileLastModifyTime:J
    .end local v20           #zipMainFileLastModifyTime:J
    .end local v23           #zipfile:Ljava/util/zip/ZipFile;
    .local v9, e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_8
    move-exception v9

    .line 251
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 250
    .local v9, e:Lorg/xml/sax/SAXException;
    :catch_9
    move-exception v9

    .line 251
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 233
    .end local v9           #e:Ljava/io/IOException;
    :catch_a
    move-exception v9

    .line 234
    .restart local v9       #e:Ljava/io/IOException;
    :goto_8
    :try_start_11
    const-string v25, "ZipLoader"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 238
    if-eqz v3, :cond_14

    .line 239
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 240
    const/4 v3, 0x0

    .line 242
    :cond_14
    if-eqz v13, :cond_15

    .line 243
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 244
    const/4 v13, 0x0

    .line 246
    :cond_15
    if-eqz v15, :cond_9

    .line 247
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 248
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 250
    :catch_b
    move-exception v9

    .line 251
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 237
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v25

    .line 238
    :goto_9
    if-eqz v3, :cond_16

    .line 239
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 240
    const/4 v3, 0x0

    .line 242
    :cond_16
    if-eqz v13, :cond_17

    .line 243
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 244
    const/4 v13, 0x0

    .line 246
    :cond_17
    if-eqz v15, :cond_18

    .line 247
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 248
    const/4 v15, 0x0

    .line 252
    :cond_18
    :goto_a
    throw v25

    .line 250
    :catch_c
    move-exception v9

    .line 251
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 237
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #advance:Ljava/io/File;
    .restart local v7       #documentbuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8       #documentbuilderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11       #face:Ljava/io/File;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #main:Ljava/io/File;
    .restart local v17       #mainFileLastModifyTime:J
    .restart local v20       #zipMainFileLastModifyTime:J
    .restart local v23       #zipfile:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v25

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #temp:I
    :catchall_2
    move-exception v25

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    goto :goto_9

    .line 233
    .end local v5           #buffer:[B
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v19           #temp:I
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v9

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #temp:I
    :catch_e
    move-exception v9

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 231
    .end local v5           #buffer:[B
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v19           #temp:I
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :catch_f
    move-exception v9

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #temp:I
    :catch_10
    move-exception v9

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 229
    .end local v5           #buffer:[B
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v19           #temp:I
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v9

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 186
    .end local v11           #face:Ljava/io/File;
    .end local v23           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v12       #file:Ljava/io/File;
    .restart local v24       #zipfile:Ljava/util/zip/ZipFile;
    :catch_12
    move-exception v9

    move-object/from16 v23, v24

    .end local v24           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v23       #zipfile:Ljava/util/zip/ZipFile;
    goto/16 :goto_5

    .line 184
    .end local v23           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v24       #zipfile:Ljava/util/zip/ZipFile;
    :catch_13
    move-exception v9

    move-object/from16 v23, v24

    .end local v24           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v23       #zipfile:Ljava/util/zip/ZipFile;
    goto/16 :goto_2
.end method
