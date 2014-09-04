.class final enum Lcom/lewa/guava/collect/AbstractIterator$State;
.super Ljava/lang/Enum;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/guava/collect/AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/guava/collect/AbstractIterator$State;

.field public static final enum DONE:Lcom/lewa/guava/collect/AbstractIterator$State;

.field public static final enum FAILED:Lcom/lewa/guava/collect/AbstractIterator$State;

.field public static final enum NOT_READY:Lcom/lewa/guava/collect/AbstractIterator$State;

.field public static final enum READY:Lcom/lewa/guava/collect/AbstractIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/lewa/guava/collect/AbstractIterator$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/guava/collect/AbstractIterator$State;->READY:Lcom/lewa/guava/collect/AbstractIterator$State;

    .line 102
    new-instance v0, Lcom/lewa/guava/collect/AbstractIterator$State;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/lewa/guava/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/guava/collect/AbstractIterator$State;->NOT_READY:Lcom/lewa/guava/collect/AbstractIterator$State;

    .line 105
    new-instance v0, Lcom/lewa/guava/collect/AbstractIterator$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/lewa/guava/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/guava/collect/AbstractIterator$State;->DONE:Lcom/lewa/guava/collect/AbstractIterator$State;

    .line 108
    new-instance v0, Lcom/lewa/guava/collect/AbstractIterator$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/lewa/guava/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/guava/collect/AbstractIterator$State;->FAILED:Lcom/lewa/guava/collect/AbstractIterator$State;

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lewa/guava/collect/AbstractIterator$State;

    sget-object v1, Lcom/lewa/guava/collect/AbstractIterator$State;->READY:Lcom/lewa/guava/collect/AbstractIterator$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lewa/guava/collect/AbstractIterator$State;->NOT_READY:Lcom/lewa/guava/collect/AbstractIterator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lewa/guava/collect/AbstractIterator$State;->DONE:Lcom/lewa/guava/collect/AbstractIterator$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lewa/guava/collect/AbstractIterator$State;->FAILED:Lcom/lewa/guava/collect/AbstractIterator$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lewa/guava/collect/AbstractIterator$State;->$VALUES:[Lcom/lewa/guava/collect/AbstractIterator$State;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/guava/collect/AbstractIterator$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 97
    const-class v0, Lcom/lewa/guava/collect/AbstractIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/AbstractIterator$State;

    return-object v0
.end method

.method public static values()[Lcom/lewa/guava/collect/AbstractIterator$State;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/lewa/guava/collect/AbstractIterator$State;->$VALUES:[Lcom/lewa/guava/collect/AbstractIterator$State;

    invoke-virtual {v0}, [Lcom/lewa/guava/collect/AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/guava/collect/AbstractIterator$State;

    return-object v0
.end method
