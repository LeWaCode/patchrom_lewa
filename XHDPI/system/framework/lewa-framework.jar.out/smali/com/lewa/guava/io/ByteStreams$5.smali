.class final Lcom/lewa/guava/io/ByteStreams$5;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/lewa/guava/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/io/ByteStreams;->join(Ljava/lang/Iterable;)Lcom/lewa/guava/io/InputSupplier;
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
.field final synthetic val$suppliers:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/lewa/guava/io/ByteStreams$5;->val$suppliers:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    new-instance v0, Lcom/lewa/guava/io/MultiInputStream;

    iget-object v1, p0, Lcom/lewa/guava/io/ByteStreams$5;->val$suppliers:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/io/MultiInputStream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public bridge synthetic getInput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/lewa/guava/io/ByteStreams$5;->getInput()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
