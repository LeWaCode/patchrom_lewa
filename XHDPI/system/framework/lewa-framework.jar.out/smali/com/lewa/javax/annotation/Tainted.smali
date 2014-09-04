.class public interface abstract annotation Lcom/lewa/javax/annotation/Tainted;
.super Ljava/lang/Object;
.source "Tainted.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/lewa/javax/annotation/Untainted;
    when = .enum Lcom/lewa/javax/annotation/meta/When;->MAYBE:Lcom/lewa/javax/annotation/meta/When;
.end annotation

.annotation build Lcom/lewa/javax/annotation/meta/TypeQualifierNickname;
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation
