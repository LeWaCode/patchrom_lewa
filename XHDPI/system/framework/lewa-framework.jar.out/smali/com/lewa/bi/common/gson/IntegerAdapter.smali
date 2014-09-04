.class public Lcom/lewa/bi/common/gson/IntegerAdapter;
.super Ljava/lang/Object;
.source "IntegerAdapter.java"

# interfaces
.implements Lcom/lewa/gson/JsonSerializer;
.implements Lcom/lewa/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/gson/JsonSerializer",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/lewa/gson/JsonDeserializer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
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
.method public deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)Ljava/lang/Integer;
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

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
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
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/bi/common/gson/IntegerAdapter;->deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Integer;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;
    .locals 2
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/gson/JsonPrimitive;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

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
    .line 20
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/bi/common/gson/IntegerAdapter;->serialize(Ljava/lang/Integer;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
