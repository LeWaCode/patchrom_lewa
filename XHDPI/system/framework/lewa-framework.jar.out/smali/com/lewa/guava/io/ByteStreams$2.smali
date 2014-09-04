.class final Lcom/lewa/guava/io/ByteStreams$2;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/lewa/guava/io/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/io/ByteStreams;->getChecksum(Lcom/lewa/guava/io/InputSupplier;Ljava/util/zip/Checksum;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/io/ByteProcessor",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$checksum:Ljava/util/zip/Checksum;


# direct methods
.method constructor <init>(Ljava/util/zip/Checksum;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/lewa/guava/io/ByteStreams$2;->val$checksum:Ljava/util/zip/Checksum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 744
    iget-object v2, p0, Lcom/lewa/guava/io/ByteStreams$2;->val$checksum:Ljava/util/zip/Checksum;

    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 745
    .local v0, result:J
    iget-object v2, p0, Lcom/lewa/guava/io/ByteStreams$2;->val$checksum:Ljava/util/zip/Checksum;

    invoke-interface {v2}, Ljava/util/zip/Checksum;->reset()V

    .line 746
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/lewa/guava/io/ByteStreams$2;->getResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public processBytes([BII)Z
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/lewa/guava/io/ByteStreams$2;->val$checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 740
    const/4 v0, 0x1

    return v0
.end method
