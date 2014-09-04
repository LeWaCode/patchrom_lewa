.class Lcom/lewa/guava/collect/Maps$UnmodifiableEntrySet;
.super Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;
.source "Maps.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Maps$UnmodifiableEntries",
        "<TK;TV;>;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntrySet;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntrySet<TK;TV;>;"
    .local p1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1}, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;-><init>(Ljava/util/Collection;)V

    .line 619
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 624
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntrySet;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntrySet<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Collections2;->setEquals(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 628
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntrySet;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntrySet<TK;TV;>;"
    invoke-static {p0}, Lcom/lewa/guava/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
