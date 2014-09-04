.class Lcom/lewa/gson/Gson$FutureTypeAdapter;
.super Lcom/lewa/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/lewa/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 862
    .local p0, this:Lcom/lewa/gson/Gson$FutureTypeAdapter;,"Lcom/lewa/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
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
    .line 873
    .local p0, this:Lcom/lewa/gson/Gson$FutureTypeAdapter;,"Lcom/lewa/gson/Gson$FutureTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/lewa/gson/Gson$FutureTypeAdapter;->delegate:Lcom/lewa/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/Gson$FutureTypeAdapter;->delegate:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/TypeAdapter;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/lewa/gson/TypeAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, this:Lcom/lewa/gson/Gson$FutureTypeAdapter;,"Lcom/lewa/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p1, typeAdapter:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/lewa/gson/Gson$FutureTypeAdapter;->delegate:Lcom/lewa/gson/TypeAdapter;

    if-eqz v0, :cond_0

    .line 867
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 869
    :cond_0
    iput-object p1, p0, Lcom/lewa/gson/Gson$FutureTypeAdapter;->delegate:Lcom/lewa/gson/TypeAdapter;

    .line 870
    return-void
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
    .line 880
    .local p0, this:Lcom/lewa/gson/Gson$FutureTypeAdapter;,"Lcom/lewa/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/lewa/gson/Gson$FutureTypeAdapter;->delegate:Lcom/lewa/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/Gson$FutureTypeAdapter;->delegate:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 884
    return-void
.end method
