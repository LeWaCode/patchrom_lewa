.class public final Lcom/lewa/guava/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/io/ByteStreams$ByteArrayDataOutputStream;,
        Lcom/lewa/guava/io/ByteStreams$ByteArrayDataInputStream;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lcom/lewa/guava/io/InputSupplier;Lcom/lewa/guava/io/OutputSupplier;)J
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/lewa/guava/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    .local p0, from:Lcom/lewa/guava/io/InputSupplier;,"Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, to:Lcom/lewa/guava/io/OutputSupplier;,"Lcom/lewa/guava/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    const/4 v4, 0x1

    .line 145
    .local v4, threw:Z
    invoke-interface {p0}, Lcom/lewa/guava/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 147
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p1}, Lcom/lewa/guava/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v2, v3}, Lcom/lewa/guava/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 150
    .local v0, count:J
    const/4 v4, 0x0

    .line 153
    :try_start_2
    invoke-static {v3, v4}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    invoke-static {v2, v4}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v0

    .line 153
    .end local v0           #count:J
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-static {v3, v4}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    .end local v3           #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    invoke-static {v2, v4}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v5
.end method

.method public static copy(Lcom/lewa/guava/io/InputSupplier;Ljava/io/OutputStream;)J
    .locals 5
    .parameter
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/io/OutputStream;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, from:Lcom/lewa/guava/io/InputSupplier;,"Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v3, 0x1

    .line 173
    .local v3, threw:Z
    invoke-interface {p0}, Lcom/lewa/guava/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 175
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v2, p1}, Lcom/lewa/guava/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 176
    .local v0, count:J
    const/4 v3, 0x0

    .line 179
    invoke-static {v2, v3}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v0

    .end local v0           #count:J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v4
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 195
    .local v0, buf:[B
    const-wide/16 v2, 0x0

    .line 197
    .local v2, total:J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 198
    .local v1, r:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 204
    return-wide v2

    .line 201
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 202
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 203
    goto :goto_0
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J
    .locals 5
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 219
    .local v0, buf:Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 220
    .local v1, total:J
    :goto_0
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 221
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 222
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 225
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 227
    :cond_1
    return-wide v1
.end method

.method public static equal(Lcom/lewa/guava/io/InputSupplier;Lcom/lewa/guava/io/InputSupplier;)Z
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, supplier1:Lcom/lewa/guava/io/InputSupplier;,"Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, supplier2:Lcom/lewa/guava/io/InputSupplier;,"Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v7, 0x0

    const/16 v10, 0x1000

    .line 607
    new-array v0, v10, [B

    .line 608
    .local v0, buf1:[B
    new-array v1, v10, [B

    .line 610
    .local v1, buf2:[B
    const/4 v6, 0x1

    .line 611
    .local v6, threw:Z
    invoke-interface {p0}, Lcom/lewa/guava/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 613
    .local v2, in1:Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p1}, Lcom/lewa/guava/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 616
    .local v3, in2:Ljava/io/InputStream;
    :cond_0
    const/4 v8, 0x0

    const/16 v9, 0x1000

    :try_start_1
    invoke-static {v2, v0, v8, v9}, Lcom/lewa/guava/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 617
    .local v4, read1:I
    const/4 v8, 0x0

    const/16 v9, 0x1000

    invoke-static {v3, v1, v8, v9}, Lcom/lewa/guava/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v5

    .line 618
    .local v5, read2:I
    if-ne v4, v5, :cond_1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_2

    .line 619
    :cond_1
    const/4 v6, 0x0

    .line 627
    :try_start_2
    invoke-static {v3, v6}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 630
    invoke-static {v2, v6}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    :goto_0
    return v7

    .line 621
    :cond_2
    if-eq v4, v10, :cond_0

    .line 622
    const/4 v6, 0x0

    .line 623
    const/4 v7, 0x1

    .line 627
    :try_start_3
    invoke-static {v3, v6}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 630
    invoke-static {v2, v6}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    goto :goto_0

    .line 627
    .end local v4           #read1:I
    .end local v5           #read2:I
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-static {v3, v6}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 630
    .end local v3           #in2:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    invoke-static {v2, v6}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v7
.end method

.method public static getChecksum(Lcom/lewa/guava/io/InputSupplier;Ljava/util/zip/Checksum;)J
    .locals 2
    .parameter
    .parameter "checksum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/util/zip/Checksum;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    .local p0, supplier:Lcom/lewa/guava/io/InputSupplier;,"Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;"
    new-instance v0, Lcom/lewa/guava/io/ByteStreams$2;

    invoke-direct {v0, p1}, Lcom/lewa/guava/io/ByteStreams$2;-><init>(Ljava/util/zip/Checksum;)V

    invoke-static {p0, v0}, Lcom/lewa/guava/io/ByteStreams;->readBytes(Lcom/lewa/guava/io/InputSupplier;Lcom/lewa/guava/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDigest(Lcom/lewa/guava/io/InputSupplier;Ljava/security/MessageDigest;)[B
    .locals 1
    .parameter
    .parameter "md"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/security/MessageDigest;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    .local p0, supplier:Lcom/lewa/guava/io/InputSupplier;,"Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;"
    new-instance v0, Lcom/lewa/guava/io/ByteStreams$3;

    invoke-direct {v0, p1}, Lcom/lewa/guava/io/ByteStreams$3;-><init>(Ljava/security/MessageDigest;)V

    invoke-static {p0, v0}, Lcom/lewa/guava/io/ByteStreams;->readBytes(Lcom/lewa/guava/io/InputSupplier;Lcom/lewa/guava/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;)Lcom/lewa/guava/io/InputSupplier;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;>;)",
            "Lcom/lewa/guava/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, suppliers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;>;"
    new-instance v0, Lcom/lewa/guava/io/ByteStreams$5;

    invoke-direct {v0, p0}, Lcom/lewa/guava/io/ByteStreams$5;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs join([Lcom/lewa/guava/io/InputSupplier;)Lcom/lewa/guava/io/InputSupplier;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/lewa/guava/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 876
    .local p0, suppliers:[Lcom/lewa/guava/io/InputSupplier;,"[Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/io/ByteStreams;->join(Ljava/lang/Iterable;)Lcom/lewa/guava/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static length(Lcom/lewa/guava/io/InputSupplier;)J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    .local p0, supplier:Lcom/lewa/guava/io/InputSupplier;,"Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;"
    const-wide/16 v2, 0x0

    .line 579
    .local v2, count:J
    const/4 v5, 0x1

    .line 580
    .local v5, threw:Z
    invoke-interface {p0}, Lcom/lewa/guava/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 584
    .local v4, in:Ljava/io/InputStream;
    :goto_0
    const-wide/32 v6, 0x7fffffff

    :try_start_0
    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 585
    .local v0, amt:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 586
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 587
    const/4 v5, 0x0

    .line 596
    invoke-static {v4, v5}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v2

    .line 590
    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_0

    .line 592
    :cond_1
    add-long/2addr v2, v0

    goto :goto_0

    .line 596
    .end local v0           #amt:J
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v6
.end method

.method public static newDataInput([B)Lcom/lewa/guava/io/ByteArrayDataInput;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 268
    new-instance v0, Lcom/lewa/guava/io/ByteStreams$ByteArrayDataInputStream;

    invoke-direct {v0, p0}, Lcom/lewa/guava/io/ByteStreams$ByteArrayDataInputStream;-><init>([B)V

    return-object v0
.end method

.method public static newDataInput([BI)Lcom/lewa/guava/io/ByteArrayDataInput;
    .locals 1
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 279
    array-length v0, p0

    invoke-static {p1, v0}, Lcom/lewa/guava/base/Preconditions;->checkPositionIndex(II)I

    .line 280
    new-instance v0, Lcom/lewa/guava/io/ByteStreams$ByteArrayDataInputStream;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/io/ByteStreams$ByteArrayDataInputStream;-><init>([BI)V

    return-object v0
.end method

.method public static newDataOutput()Lcom/lewa/guava/io/ByteArrayDataOutput;
    .locals 1

    .prologue
    .line 422
    new-instance v0, Lcom/lewa/guava/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-direct {v0}, Lcom/lewa/guava/io/ByteStreams$ByteArrayDataOutputStream;-><init>()V

    return-object v0
.end method

.method public static newDataOutput(I)Lcom/lewa/guava/io/ByteArrayDataOutput;
    .locals 5
    .parameter "size"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    if-ltz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Invalid size: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/lewa/guava/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 433
    new-instance v0, Lcom/lewa/guava/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-direct {v0, p0}, Lcom/lewa/guava/io/ByteStreams$ByteArrayDataOutputStream;-><init>(I)V

    return-object v0

    :cond_0
    move v0, v2

    .line 432
    goto :goto_0
.end method

.method public static newInputStreamSupplier([B)Lcom/lewa/guava/io/InputSupplier;
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/lewa/guava/io/InputSupplier",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/lewa/guava/io/ByteStreams;->newInputStreamSupplier([BII)Lcom/lewa/guava/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newInputStreamSupplier([BII)Lcom/lewa/guava/io/InputSupplier;
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/lewa/guava/io/InputSupplier",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/lewa/guava/io/ByteStreams$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/lewa/guava/io/ByteStreams$1;-><init>([BII)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 4
    .parameter "in"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    if-gez p3, :cond_0

    .line 802
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "len is negative"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 804
    :cond_0
    const/4 v1, 0x0

    .line 805
    .local v1, total:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 806
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 807
    .local v0, result:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 812
    .end local v0           #result:I
    :cond_1
    return v1

    .line 810
    .restart local v0       #result:I
    :cond_2
    add-int/2addr v1, v0

    .line 811
    goto :goto_0
.end method

.method public static readBytes(Lcom/lewa/guava/io/InputSupplier;Lcom/lewa/guava/io/ByteProcessor;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/lewa/guava/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    .local p0, supplier:Lcom/lewa/guava/io/InputSupplier;,"Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, processor:Lcom/lewa/guava/io/ByteProcessor;,"Lcom/lewa/guava/io/ByteProcessor<TT;>;"
    const/16 v4, 0x1000

    new-array v1, v4, [B

    .line 708
    .local v1, buf:[B
    const/4 v3, 0x1

    .line 709
    .local v3, threw:Z
    invoke-interface {p0}, Lcom/lewa/guava/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 713
    .local v2, in:Ljava/io/InputStream;
    :cond_0
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 714
    .local v0, amt:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 715
    const/4 v3, 0x0

    .line 719
    :goto_0
    invoke-interface {p1}, Lcom/lewa/guava/io/ByteProcessor;->getResult()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 721
    invoke-static {v2, v3}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v4

    .line 718
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p1, v1, v4, v0}, Lcom/lewa/guava/io/ByteProcessor;->processBytes([BII)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 721
    .end local v0           #amt:I
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v4
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .parameter "in"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/lewa/guava/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 647
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 1
    .parameter "in"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-static {p0, p1, p2, p3}, Lcom/lewa/guava/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 666
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 668
    :cond_0
    return-void
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 6
    .parameter "in"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 683
    :goto_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_2

    .line 684
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 685
    .local v0, amt:J
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 687
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 688
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 690
    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    goto :goto_0

    .line 692
    :cond_1
    sub-long/2addr p1, v0

    goto :goto_0

    .line 695
    .end local v0           #amt:J
    :cond_2
    return-void
.end method

.method public static slice(Lcom/lewa/guava/io/InputSupplier;JJ)Lcom/lewa/guava/io/InputSupplier;
    .locals 6
    .parameter
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;JJ)",
            "Lcom/lewa/guava/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, supplier:Lcom/lewa/guava/io/InputSupplier;,"Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;"
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 830
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "offset is negative"

    invoke-static {v0, v3}, Lcom/lewa/guava/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 832
    cmp-long v0, p3, v4

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "length is negative"

    invoke-static {v1, v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 833
    new-instance v0, Lcom/lewa/guava/io/ByteStreams$4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lewa/guava/io/ByteStreams$4;-><init>(Lcom/lewa/guava/io/InputSupplier;JJ)V

    return-object v0

    :cond_0
    move v0, v2

    .line 831
    goto :goto_0

    :cond_1
    move v1, v2

    .line 832
    goto :goto_1
.end method

.method public static toByteArray(Lcom/lewa/guava/io/InputSupplier;)[B
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    .local p0, supplier:Lcom/lewa/guava/io/InputSupplier;,"Lcom/lewa/guava/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v2, 0x1

    .line 253
    .local v2, threw:Z
    invoke-interface {p0}, Lcom/lewa/guava/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 255
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/lewa/guava/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 256
    .local v1, result:[B
    const/4 v2, 0x0

    .line 259
    invoke-static {v0, v2}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v1

    .end local v1           #result:[B
    :catchall_0
    move-exception v3

    invoke-static {v0, v2}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 240
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/lewa/guava/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 241
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static write([BLcom/lewa/guava/io/OutputSupplier;)V
    .locals 3
    .parameter "from"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/lewa/guava/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    .local p1, to:Lcom/lewa/guava/io/OutputSupplier;,"Lcom/lewa/guava/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/4 v1, 0x1

    .line 124
    .local v1, threw:Z
    invoke-interface {p1}, Lcom/lewa/guava/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 126
    .local v0, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const/4 v1, 0x0

    .line 129
    invoke-static {v0, v1}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/lewa/guava/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method
