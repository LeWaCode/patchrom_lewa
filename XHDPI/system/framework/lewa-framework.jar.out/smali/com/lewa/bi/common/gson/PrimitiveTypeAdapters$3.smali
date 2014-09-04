.class final Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$3;
.super Lcom/lewa/gson/TypeAdapter;
.source "PrimitiveTypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultAdapter:Lcom/lewa/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    .line 72
    sget-object v0, Lcom/lewa/gson/internal/bind/TypeAdapters;->INTEGER:Lcom/lewa/gson/TypeAdapter;

    iput-object v0, p0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$3;->defaultAdapter:Lcom/lewa/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$3;->defaultAdapter:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/TypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$3;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 2
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    .line 90
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-boolean v0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->numberAsString:Z

    if-eqz v0, :cond_2

    .line 85
    sget-object v0, Lcom/lewa/gson/internal/bind/TypeAdapters;->STRING:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$3;->defaultAdapter:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

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
    .line 70
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$3;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
