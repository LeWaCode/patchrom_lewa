.class public final enum Llewa/laml/data/Expression$BinaryExpression$Ope;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression$BinaryExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/laml/data/Expression$BinaryExpression$Ope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/laml/data/Expression$BinaryExpression$Ope;

.field public static final enum ADD:Llewa/laml/data/Expression$BinaryExpression$Ope;

.field public static final enum DIV:Llewa/laml/data/Expression$BinaryExpression$Ope;

.field public static final enum INVALID:Llewa/laml/data/Expression$BinaryExpression$Ope;

.field public static final enum MIN:Llewa/laml/data/Expression$BinaryExpression$Ope;

.field public static final enum MOD:Llewa/laml/data/Expression$BinaryExpression$Ope;

.field public static final enum MUL:Llewa/laml/data/Expression$BinaryExpression$Ope;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 366
    new-instance v0, Llewa/laml/data/Expression$BinaryExpression$Ope;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Llewa/laml/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->INVALID:Llewa/laml/data/Expression$BinaryExpression$Ope;

    new-instance v0, Llewa/laml/data/Expression$BinaryExpression$Ope;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v4}, Llewa/laml/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->ADD:Llewa/laml/data/Expression$BinaryExpression$Ope;

    new-instance v0, Llewa/laml/data/Expression$BinaryExpression$Ope;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v5}, Llewa/laml/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->MIN:Llewa/laml/data/Expression$BinaryExpression$Ope;

    new-instance v0, Llewa/laml/data/Expression$BinaryExpression$Ope;

    const-string v1, "MUL"

    invoke-direct {v0, v1, v6}, Llewa/laml/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->MUL:Llewa/laml/data/Expression$BinaryExpression$Ope;

    new-instance v0, Llewa/laml/data/Expression$BinaryExpression$Ope;

    const-string v1, "DIV"

    invoke-direct {v0, v1, v7}, Llewa/laml/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->DIV:Llewa/laml/data/Expression$BinaryExpression$Ope;

    new-instance v0, Llewa/laml/data/Expression$BinaryExpression$Ope;

    const-string v1, "MOD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Llewa/laml/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->MOD:Llewa/laml/data/Expression$BinaryExpression$Ope;

    .line 365
    const/4 v0, 0x6

    new-array v0, v0, [Llewa/laml/data/Expression$BinaryExpression$Ope;

    sget-object v1, Llewa/laml/data/Expression$BinaryExpression$Ope;->INVALID:Llewa/laml/data/Expression$BinaryExpression$Ope;

    aput-object v1, v0, v3

    sget-object v1, Llewa/laml/data/Expression$BinaryExpression$Ope;->ADD:Llewa/laml/data/Expression$BinaryExpression$Ope;

    aput-object v1, v0, v4

    sget-object v1, Llewa/laml/data/Expression$BinaryExpression$Ope;->MIN:Llewa/laml/data/Expression$BinaryExpression$Ope;

    aput-object v1, v0, v5

    sget-object v1, Llewa/laml/data/Expression$BinaryExpression$Ope;->MUL:Llewa/laml/data/Expression$BinaryExpression$Ope;

    aput-object v1, v0, v6

    sget-object v1, Llewa/laml/data/Expression$BinaryExpression$Ope;->DIV:Llewa/laml/data/Expression$BinaryExpression$Ope;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Llewa/laml/data/Expression$BinaryExpression$Ope;->MOD:Llewa/laml/data/Expression$BinaryExpression$Ope;

    aput-object v2, v0, v1

    sput-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->$VALUES:[Llewa/laml/data/Expression$BinaryExpression$Ope;

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
    .line 365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/laml/data/Expression$BinaryExpression$Ope;
    .locals 1
    .parameter "name"

    .prologue
    .line 365
    const-class v0, Llewa/laml/data/Expression$BinaryExpression$Ope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Expression$BinaryExpression$Ope;

    return-object v0
.end method

.method public static values()[Llewa/laml/data/Expression$BinaryExpression$Ope;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->$VALUES:[Llewa/laml/data/Expression$BinaryExpression$Ope;

    invoke-virtual {v0}, [Llewa/laml/data/Expression$BinaryExpression$Ope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/laml/data/Expression$BinaryExpression$Ope;

    return-object v0
.end method
