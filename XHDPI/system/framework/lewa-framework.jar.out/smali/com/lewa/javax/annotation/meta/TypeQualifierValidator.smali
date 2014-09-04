.class public interface abstract Lcom/lewa/javax/annotation/meta/TypeQualifierValidator;
.super Ljava/lang/Object;
.source "TypeQualifierValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/lewa/javax/annotation/Nonnull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lewa/javax/annotation/meta/When;"
        }
    .end annotation
.end method
