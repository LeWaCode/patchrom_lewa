.class Lcom/lewa/gson/TypeAdapter$1;
.super Lcom/lewa/gson/TypeAdapter;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/gson/TypeAdapter;->nullSafe()Lcom/lewa/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/lewa/gson/TypeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    .local p0, this:Lcom/lewa/gson/TypeAdapter$1;,"Lcom/lewa/gson/TypeAdapter.1;"
    iput-object p1, p0, Lcom/lewa/gson/TypeAdapter$1;->this$0:Lcom/lewa/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
    .parameter "reader"
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
    .line 195
    .local p0, this:Lcom/lewa/gson/TypeAdapter$1;,"Lcom/lewa/gson/TypeAdapter.1;"
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->NULL:Lcom/lewa/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextNull()V

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/TypeAdapter$1;->this$0:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/TypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V
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
    .line 188
    .local p0, this:Lcom/lewa/gson/TypeAdapter$1;,"Lcom/lewa/gson/TypeAdapter.1;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    if-nez p2, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/TypeAdapter$1;->this$0:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
