.class public final Lcom/lewa/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/gson/internal/Streams$1;,
        Lcom/lewa/gson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static parse(Lcom/lewa/gson/stream/JsonReader;)Lcom/lewa/gson/JsonElement;
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v1, 0x1

    .line 42
    .local v1, isEmpty:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 43
    const/4 v1, 0x0

    .line 44
    sget-object v2, Lcom/lewa/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v2, p0}, Lcom/lewa/gson/TypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lewa/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lewa/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 51
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/io/EOFException;
    if-eqz v1, :cond_0

    .line 51
    sget-object v2, Lcom/lewa/gson/JsonNull;->INSTANCE:Lcom/lewa/gson/JsonNull;

    goto :goto_0

    .line 54
    :cond_0
    new-instance v2, Lcom/lewa/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 55
    .end local v0           #e:Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 56
    .local v0, e:Lcom/lewa/gson/stream/MalformedJsonException;
    new-instance v2, Lcom/lewa/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 57
    .end local v0           #e:Lcom/lewa/gson/stream/MalformedJsonException;
    :catch_2
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/lewa/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/lewa/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 59
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/lewa/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static write(Lcom/lewa/gson/JsonElement;Lcom/lewa/gson/stream/JsonWriter;)V
    .locals 1
    .parameter "element"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/lewa/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2
    .parameter "appendable"

    .prologue
    .line 72
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/lewa/gson/internal/Streams$AppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewa/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;Lcom/lewa/gson/internal/Streams$1;)V

    move-object p0, v0

    goto :goto_0
.end method
