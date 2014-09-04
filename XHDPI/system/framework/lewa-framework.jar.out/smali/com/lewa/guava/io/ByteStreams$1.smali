.class final Lcom/lewa/guava/io/ByteStreams$1;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/lewa/guava/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/io/ByteStreams;->newInputStreamSupplier([BII)Lcom/lewa/guava/io/InputSupplier;
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
        "Ljava/io/ByteArrayInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$b:[B

.field final synthetic val$len:I

.field final synthetic val$off:I


# direct methods
.method constructor <init>([BII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lewa/guava/io/ByteStreams$1;->val$b:[B

    iput p2, p0, Lcom/lewa/guava/io/ByteStreams$1;->val$off:I

    iput p3, p0, Lcom/lewa/guava/io/ByteStreams$1;->val$len:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Ljava/io/ByteArrayInputStream;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/lewa/guava/io/ByteStreams$1;->val$b:[B

    iget v2, p0, Lcom/lewa/guava/io/ByteStreams$1;->val$off:I

    iget v3, p0, Lcom/lewa/guava/io/ByteStreams$1;->val$len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

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
    .line 106
    invoke-virtual {p0}, Lcom/lewa/guava/io/ByteStreams$1;->getInput()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0
.end method
