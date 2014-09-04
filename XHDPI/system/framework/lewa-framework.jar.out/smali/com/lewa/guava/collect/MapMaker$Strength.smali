.class abstract enum Lcom/lewa/guava/collect/MapMaker$Strength;
.super Ljava/lang/Enum;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/guava/collect/MapMaker$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/guava/collect/MapMaker$Strength;

.field public static final enum SOFT:Lcom/lewa/guava/collect/MapMaker$Strength;

.field public static final enum STRONG:Lcom/lewa/guava/collect/MapMaker$Strength;

.field public static final enum WEAK:Lcom/lewa/guava/collect/MapMaker$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    new-instance v0, Lcom/lewa/guava/collect/MapMaker$Strength$1;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/collect/MapMaker$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/guava/collect/MapMaker$Strength;->WEAK:Lcom/lewa/guava/collect/MapMaker$Strength;

    .line 403
    new-instance v0, Lcom/lewa/guava/collect/MapMaker$Strength$2;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lcom/lewa/guava/collect/MapMaker$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/guava/collect/MapMaker$Strength;->SOFT:Lcom/lewa/guava/collect/MapMaker$Strength;

    .line 432
    new-instance v0, Lcom/lewa/guava/collect/MapMaker$Strength$3;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v4}, Lcom/lewa/guava/collect/MapMaker$Strength$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/guava/collect/MapMaker$Strength;->STRONG:Lcom/lewa/guava/collect/MapMaker$Strength;

    .line 373
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lewa/guava/collect/MapMaker$Strength;

    sget-object v1, Lcom/lewa/guava/collect/MapMaker$Strength;->WEAK:Lcom/lewa/guava/collect/MapMaker$Strength;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lewa/guava/collect/MapMaker$Strength;->SOFT:Lcom/lewa/guava/collect/MapMaker$Strength;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lewa/guava/collect/MapMaker$Strength;->STRONG:Lcom/lewa/guava/collect/MapMaker$Strength;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lewa/guava/collect/MapMaker$Strength;->$VALUES:[Lcom/lewa/guava/collect/MapMaker$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/lewa/guava/collect/MapMaker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 373
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/MapMaker$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/guava/collect/MapMaker$Strength;
    .locals 1
    .parameter "name"

    .prologue
    .line 373
    const-class v0, Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/MapMaker$Strength;

    return-object v0
.end method

.method public static values()[Lcom/lewa/guava/collect/MapMaker$Strength;
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/lewa/guava/collect/MapMaker$Strength;->$VALUES:[Lcom/lewa/guava/collect/MapMaker$Strength;

    invoke-virtual {v0}, [Lcom/lewa/guava/collect/MapMaker$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/guava/collect/MapMaker$Strength;

    return-object v0
.end method


# virtual methods
.method abstract copyEntry(Ljava/lang/Object;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method abstract equal(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method abstract hash(Ljava/lang/Object;)I
.end method

.method abstract newEntry(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method abstract referenceValue(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/lewa/guava/collect/MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/lewa/guava/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end method
