.class public interface abstract Lcom/lewa/gson/ExclusionStrategy;
.super Ljava/lang/Object;
.source "ExclusionStrategy.java"


# virtual methods
.method public abstract shouldSkipClass(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public abstract shouldSkipField(Lcom/lewa/gson/FieldAttributes;)Z
.end method
