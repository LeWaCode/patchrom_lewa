.class final enum Llewa/laml/data/BaseFunctions$Fun;
.super Ljava/lang/Enum;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/laml/data/BaseFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum ABS:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum ACOS:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum ASIN:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum ATAN:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum COS:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum COSH:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum DIGIT:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum EQ:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum EQS:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum GE:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum GT:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum IFELSE:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum INT:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum INVALID:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum ISNULL:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum LE:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum LEN:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum LT:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum MAX:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum MIN:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum NE:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum NOT:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum RAND:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum REPLACE:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum ROUND:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum SIN:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum SINH:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum SQRT:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum SUBSTR:Llewa/laml/data/BaseFunctions$Fun;

.field public static final enum TAN:Llewa/laml/data/BaseFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 211
    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->INVALID:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "RAND"

    invoke-direct {v0, v1, v4}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->RAND:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "SIN"

    invoke-direct {v0, v1, v5}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->SIN:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "COS"

    invoke-direct {v0, v1, v6}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->COS:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "TAN"

    invoke-direct {v0, v1, v7}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->TAN:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "ASIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->ASIN:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "ACOS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->ACOS:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "ATAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->ATAN:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "SINH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->SINH:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "COSH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->COSH:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "SQRT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->SQRT:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "ABS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->ABS:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "LEN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->LEN:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "ROUND"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->ROUND:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "INT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->INT:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "MIN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->MIN:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "MAX"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->MAX:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "DIGIT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->DIGIT:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "EQ"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->EQ:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "NE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->NE:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "GE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->GE:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "GT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->GT:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "LE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->LE:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "LT"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->LT:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "ISNULL"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->ISNULL:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "NOT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->NOT:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "IFELSE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->IFELSE:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "EQS"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->EQS:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "SUBSTR"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->SUBSTR:Llewa/laml/data/BaseFunctions$Fun;

    new-instance v0, Llewa/laml/data/BaseFunctions$Fun;

    const-string v1, "REPLACE"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Llewa/laml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->REPLACE:Llewa/laml/data/BaseFunctions$Fun;

    .line 210
    const/16 v0, 0x1e

    new-array v0, v0, [Llewa/laml/data/BaseFunctions$Fun;

    sget-object v1, Llewa/laml/data/BaseFunctions$Fun;->INVALID:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v1, v0, v3

    sget-object v1, Llewa/laml/data/BaseFunctions$Fun;->RAND:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v1, v0, v4

    sget-object v1, Llewa/laml/data/BaseFunctions$Fun;->SIN:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v1, v0, v5

    sget-object v1, Llewa/laml/data/BaseFunctions$Fun;->COS:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v1, v0, v6

    sget-object v1, Llewa/laml/data/BaseFunctions$Fun;->TAN:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ASIN:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ACOS:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ATAN:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->SINH:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->COSH:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->SQRT:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ABS:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->LEN:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ROUND:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->INT:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->MIN:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->MAX:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->DIGIT:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->EQ:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->NE:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->GE:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->GT:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->LE:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->LT:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ISNULL:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->NOT:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->IFELSE:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->EQS:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->SUBSTR:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->REPLACE:Llewa/laml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    sput-object v0, Llewa/laml/data/BaseFunctions$Fun;->$VALUES:[Llewa/laml/data/BaseFunctions$Fun;

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
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/laml/data/BaseFunctions$Fun;
    .locals 1
    .parameter "name"

    .prologue
    .line 210
    const-class v0, Llewa/laml/data/BaseFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/laml/data/BaseFunctions$Fun;

    return-object v0
.end method

.method public static values()[Llewa/laml/data/BaseFunctions$Fun;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Llewa/laml/data/BaseFunctions$Fun;->$VALUES:[Llewa/laml/data/BaseFunctions$Fun;

    invoke-virtual {v0}, [Llewa/laml/data/BaseFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/laml/data/BaseFunctions$Fun;

    return-object v0
.end method
