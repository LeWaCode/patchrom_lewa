.class public Llewa/widget/dicon/ResourcesLoader;
.super Ljava/lang/Object;
.source "ResourcesLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DICON_RESLOADER"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconName:Ljava/lang/String;

.field private mOpenZip:Z

.field private mResPath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "iconName"
    .parameter "resPath"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Llewa/widget/dicon/ResourcesLoader;->mIconName:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Llewa/widget/dicon/ResourcesLoader;->mContext:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Llewa/widget/dicon/ResourcesLoader;->mResPath:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Llewa/widget/dicon/ResourcesLoader;->openZipFile()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/zip/ZipFile;)V
    .locals 1
    .parameter "context"
    .parameter "iconName"
    .parameter "zipFile"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Llewa/widget/dicon/ResourcesLoader;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Llewa/widget/dicon/ResourcesLoader;->mIconName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Llewa/widget/dicon/ResourcesLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/widget/dicon/ResourcesLoader;->mOpenZip:Z

    .line 58
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 165
    :try_start_0
    iget-boolean v1, p0, Llewa/widget/dicon/ResourcesLoader;->mOpenZip:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Llewa/widget/dicon/ResourcesLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Llewa/widget/dicon/ResourcesLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Llewa/widget/dicon/ResourcesLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Llewa/widget/dicon/ResourcesLoader;->mOpenZip:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0, p1}, Llewa/widget/dicon/ResourcesLoader;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "path"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Llewa/widget/dicon/ResourcesLoader;->mIconName:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, fullPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 71
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 74
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Llewa/widget/dicon/ResourcesLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 75
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_2

    .line 76
    iget-object v6, p0, Llewa/widget/dicon/ResourcesLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 77
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 94
    if-eqz v4, :cond_0

    .line 95
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v5, v0

    .line 103
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :cond_1
    :goto_1
    return-object v5

    .line 97
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    .line 99
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_2
    const-string v6, "DICON_RESLOADER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR! can\'t get bitmap by name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    .line 94
    if-eqz v4, :cond_1

    .line 95
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 97
    :catch_1
    move-exception v1

    .line 99
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v1

    .line 88
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    if-eqz v4, :cond_1

    .line 95
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 97
    :catch_3
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 89
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v6, "DICON_RESLOADER"

    const-string v7, "ERROR! zipfile colsed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 94
    if-eqz v4, :cond_1

    .line 95
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 97
    :catch_5
    move-exception v1

    .line 99
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 94
    if-eqz v4, :cond_3

    .line 95
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 100
    :cond_3
    :goto_2
    throw v5

    .line 97
    :catch_6
    move-exception v1

    .line 99
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "name"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Llewa/widget/dicon/ResourcesLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 110
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Llewa/widget/dicon/ResourcesLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 112
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "resNames"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 117
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v3

    .line 120
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, names:[Ljava/lang/String;
    array-length v4, v2

    if-lt p2, v4, :cond_2

    .line 122
    const-string v4, "DICON_RESLOADER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR! getDrawable() failed, out of bounds resNames: +\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_2
    aget-object v1, v2, p2

    .line 126
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Llewa/widget/dicon/ResourcesLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 132
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Llewa/widget/dicon/ResourcesLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getFontPicture(Ljava/lang/String;C)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "fontName"
    .parameter "c"

    .prologue
    .line 138
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, picName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/font/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Llewa/widget/dicon/ResourcesLoader;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 141
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Llewa/widget/dicon/ResourcesLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 143
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 149
    :try_start_0
    iget-object v3, p0, Llewa/widget/dicon/ResourcesLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 150
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 151
    iget-object v3, p0, Llewa/widget/dicon/ResourcesLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 160
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v2

    .line 153
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    :cond_0
    const-string v3, "DICON_RESLOADER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR! can\'t get bitmap by name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public openZipFile()V
    .locals 3

    .prologue
    .line 35
    iget-object v2, p0, Llewa/widget/dicon/ResourcesLoader;->mResPath:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Llewa/widget/dicon/ResourcesLoader;->mResPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, zipFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Llewa/widget/dicon/ResourcesLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 42
    const/4 v2, 0x1

    iput-boolean v2, p0, Llewa/widget/dicon/ResourcesLoader;->mOpenZip:Z
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/util/zip/ZipException;
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0           #e:Ljava/util/zip/ZipException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
