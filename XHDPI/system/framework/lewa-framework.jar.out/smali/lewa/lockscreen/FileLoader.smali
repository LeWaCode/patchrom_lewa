.class public Llewa/lockscreen/FileLoader;
.super Llewa/lockscreen/LockScreenResourceLoader;
.source "FileLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileLoader"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Llewa/lockscreen/LockScreenResourceLoader;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "imageName"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .local v2, rect:Landroid/graphics/Rect;
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/face/.lockscreen/face/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .end local v0           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Llewa/lockscreen/FileLoader;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 49
    if-eqz v1, :cond_2

    .line 50
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    const/4 v0, 0x0

    .line 56
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #rect:Landroid/graphics/Rect;
    .restart local v0       #is:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 53
    .end local v0           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #rect:Landroid/graphics/Rect;
    :catch_0
    move-exception v4

    move-object v0, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 46
    .end local v2           #rect:Landroid/graphics/Rect;
    :catch_1
    move-exception v3

    .line 49
    :goto_1
    if-eqz v0, :cond_0

    .line 50
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 51
    const/4 v0, 0x0

    .line 56
    :cond_0
    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v3

    .line 49
    :goto_3
    if-eqz v0, :cond_1

    .line 50
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 51
    const/4 v0, 0x0

    .line 54
    :cond_1
    :goto_4
    throw v3

    .line 53
    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_4

    .line 48
    .end local v0           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #rect:Landroid/graphics/Rect;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 46
    .end local v0           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_1

    .end local v0           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_0
.end method

.method protected getConfigFileName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 95
    const-string v1, "main.xml"

    .line 96
    .local v1, fileName:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, locale:Ljava/lang/String;
    const/4 v0, 0x0

    .line 98
    .local v0, file:Ljava/io/File;
    iget-object v4, p0, Llewa/lockscreen/FileLoader;->context:Landroid/content/Context;

    invoke-static {v4}, Llewa/lockscreen/FileLoader;->getSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    .line 99
    .local v3, point:Landroid/graphics/Point;
    if-eqz v3, :cond_0

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "main_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/face/.lockscreen/face/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "main_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/face/.lockscreen/face/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "main_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/face/.lockscreen/face/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    const-string v1, "main.xml"

    .line 119
    :cond_0
    return-object v1
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 8
    .parameter "fileName"

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-virtual {p0, p1}, Llewa/lockscreen/FileLoader;->getLockscreenFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 62
    .local v2, inputStream:Ljava/io/InputStream;
    if-nez v2, :cond_1

    move-object v3, v5

    .line 89
    :cond_0
    :goto_0
    return-object v3

    .line 66
    :cond_1
    :try_start_0
    new-instance v3, Landroid/os/MemoryFile;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 67
    .local v3, memoryFile:Landroid/os/MemoryFile;
    const/high16 v6, 0x1

    new-array v0, v6, [B

    .line 68
    .local v0, buffer:[B
    const/4 v4, -0x1

    .line 69
    .local v4, temp:I
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 70
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4, v4}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 77
    .end local v0           #buffer:[B
    .end local v3           #memoryFile:Landroid/os/MemoryFile;
    .end local v4           #temp:I
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    if-eqz v2, :cond_2

    .line 82
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 83
    const/4 v2, 0x0

    :cond_2
    :goto_2
    move-object v3, v5

    .line 89
    goto :goto_0

    .line 72
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

    .line 81
    if-eqz v2, :cond_4

    .line 82
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 83
    const/4 v2, 0x0

    :cond_4
    :goto_3
    move-object v3, v5

    .line 87
    goto :goto_0

    .line 85
    :catch_1
    move-exception v1

    .line 86
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 81
    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    if-eqz v2, :cond_0

    .line 82
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 83
    const/4 v2, 0x0

    goto :goto_0

    .line 85
    :catch_2
    move-exception v1

    .line 86
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0           #buffer:[B
    .end local v3           #memoryFile:Landroid/os/MemoryFile;
    .end local v4           #temp:I
    :catch_3
    move-exception v1

    .line 86
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 80
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 81
    if-eqz v2, :cond_6

    .line 82
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 83
    const/4 v2, 0x0

    .line 87
    :cond_6
    :goto_4
    throw v5

    .line 85
    :catch_4
    move-exception v1

    .line 86
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public getLockscreenFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 151
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/face/.lockscreen/face/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-object v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 8

    .prologue
    .line 124
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 125
    .local v2, documentbuilderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 126
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 127
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 129
    .local v1, documentbuilder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/face/.lockscreen/face"

    invoke-virtual {p0}, Llewa/lockscreen/FileLoader;->getConfigFileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v5, main:Ljava/io/File;
    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 132
    .local v0, document:Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->normalize()V

    .line 133
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 135
    .local v4, element:Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Lockscreen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    .end local v0           #document:Lorg/w3c/dom/Document;
    .end local v1           #documentbuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #documentbuilderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #element:Lorg/w3c/dom/Element;
    .end local v5           #main:Ljava/io/File;
    :goto_0
    return-object v4

    .line 139
    :catch_0
    move-exception v3

    .line 140
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 146
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 141
    :catch_1
    move-exception v3

    .line 142
    .local v3, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 144
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
