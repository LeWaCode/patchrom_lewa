.class final enum Lcom/lewa/guava/base/Predicates$NotNullPredicate;
.super Ljava/lang/Enum;
.source "Predicates.java"

# interfaces
.implements Lcom/lewa/guava/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NotNullPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/guava/base/Predicates$NotNullPredicate;",
        ">;",
        "Lcom/lewa/guava/base/Predicate",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/guava/base/Predicates$NotNullPredicate;

.field public static final enum INSTANCE:Lcom/lewa/guava/base/Predicates$NotNullPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 452
    new-instance v0, Lcom/lewa/guava/base/Predicates$NotNullPredicate;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/base/Predicates$NotNullPredicate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/guava/base/Predicates$NotNullPredicate;->INSTANCE:Lcom/lewa/guava/base/Predicates$NotNullPredicate;

    .line 451
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lewa/guava/base/Predicates$NotNullPredicate;

    sget-object v1, Lcom/lewa/guava/base/Predicates$NotNullPredicate;->INSTANCE:Lcom/lewa/guava/base/Predicates$NotNullPredicate;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lewa/guava/base/Predicates$NotNullPredicate;->$VALUES:[Lcom/lewa/guava/base/Predicates$NotNullPredicate;

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
    .line 451
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/guava/base/Predicates$NotNullPredicate;
    .locals 1
    .parameter "name"

    .prologue
    .line 451
    const-class v0, Lcom/lewa/guava/base/Predicates$NotNullPredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Predicates$NotNullPredicate;

    return-object v0
.end method

.method public static values()[Lcom/lewa/guava/base/Predicates$NotNullPredicate;
    .locals 1

    .prologue
    .line 451
    sget-object v0, Lcom/lewa/guava/base/Predicates$NotNullPredicate;->$VALUES:[Lcom/lewa/guava/base/Predicates$NotNullPredicate;

    invoke-virtual {v0}, [Lcom/lewa/guava/base/Predicates$NotNullPredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/guava/base/Predicates$NotNullPredicate;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 455
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    const-string v0, "NotNull"

    return-object v0
.end method
