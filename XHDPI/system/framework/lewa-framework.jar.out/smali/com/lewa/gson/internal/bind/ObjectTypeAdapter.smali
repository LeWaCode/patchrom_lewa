.class public final Lcom/lewa/gson/internal/bind/ObjectTypeAdapter;
.super Lcom/lewa/gson/TypeAdapter;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/gson/internal/bind/ObjectTypeAdapter$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/gson/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/lewa/gson/TypeAdapterFactory;


# instance fields
.field private final gson:Lcom/lewa/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/lewa/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lcom/lewa/gson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/lewa/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>(Lcom/lewa/gson/Gson;)V
    .locals 0
    .parameter "gson"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/lewa/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/lewa/gson/Gson;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/gson/Gson;Lcom/lewa/gson/internal/bind/ObjectTypeAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lewa/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/lewa/gson/Gson;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v2

    .line 55
    .local v2, token:Lcom/lewa/gson/stream/JsonToken;
    sget-object v3, Lcom/lewa/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$lewa$gson$stream$JsonToken:[I

    invoke-virtual {v2}, Lcom/lewa/gson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 88
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 57
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->beginArray()V

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/lewa/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->endArray()V

    .line 85
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    return-object v0

    .line 66
    :pswitch_1
    new-instance v1, Lcom/lewa/gson/internal/StringMap;

    invoke-direct {v1}, Lcom/lewa/gson/internal/StringMap;-><init>()V

    .line 67
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->beginObject()V

    .line 68
    :goto_2
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/lewa/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->endObject()V

    move-object v0, v1

    .line 72
    goto :goto_1

    .line 75
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_2
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 78
    :pswitch_3
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 81
    :pswitch_4
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 84
    :pswitch_5
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextNull()V

    .line 85
    const/4 v0, 0x0

    goto :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p2, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    .line 106
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/lewa/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/lewa/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lewa/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v0

    .line 99
    .local v0, typeAdapter:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<Ljava/lang/Object;>;"
    instance-of v1, v0, Lcom/lewa/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->beginObject()Lcom/lewa/gson/stream/JsonWriter;

    .line 101
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->endObject()Lcom/lewa/gson/stream/JsonWriter;

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
