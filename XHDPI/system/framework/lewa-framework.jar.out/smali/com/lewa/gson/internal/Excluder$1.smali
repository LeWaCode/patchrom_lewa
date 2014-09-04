.class Lcom/lewa/gson/internal/Excluder$1;
.super Lcom/lewa/gson/TypeAdapter;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/gson/internal/Excluder;->create(Lcom/lewa/gson/Gson;Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;
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
.field private delegate:Lcom/lewa/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lewa/gson/internal/Excluder;

.field final synthetic val$gson:Lcom/lewa/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/lewa/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/lewa/gson/internal/Excluder;ZZLcom/lewa/gson/Gson;Lcom/lewa/gson/reflect/TypeToken;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lewa/gson/internal/Excluder$1;->this$0:Lcom/lewa/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/lewa/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/lewa/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/lewa/gson/internal/Excluder$1;->val$gson:Lcom/lewa/gson/Gson;

    iput-object p5, p0, Lcom/lewa/gson/internal/Excluder$1;->val$type:Lcom/lewa/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lcom/lewa/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lewa/gson/internal/Excluder$1;->delegate:Lcom/lewa/gson/TypeAdapter;

    .line 142
    .local v0, d:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .end local v0           #d:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    :goto_0
    return-object v0

    .restart local v0       #d:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/lewa/gson/internal/Excluder$1;->val$gson:Lcom/lewa/gson/Gson;

    iget-object v2, p0, Lcom/lewa/gson/internal/Excluder$1;->this$0:Lcom/lewa/gson/internal/Excluder;

    iget-object v3, p0, Lcom/lewa/gson/internal/Excluder$1;->val$type:Lcom/lewa/gson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3}, Lcom/lewa/gson/Gson;->getDelegateAdapter(Lcom/lewa/gson/TypeAdapterFactory;Lcom/lewa/gson/reflect/TypeToken;)Lcom/lewa/gson/TypeAdapter;

    move-result-object v0

    .end local v0           #d:Lcom/lewa/gson/TypeAdapter;,"Lcom/lewa/gson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/lewa/gson/internal/Excluder$1;->delegate:Lcom/lewa/gson/TypeAdapter;

    goto :goto_0
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
    .line 125
    iget-boolean v0, p0, Lcom/lewa/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->skipValue()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/lewa/gson/internal/Excluder$1;->delegate()Lcom/lewa/gson/TypeAdapter;

    move-result-object v0

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
    .line 133
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-boolean v0, p0, Lcom/lewa/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/lewa/gson/internal/Excluder$1;->delegate()Lcom/lewa/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lewa/gson/TypeAdapter;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
