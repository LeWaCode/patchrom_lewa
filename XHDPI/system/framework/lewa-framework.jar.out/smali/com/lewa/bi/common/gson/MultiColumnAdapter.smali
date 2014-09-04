.class public Lcom/lewa/bi/common/gson/MultiColumnAdapter;
.super Ljava/lang/Object;
.source "MultiColumnAdapter.java"

# interfaces
.implements Lcom/lewa/gson/JsonSerializer;
.implements Lcom/lewa/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/gson/JsonSerializer",
        "<",
        "Lcom/lewa/bi/common/data/MultiColumn;",
        ">;",
        "Lcom/lewa/gson/JsonDeserializer",
        "<",
        "Lcom/lewa/bi/common/data/MultiColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static propertiesType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    :try_start_0
    const-class v1, Lcom/lewa/bi/common/data/MultiColumn;

    const-string v2, "properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    sput-object v1, Lcom/lewa/bi/common/gson/MultiColumnAdapter;->propertiesType:Ljava/lang/reflect/Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)Lcom/lewa/bi/common/data/MultiColumn;
    .locals 5
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 38
    move-object v3, p1

    check-cast v3, Lcom/lewa/gson/JsonObject;

    const-string v4, "properties"

    invoke-virtual {v3, v4}, Lcom/lewa/gson/JsonObject;->get(Ljava/lang/String;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    .line 39
    .local v0, propertiesElement:Lcom/lewa/gson/JsonElement;
    if-eqz v0, :cond_0

    .line 40
    move-object p1, v0

    .line 42
    :cond_0
    sget-object v3, Lcom/lewa/bi/common/gson/MultiColumnAdapter;->propertiesType:Ljava/lang/reflect/Type;

    invoke-interface {p3, p1, v3}, Lcom/lewa/gson/JsonDeserializationContext;->deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 43
    .local v1, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/lewa/bi/common/data/MultiColumn;

    invoke-direct {v2}, Lcom/lewa/bi/common/data/MultiColumn;-><init>()V

    .line 44
    .local v2, result:Lcom/lewa/bi/common/data/MultiColumn;
    invoke-virtual {v2, v1}, Lcom/lewa/bi/common/data/MultiColumn;->setProperties(Ljava/util/Map;)V

    .line 45
    return-object v2
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
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/bi/common/gson/MultiColumnAdapter;->deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)Lcom/lewa/bi/common/data/MultiColumn;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/lewa/bi/common/data/MultiColumn;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;
    .locals 2
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lewa/bi/common/data/MultiColumn;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/lewa/bi/common/data/MultiColumn;->getProperties()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/lewa/bi/common/gson/MultiColumnAdapter;->propertiesType:Ljava/lang/reflect/Type;

    invoke-interface {p3, v0, v1}, Lcom/lewa/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    check-cast p1, Lcom/lewa/bi/common/data/MultiColumn;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/bi/common/gson/MultiColumnAdapter;->serialize(Lcom/lewa/bi/common/data/MultiColumn;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
