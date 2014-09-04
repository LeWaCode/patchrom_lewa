.class public final Lcom/lewa/gson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/lewa/gson/stream/JsonReader;)Lcom/lewa/gson/JsonElement;
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonIOException;,
            Lcom/lewa/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->isLenient()Z

    move-result v1

    .line 82
    .local v1, lenient:Z
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/lewa/gson/stream/JsonReader;->setLenient(Z)V

    .line 84
    :try_start_0
    invoke-static {p1}, Lcom/lewa/gson/internal/Streams;->parse(Lcom/lewa/gson/stream/JsonReader;)Lcom/lewa/gson/JsonElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 90
    invoke-virtual {p1, v1}, Lcom/lewa/gson/stream/JsonReader;->setLenient(Z)V

    return-object v2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/StackOverflowError;
    :try_start_1
    new-instance v2, Lcom/lewa/gson/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/lewa/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v0           #e:Ljava/lang/StackOverflowError;
    :catchall_0
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/lewa/gson/stream/JsonReader;->setLenient(Z)V

    throw v2

    .line 87
    :catch_1
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    new-instance v2, Lcom/lewa/gson/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/lewa/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parse(Ljava/io/Reader;)Lcom/lewa/gson/JsonElement;
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonIOException;,
            Lcom/lewa/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    new-instance v2, Lcom/lewa/gson/stream/JsonReader;

    invoke-direct {v2, p1}, Lcom/lewa/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 59
    .local v2, jsonReader:Lcom/lewa/gson/stream/JsonReader;
    invoke-virtual {p0, v2}, Lcom/lewa/gson/JsonParser;->parse(Lcom/lewa/gson/stream/JsonReader;)Lcom/lewa/gson/JsonElement;

    move-result-object v1

    .line 60
    .local v1, element:Lcom/lewa/gson/JsonElement;
    invoke-virtual {v1}, Lcom/lewa/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/lewa/gson/stream/JsonToken;->END_DOCUMENT:Lcom/lewa/gson/stream/JsonToken;

    if-eq v3, v4, :cond_0

    .line 61
    new-instance v3, Lcom/lewa/gson/JsonSyntaxException;

    const-string v4, "Did not consume the entire document."

    invoke-direct {v3, v4}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/lewa/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 64
    .end local v1           #element:Lcom/lewa/gson/JsonElement;
    .end local v2           #jsonReader:Lcom/lewa/gson/stream/JsonReader;
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Lcom/lewa/gson/stream/MalformedJsonException;
    new-instance v3, Lcom/lewa/gson/JsonSyntaxException;

    invoke-direct {v3, v0}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 66
    .end local v0           #e:Lcom/lewa/gson/stream/MalformedJsonException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/lewa/gson/JsonIOException;

    invoke-direct {v3, v0}, Lcom/lewa/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 68
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/lewa/gson/JsonSyntaxException;

    invoke-direct {v3, v0}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 63
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #element:Lcom/lewa/gson/JsonElement;
    .restart local v2       #jsonReader:Lcom/lewa/gson/stream/JsonReader;
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;)Lcom/lewa/gson/JsonElement;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lewa/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
