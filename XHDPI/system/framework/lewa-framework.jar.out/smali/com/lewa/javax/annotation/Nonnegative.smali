.class public interface abstract annotation Lcom/lewa/javax/annotation/Nonnegative;
.super Ljava/lang/Object;
.source "Nonnegative.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/lewa/javax/annotation/meta/TypeQualifier;
    applicableTo = Ljava/lang/Number;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/lewa/javax/annotation/Nonnegative;
        when = .enum Lcom/lewa/javax/annotation/meta/When;->ALWAYS:Lcom/lewa/javax/annotation/meta/When;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/javax/annotation/Nonnegative$Checker;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract when()Lcom/lewa/javax/annotation/meta/When;
.end method
