.class public final Lcom/lewa/gson/JsonObject;
.super Lcom/lewa/gson/JsonElement;
.source "JsonObject.java"


# instance fields
.field private final members:Lcom/lewa/gson/internal/StringMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/internal/StringMap",
            "<",
            "Lcom/lewa/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lewa/gson/JsonElement;-><init>()V

    .line 37
    new-instance v0, Lcom/lewa/gson/internal/StringMap;

    invoke-direct {v0}, Lcom/lewa/gson/internal/StringMap;-><init>()V

    iput-object v0, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    .line 43
    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/lewa/gson/JsonElement;
    .locals 1
    .parameter "value"

    .prologue
    .line 122
    if-nez p1, :cond_0

    sget-object v0, Lcom/lewa/gson/JsonNull;->INSTANCE:Lcom/lewa/gson/JsonNull;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/lewa/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/lewa/gson/JsonElement;)V
    .locals 2
    .parameter "property"
    .parameter "value"

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/lewa/gson/JsonNull;->INSTANCE:Lcom/lewa/gson/JsonNull;

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    invoke-static {p1}, Lcom/lewa/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/lewa/gson/internal/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lcom/lewa/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lewa/gson/JsonObject;->add(Ljava/lang/String;Lcom/lewa/gson/JsonElement;)V

    .line 102
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lcom/lewa/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lewa/gson/JsonObject;->add(Ljava/lang/String;Lcom/lewa/gson/JsonElement;)V

    .line 113
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/lewa/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lewa/gson/JsonObject;->add(Ljava/lang/String;Lcom/lewa/gson/JsonElement;)V

    .line 91
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lcom/lewa/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lewa/gson/JsonObject;->add(Ljava/lang/String;Lcom/lewa/gson/JsonElement;)V

    .line 80
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/lewa/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/lewa/gson/internal/StringMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 191
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/lewa/gson/JsonObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/lewa/gson/JsonObject;

    .end local p1
    iget-object v0, p1, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    iget-object v1, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0, v1}, Lcom/lewa/gson/internal/StringMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/lewa/gson/JsonElement;
    .locals 2
    .parameter "memberName"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v1, p1}, Lcom/lewa/gson/internal/StringMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v1, p1}, Lcom/lewa/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/gson/JsonElement;

    .line 154
    .local v0, member:Lcom/lewa/gson/JsonElement;
    if-nez v0, :cond_0

    sget-object v0, Lcom/lewa/gson/JsonNull;->INSTANCE:Lcom/lewa/gson/JsonNull;

    .line 156
    .end local v0           #member:Lcom/lewa/gson/JsonElement;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcom/lewa/gson/JsonArray;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/gson/JsonArray;

    return-object v0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcom/lewa/gson/JsonObject;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/gson/JsonObject;

    return-object v0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcom/lewa/gson/JsonPrimitive;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/gson/JsonPrimitive;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "memberName"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/internal/StringMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/lewa/gson/internal/StringMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/lewa/gson/JsonElement;
    .locals 1
    .parameter "property"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lewa/gson/JsonObject;->members:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/internal/StringMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/gson/JsonElement;

    return-object v0
.end method
