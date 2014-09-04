.class Lcom/lewa/gson/Gson$1;
.super Ljava/lang/ThreadLocal;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/lewa/gson/reflect/TypeToken",
        "<*>;",
        "Lcom/lewa/gson/Gson$FutureTypeAdapter",
        "<*>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/gson/Gson;


# direct methods
.method constructor <init>(Lcom/lewa/gson/Gson;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lewa/gson/Gson$1;->this$0:Lcom/lewa/gson/Gson;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/lewa/gson/Gson$1;->initialValue()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/lewa/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/lewa/gson/Gson$FutureTypeAdapter",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
