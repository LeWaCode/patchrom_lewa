.class Lcom/lewa/guava/collect/ImmutableEnumSet$EnumSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableEnumSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableEnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet$EnumSerializedForm;,"Lcom/lewa/guava/collect/ImmutableEnumSet$EnumSerializedForm<TE;>;"
    .local p1, delegate:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableEnumSet$EnumSerializedForm;->delegate:Ljava/util/EnumSet;

    .line 146
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 149
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet$EnumSerializedForm;,"Lcom/lewa/guava/collect/ImmutableEnumSet$EnumSerializedForm<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableEnumSet;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableEnumSet$EnumSerializedForm;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableEnumSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
