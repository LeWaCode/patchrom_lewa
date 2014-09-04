.class public interface abstract annotation Lcom/lewa/bi/common/testing/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final TAG_DEPRECATED:Ljava/lang/String; = "deprecated"

.field public static final TAG_INTEGRATION:Ljava/lang/String; = "integration"

.field public static final TAG_MANUAL:Ljava/lang/String; = "manual"


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method
