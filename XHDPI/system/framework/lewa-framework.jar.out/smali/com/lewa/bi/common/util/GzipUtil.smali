.class public Lcom/lewa/bi/common/util/GzipUtil;
.super Ljava/lang/Object;
.source "GzipUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 6
    .parameter "data"

    .prologue
    .line 14
    const/4 v2, 0x0

    .line 17
    .local v2, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .end local v2           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v3, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-static {p0}, Lcom/lewa/bi/common/util/ByteUtil;->fromString(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 20
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 22
    .local v4, result:[B
    return-object v4

    .line 23
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .end local v4           #result:[B
    .restart local v2       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v1

    .line 24
    .local v1, e:Ljava/io/IOException;
    :goto_0
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 23
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v2       #gzos:Ljava/util/zip/GZIPOutputStream;
    goto :goto_0
.end method

.method public static uncompress([B)[B
    .locals 5
    .parameter "data"

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, gin:Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v1           #gin:Ljava/util/zip/GZIPInputStream;
    .local v2, gin:Ljava/util/zip/GZIPInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/lewa/guava/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 36
    if-eqz v2, :cond_0

    .line 38
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 40
    :cond_0
    :goto_0
    return-object v3

    .line 33
    .end local v2           #gin:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #gin:Ljava/util/zip/GZIPInputStream;
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 38
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 40
    :cond_1
    :goto_3
    throw v3

    .line 39
    .end local v1           #gin:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #gin:Ljava/util/zip/GZIPInputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v2           #gin:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #gin:Ljava/util/zip/GZIPInputStream;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 36
    .end local v1           #gin:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #gin:Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #gin:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #gin:Ljava/util/zip/GZIPInputStream;
    goto :goto_2

    .line 33
    .end local v1           #gin:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #gin:Ljava/util/zip/GZIPInputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #gin:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #gin:Ljava/util/zip/GZIPInputStream;
    goto :goto_1
.end method
