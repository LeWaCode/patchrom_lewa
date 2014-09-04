.class final Lcom/lewa/gson/TreeTypeAdapter;
.super Lcom/lewa/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/gson/TreeTypeAdapter$1;,
        Lcom/lewa/gson/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/lewa/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/lewa/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/lewa/gson/Gson;

.field private final serializer:Lcom/lewa/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/lewa/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/lewa/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/lewa/gson/JsonSerializer;Lcom/lewa/gson/JsonDeserializer;Lcom/lewa/gson/Gson;Lcom/lewa/gson/reflect/TypeToken;Lcom/lewa/gson/TypeAdapterFactory;)V
    .locals 0
    .parameter
    .parameter
    .parameter "gson"
    .parameter
    .parameter "skipPast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/lewa/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/lewa/gson/Gson;",
            "Lcom/lewa/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/lewa/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/lewa/gson/TreeTypeAdapter;,"Lcom/lewa/gson/TreeTypeAdapter<TT;>;"
    .local p1, serializer:Lcom/lewa/gson/JsonSerializer;,"Lcom/lewa/gson/JsonSerializer<TT;>;"
    .local p2, deserializer:Lcom/lewa/gson/JsonDeserializer;,"Lcom/lewa/gson/JsonDeserializer<TT;>;"
    .local p4, typeToken:Lcom/lewa/gson/reflect/TypeToken;,"Lcom/lewa/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/lewa/gson/TreeTypeAdapter;->serializer:Lcom/lewa/gson/JsonSerializer;

    .line 44
    iput-object p2, p0, Lcom/lewa/gson/TreeTypeAdapter;->deserializer:Lcom/lewa/gson/JsonDeserializer;

    .line 45
    iput-object p3, p0, Lcom/lewa/gson/TreeTypeAdapter;->gson:Lcom/lewa/gson/Gson;

    .line 46
    iput-object p4, p0, Lcom/lewa/gson/TreeTypeAdapter;->typeToken:Lcom/lewa/gson/reflect/TypeToken;

    .line 47
    iput-object p5, p0, Lcom/lewa/gson/TreeTypeAdapter;->skipPast:Lcom/lewa/gson/TypeAdapterFactory;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/gson/JsonSerializer;Lcom/lewa/gson/JsonDeserializer;Lcom/lewa/gson/Gson;Lcom/lewa/gson/reflect/TypeToken;Lcom/lewa/gson/TypeAdapterFactory;Lcom/lewa/gson/TreeTypeAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 31
    .local p0, this:Lcom/lewa/gson/TreeTypeAdapter;,"Lcom/lewa/gson/TreeTypeAdapter<TT;>;"
    invoke-direct/range {p0 .. p5}, Lcom/lewa/gson/TreeTypeAdapter;-><init>(Lcom/lewa/gson/JsonSerializer;Lcom/lewa/gson/JsonDeserializer;Lcom/lewa/gson/Gson;Lcom/lewa/gson/reflect/TypeToken;Lcom/lewa/gson/TypeAdapterFactory;)V

    return-void
.end method

.method private delegate()Lcom/lewa/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/lewa/gson/TreeTypeAdapter;,"Lcom/lewa/gson/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/lewa/gson/TreeTypeAdapter;->delegate:Lcom/lewa/gson/TypeAdapter;

    .line 76
    .local v0, d:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .end local v0           #d:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    :goto_0
    return-object v0

    .restart local v0       #d:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/lewa/gson/TreeTypeAdapter;->gson:Lcom/lewa/gson/Gson;

    iget-object v2, p0, Lcom/lewa/gson/TreeTypeAdapter;->skipPast:Lcom/lewa/gson/TypeAdapterFactory;

    iget-object v3, p0, Lcom/lewa/gson/TreeTypeAdapter;->typeToken:Lcom/lewa/gson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3}, Lcom/lewa/gson/Gson;->getDelegateAdapter(Lcom/lewa/gson/TypeAdapterFactory;Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v0

    .end local v0           #d:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/lewa/gson/TreeTypeAdapter;->delegate:Lcom/lewa/gson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/lewa/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/lewa/gson/TypeAdapterFactory;
    .locals 6
    .parameter
    .parameter "typeAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lewa/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, exactType:Lcom/lewa/gson/reflect/TypeToken;,"Lcom/lewa/gson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 85
    new-instance v0, Lcom/lewa/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/lewa/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/lewa/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/lewa/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/lewa/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/lewa/gson/TypeAdapterFactory;
    .locals 6
    .parameter
    .parameter "typeAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lewa/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, exactType:Lcom/lewa/gson/reflect/TypeToken;,"Lcom/lewa/gson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/lewa/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lewa/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    .line 96
    .local v3, matchRawType:Z
    :goto_0
    new-instance v0, Lcom/lewa/gson/TreeTypeAdapter$SingleTypeFactory;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/lewa/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/lewa/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/lewa/gson/TreeTypeAdapter$1;)V

    return-object v0

    .line 95
    .end local v3           #matchRawType:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/lewa/gson/TypeAdapterFactory;
    .locals 6
    .parameter
    .parameter "typeAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lewa/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, hierarchyType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/lewa/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/lewa/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/lewa/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/lewa/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .parameter "in"
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

    .prologue
    .line 51
    .local p0, this:Lcom/lewa/gson/TreeTypeAdapter;,"Lcom/lewa/gson/TreeTypeAdapter<TT;>;"
    iget-object v1, p0, Lcom/lewa/gson/TreeTypeAdapter;->deserializer:Lcom/lewa/gson/JsonDeserializer;

    if-nez v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/lewa/gson/TreeTypeAdapter;->delegate()Lcom/lewa/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lewa/gson/TypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/lewa/gson/internal/Streams;->parse(Lcom/lewa/gson/stream/JsonReader;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    .line 55
    .local v0, value:Lcom/lewa/gson/JsonElement;
    invoke-virtual {v0}, Lcom/lewa/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/lewa/gson/TreeTypeAdapter;->deserializer:Lcom/lewa/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/lewa/gson/TreeTypeAdapter;->typeToken:Lcom/lewa/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/lewa/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/gson/TreeTypeAdapter;->gson:Lcom/lewa/gson/Gson;

    iget-object v3, v3, Lcom/lewa/gson/Gson;->deserializationContext:Lcom/lewa/gson/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/lewa/gson/JsonDeserializer;->deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .parameter "out"
    .parameter
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

    .prologue
    .line 62
    .local p0, this:Lcom/lewa/gson/TreeTypeAdapter;,"Lcom/lewa/gson/TreeTypeAdapter<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/lewa/gson/TreeTypeAdapter;->serializer:Lcom/lewa/gson/JsonSerializer;

    if-nez v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/lewa/gson/TreeTypeAdapter;->delegate()Lcom/lewa/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/lewa/gson/TreeTypeAdapter;->serializer:Lcom/lewa/gson/JsonSerializer;

    iget-object v2, p0, Lcom/lewa/gson/TreeTypeAdapter;->typeToken:Lcom/lewa/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/lewa/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/gson/TreeTypeAdapter;->gson:Lcom/lewa/gson/Gson;

    iget-object v3, v3, Lcom/lewa/gson/Gson;->serializationContext:Lcom/lewa/gson/JsonSerializationContext;

    invoke-interface {v1, p2, v2, v3}, Lcom/lewa/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    .line 71
    .local v0, tree:Lcom/lewa/gson/JsonElement;
    invoke-static {v0, p1}, Lcom/lewa/gson/internal/Streams;->write(Lcom/lewa/gson/JsonElement;Lcom/lewa/gson/stream/JsonWriter;)V

    goto :goto_0
.end method
