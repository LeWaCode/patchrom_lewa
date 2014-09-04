.class Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/lewa/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/lewa/gson/reflect/TypeToken;ZZ)Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory;

.field final typeAdapter:Lcom/lewa/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic val$context:Lcom/lewa/gson/Gson;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Lcom/lewa/gson/reflect/TypeToken;

.field final synthetic val$isPrimitive:Z


# direct methods
.method constructor <init>(Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/lewa/gson/Gson;Lcom/lewa/gson/reflect/TypeToken;Ljava/lang/reflect/Field;Z)V
    .locals 2
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/lewa/gson/Gson;

    iput-object p6, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/lewa/gson/reflect/TypeToken;

    iput-object p7, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;-><init>(Ljava/lang/String;ZZ)V

    .line 82
    iget-object v0, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/lewa/gson/Gson;

    iget-object v1, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/lewa/gson/reflect/TypeToken;

    invoke-virtual {v0, v1}, Lcom/lewa/gson/Gson;->getAdapter(Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/lewa/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method read(Lcom/lewa/gson/stream/JsonReader;Ljava/lang/Object;)V
    .locals 2
    .parameter "reader"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/lewa/gson/TypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, fieldValue:Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    if-nez v1, :cond_1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    :cond_1
    return-void
.end method

.method write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 5
    .parameter "writer"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v2, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, fieldValue:Ljava/lang/Object;
    new-instance v1, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v2, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/lewa/gson/Gson;

    iget-object v3, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/lewa/gson/TypeAdapter;

    iget-object v4, p0, Lcom/lewa/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/lewa/gson/reflect/TypeToken;

    invoke-virtual {v4}, Lcom/lewa/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/lewa/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/lewa/gson/Gson;Lcom/lewa/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    .line 89
    .local v1, t:Lcom/lewa/gson/TypeAdapter;
    invoke-virtual {v1, p1, v0}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
