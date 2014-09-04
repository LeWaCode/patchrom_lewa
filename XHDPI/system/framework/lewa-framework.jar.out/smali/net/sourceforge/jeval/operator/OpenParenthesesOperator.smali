.class public Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;
.super Lnet/sourceforge/jeval/operator/AbstractOperator;
.source "OpenParenthesesOperator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "("

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/jeval/operator/AbstractOperator;-><init>(Ljava/lang/String;I)V

    .line 29
    return-void
.end method
