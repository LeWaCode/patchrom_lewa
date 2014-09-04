.class final Lcom/lewa/gson/internal/bind/TypeAdapters$27;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/lewa/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/gson/internal/bind/TypeAdapters;->newFactory(Lcom/lewa/gson/reflect/TypeToken;Lcom/lewa/gson/TypeAdapter;)Lcom/lewa/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/lewa/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/lewa/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/lewa/gson/reflect/TypeToken;Lcom/lewa/gson/TypeAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/lewa/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/lewa/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/lewa/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/lewa/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/lewa/gson/Gson;Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;
    .locals 1
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
    .line 763
    .local p2, typeToken:Lcom/lewa/gson/reflect/TypeToken;,"Lcom/lewa/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/lewa/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/lewa/gson/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lcom/lewa/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/lewa/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
