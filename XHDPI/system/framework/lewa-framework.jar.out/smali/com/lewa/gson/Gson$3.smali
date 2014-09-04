.class Lcom/lewa/gson/Gson$3;
.super Ljava/lang/Object;
.source "Gson.java"

# interfaces
.implements Lcom/lewa/gson/JsonSerializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/gson/Gson;


# direct methods
.method constructor <init>(Lcom/lewa/gson/Gson;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lewa/gson/Gson$3;->this$0:Lcom/lewa/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/lewa/gson/JsonElement;
    .locals 1
    .parameter "src"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lewa/gson/Gson$3;->this$0:Lcom/lewa/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/lewa/gson/JsonElement;
    .locals 1
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lewa/gson/Gson$3;->this$0:Lcom/lewa/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
