.class final Lcom/lewa/guava/io/ByteStreams$3;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/lewa/guava/io/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/io/ByteStreams;->getDigest(Lcom/lewa/guava/io/InputSupplier;Ljava/security/MessageDigest;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/io/ByteProcessor",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic val$md:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/lewa/guava/io/ByteStreams$3;->val$md:Ljava/security/MessageDigest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/lewa/guava/io/ByteStreams$3;->getResult()[B

    move-result-object v0

    return-object v0
.end method

.method public getResult()[B
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/lewa/guava/io/ByteStreams$3;->val$md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public processBytes([BII)Z
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/lewa/guava/io/ByteStreams$3;->val$md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 766
    const/4 v0, 0x1

    return v0
.end method
