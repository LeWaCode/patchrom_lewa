.class public Lcom/lewa/bi/common/gson/Base64TypeAdapter;
.super Ljava/lang/Object;
.source "Base64TypeAdapter.java"

# interfaces
.implements Lcom/lewa/gson/JsonSerializer;
.implements Lcom/lewa/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/gson/JsonSerializer",
        "<[B>;",
        "Lcom/lewa/gson/JsonDeserializer",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/bi/common/gson/Base64TypeAdapter;->deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)[B
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
    .line 25
    invoke-virtual {p1}, Lcom/lewa/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/bi/common/gson/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/bi/common/gson/Base64TypeAdapter;->serialize([BLjava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize([BLjava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;
    .locals 2
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 30
    new-instance v0, Lcom/lewa/gson/JsonPrimitive;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/lewa/bi/common/gson/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
