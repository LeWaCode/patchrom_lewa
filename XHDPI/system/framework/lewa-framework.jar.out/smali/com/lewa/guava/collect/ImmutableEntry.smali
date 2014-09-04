.class Lcom/lewa/guava/collect/ImmutableEntry;
.super Lcom/lewa/guava/collect/AbstractMapEntry;
.source "ImmutableEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/AbstractMapEntry",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEntry;,"Lcom/lewa/guava/collect/ImmutableEntry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/AbstractMapEntry;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableEntry;->key:Ljava/lang/Object;

    .line 68
    iput-object p2, p0, Lcom/lewa/guava/collect/ImmutableEntry;->value:Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEntry;,"Lcom/lewa/guava/collect/ImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEntry;,"Lcom/lewa/guava/collect/ImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
