.class final enum Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;
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
    name = "AlwaysFalsePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;",
        ">;",
        "Lcom/lewa/guava/base/Predicate",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;

.field public static final enum INSTANCE:Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    new-instance v0, Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;->INSTANCE:Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;

    .line 270
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;

    sget-object v1, Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;->INSTANCE:Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;->$VALUES:[Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;

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
    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;
    .locals 1
    .parameter "name"

    .prologue
    .line 270
    const-class v0, Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;

    return-object v0
.end method

.method public static values()[Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;->$VALUES:[Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;

    invoke-virtual {v0}, [Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string v0, "AlwaysFalse"

    return-object v0
.end method
