.class public Llewa/laml/data/Expression$Tokenizer$Token;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public token:Ljava/lang/String;

.field public type:Llewa/laml/data/Expression$Tokenizer$TokenType;


# direct methods
.method public constructor <init>(Llewa/laml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V
    .locals 1
    .parameter "t"
    .parameter "s"

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    sget-object v0, Llewa/laml/data/Expression$Tokenizer$TokenType;->INVALID:Llewa/laml/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Llewa/laml/data/Expression$Tokenizer$Token;->type:Llewa/laml/data/Expression$Tokenizer$TokenType;

    .line 570
    iput-object p1, p0, Llewa/laml/data/Expression$Tokenizer$Token;->type:Llewa/laml/data/Expression$Tokenizer$TokenType;

    .line 571
    iput-object p2, p0, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 572
    return-void
.end method
