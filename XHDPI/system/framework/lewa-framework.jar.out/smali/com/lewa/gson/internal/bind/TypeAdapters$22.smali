.class final Lcom/lewa/gson/internal/bind/TypeAdapters$22;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/lewa/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/lewa/gson/Gson;Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;
    .locals 3
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
    .line 510
    .local p2, typeToken:Lcom/lewa/gson/reflect/TypeToken;,"Lcom/lewa/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/lewa/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/sql/Timestamp;

    if-eq v1, v2, :cond_0

    .line 511
    const/4 v1, 0x0

    .line 515
    :goto_0
    return-object v1

    .line 514
    :cond_0
    const-class v1, Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/lewa/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v0

    .line 515
    .local v0, dateTypeAdapter:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<Ljava/util/Date;>;"
    new-instance v1, Lcom/lewa/gson/internal/bind/TypeAdapters$22$1;

    invoke-direct {v1, p0, v0}, Lcom/lewa/gson/internal/bind/TypeAdapters$22$1;-><init>(Lcom/lewa/gson/internal/bind/TypeAdapters$22;Lcom/lewa/gson/TypeAdapter;)V

    goto :goto_0
.end method
