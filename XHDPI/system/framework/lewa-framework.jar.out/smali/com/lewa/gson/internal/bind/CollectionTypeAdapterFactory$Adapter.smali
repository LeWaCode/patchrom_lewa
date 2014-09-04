.class final Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
.super Lcom/lewa/gson/TypeAdapter;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/gson/TypeAdapter",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/lewa/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final elementTypeAdapter:Lcom/lewa/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/TypeAdapter",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory;Lcom/lewa/gson/Gson;Ljava/lang/reflect/Type;Lcom/lewa/gson/TypeAdapter;Lcom/lewa/gson/internal/ObjectConstructor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "elementType"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/lewa/gson/TypeAdapter",
            "<TE;>;",
            "Lcom/lewa/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;,"Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p4, elementTypeAdapter:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TE;>;"
    .local p5, constructor:Lcom/lewa/gson/internal/ObjectConstructor;,"Lcom/lewa/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;"
    iput-object p1, p0, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->this$0:Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory;

    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    .line 67
    new-instance v0, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p4, p3}, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/lewa/gson/Gson;Lcom/lewa/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/lewa/gson/TypeAdapter;

    .line 69
    iput-object p5, p0, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/lewa/gson/internal/ObjectConstructor;

    .line 70
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
    .line 60
    .local p0, this:Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;,"Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/util/Collection;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;,"Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/lewa/gson/stream/JsonToken;->NULL:Lcom/lewa/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextNull()V

    .line 75
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/lewa/gson/internal/ObjectConstructor;

    invoke-interface {v2}, Lcom/lewa/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 79
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->beginArray()V

    .line 80
    :goto_1
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/lewa/gson/TypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, instance:Ljava/lang/Object;,"TE;"
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v1           #instance:Ljava/lang/Object;,"TE;"
    :cond_1
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->endArray()V

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
    .line 60
    .local p0, this:Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;,"Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    check-cast p2, Ljava/util/Collection;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/util/Collection;)V

    return-void
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/util/Collection;)V
    .locals 3
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/stream/JsonWriter;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;,"Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->beginArray()Lcom/lewa/gson/stream/JsonWriter;

    .line 95
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, element:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v2, p1, v0}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    :cond_1
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->endArray()Lcom/lewa/gson/stream/JsonWriter;

    goto :goto_0
.end method
