.class public interface abstract annotation Lcom/lewa/javax/annotation/Syntax;
.super Ljava/lang/Object;
.source "Syntax.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/lewa/javax/annotation/meta/TypeQualifier;
    applicableTo = Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/lewa/javax/annotation/Syntax;
        when = .enum Lcom/lewa/javax/annotation/meta/When;->ALWAYS:Lcom/lewa/javax/annotation/meta/When;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method

.method public abstract when()Lcom/lewa/javax/annotation/meta/When;
.end method
