.class final Lcom/lewa/gson/internal/bind/TypeAdapters$25;
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
        "Lcom/lewa/gson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/lewa/gson/stream/JsonReader;)Lcom/lewa/gson/JsonElement;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    sget-object v3, Lcom/lewa/gson/internal/bind/TypeAdapters$32;->$SwitchMap$com$lewa$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lewa/gson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 667
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 637
    :pswitch_0
    new-instance v0, Lcom/lewa/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/lewa/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 661
    :goto_0
    return-object v0

    .line 639
    :pswitch_1
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, number:Ljava/lang/String;
    new-instance v0, Lcom/lewa/gson/JsonPrimitive;

    new-instance v3, Lcom/lewa/gson/internal/LazilyParsedNumber;

    invoke-direct {v3, v1}, Lcom/lewa/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/lewa/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 642
    .end local v1           #number:Ljava/lang/String;
    :pswitch_2
    new-instance v0, Lcom/lewa/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/lewa/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 644
    :pswitch_3
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextNull()V

    .line 645
    sget-object v0, Lcom/lewa/gson/JsonNull;->INSTANCE:Lcom/lewa/gson/JsonNull;

    goto :goto_0

    .line 647
    :pswitch_4
    new-instance v0, Lcom/lewa/gson/JsonArray;

    invoke-direct {v0}, Lcom/lewa/gson/JsonArray;-><init>()V

    .line 648
    .local v0, array:Lcom/lewa/gson/JsonArray;
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->beginArray()V

    .line 649
    :goto_1
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 650
    invoke-virtual {p0, p1}, Lcom/lewa/gson/internal/bind/TypeAdapters$25;->read(Lcom/lewa/gson/stream/JsonReader;)Lcom/lewa/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lewa/gson/JsonArray;->add(Lcom/lewa/gson/JsonElement;)V

    goto :goto_1

    .line 652
    :cond_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    .line 655
    .end local v0           #array:Lcom/lewa/gson/JsonArray;
    :pswitch_5
    new-instance v2, Lcom/lewa/gson/JsonObject;

    invoke-direct {v2}, Lcom/lewa/gson/JsonObject;-><init>()V

    .line 656
    .local v2, object:Lcom/lewa/gson/JsonObject;
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->beginObject()V

    .line 657
    :goto_2
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/lewa/gson/internal/bind/TypeAdapters$25;->read(Lcom/lewa/gson/stream/JsonReader;)Lcom/lewa/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/JsonObject;->add(Ljava/lang/String;Lcom/lewa/gson/JsonElement;)V

    goto :goto_2

    .line 660
    :cond_1
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->endObject()V

    move-object v0, v2

    .line 661
    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
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
    .line 633
    invoke-virtual {p0, p1}, Lcom/lewa/gson/internal/bind/TypeAdapters$25;->read(Lcom/lewa/gson/stream/JsonReader;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Lcom/lewa/gson/JsonElement;)V
    .locals 7
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/lewa/gson/JsonElement;->isJsonNull()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 673
    :cond_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    .line 702
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-virtual {p2}, Lcom/lewa/gson/JsonElement;->isJsonPrimitive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 675
    invoke-virtual {p2}, Lcom/lewa/gson/JsonElement;->getAsJsonPrimitive()Lcom/lewa/gson/JsonPrimitive;

    move-result-object v3

    .line 676
    .local v3, primitive:Lcom/lewa/gson/JsonPrimitive;
    invoke-virtual {v3}, Lcom/lewa/gson/JsonPrimitive;->isNumber()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 677
    invoke-virtual {v3}, Lcom/lewa/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/lewa/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/lewa/gson/stream/JsonWriter;

    goto :goto_0

    .line 678
    :cond_2
    invoke-virtual {v3}, Lcom/lewa/gson/JsonPrimitive;->isBoolean()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 679
    invoke-virtual {v3}, Lcom/lewa/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/lewa/gson/stream/JsonWriter;->value(Z)Lcom/lewa/gson/stream/JsonWriter;

    goto :goto_0

    .line 681
    :cond_3
    invoke-virtual {v3}, Lcom/lewa/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/lewa/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    goto :goto_0

    .line 684
    .end local v3           #primitive:Lcom/lewa/gson/JsonPrimitive;
    :cond_4
    invoke-virtual {p2}, Lcom/lewa/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 685
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->beginArray()Lcom/lewa/gson/stream/JsonWriter;

    .line 686
    invoke-virtual {p2}, Lcom/lewa/gson/JsonElement;->getAsJsonArray()Lcom/lewa/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lewa/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/gson/JsonElement;

    .line 687
    .local v0, e:Lcom/lewa/gson/JsonElement;
    invoke-virtual {p0, p1, v0}, Lcom/lewa/gson/internal/bind/TypeAdapters$25;->write(Lcom/lewa/gson/stream/JsonWriter;Lcom/lewa/gson/JsonElement;)V

    goto :goto_1

    .line 689
    .end local v0           #e:Lcom/lewa/gson/JsonElement;
    :cond_5
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->endArray()Lcom/lewa/gson/stream/JsonWriter;

    goto :goto_0

    .line 691
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual {p2}, Lcom/lewa/gson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 692
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->beginObject()Lcom/lewa/gson/stream/JsonWriter;

    .line 693
    invoke-virtual {p2}, Lcom/lewa/gson/JsonElement;->getAsJsonObject()Lcom/lewa/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lewa/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 694
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lewa/gson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/lewa/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    .line 695
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lewa/gson/JsonElement;

    invoke-virtual {p0, p1, v4}, Lcom/lewa/gson/internal/bind/TypeAdapters$25;->write(Lcom/lewa/gson/stream/JsonWriter;Lcom/lewa/gson/JsonElement;)V

    goto :goto_2

    .line 697
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lewa/gson/JsonElement;>;"
    :cond_7
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->endObject()Lcom/lewa/gson/stream/JsonWriter;

    goto/16 :goto_0

    .line 700
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
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
    .line 633
    check-cast p2, Lcom/lewa/gson/JsonElement;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/gson/internal/bind/TypeAdapters$25;->write(Lcom/lewa/gson/stream/JsonWriter;Lcom/lewa/gson/JsonElement;)V

    return-void
.end method
