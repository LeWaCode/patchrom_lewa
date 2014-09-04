.class public interface abstract Lcom/lewa/gson/JsonDeserializationContext;
.super Ljava/lang/Object;
.source "JsonDeserializationContext.java"


# virtual methods
.method public abstract deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonParseException;
        }
    .end annotation
.end method
