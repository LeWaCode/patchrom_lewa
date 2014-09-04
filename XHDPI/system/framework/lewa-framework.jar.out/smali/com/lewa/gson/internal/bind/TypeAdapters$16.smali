.class final Lcom/lewa/gson/internal/bind/TypeAdapters$16;
.super Lcom/lewa/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/gson/TypeAdapter",
        "<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/lewa/gson/internal/bind/TypeAdapters$16;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->NULL:Lcom/lewa/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 399
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextNull()V

    .line 400
    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    check-cast p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/gson/internal/bind/TypeAdapters$16;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/lewa/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    .line 407
    return-void

    .line 406
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
