.class public final enum Llewa/laml/data/Expression$Tokenizer$TokenType;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/laml/data/Expression$Tokenizer$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/laml/data/Expression$Tokenizer$TokenType;

.field public static final enum BRACKET:Llewa/laml/data/Expression$Tokenizer$TokenType;

.field public static final enum FUN:Llewa/laml/data/Expression$Tokenizer$TokenType;

.field public static final enum INVALID:Llewa/laml/data/Expression$Tokenizer$TokenType;

.field public static final enum NUM:Llewa/laml/data/Expression$Tokenizer$TokenType;

.field public static final enum OPE:Llewa/laml/data/Expression$Tokenizer$TokenType;

.field public static final enum STR:Llewa/laml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR:Llewa/laml/data/Expression$Tokenizer$TokenType;

.field public static final enum VARSTR:Llewa/laml/data/Expression$Tokenizer$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 556
    new-instance v0, Llewa/laml/data/Expression$Tokenizer$TokenType;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Llewa/laml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$Tokenizer$TokenType;->INVALID:Llewa/laml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Llewa/laml/data/Expression$Tokenizer$TokenType;

    const-string v1, "VAR"

    invoke-direct {v0, v1, v4}, Llewa/laml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$Tokenizer$TokenType;->VAR:Llewa/laml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Llewa/laml/data/Expression$Tokenizer$TokenType;

    const-string v1, "VARSTR"

    invoke-direct {v0, v1, v5}, Llewa/laml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$Tokenizer$TokenType;->VARSTR:Llewa/laml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Llewa/laml/data/Expression$Tokenizer$TokenType;

    const-string v1, "NUM"

    invoke-direct {v0, v1, v6}, Llewa/laml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$Tokenizer$TokenType;->NUM:Llewa/laml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Llewa/laml/data/Expression$Tokenizer$TokenType;

    const-string v1, "STR"

    invoke-direct {v0, v1, v7}, Llewa/laml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$Tokenizer$TokenType;->STR:Llewa/laml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Llewa/laml/data/Expression$Tokenizer$TokenType;

    const-string v1, "OPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Llewa/laml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$Tokenizer$TokenType;->OPE:Llewa/laml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Llewa/laml/data/Expression$Tokenizer$TokenType;

    const-string v1, "FUN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Llewa/laml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$Tokenizer$TokenType;->FUN:Llewa/laml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Llewa/laml/data/Expression$Tokenizer$TokenType;

    const-string v1, "BRACKET"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Llewa/laml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/Expression$Tokenizer$TokenType;->BRACKET:Llewa/laml/data/Expression$Tokenizer$TokenType;

    .line 555
    const/16 v0, 0x8

    new-array v0, v0, [Llewa/laml/data/Expression$Tokenizer$TokenType;

    sget-object v1, Llewa/laml/data/Expression$Tokenizer$TokenType;->INVALID:Llewa/laml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v3

    sget-object v1, Llewa/laml/data/Expression$Tokenizer$TokenType;->VAR:Llewa/laml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Llewa/laml/data/Expression$Tokenizer$TokenType;->VARSTR:Llewa/laml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v5

    sget-object v1, Llewa/laml/data/Expression$Tokenizer$TokenType;->NUM:Llewa/laml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v6

    sget-object v1, Llewa/laml/data/Expression$Tokenizer$TokenType;->STR:Llewa/laml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Llewa/laml/data/Expression$Tokenizer$TokenType;->OPE:Llewa/laml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Llewa/laml/data/Expression$Tokenizer$TokenType;->FUN:Llewa/laml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Llewa/laml/data/Expression$Tokenizer$TokenType;->BRACKET:Llewa/laml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v0, v1

    sput-object v0, Llewa/laml/data/Expression$Tokenizer$TokenType;->$VALUES:[Llewa/laml/data/Expression$Tokenizer$TokenType;

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
    .line 555
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/laml/data/Expression$Tokenizer$TokenType;
    .locals 1
    .parameter "name"

    .prologue
    .line 555
    const-class v0, Llewa/laml/data/Expression$Tokenizer$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Expression$Tokenizer$TokenType;

    return-object v0
.end method

.method public static values()[Llewa/laml/data/Expression$Tokenizer$TokenType;
    .locals 1

    .prologue
    .line 555
    sget-object v0, Llewa/laml/data/Expression$Tokenizer$TokenType;->$VALUES:[Llewa/laml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v0}, [Llewa/laml/data/Expression$Tokenizer$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/laml/data/Expression$Tokenizer$TokenType;

    return-object v0
.end method
