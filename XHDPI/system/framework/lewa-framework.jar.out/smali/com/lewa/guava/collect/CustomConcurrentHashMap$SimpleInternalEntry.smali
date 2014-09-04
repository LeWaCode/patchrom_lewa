.class Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleInternalEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final next:Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry;)V
    .locals 0
    .parameter
    .end parameter
    .parameter "hash"
    .end parameter
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2186
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    .local p4, next:Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2187
    iput-object p1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry;->key:Ljava/lang/Object;

    .line 2188
    iput p2, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry;->hash:I

    .line 2189
    iput-object p3, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    .line 2190
    iput-object p4, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry;->next:Lcom/lewa/guava/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    .line 2191
    return-void
.end method
