.class public Lnet/sourceforge/jeval/EvaluationConstants;
.super Ljava/lang/Object;
.source "EvaluationConstants.java"


# static fields
.field public static final BOOLEAN_STRING_FALSE:Ljava/lang/String; = "0.0"

.field public static final BOOLEAN_STRING_TRUE:Ljava/lang/String; = "1.0"

.field public static final CLOSED_BRACE:C = '}'

.field public static final CLOSED_VARIABLE:Ljava/lang/String; = null

.field public static final COMMA:C = ','

.field public static final DOUBLE_QUOTE:C = '\"'

.field public static final FUNCTION_ARGUMENT_SEPARATOR:C = ','

.field public static final OPEN_BRACE:C = '{'

.field public static final OPEN_VARIABLE:Ljava/lang/String; = null

.field public static final POUND_SIGN:C = '#'

.field public static final SINGLE_QUOTE:C = '\''


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/jeval/EvaluationConstants;->OPEN_VARIABLE:Ljava/lang/String;

    .line 42
    const/16 v0, 0x7d

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/jeval/EvaluationConstants;->CLOSED_VARIABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
