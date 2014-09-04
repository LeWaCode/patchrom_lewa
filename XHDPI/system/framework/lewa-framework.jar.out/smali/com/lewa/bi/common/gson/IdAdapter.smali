.class public Lcom/lewa/bi/common/gson/IdAdapter;
.super Ljava/lang/Object;
.source "IdAdapter.java"

# interfaces
.implements Lcom/lewa/gson/JsonSerializer;
.implements Lcom/lewa/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/lewa/bi/common/data/BaseId;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lewa/gson/JsonSerializer",
        "<TT;>;",
        "Lcom/lewa/gson/JsonDeserializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/lewa/bi/common/gson/IdAdapter;,"Lcom/lewa/bi/common/gson/IdAdapter<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/bi/common/gson/IdAdapter;->constructor:Ljava/lang/reflect/Constructor;

    .line 34
    iget-object v1, p0, Lcom/lewa/bi/common/gson/IdAdapter;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 37
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(Ljava/lang/Class;)Lcom/lewa/bi/common/gson/IdAdapter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lewa/bi/common/data/BaseId;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/lewa/bi/common/gson/IdAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/lewa/bi/common/gson/IdAdapter;

    invoke-direct {v0, p0}, Lcom/lewa/bi/common/gson/IdAdapter;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)Lcom/lewa/bi/common/data/BaseId;
    .locals 2
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/lewa/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/lewa/bi/common/gson/IdAdapter;,"Lcom/lewa/bi/common/gson/IdAdapter<TT;>;"
    invoke-virtual {p1}, Lcom/lewa/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lcom/lewa/bi/common/util/ObjectUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 49
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/lewa/bi/common/gson/IdAdapter;->newInstance(Ljava/lang/String;)Lcom/lewa/bi/common/data/BaseId;

    move-result-object v1

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
    .line 23
    .local p0, this:Lcom/lewa/bi/common/gson/IdAdapter;,"Lcom/lewa/bi/common/gson/IdAdapter<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/bi/common/gson/IdAdapter;->deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)Lcom/lewa/bi/common/data/BaseId;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Ljava/lang/String;)Lcom/lewa/bi/common/data/BaseId;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/lewa/bi/common/gson/IdAdapter;,"Lcom/lewa/bi/common/gson/IdAdapter<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/lewa/bi/common/gson/IdAdapter;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/bi/common/data/BaseId;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public serialize(Lcom/lewa/bi/common/data/BaseId;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;
    .locals 2
    .parameter
    .parameter "typeOfSrc"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/lewa/gson/JsonSerializationContext;",
            ")",
            "Lcom/lewa/gson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/lewa/bi/common/gson/IdAdapter;,"Lcom/lewa/bi/common/gson/IdAdapter<TT;>;"
    .local p1, src:Lcom/lewa/bi/common/data/BaseId;,"TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lewa/bi/common/data/BaseId;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/lewa/bi/common/data/BaseId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/lewa/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/lewa/bi/common/data/BaseId;->getId()Ljava/lang/String;

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
    .line 23
    .local p0, this:Lcom/lewa/bi/common/gson/IdAdapter;,"Lcom/lewa/bi/common/gson/IdAdapter<TT;>;"
    check-cast p1, Lcom/lewa/bi/common/data/BaseId;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lewa/bi/common/gson/IdAdapter;->serialize(Lcom/lewa/bi/common/data/BaseId;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
