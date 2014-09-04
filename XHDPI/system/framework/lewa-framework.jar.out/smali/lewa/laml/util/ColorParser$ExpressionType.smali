.class final enum Llewa/laml/util/ColorParser$ExpressionType;
.super Ljava/lang/Enum;
.source "ColorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/util/ColorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ExpressionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/laml/util/ColorParser$ExpressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/laml/util/ColorParser$ExpressionType;

.field public static final enum ARGB:Llewa/laml/util/ColorParser$ExpressionType;

.field public static final enum CONST:Llewa/laml/util/ColorParser$ExpressionType;

.field public static final enum INVALID:Llewa/laml/util/ColorParser$ExpressionType;

.field public static final enum VARIABLE:Llewa/laml/util/ColorParser$ExpressionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Llewa/laml/util/ColorParser$ExpressionType;

    const-string v1, "CONST"

    invoke-direct {v0, v1, v2}, Llewa/laml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/util/ColorParser$ExpressionType;->CONST:Llewa/laml/util/ColorParser$ExpressionType;

    new-instance v0, Llewa/laml/util/ColorParser$ExpressionType;

    const-string v1, "VARIABLE"

    invoke-direct {v0, v1, v3}, Llewa/laml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/util/ColorParser$ExpressionType;->VARIABLE:Llewa/laml/util/ColorParser$ExpressionType;

    new-instance v0, Llewa/laml/util/ColorParser$ExpressionType;

    const-string v1, "ARGB"

    invoke-direct {v0, v1, v4}, Llewa/laml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/util/ColorParser$ExpressionType;->ARGB:Llewa/laml/util/ColorParser$ExpressionType;

    new-instance v0, Llewa/laml/util/ColorParser$ExpressionType;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Llewa/laml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/util/ColorParser$ExpressionType;->INVALID:Llewa/laml/util/ColorParser$ExpressionType;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Llewa/laml/util/ColorParser$ExpressionType;

    sget-object v1, Llewa/laml/util/ColorParser$ExpressionType;->CONST:Llewa/laml/util/ColorParser$ExpressionType;

    aput-object v1, v0, v2

    sget-object v1, Llewa/laml/util/ColorParser$ExpressionType;->VARIABLE:Llewa/laml/util/ColorParser$ExpressionType;

    aput-object v1, v0, v3

    sget-object v1, Llewa/laml/util/ColorParser$ExpressionType;->ARGB:Llewa/laml/util/ColorParser$ExpressionType;

    aput-object v1, v0, v4

    sget-object v1, Llewa/laml/util/ColorParser$ExpressionType;->INVALID:Llewa/laml/util/ColorParser$ExpressionType;

    aput-object v1, v0, v5

    sput-object v0, Llewa/laml/util/ColorParser$ExpressionType;->$VALUES:[Llewa/laml/util/ColorParser$ExpressionType;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/laml/util/ColorParser$ExpressionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 81
    const-class v0, Llewa/laml/util/ColorParser$ExpressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/laml/util/ColorParser$ExpressionType;

    return-object v0
.end method

.method public static values()[Llewa/laml/util/ColorParser$ExpressionType;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Llewa/laml/util/ColorParser$ExpressionType;->$VALUES:[Llewa/laml/util/ColorParser$ExpressionType;

    invoke-virtual {v0}, [Llewa/laml/util/ColorParser$ExpressionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/laml/util/ColorParser$ExpressionType;

    return-object v0
.end method
