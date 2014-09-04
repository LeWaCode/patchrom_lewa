.class public final Lcom/lewa/gson/Gson;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/lewa/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/lewa/gson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/lewa/gson/internal/ConstructorConstructor;

.field final deserializationContext:Lcom/lewa/gson/JsonDeserializationContext;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final prettyPrinting:Z

.field final serializationContext:Lcom/lewa/gson/JsonSerializationContext;

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lewa/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/lewa/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 179
    sget-object v1, Lcom/lewa/gson/internal/Excluder;->DEFAULT:Lcom/lewa/gson/internal/Excluder;

    sget-object v2, Lcom/lewa/gson/FieldNamingPolicy;->IDENTITY:Lcom/lewa/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/lewa/gson/LongSerializationPolicy;->DEFAULT:Lcom/lewa/gson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/lewa/gson/Gson;-><init>(Lcom/lewa/gson/internal/Excluder;Lcom/lewa/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/lewa/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 183
    return-void
.end method

.method constructor <init>(Lcom/lewa/gson/internal/Excluder;Lcom/lewa/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/lewa/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 4
    .parameter "excluder"
    .parameter "fieldNamingPolicy"
    .parameter
    .parameter "serializeNulls"
    .parameter "complexMapKeySerialization"
    .parameter "generateNonExecutableGson"
    .parameter "htmlSafe"
    .parameter "prettyPrinting"
    .parameter "serializeSpecialFloatingPointValues"
    .parameter "longSerializationPolicy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/internal/Excluder;",
            "Lcom/lewa/gson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/lewa/gson/InstanceCreator",
            "<*>;>;ZZZZZZ",
            "Lcom/lewa/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p3, instanceCreators:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/lewa/gson/InstanceCreator<*>;>;"
    .local p11, typeAdapterFactories:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/gson/TypeAdapterFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v1, Lcom/lewa/gson/Gson$1;

    invoke-direct {v1, p0}, Lcom/lewa/gson/Gson$1;-><init>(Lcom/lewa/gson/Gson;)V

    iput-object v1, p0, Lcom/lewa/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/gson/Gson;->typeTokenCache:Ljava/util/Map;

    .line 128
    new-instance v1, Lcom/lewa/gson/Gson$2;

    invoke-direct {v1, p0}, Lcom/lewa/gson/Gson$2;-><init>(Lcom/lewa/gson/Gson;)V

    iput-object v1, p0, Lcom/lewa/gson/Gson;->deserializationContext:Lcom/lewa/gson/JsonDeserializationContext;

    .line 135
    new-instance v1, Lcom/lewa/gson/Gson$3;

    invoke-direct {v1, p0}, Lcom/lewa/gson/Gson$3;-><init>(Lcom/lewa/gson/Gson;)V

    iput-object v1, p0, Lcom/lewa/gson/Gson;->serializationContext:Lcom/lewa/gson/JsonSerializationContext;

    .line 191
    new-instance v1, Lcom/lewa/gson/internal/ConstructorConstructor;

    invoke-direct {v1, p3}, Lcom/lewa/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/lewa/gson/Gson;->constructorConstructor:Lcom/lewa/gson/internal/ConstructorConstructor;

    .line 192
    iput-boolean p4, p0, Lcom/lewa/gson/Gson;->serializeNulls:Z

    .line 193
    iput-boolean p6, p0, Lcom/lewa/gson/Gson;->generateNonExecutableJson:Z

    .line 194
    iput-boolean p7, p0, Lcom/lewa/gson/Gson;->htmlSafe:Z

    .line 195
    iput-boolean p8, p0, Lcom/lewa/gson/Gson;->prettyPrinting:Z

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, factories:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/gson/TypeAdapterFactory;>;"
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v1, Lcom/lewa/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/lewa/gson/Gson;->longAdapter(Lcom/lewa/gson/LongSerializationPolicy;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lewa/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/lewa/gson/TypeAdapter;)Lcom/lewa/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/lewa/gson/Gson;->doubleAdapter(Z)Lcom/lewa/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lewa/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/lewa/gson/TypeAdapter;)Lcom/lewa/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/lewa/gson/Gson;->floatAdapter(Z)Lcom/lewa/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lewa/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/lewa/gson/TypeAdapter;)Lcom/lewa/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/lewa/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/lewa/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/lewa/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/lewa/gson/TypeAdapter;)Lcom/lewa/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/lewa/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/lewa/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/lewa/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/lewa/gson/TypeAdapter;)Lcom/lewa/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/lewa/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lcom/lewa/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v1, Lcom/lewa/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v1, Lcom/lewa/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v1, Lcom/lewa/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/lewa/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v2, p0, Lcom/lewa/gson/Gson;->constructorConstructor:Lcom/lewa/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2}, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/lewa/gson/internal/ConstructorConstructor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Lcom/lewa/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v2, p0, Lcom/lewa/gson/Gson;->constructorConstructor:Lcom/lewa/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p5}, Lcom/lewa/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/lewa/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v2, p0, Lcom/lewa/gson/Gson;->constructorConstructor:Lcom/lewa/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p2, p1}, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/lewa/gson/internal/ConstructorConstructor;Lcom/lewa/gson/FieldNamingStrategy;Lcom/lewa/gson/internal/Excluder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/gson/Gson;->factories:Ljava/util/List;

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/gson/Gson;D)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/lewa/gson/Gson;->checkValidFloatingPoint(D)V

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/lewa/gson/stream/JsonReader;)V
    .locals 3
    .parameter "obj"
    .parameter "reader"

    .prologue
    .line 768
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->END_DOCUMENT:Lcom/lewa/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 769
    new-instance v1, Lcom/lewa/gson/JsonIOException;

    const-string v2, "JSON document was not fully consumed."

    invoke-direct {v1, v2}, Lcom/lewa/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/lewa/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, e:Lcom/lewa/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/lewa/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 773
    .end local v0           #e:Lcom/lewa/gson/stream/MalformedJsonException;
    :catch_1
    move-exception v0

    .line 774
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/lewa/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/lewa/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 776
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private checkValidFloatingPoint(D)V
    .locals 3
    .parameter "value"

    .prologue
    .line 300
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialDoubleValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    return-void
.end method

.method private doubleAdapter(Z)Lcom/lewa/gson/TypeAdapter;
    .locals 1
    .parameter "serializeSpecialFloatingPointValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/lewa/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    sget-object v0, Lcom/lewa/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/lewa/gson/TypeAdapter;

    .line 255
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/gson/Gson$4;

    invoke-direct {v0, p0}, Lcom/lewa/gson/Gson$4;-><init>(Lcom/lewa/gson/Gson;)V

    goto :goto_0
.end method

.method private floatAdapter(Z)Lcom/lewa/gson/TypeAdapter;
    .locals 1
    .parameter "serializeSpecialFloatingPointValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/lewa/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    sget-object v0, Lcom/lewa/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/lewa/gson/TypeAdapter;

    .line 279
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/lewa/gson/Gson$5;-><init>(Lcom/lewa/gson/Gson;)V

    goto :goto_0
.end method

.method private longAdapter(Lcom/lewa/gson/LongSerializationPolicy;)Lcom/lewa/gson/TypeAdapter;
    .locals 1
    .parameter "longSerializationPolicy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/LongSerializationPolicy;",
            ")",
            "Lcom/lewa/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lcom/lewa/gson/LongSerializationPolicy;->DEFAULT:Lcom/lewa/gson/LongSerializationPolicy;

    if-ne p1, v0, :cond_0

    .line 309
    sget-object v0, Lcom/lewa/gson/internal/bind/TypeAdapters;->LONG:Lcom/lewa/gson/TypeAdapter;

    .line 311
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/gson/Gson$6;

    invoke-direct {v0, p0}, Lcom/lewa/gson/Gson$6;-><init>(Lcom/lewa/gson/Gson;)V

    goto :goto_0
.end method

.method private newJsonWriter(Ljava/io/Writer;)Lcom/lewa/gson/stream/JsonWriter;
    .locals 2
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    iget-boolean v1, p0, Lcom/lewa/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v1, :cond_0

    .line 632
    const-string v1, ")]}\'\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 634
    :cond_0
    new-instance v0, Lcom/lewa/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/lewa/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 635
    .local v0, jsonWriter:Lcom/lewa/gson/stream/JsonWriter;
    iget-boolean v1, p0, Lcom/lewa/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_1

    .line 636
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/lewa/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 638
    :cond_1
    iget-boolean v1, p0, Lcom/lewa/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/lewa/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 639
    return-object v0
.end method


# virtual methods
.method public fromJson(Lcom/lewa/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 832
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/gson/Gson;->fromJson(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 833
    .local v0, object:Ljava/lang/Object;
    invoke-static {p2}, Lcom/lewa/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "json"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 856
    if-nez p1, :cond_0

    .line 857
    const/4 v0, 0x0

    .line 859
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/lewa/gson/internal/bind/JsonTreeReader;-><init>(Lcom/lewa/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/lewa/gson/Gson;->fromJson(Lcom/lewa/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public fromJson(Lcom/lewa/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .parameter "reader"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonIOException;,
            Lcom/lewa/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 788
    const/4 v1, 0x1

    .line 789
    .local v1, isEmpty:Z
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    .line 790
    .local v2, oldLenient:Z
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/lewa/gson/stream/JsonReader;->setLenient(Z)V

    .line 792
    :try_start_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 793
    const/4 v1, 0x0

    .line 794
    invoke-static {p2}, Lcom/lewa/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/lewa/gson/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lewa/gson/Gson;->getAdapter(Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v3

    .line 795
    .local v3, typeAdapter:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    invoke-virtual {v3, p1}, Lcom/lewa/gson/TypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 811
    invoke-virtual {p1, v2}, Lcom/lewa/gson/stream/JsonReader;->setLenient(Z)V

    .end local v3           #typeAdapter:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    :goto_0
    return-object v4

    .line 796
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Ljava/io/EOFException;
    if-eqz v1, :cond_0

    .line 802
    const/4 v4, 0x0

    .line 811
    invoke-virtual {p1, v2}, Lcom/lewa/gson/stream/JsonReader;->setLenient(Z)V

    goto :goto_0

    .line 804
    :cond_0
    :try_start_1
    new-instance v4, Lcom/lewa/gson/JsonSyntaxException;

    invoke-direct {v4, v0}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    .end local v0           #e:Ljava/io/EOFException;
    :catchall_0
    move-exception v4

    invoke-virtual {p1, v2}, Lcom/lewa/gson/stream/JsonReader;->setLenient(Z)V

    throw v4

    .line 805
    :catch_1
    move-exception v0

    .line 806
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    new-instance v4, Lcom/lewa/gson/JsonSyntaxException;

    invoke-direct {v4, v0}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 807
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 809
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/lewa/gson/JsonSyntaxException;

    invoke-direct {v4, v0}, Lcom/lewa/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonSyntaxException;,
            Lcom/lewa/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 733
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/lewa/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/lewa/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 734
    .local v0, jsonReader:Lcom/lewa/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/lewa/gson/Gson;->fromJson(Lcom/lewa/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 735
    .local v1, object:Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/lewa/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/lewa/gson/stream/JsonReader;)V

    .line 736
    invoke-static {p2}, Lcom/lewa/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonIOException;,
            Lcom/lewa/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 760
    new-instance v0, Lcom/lewa/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/lewa/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 761
    .local v0, jsonReader:Lcom/lewa/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/lewa/gson/Gson;->fromJson(Lcom/lewa/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 762
    .local v1, object:Ljava/lang/Object;,"TT;"
    invoke-static {v1, v0}, Lcom/lewa/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/lewa/gson/stream/JsonReader;)V

    .line 763
    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 682
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 683
    .local v0, object:Ljava/lang/Object;
    invoke-static {p2}, Lcom/lewa/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 706
    if-nez p1, :cond_0

    .line 707
    const/4 v1, 0x0

    .line 711
    :goto_0
    return-object v1

    .line 709
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, reader:Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/lewa/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 711
    .local v1, target:Ljava/lang/Object;,"TT;"
    goto :goto_0
.end method

.method public getAdapter(Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, type:Lcom/lewa/gson/reflect/TypeToken;,"Lcom/lewa/gson/reflect/TypeToken<TT;>;"
    iget-object v7, p0, Lcom/lewa/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/gson/TypeAdapter;

    .line 338
    .local v0, cached:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<*>;"
    if-eqz v0, :cond_0

    .line 362
    .end local v0           #cached:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<*>;"
    :goto_0
    return-object v0

    .line 342
    .restart local v0       #cached:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<*>;"
    :cond_0
    iget-object v7, p0, Lcom/lewa/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 344
    .local v6, threadCalls:Ljava/util/Map;,"Ljava/util/Map<Lcom/lewa/gson/reflect/TypeToken<*>;Lcom/lewa/gson/Gson$FutureTypeAdapter<*>;>;"
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lewa/gson/Gson$FutureTypeAdapter;

    .line 345
    .local v5, ongoingCall:Lcom/lewa/gson/Gson$FutureTypeAdapter;,"Lcom/lewa/gson/Gson$FutureTypeAdapter<TT;>;"
    if-eqz v5, :cond_1

    move-object v0, v5

    .line 346
    goto :goto_0

    .line 349
    :cond_1
    new-instance v1, Lcom/lewa/gson/Gson$FutureTypeAdapter;

    invoke-direct {v1}, Lcom/lewa/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 350
    .local v1, call:Lcom/lewa/gson/Gson$FutureTypeAdapter;,"Lcom/lewa/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :try_start_0
    iget-object v7, p0, Lcom/lewa/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lewa/gson/TypeAdapterFactory;

    .line 353
    .local v3, factory:Lcom/lewa/gson/TypeAdapterFactory;
    invoke-interface {v3, p0, p1}, Lcom/lewa/gson/TypeAdapterFactory;->create(Lcom/lewa/gson/Gson;Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v2

    .line 354
    .local v2, candidate:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    if-eqz v2, :cond_2

    .line 355
    invoke-virtual {v1, v2}, Lcom/lewa/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/lewa/gson/TypeAdapter;)V

    .line 356
    iget-object v7, p0, Lcom/lewa/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v7, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    .line 360
    .end local v2           #candidate:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    .end local v3           #factory:Lcom/lewa/gson/TypeAdapterFactory;
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GSON cannot handle "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v7
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/lewa/gson/TypeAdapter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/lewa/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/lewa/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lewa/gson/Gson;->getAdapter(Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateAdapter(Lcom/lewa/gson/TypeAdapterFactory;Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;
    .locals 7
    .parameter "skipPast"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/gson/TypeAdapterFactory;",
            "Lcom/lewa/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 413
    .local p2, type:Lcom/lewa/gson/reflect/TypeToken;,"Lcom/lewa/gson/reflect/TypeToken<TT;>;"
    const/4 v3, 0x0

    .line 415
    .local v3, skipPastFound:Z
    iget-object v4, p0, Lcom/lewa/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/gson/TypeAdapterFactory;

    .line 416
    .local v1, factory:Lcom/lewa/gson/TypeAdapterFactory;
    if-nez v3, :cond_1

    .line 417
    if-ne v1, p1, :cond_0

    .line 418
    const/4 v3, 0x1

    goto :goto_0

    .line 423
    :cond_1
    invoke-interface {v1, p0, p2}, Lcom/lewa/gson/TypeAdapterFactory;->create(Lcom/lewa/gson/Gson;Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v0

    .line 424
    .local v0, candidate:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .line 425
    return-object v0

    .line 428
    .end local v0           #candidate:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    .end local v1           #factory:Lcom/lewa/gson/TypeAdapterFactory;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSON cannot serialize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public toJson(Lcom/lewa/gson/JsonElement;)Ljava/lang/String;
    .locals 2
    .parameter "jsonElement"

    .prologue
    .line 604
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 605
    .local v0, writer:Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lcom/lewa/gson/Gson;->toJson(Lcom/lewa/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 606
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 497
    if-nez p1, :cond_0

    .line 498
    sget-object v0, Lcom/lewa/gson/JsonNull;->INSTANCE:Lcom/lewa/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/lewa/gson/Gson;->toJson(Lcom/lewa/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lewa/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 519
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 520
    .local v0, writer:Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/lewa/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 521
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lcom/lewa/gson/JsonElement;Lcom/lewa/gson/stream/JsonWriter;)V
    .locals 5
    .parameter "jsonElement"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 647
    invoke-virtual {p2}, Lcom/lewa/gson/stream/JsonWriter;->isLenient()Z

    move-result v2

    .line 648
    .local v2, oldLenient:Z
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/lewa/gson/stream/JsonWriter;->setLenient(Z)V

    .line 649
    invoke-virtual {p2}, Lcom/lewa/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    .line 650
    .local v1, oldHtmlSafe:Z
    iget-boolean v4, p0, Lcom/lewa/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v4}, Lcom/lewa/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 651
    invoke-virtual {p2}, Lcom/lewa/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 652
    .local v3, oldSerializeNulls:Z
    iget-boolean v4, p0, Lcom/lewa/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v4}, Lcom/lewa/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 654
    :try_start_0
    invoke-static {p1, p2}, Lcom/lewa/gson/internal/Streams;->write(Lcom/lewa/gson/JsonElement;Lcom/lewa/gson/stream/JsonWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    invoke-virtual {p2, v2}, Lcom/lewa/gson/stream/JsonWriter;->setLenient(Z)V

    .line 659
    invoke-virtual {p2, v1}, Lcom/lewa/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 660
    invoke-virtual {p2, v3}, Lcom/lewa/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 662
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/lewa/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/lewa/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {p2, v2}, Lcom/lewa/gson/stream/JsonWriter;->setLenient(Z)V

    .line 659
    invoke-virtual {p2, v1}, Lcom/lewa/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 660
    invoke-virtual {p2, v3}, Lcom/lewa/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v4
.end method

.method public toJson(Lcom/lewa/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 3
    .parameter "jsonElement"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 619
    :try_start_0
    invoke-static {p2}, Lcom/lewa/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lewa/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/lewa/gson/stream/JsonWriter;

    move-result-object v1

    .line 620
    .local v1, jsonWriter:Lcom/lewa/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, v1}, Lcom/lewa/gson/Gson;->toJson(Lcom/lewa/gson/JsonElement;Lcom/lewa/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    return-void

    .line 621
    .end local v1           #jsonWriter:Lcom/lewa/gson/stream/JsonWriter;
    :catch_0
    move-exception v0

    .line 622
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .parameter "src"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 539
    if-eqz p1, :cond_0

    .line 540
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/lewa/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    sget-object v0, Lcom/lewa/gson/JsonNull;->INSTANCE:Lcom/lewa/gson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcom/lewa/gson/Gson;->toJson(Lcom/lewa/gson/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/lewa/gson/stream/JsonWriter;)V
    .locals 6
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-static {p2}, Lcom/lewa/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/lewa/gson/reflect/TypeToken;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lewa/gson/Gson;->getAdapter(Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v0

    .line 579
    .local v0, adapter:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<*>;"
    invoke-virtual {p3}, Lcom/lewa/gson/stream/JsonWriter;->isLenient()Z

    move-result v3

    .line 580
    .local v3, oldLenient:Z
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Lcom/lewa/gson/stream/JsonWriter;->setLenient(Z)V

    .line 581
    invoke-virtual {p3}, Lcom/lewa/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 582
    .local v2, oldHtmlSafe:Z
    iget-boolean v5, p0, Lcom/lewa/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v5}, Lcom/lewa/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 583
    invoke-virtual {p3}, Lcom/lewa/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v4

    .line 584
    .local v4, oldSerializeNulls:Z
    iget-boolean v5, p0, Lcom/lewa/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v5}, Lcom/lewa/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 586
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    invoke-virtual {p3, v3}, Lcom/lewa/gson/stream/JsonWriter;->setLenient(Z)V

    .line 591
    invoke-virtual {p3, v2}, Lcom/lewa/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 592
    invoke-virtual {p3, v4}, Lcom/lewa/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 594
    return-void

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lcom/lewa/gson/JsonIOException;

    invoke-direct {v5, v1}, Lcom/lewa/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p3, v3}, Lcom/lewa/gson/stream/JsonWriter;->setLenient(Z)V

    .line 591
    invoke-virtual {p3, v2}, Lcom/lewa/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 592
    invoke-virtual {p3, v4}, Lcom/lewa/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v5
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 3
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 564
    :try_start_0
    invoke-static {p3}, Lcom/lewa/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lewa/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/lewa/gson/stream/JsonWriter;

    move-result-object v1

    .line 565
    .local v1, jsonWriter:Lcom/lewa/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, p2, v1}, Lcom/lewa/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/lewa/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    return-void

    .line 566
    .end local v1           #jsonWriter:Lcom/lewa/gson/stream/JsonWriter;
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/lewa/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/lewa/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/lewa/gson/JsonElement;
    .locals 1
    .parameter "src"

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 456
    sget-object v0, Lcom/lewa/gson/JsonNull;->INSTANCE:Lcom/lewa/gson/JsonNull;

    .line 458
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lewa/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/lewa/gson/JsonElement;
    .locals 2
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 478
    new-instance v0, Lcom/lewa/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/lewa/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 479
    .local v0, writer:Lcom/lewa/gson/internal/bind/JsonTreeWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/lewa/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/lewa/gson/stream/JsonWriter;)V

    .line 480
    invoke-virtual {v0}, Lcom/lewa/gson/internal/bind/JsonTreeWriter;->get()Lcom/lewa/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "serializeNulls:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lewa/gson/Gson;->serializeNulls:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "factories:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",instanceCreators:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/gson/Gson;->constructorConstructor:Lcom/lewa/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 894
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
