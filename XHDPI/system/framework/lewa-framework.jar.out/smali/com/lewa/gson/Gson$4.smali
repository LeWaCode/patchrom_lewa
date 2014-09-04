.class Lcom/lewa/gson/Gson$4;
.super Lcom/lewa/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/gson/Gson;->doubleAdapter(Z)Lcom/lewa/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/gson/Gson;


# direct methods
.method constructor <init>(Lcom/lewa/gson/Gson;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/lewa/gson/Gson$4;->this$0:Lcom/lewa/gson/Gson;

    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Double;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->NULL:Lcom/lewa/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextNull()V

    .line 259
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

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
    .line 255
    invoke-virtual {p0, p1}, Lcom/lewa/gson/Gson$4;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 3
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    if-nez p2, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 269
    .local v0, doubleValue:D
    iget-object v2, p0, Lcom/lewa/gson/Gson$4;->this$0:Lcom/lewa/gson/Gson;

    #calls: Lcom/lewa/gson/Gson;->checkValidFloatingPoint(D)V
    invoke-static {v2, v0, v1}, Lcom/lewa/gson/Gson;->access$000(Lcom/lewa/gson/Gson;D)V

    .line 270
    invoke-virtual {p1, p2}, Lcom/lewa/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/lewa/gson/stream/JsonWriter;

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
    .line 255
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/gson/Gson$4;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
