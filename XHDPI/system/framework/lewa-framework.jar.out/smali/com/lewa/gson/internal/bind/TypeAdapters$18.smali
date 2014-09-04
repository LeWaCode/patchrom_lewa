.class final Lcom/lewa/gson/internal/bind/TypeAdapters$18;
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
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 431
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
    .line 431
    invoke-virtual {p0, p1}, Lcom/lewa/gson/internal/bind/TypeAdapters$18;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/net/URL;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 434
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/lewa/gson/stream/JsonToken;->NULL:Lcom/lewa/gson/stream/JsonToken;

    if-ne v2, v3, :cond_1

    .line 435
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextNull()V

    .line 439
    :cond_0
    :goto_0
    return-object v1

    .line 438
    :cond_1
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, nextString:Ljava/lang/String;
    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

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
    .line 431
    check-cast p2, Ljava/net/URL;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/gson/internal/bind/TypeAdapters$18;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/net/URL;)V

    return-void
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/net/URL;)V
    .locals 1
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/lewa/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    .line 444
    return-void

    .line 443
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
