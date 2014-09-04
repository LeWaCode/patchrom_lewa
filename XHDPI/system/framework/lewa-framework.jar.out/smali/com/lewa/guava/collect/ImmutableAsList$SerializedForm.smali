.class Lcom/lewa/guava/collect/ImmutableAsList$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableAsList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableAsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final collection:Lcom/lewa/guava/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/ImmutableCollection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, collection:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableAsList$SerializedForm;->collection:Lcom/lewa/guava/collect/ImmutableCollection;

    .line 83
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableAsList$SerializedForm;->collection:Lcom/lewa/guava/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableCollection;->asList()Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
