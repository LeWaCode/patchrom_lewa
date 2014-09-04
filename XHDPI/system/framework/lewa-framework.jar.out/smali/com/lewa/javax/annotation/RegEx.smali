.class public interface abstract annotation Lcom/lewa/javax/annotation/RegEx;
.super Ljava/lang/Object;
.source "RegEx.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/lewa/javax/annotation/Syntax;
    value = "RegEx"
.end annotation

.annotation build Lcom/lewa/javax/annotation/meta/TypeQualifierNickname;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/lewa/javax/annotation/RegEx;
        when = .enum Lcom/lewa/javax/annotation/meta/When;->ALWAYS:Lcom/lewa/javax/annotation/meta/When;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/javax/annotation/RegEx$Checker;
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
