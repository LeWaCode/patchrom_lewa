.class public final Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/lewa/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/lewa/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/lewa/gson/internal/ConstructorConstructor;)V
    .locals 0
    .parameter "constructorConstructor"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/lewa/gson/internal/ConstructorConstructor;

    .line 41
    return-void
.end method


# virtual methods
.method public create(Lcom/lewa/gson/Gson;Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;
    .locals 8
    .parameter "gson"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/gson/Gson;",
            "Lcom/lewa/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, typeToken:Lcom/lewa/gson/reflect/TypeToken;,"Lcom/lewa/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/lewa/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 46
    .local v7, type:Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/lewa/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v6

    .line 47
    .local v6, rawType:Ljava/lang/Class;,"Ljava/lang/Class<-TT;>;"
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {v7, v6}, Lcom/lewa/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 52
    .local v3, elementType:Ljava/lang/reflect/Type;
    invoke-static {v3}, Lcom/lewa/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/lewa/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lewa/gson/Gson;->getAdapter(Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v4

    .line 53
    .local v4, elementTypeAdapter:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<*>;"
    iget-object v1, p0, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/lewa/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lcom/lewa/gson/internal/ConstructorConstructor;->get(Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/internal/ObjectConstructor;

    move-result-object v5

    .line 56
    .local v5, constructor:Lcom/lewa/gson/internal/ObjectConstructor;,"Lcom/lewa/gson/internal/ObjectConstructor<TT;>;"
    new-instance v0, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/lewa/gson/internal/bind/CollectionTypeAdapterFactory;Lcom/lewa/gson/Gson;Ljava/lang/reflect/Type;Lcom/lewa/gson/TypeAdapter;Lcom/lewa/gson/internal/ObjectConstructor;)V

    .line 57
    .local v0, result:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    goto :goto_0
.end method
