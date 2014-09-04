.class final Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;
.super Lcom/lewa/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnumTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcom/lewa/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final constantToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nameToConstant:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p0, this:Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;,"Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    .local p1, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    .line 709
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    .line 710
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    .line 714
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    .local v1, arr$:[Ljava/lang/Enum;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 715
    .local v2, constant:Ljava/lang/Enum;,"TT;"
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 716
    .local v6, name:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const-class v8, Lcom/lewa/gson/annotations/SerializedName;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lewa/gson/annotations/SerializedName;

    .line 717
    .local v0, annotation:Lcom/lewa/gson/annotations/SerializedName;
    if-eqz v0, :cond_0

    .line 718
    invoke-interface {v0}, Lcom/lewa/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v6

    .line 720
    :cond_0
    iget-object v7, p0, Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v7, p0, Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 723
    .end local v0           #annotation:Lcom/lewa/gson/annotations/SerializedName;
    .end local v1           #arr$:[Ljava/lang/Enum;
    .end local v2           #constant:Ljava/lang/Enum;,"TT;"
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 724
    .local v3, e:Ljava/lang/NoSuchFieldException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 726
    .end local v3           #e:Ljava/lang/NoSuchFieldException;
    .restart local v1       #arr$:[Ljava/lang/Enum;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_1
    return-void
.end method


# virtual methods
.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Enum;
    .locals 2
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
    .line 728
    .local p0, this:Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;,"Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->NULL:Lcom/lewa/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 729
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextNull()V

    .line 730
    const/4 v0, 0x0

    .line 732
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    .local p0, this:Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;,"Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Enum;)V
    .locals 1
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
    .line 736
    .local p0, this:Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;,"Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    .local p2, value:Ljava/lang/Enum;,"TT;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/lewa/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    .line 737
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    .local p0, this:Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;,"Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    check-cast p2, Ljava/lang/Enum;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Enum;)V

    return-void
.end method
