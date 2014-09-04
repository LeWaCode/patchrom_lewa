.class final enum Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "Ints.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/primitives/Ints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<[I>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    new-instance v0, Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;->INSTANCE:Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;

    .line 419
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;

    sget-object v1, Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;->INSTANCE:Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;->$VALUES:[Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;

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
    .line 419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;
    .locals 1
    .parameter "name"

    .prologue
    .line 419
    const-class v0, Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;->$VALUES:[Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 419
    check-cast p1, [I

    .end local p1
    check-cast p2, [I

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/primitives/Ints$LexicographicalComparator;->compare([I[I)I

    move-result v0

    return v0
.end method

.method public compare([I[I)I
    .locals 5
    .parameter "left"
    .parameter "right"

    .prologue
    .line 423
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 424
    .local v1, minLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 425
    aget v3, p1, v0

    aget v4, p2, v0

    invoke-static {v3, v4}, Lcom/lewa/guava/primitives/Ints;->compare(II)I

    move-result v2

    .line 426
    .local v2, result:I
    if-eqz v2, :cond_0

    .line 430
    .end local v2           #result:I
    :goto_1
    return v2

    .line 424
    .restart local v2       #result:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    .end local v2           #result:I
    :cond_1
    array-length v3, p1

    array-length v4, p2

    sub-int v2, v3, v4

    goto :goto_1
.end method
