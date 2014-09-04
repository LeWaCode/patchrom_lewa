.class public final Llewa/bi/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .parameter "inStream"

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, configInfo:Ljava/lang/String;
    const/4 v4, 0x0

    .line 55
    .local v4, stream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 56
    .end local v4           #stream:Ljava/io/ByteArrayOutputStream;
    .local v5, stream:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x800

    :try_start_1
    new-array v0, v6, [B

    .line 57
    .local v0, buffer:[B
    const/4 v3, -0x1

    .line 58
    .local v3, length:I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 59
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 62
    .end local v0           #buffer:[B
    .end local v3           #length:I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 63
    .end local v5           #stream:Ljava/io/ByteArrayOutputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v4       #stream:Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    if-eqz v4, :cond_0

    .line 69
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 73
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-object v1

    .line 61
    .end local v4           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #length:I
    .restart local v5       #stream:Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v1

    .line 67
    if-eqz v5, :cond_3

    .line 69
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v5

    .line 70
    .end local v5           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #stream:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v4           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #stream:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v6

    move-object v4, v5

    .end local v5           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #stream:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 64
    .end local v0           #buffer:[B
    .end local v3           #length:I
    :catch_2
    move-exception v2

    .line 65
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 67
    if-eqz v4, :cond_0

    .line 69
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 70
    :catch_3
    move-exception v6

    goto :goto_2

    .line 67
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_2

    .line 69
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 70
    :cond_2
    :goto_5
    throw v6

    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v6

    goto :goto_2

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v7

    goto :goto_5

    .line 67
    .end local v4           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #stream:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #stream:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 64
    .end local v4           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #stream:Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #stream:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 62
    :catch_7
    move-exception v2

    goto :goto_1

    .end local v4           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #length:I
    .restart local v5       #stream:Ljava/io/ByteArrayOutputStream;
    :cond_3
    move-object v4, v5

    .end local v5           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #stream:Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public static loadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "file_path"

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 17
    .local v1, configInfo:Ljava/lang/String;
    const/4 v3, 0x0

    .line 18
    .local v3, inStream:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 20
    .local v6, stream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 21
    .end local v3           #inStream:Ljava/io/FileInputStream;
    .local v4, inStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 22
    .end local v6           #stream:Ljava/io/ByteArrayOutputStream;
    .local v7, stream:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x800

    :try_start_2
    new-array v0, v8, [B

    .line 23
    .local v0, buffer:[B
    const/4 v5, -0x1

    .line 24
    .local v5, length:I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    .line 25
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    goto :goto_0

    .line 28
    .end local v0           #buffer:[B
    .end local v5           #length:I
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #stream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .line 29
    .end local v4           #inStream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    if-eqz v3, :cond_0

    .line 35
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 38
    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    .line 40
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 44
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    return-object v1

    .line 27
    .end local v3           #inStream:Ljava/io/FileInputStream;
    .end local v6           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    .restart local v5       #length:I
    .restart local v7       #stream:Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    move-result-object v1

    .line 33
    if-eqz v4, :cond_3

    .line 35
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 38
    :cond_3
    :goto_4
    if-eqz v7, :cond_7

    .line 40
    :try_start_8
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object v6, v7

    .end local v7           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #stream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .line 41
    .end local v4           #inStream:Ljava/io/FileInputStream;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #inStream:Ljava/io/FileInputStream;
    .end local v6           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v8

    move-object v6, v7

    .end local v7           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #stream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4           #inStream:Ljava/io/FileInputStream;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 30
    .end local v0           #buffer:[B
    .end local v5           #length:I
    :catch_2
    move-exception v2

    .line 31
    .local v2, e:Ljava/io/IOException;
    :goto_5
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 33
    if-eqz v3, :cond_4

    .line 35
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 38
    :cond_4
    :goto_6
    if-eqz v6, :cond_1

    .line 40
    :try_start_b
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_3

    .line 41
    :catch_3
    move-exception v8

    goto :goto_3

    .line 33
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v3, :cond_5

    .line 35
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 38
    :cond_5
    :goto_8
    if-eqz v6, :cond_6

    .line 40
    :try_start_d
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 41
    :cond_6
    :goto_9
    throw v8

    .line 36
    .end local v3           #inStream:Ljava/io/FileInputStream;
    .end local v6           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    .restart local v5       #length:I
    .restart local v7       #stream:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v8

    goto :goto_4

    .end local v0           #buffer:[B
    .end local v4           #inStream:Ljava/io/FileInputStream;
    .end local v5           #length:I
    .end local v7           #stream:Ljava/io/ByteArrayOutputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v8

    goto :goto_2

    .line 41
    :catch_6
    move-exception v8

    goto :goto_3

    .line 36
    .local v2, e:Ljava/io/IOException;
    :catch_7
    move-exception v8

    goto :goto_6

    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v9

    goto :goto_8

    .line 41
    :catch_9
    move-exception v9

    goto :goto_9

    .line 33
    .end local v3           #inStream:Ljava/io/FileInputStream;
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #inStream:Ljava/io/FileInputStream;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3           #inStream:Ljava/io/FileInputStream;
    .end local v6           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #stream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4           #inStream:Ljava/io/FileInputStream;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 30
    .end local v3           #inStream:Ljava/io/FileInputStream;
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4           #inStream:Ljava/io/FileInputStream;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3           #inStream:Ljava/io/FileInputStream;
    .end local v6           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/ByteArrayOutputStream;
    :catch_b
    move-exception v2

    move-object v6, v7

    .end local v7           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #stream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4           #inStream:Ljava/io/FileInputStream;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 28
    :catch_c
    move-exception v2

    goto :goto_1

    .end local v3           #inStream:Ljava/io/FileInputStream;
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    :catch_d
    move-exception v2

    move-object v3, v4

    .end local v4           #inStream:Ljava/io/FileInputStream;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v3           #inStream:Ljava/io/FileInputStream;
    .end local v6           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    .restart local v5       #length:I
    .restart local v7       #stream:Ljava/io/ByteArrayOutputStream;
    :cond_7
    move-object v6, v7

    .end local v7           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #stream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4           #inStream:Ljava/io/FileInputStream;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    goto :goto_3
.end method
