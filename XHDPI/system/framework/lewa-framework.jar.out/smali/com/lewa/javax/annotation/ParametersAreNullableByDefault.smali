.class public interface abstract annotation Lcom/lewa/javax/annotation/ParametersAreNullableByDefault;
.super Ljava/lang/Object;
.source "ParametersAreNullableByDefault.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/lewa/javax/annotation/Nullable;
.end annotation

.annotation runtime Lcom/lewa/javax/annotation/meta/TypeQualifierDefault;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation
