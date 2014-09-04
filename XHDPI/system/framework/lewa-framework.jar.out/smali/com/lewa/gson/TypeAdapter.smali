.class public abstract Lcom/lewa/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    .local p0, this:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    .local p0, this:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    new-instance v0, Lcom/lewa/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/lewa/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 256
    .local v0, reader:Lcom/lewa/gson/stream/JsonReader;
    invoke-virtual {p0, v0}, Lcom/lewa/gson/TypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    .local p0, this:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lewa/gson/TypeAdapter;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJsonTree(Lcom/lewa/gson/JsonElement;)Ljava/lang/Object;
    .locals 3
    .parameter "jsonTree"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/JsonElement;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, this:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    :try_start_0
    new-instance v1, Lcom/lewa/gson/internal/bind/JsonTreeReader;

    invoke-direct {v1, p1}, Lcom/lewa/gson/internal/bind/JsonTreeReader;-><init>(Lcom/lewa/gson/JsonElement;)V

    .line 281
    .local v1, jsonReader:Lcom/lewa/gson/stream/JsonReader;
    invoke-virtual {p0, v1}, Lcom/lewa/gson/TypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 282
    .end local v1           #jsonReader:Lcom/lewa/gson/stream/JsonReader;
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/lewa/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/lewa/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final nullSafe()Lcom/lewa/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    new-instance v0, Lcom/lewa/gson/TypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/lewa/gson/TypeAdapter$1;-><init>(Lcom/lewa/gson/TypeAdapter;)V

    return-object v0
.end method

.method public abstract read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    .local p0, this:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 216
    .local v0, stringWriter:Ljava/io/StringWriter;
    invoke-virtual {p0, v0, p1}, Lcom/lewa/gson/TypeAdapter;->toJson(Ljava/io/Writer;Ljava/lang/Object;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    .local p0, this:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/lewa/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/lewa/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 142
    .local v0, writer:Lcom/lewa/gson/stream/JsonWriter;
    invoke-virtual {p0, v0, p2}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/lewa/gson/JsonElement;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/lewa/gson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, this:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    :try_start_0
    new-instance v1, Lcom/lewa/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v1}, Lcom/lewa/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 230
    .local v1, jsonWriter:Lcom/lewa/gson/internal/bind/JsonTreeWriter;
    invoke-virtual {p0, v1, p1}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v1}, Lcom/lewa/gson/internal/bind/JsonTreeWriter;->get()Lcom/lewa/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 232
    .end local v1           #jsonWriter:Lcom/lewa/gson/internal/bind/JsonTreeWriter;
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/lewa/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/lewa/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public abstract write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
