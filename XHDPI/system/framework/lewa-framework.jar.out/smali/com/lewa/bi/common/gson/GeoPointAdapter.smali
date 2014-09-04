.class public Lcom/lewa/bi/common/gson/GeoPointAdapter;
.super Ljava/lang/Object;
.source "GeoPointAdapter.java"

# interfaces
.implements Lcom/lewa/gson/JsonSerializer;
.implements Lcom/lewa/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/gson/JsonSerializer",
        "<",
        "Lcom/lewa/bi/common/data/collect/GeoPoint;",
        ">;",
        "Lcom/lewa/gson/JsonDeserializer",
        "<",
        "Lcom/lewa/bi/common/data/collect/GeoPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static PATTERN:Ljava/util/regex/Pattern;

.field private static logger:Lcom/lewa/bi/common/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/gson/GeoPointAdapter;->PATTERN:Ljava/util/regex/Pattern;

    .line 28
    const-class v0, Lcom/lewa/bi/common/gson/GeoPointAdapter;

    invoke-static {v0}, Lcom/lewa/bi/common/util/LoggerFactory;->getLogger(Ljava/lang/Object;)Lcom/lewa/bi/common/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/gson/GeoPointAdapter;->logger:Lcom/lewa/bi/common/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/lewa/bi/common/data/collect/GeoPoint;
    .locals 7
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-static {p0}, Lcom/lewa/bi/common/util/ObjectUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    :goto_0
    return-object v1

    .line 34
    :cond_0
    sget-object v2, Lcom/lewa/bi/common/gson/GeoPointAdapter;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, values:[Ljava/lang/String;
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 37
    new-instance v2, Lcom/lewa/bi/common/data/collect/GeoPoint;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lewa/bi/common/data/collect/GeoPoint;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    .line 41
    :cond_1
    sget-object v2, Lcom/lewa/bi/common/gson/GeoPointAdapter;->logger:Lcom/lewa/bi/common/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo point not valid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lewa/bi/common/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)Lcom/lewa/bi/common/data/collect/GeoPoint;
    .locals 1
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/lewa/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/bi/common/gson/GeoPointAdapter;->parse(Ljava/lang/String;)Lcom/lewa/bi/common/data/collect/GeoPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/bi/common/gson/GeoPointAdapter;->deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)Lcom/lewa/bi/common/data/collect/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/lewa/bi/common/data/collect/GeoPoint;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;
    .locals 2
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 56
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/lewa/bi/common/data/collect/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    check-cast p1, Lcom/lewa/bi/common/data/collect/GeoPoint;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/bi/common/gson/GeoPointAdapter;->serialize(Lcom/lewa/bi/common/data/collect/GeoPoint;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
