.class public final Lcom/qq/taf/jce/dynamic/ByteField;
.super Lcom/qq/taf/jce/dynamic/NumberField;
.source "ByteField.java"


# instance fields
.field private data:B


# direct methods
.method constructor <init>(BI)V
    .locals 0
    .parameter "b"
    .parameter "tag"

    .prologue
    .line 7
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/dynamic/NumberField;-><init>(I)V

    .line 8
    iput-byte p1, p0, Lcom/qq/taf/jce/dynamic/ByteField;->data:B

    .line 9
    return-void
.end method


# virtual methods
.method public get()B
    .locals 1

    .prologue
    .line 17
    iget-byte v0, p0, Lcom/qq/taf/jce/dynamic/ByteField;->data:B

    return v0
.end method

.method public getNumber()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 13
    iget-byte v0, p0, Lcom/qq/taf/jce/dynamic/ByteField;->data:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public set(B)V
    .locals 0
    .parameter "n"

    .prologue
    .line 21
    iput-byte p1, p0, Lcom/qq/taf/jce/dynamic/ByteField;->data:B

    .line 22
    return-void
.end method
