.class final Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lcom/lewa/gson/TypeAdapter;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
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
.field private final context:Lcom/lewa/gson/Gson;

.field private final delegate:Lcom/lewa/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/lewa/gson/Gson;Lcom/lewa/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/Gson;",
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;,"Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, delegate:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/lewa/gson/Gson;

    .line 34
    iput-object p2, p0, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/lewa/gson/TypeAdapter;

    .line 35
    iput-object p3, p0, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1
    .parameter "type"
    .parameter "value"

    .prologue
    .line 75
    .local p0, this:Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;,"Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 79
    :cond_1
    return-object p1
.end method


# virtual methods
.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
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
    .line 40
    .local p0, this:Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;,"Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    iget-object v0, p0, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/TypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 5
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
    .line 52
    .local p0, this:Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;,"Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/lewa/gson/TypeAdapter;

    .line 53
    .local v0, chosen:Lcom/lewa/gson/TypeAdapter;
    iget-object v3, p0, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v3, p2}, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 54
    .local v1, runtimeType:Ljava/lang/reflect/Type;
    iget-object v3, p0, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    if-eq v1, v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/lewa/gson/Gson;

    invoke-static {v1}, Lcom/lewa/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/lewa/gson/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lewa/gson/Gson;->getAdapter(Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v2

    .line 56
    .local v2, runtimeTypeAdapter:Lcom/lewa/gson/TypeAdapter;
    instance-of v3, v2, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v3, :cond_1

    .line 58
    move-object v0, v2

    .line 68
    .end local v2           #runtimeTypeAdapter:Lcom/lewa/gson/TypeAdapter;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 69
    return-void

    .line 59
    .restart local v2       #runtimeTypeAdapter:Lcom/lewa/gson/TypeAdapter;
    :cond_1
    iget-object v3, p0, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/lewa/gson/TypeAdapter;

    instance-of v3, v3, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v3, :cond_2

    .line 62
    iget-object v0, p0, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/lewa/gson/TypeAdapter;

    goto :goto_0

    .line 65
    :cond_2
    move-object v0, v2

    goto :goto_0
.end method
