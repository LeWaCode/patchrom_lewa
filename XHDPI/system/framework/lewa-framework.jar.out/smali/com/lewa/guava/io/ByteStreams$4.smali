.class final Lcom/lewa/guava/io/ByteStreams$4;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/lewa/guava/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/io/ByteStreams;->slice(Lcom/lewa/guava/io/InputSupplier;JJ)Lcom/lewa/guava/io/InputSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/io/InputSupplier",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$length:J

.field final synthetic val$offset:J

.field final synthetic val$supplier:Lcom/lewa/guava/io/InputSupplier;


# direct methods
.method constructor <init>(Lcom/lewa/guava/io/InputSupplier;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/lewa/guava/io/ByteStreams$4;->val$supplier:Lcom/lewa/guava/io/InputSupplier;

    iput-wide p2, p0, Lcom/lewa/guava/io/ByteStreams$4;->val$offset:J

    iput-wide p4, p0, Lcom/lewa/guava/io/ByteStreams$4;->val$length:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    iget-object v2, p0, Lcom/lewa/guava/io/ByteStreams$4;->val$supplier:Lcom/lewa/guava/io/InputSupplier;

    invoke-interface {v2}, Lcom/lewa/guava/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 836
    .local v1, in:Ljava/io/InputStream;
    iget-wide v2, p0, Lcom/lewa/guava/io/ByteStreams$4;->val$offset:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 838
    :try_start_0
    iget-wide v2, p0, Lcom/lewa/guava/io/ByteStreams$4;->val$offset:J

    invoke-static {v1, v2, v3}, Lcom/lewa/guava/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :cond_0
    new-instance v2, Lcom/lewa/guava/io/LimitInputStream;

    iget-wide v3, p0, Lcom/lewa/guava/io/ByteStreams$4;->val$length:J

    invoke-direct {v2, v1, v3, v4}, Lcom/lewa/guava/io/LimitInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v2

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/lewa/guava/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 841
    throw v0
.end method

.method public bridge synthetic getInput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/lewa/guava/io/ByteStreams$4;->getInput()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
