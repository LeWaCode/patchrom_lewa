.class final Lcom/lewa/gson/internal/bind/TypeAdapters$2;
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
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
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
    .line 75
    invoke-virtual {p0, p1}, Lcom/lewa/gson/internal/bind/TypeAdapters$2;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/util/BitSet;
    .locals 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 77
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v8

    sget-object v9, Lcom/lewa/gson/stream/JsonToken;->NULL:Lcom/lewa/gson/stream/JsonToken;

    if-ne v8, v9, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextNull()V

    .line 79
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 83
    .local v0, bitset:Ljava/util/BitSet;
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->beginArray()V

    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, i:I
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v5

    .line 86
    .local v5, tokenType:Lcom/lewa/gson/stream/JsonToken;
    :goto_1
    sget-object v8, Lcom/lewa/gson/stream/JsonToken;->END_ARRAY:Lcom/lewa/gson/stream/JsonToken;

    if-eq v5, v8, :cond_4

    .line 88
    sget-object v8, Lcom/lewa/gson/internal/bind/TypeAdapters$32;->$SwitchMap$com$lewa$gson$stream$JsonToken:[I

    invoke-virtual {v5}, Lcom/lewa/gson/stream/JsonToken;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 105
    new-instance v6, Lcom/lewa/gson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid bitset value type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 90
    :pswitch_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v3, v6

    .line 107
    .local v3, set:Z
    :goto_2
    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 110
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 111
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v5

    .line 112
    goto :goto_1

    .end local v3           #set:Z
    :cond_2
    move v3, v7

    .line 90
    goto :goto_2

    .line 93
    :pswitch_1
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextBoolean()Z

    move-result v3

    .line 94
    .restart local v3       #set:Z
    goto :goto_2

    .line 96
    .end local v3           #set:Z
    :pswitch_2
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, stringValue:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    move v3, v6

    .restart local v3       #set:Z
    :goto_3
    goto :goto_2

    .end local v3           #set:Z
    :cond_3
    move v3, v7

    goto :goto_3

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/lewa/gson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 113
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v4           #stringValue:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 75
    check-cast p2, Ljava/util/BitSet;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/gson/internal/bind/TypeAdapters$2;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/util/BitSet;)V
    .locals 4
    .parameter "out"
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->beginArray()Lcom/lewa/gson/stream/JsonWriter;

    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 125
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 126
    .local v1, value:I
    :goto_2
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/lewa/gson/stream/JsonWriter;->value(J)Lcom/lewa/gson/stream/JsonWriter;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    .end local v1           #value:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 128
    :cond_2
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->endArray()Lcom/lewa/gson/stream/JsonWriter;

    goto :goto_0
.end method
