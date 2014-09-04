.class final enum Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;
.super Ljava/lang/Enum;
.source "Predicates.java"

# interfaces
.implements Lcom/lewa/guava/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AlwaysTruePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;",
        ">;",
        "Lcom/lewa/guava/base/Predicate",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;

.field public static final enum INSTANCE:Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    new-instance v0, Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;->INSTANCE:Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;

    .line 257
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;

    sget-object v1, Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;->INSTANCE:Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;->$VALUES:[Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;

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
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;
    .locals 1
    .parameter "name"

    .prologue
    .line 257
    const-class v0, Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;

    return-object v0
.end method

.method public static values()[Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;->$VALUES:[Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;

    invoke-virtual {v0}, [Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "AlwaysTrue"

    return-object v0
.end method
